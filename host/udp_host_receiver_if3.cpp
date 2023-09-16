#include "ip_to_hex.h"
#include "fileops.h"
#include <cstring>
#include <xrt/xrt_device.h>
#include <xrt/xrt_bo.h>
#include <xrt/xrt_kernel.h>
#include <experimental/xrt_ip.h>

#define BYTES_PER_PACKET 1408
#define MY_IP_ADDR0 0xC0A80102
#define THEIR_IP_ADDR0 0xC0A80101
#define MY_IP_ADDR1 0xC0A80104
#define THEIR_IP_ADDR1 0xC0A80103
#define IP_GATEWAY 0xC0A801FE
#define ARP_DISCOVERY 0x1010
#define ARP_IP_ADDR_OFFSET 0x1400
#define ARP_MAC_ADDR_OFFSET 0x1800
#define ARP_VALID_OFFSET 0x1100
#define IP_ADDR_OFFSET 0x0018
#define IP_GATEWAY_OFFSET 0x001C
#define MAC_ADDR_OFFSET 0x0010
#define NUM_SOCKETS_HW 0x0A10
#define UDP_TI_OFFSET 0x0810
#define UDP_TP_OFFSET 0x0890
#define UDP_MP_OFFSET 0x0910
#define UDP_V_OFFSET 0x0990
#define MY_PORT 60000
#define THEIR_PORT 50000

typedef struct {
	uint32_t theirIP;
	uint16_t theirPort;
	uint16_t myPort;
	bool valid;
} socket_type;

int main(int argc, char **argv) {
	const char* xclbinFilename;
        unsigned int dev_index = 0;
        unsigned int tx_status;
        unsigned int rx_status;
    	if (argc < 2){
		std::cout << "Usage: " << argv[0] << " <XCLBIN File> [<#Rx Pkt 0> <#Rx Pkt 1>] [<decrypt 0> <decrypt 1>] [<My IP 0> <My IP 1>] [<Their IP 0> <Their IP 1>] [<IP Gateway>]" << std::endl;
        	return EXIT_FAILURE;
	}
	else{
		xclbinFilename = argv[1];
		std::cout <<"Using FPGA binary file specfied through the command line: " << xclbinFilename << std::endl;
	}
	
	socket_type sockets[2][16] = {0};
        unsigned int packet_size_total[2];
        uint32_t rxPkt[2] = {1, 1};
        unsigned int dec[2] = {0, 0};
	unsigned int dest = 0;

	if(argc >= 4){
		rxPkt[0] = strtol(argv[2], NULL, 10);
	       	rxPkt[1] = strtol(argv[3], NULL, 10);
	}
	packet_size_total[0] = BYTES_PER_PACKET*rxPkt[0];
	packet_size_total[1] = BYTES_PER_PACKET*rxPkt[1];

	if(argc >= 6)
        {
                if (strcmp(argv[4],"decrypt")==0)
                {
                        printf("decryption enabled on channel 0...\n");
                        dec[0] = 1;
                }
		else if (strcmp(argv[4], "no-decrypt")==0)
		{
			printf("decryption not enabled on channel 0...\n");
			dec[0] = 0;
		}
		if (strcmp(argv[5],"decrypt")==0)
                {
                        printf("decryption enabled on channel 1...\n");
                        dec[1] = 1;
                }
                else if (strcmp(argv[5], "no-decrypt")==0)
                {
                        printf("decryption not enabled on channel 1...\n");
                        dec[1] = 0;
                }

        }
	
	unsigned num_sockets_hw = 0, num_sockets_sw = sizeof(sockets[0]) / sizeof(sockets[0][0]);
        unsigned int ip_gateway = argc>=11 ? ip_to_hex(argv[10]) : (unsigned int)IP_GATEWAY;

        //Load xclbin
        std::cout << "Loading: '" << xclbinFilename << "'\n";
        auto device = xrt::device(dev_index);
        auto xclbin_uuid = device.load_xclbin(xclbinFilename);

	for (int idx = 0; idx < 2; ++idx) {
                //CMAC
                std::string cmac_name = (idx == 0) ? "cmac_0" : "cmac_1";
                auto cmac = xrt::ip(device, xclbin_uuid, cmac_name);
                tx_status = cmac.read_register(0x0200);
                tx_status = cmac.read_register(0x0200);
                rx_status = cmac.read_register(0x0204);
                rx_status = cmac.read_register(0x0204);
                if (rx_status & 0x1){
                        std::cout << "Link " << idx << " is active" << std::endl;
                }
                else{
                        std::cout << "Link " << idx << " is not active" << std::endl;
                        return EXIT_FAILURE;
                }

                //Network Layer
                std::string nl_name = "networklayer_" + std::to_string(idx);
                auto nl = xrt::ip(device, xclbin_uuid, "networklayer:{" + nl_name + "}");
		unsigned int my_ip_address = argc>=7+idx ? ip_to_hex(argv[6+idx]) : (idx==0 ? MY_IP_ADDR0 : MY_IP_ADDR1);
		unsigned int their_ip_address = argc>=9+idx ? ip_to_hex(argv[8+idx]) : (idx==0 ? THEIR_IP_ADDR0 : THEIR_IP_ADDR1);
                long mac_address = (0xf0f1f2f3f4f5 & 0xFFFFFFFFFF0) + (my_ip_address & 0xF);
                nl.write_register(MAC_ADDR_OFFSET,mac_address);
                nl.write_register(MAC_ADDR_OFFSET + 4, mac_address >> 32);
                nl.write_register(IP_ADDR_OFFSET, my_ip_address);
                nl.write_register(IP_GATEWAY_OFFSET, ip_gateway);

                sockets[0][idx].theirIP = their_ip_address;
                sockets[0][idx].theirPort = THEIR_PORT;
                sockets[0][idx].myPort = MY_PORT;
                sockets[0][idx].valid = true;
                printf("My port %d: %d\n", idx, sockets[0][idx].myPort);
                printf("Their port %d: %d\n", idx, sockets[0][idx].theirPort);
                printf("My IP address %d: %x\n", idx, my_ip_address);
                printf("Their IP address %d: %x\n", idx, their_ip_address);
                printf("My MAC address %d: %lx\n", idx, mac_address);
                num_sockets_hw = nl.read_register(NUM_SOCKETS_HW);
		if (num_sockets_hw != num_sockets_sw) {
                        printf("HW Socket list for device [0] should be [%d], is [%d]\n", num_sockets_sw, num_sockets_hw);
                        fflush(stdout);
                        return 1;
                }
                for (unsigned int i = 0; i < num_sockets_hw; i++) {
                        uint32_t TI_OFFSET = UDP_TI_OFFSET + i * 8;
                        uint32_t TP_OFFSET = UDP_TP_OFFSET + i * 8;
                        uint32_t MP_OFFSET = UDP_MP_OFFSET + i * 8;
                        uint32_t V_OFFSET  = UDP_V_OFFSET + i * 8;

                        nl.write_register(TI_OFFSET, sockets[i][idx].theirIP);
                        nl.write_register(TP_OFFSET, sockets[i][idx].theirPort);
                        nl.write_register(MP_OFFSET, sockets[i][idx].myPort);
                        nl.write_register(V_OFFSET, sockets[i][idx].valid);
                }
                for(int i = 0; i < 256; i++) {
                        nl.write_register(ARP_VALID_OFFSET + (i / 4) * 4, 0);
                }

                nl.write_register(ARP_DISCOVERY, 0);
                nl.write_register(ARP_DISCOVERY, 1);
                nl.write_register(ARP_DISCOVERY, 0);

                //ARP
                for (int i = 0; i < 256; i++) {
                        unsigned valid_entry;
                        valid_entry = nl.read_register(ARP_VALID_OFFSET + (i / 4) * 4);
                        valid_entry = (valid_entry >> ((i % 4) * 8)) & 0x1;
                if (valid_entry){
                        printf("Device %d: ARP valid entry found at %d\n",idx,  i);
                }
        	}

        }	
	for (int idx = 0; idx < 2; ++idx) {
		//User Logic
                char local_data[packet_size_total[idx]];
                std::string rxkrnl_name = "rxkrnl_" + std::to_string(idx);
                xrt::kernel rxkrnl = xrt::kernel(device, xclbin_uuid, "rxkrnl:{" + rxkrnl_name + "}");
                xrt::bo buffer_packetdata = xrt::bo(device, packet_size_total[idx], rxkrnl.group_id(0));
                xrt::run rx_run = xrt::run(rxkrnl);
                rx_run.set_arg(0, buffer_packetdata);
                rx_run.set_arg(2, packet_size_total[idx]);
                rx_run.set_arg(3, dec[idx]);
                rx_run.start();
                rx_run.wait();
                buffer_packetdata.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
                buffer_packetdata.read(local_data);

		printf("Message at the receiver:\n");
                for (unsigned int i = 0; i < packet_size_total[idx]; i++){
                        printf("%c",local_data[i]);
                }
                printf("\n");
	}
	return 0;	
}
