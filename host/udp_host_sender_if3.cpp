#include "ip_to_hex.h"
#include "fileops.h"
#include <cstring>
#include <xrt/xrt_device.h>
#include <xrt/xrt_bo.h>
#include <xrt/xrt_kernel.h>
#include <experimental/xrt_ip.h>
#include "config_macros.h"

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
		std::cout << "Usage: " << argv[0] << " <XCLBIN File> [<#Tx Pkt 0> <#Tx Pkt 1>] [<encrypt 0> <encrypt 1>] [<My IP 0> <My IP 1>] [<Their IP 0> <Their IP 1>] [<IP Gateway>]" << std::endl;
		return EXIT_FAILURE;
	}
	else{
		xclbinFilename = argv[1];
		std::cout <<"Using FPGA binary file specified through the command line: " << xclbinFilename << std::endl;
    	}

    	socket_type sockets[2][16] = {0};
    	unsigned int packet_size_total[2];
	uint32_t txPkt[2] = {1, 1};
	unsigned int enc[2] = {0, 0};
	unsigned int dest = 0;

    	if(argc >= 4){
		txPkt[0] = strtol(argv[2], NULL, 10);
		txPkt[1] = strtol(argv[3], NULL, 10);
	}

	packet_size_total[0] = BYTES_PER_PACKET*txPkt[0];
	packet_size_total[1] = BYTES_PER_PACKET*txPkt[1];

	if (argc >=6){
        	if (strcmp(argv[4],"encrypt")==0)
		{
			printf("encryption enabled on channel 0...\n");
			enc[0] = 1;
		}
		else if (strcmp(argv[4],"no-encrypt")==0)
		{
			printf("encryption not enabled on channel 0...\n");
			enc[0] = 0;
		}
		if (strcmp(argv[5],"encrypt")==0)
		{
			printf("encryption enabled on channel 1...\n");
			enc[1] = 1;
		}
		else if (strcmp(argv[5],"no-encrypt")==0)
		{
			printf("encryption not enabled on channel 1...\n");
			enc[1] = 0;
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
		unsigned int my_ip_address = argc>=7+idx ? ip_to_hex(argv[6+idx]) : (idx==0 ? SEND_IP_ADDR0 : SEND_IP_ADDR1);
                unsigned int their_ip_address = argc>=9+idx ? ip_to_hex(argv[8+idx]) : (idx==0 ? RECV_IP_ADDR0 : RECV_IP_ADDR1);
        	long mac_address = (0xf0f1f2f3f4f5 & 0xFFFFFFFFFF0) + (my_ip_address & 0xF);
        	nl.write_register(MAC_ADDR_OFFSET,mac_address);
        	nl.write_register(MAC_ADDR_OFFSET + 4, mac_address >> 32);
        	nl.write_register(IP_ADDR_OFFSET, my_ip_address);
        	nl.write_register(IP_GATEWAY_OFFSET, ip_gateway);

        	sockets[0][idx].theirIP = their_ip_address;
        	sockets[0][idx].theirPort = RECV_PORT;
        	sockets[0][idx].myPort = SEND_PORT;
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
                std::string txkrnl_name = "txkrnl_" + std::to_string(idx);
                xrt::kernel txkrnl = xrt::kernel(device, xclbin_uuid, "txkrnl:{" + txkrnl_name + "}");
                char *code = idx==0 ? readFile("./alice29.txt") : readFile("./pg66489.txt");
		if (code == NULL) {
                	perror("Error opening file");
                	exit(1);
		}
                xrt::bo buffer_packetdata = xrt::bo(device, packet_size_total[idx], txkrnl.group_id(0));
                buffer_packetdata.write(code);
                buffer_packetdata.sync(XCL_BO_SYNC_BO_TO_DEVICE);
                xrt::run tx_run = xrt::run(txkrnl);
                tx_run.set_arg(0, buffer_packetdata) ;
                tx_run.set_arg(2, packet_size_total[idx]) ;
                tx_run.set_arg(3, dest);
                tx_run.set_arg(4, enc[idx]);
                tx_run.start();
                tx_run.wait();
                printf("Message of size %d sent.\n", packet_size_total[idx]);
                printf("Message at the sender:\n");

                for (unsigned int i = 0; i < packet_size_total[idx]; i++){
                        printf("%c",code[i]);
                }
                printf("\n");
	}
       	return 0;	
}
