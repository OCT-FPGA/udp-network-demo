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
		std::cout << "Usage: " << argv[0] << " <XCLBIN File> [<#Tx Pkt>] [<encrypt>] [<My IP>] [<Their IP>] [<IP Gateway>]" << std::endl;
		return EXIT_FAILURE;
	}
	else{
		xclbinFilename = argv[1];
		std::cout <<"Using FPGA binary file specified through the command line: " << xclbinFilename << std::endl;
    	}
        
	socket_type sockets[16] = {0};
        unsigned int packet_size_total;
        uint32_t txPkt = 1;
	unsigned int enc = 0;
	unsigned int dest = 0;

    	if(argc >= 3){
		txPkt = strtol(argv[2], NULL, 10);
	}
	packet_size_total = BYTES_PER_PACKET*txPkt;
	
	if (argc >=4){
        	if (strcmp(argv[3],"encrypt")==0)
		{
			printf("encryption enabled...\n");
			enc = 1;
		}
		else if (strcmp(argv[3],"no-encrypt")==0)
		{
			printf("encryption not enabled...\n");
			enc = 0;
		}
	}
	
	//Load xclbin
	std::cout << "Loading: '" << xclbinFilename << "'\n";
        auto device = xrt::device(dev_index);
        auto xclbin_uuid = device.load_xclbin(xclbinFilename);
        
	//CMAC
	auto cmac = xrt::ip(device, xclbin_uuid, "cmac_0");
        tx_status = cmac.read_register(0x0200);
        tx_status = cmac.read_register(0x0200);
        rx_status = cmac.read_register(0x0204);
        rx_status = cmac.read_register(0x0204);
        if (rx_status & 0x1){
                printf("Link is active\n");
        }
        else{
                printf("Link is not active\n");
                return EXIT_FAILURE;
        }
	
	//Network Layer
        auto nl = xrt::ip(device, xclbin_uuid, "networklayer:{networklayer_0}");
        unsigned int my_ip_address = argc>=5 ? ip_to_hex(argv[4]) : (unsigned int)SEND_IP_ADDR;
        unsigned int their_ip_address = argc>=6 ? ip_to_hex(argv[5]) : (unsigned int)RECV_IP_ADDR;
        unsigned int ip_gateway = argc>=7 ? ip_to_hex(argv[6]) : (unsigned int)IP_GATEWAY;
        long mac_address = (0xf0f1f2f3f4f5 & 0xFFFFFFFFFF0) + (my_ip_address & 0xF);
        nl.write_register(MAC_ADDR_OFFSET,mac_address);
        nl.write_register(MAC_ADDR_OFFSET + 4, mac_address >> 32);
        nl.write_register(IP_ADDR_OFFSET, my_ip_address);
        nl.write_register(IP_GATEWAY_OFFSET, ip_gateway);

        unsigned num_sockets_hw = 0, num_sockets_sw = sizeof(sockets) / sizeof(sockets[0]);
        sockets[0].theirIP = their_ip_address;
        sockets[0].theirPort = RECV_PORT;
        sockets[0].myPort = SEND_PORT;
        sockets[0].valid = true;
        printf("My port: %d\n", sockets[0].myPort);
        printf("Their port: %d\n", sockets[0].theirPort);
        printf("My IP address: %x\n", my_ip_address);
        printf("Their IP address: %x\n", their_ip_address);
        printf("My MAC address: %lx\n", mac_address);
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
                  
		nl.write_register(TI_OFFSET, sockets[i].theirIP);
		nl.write_register(TP_OFFSET, sockets[i].theirPort);
		nl.write_register(MP_OFFSET, sockets[i].myPort);
		nl.write_register(V_OFFSET, sockets[i].valid);
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
			printf("ARP valid entry found at %d\n", i);
		}	
	} 

	//User Logic 
	xrt::kernel txkrnl_0 = xrt::kernel(device, xclbin_uuid, "txkrnl:{txkrnl_0}");
	char *code = readFile("./alice29.txt");
	if (code == NULL) {
        	perror("Error opening file");
        	exit(1);
	}
	xrt::bo buffer_packetdata = xrt::bo(device, packet_size_total, txkrnl_0.group_id(0));
    	buffer_packetdata.write(code);
    	buffer_packetdata.sync(XCL_BO_SYNC_BO_TO_DEVICE);
	xrt::run tx0_run = xrt::run(txkrnl_0);
	tx0_run.set_arg(0, buffer_packetdata) ;
    	tx0_run.set_arg(2, packet_size_total) ;
	tx0_run.set_arg(3, dest);
	tx0_run.set_arg(4, enc);
	tx0_run.start();
	tx0_run.wait();
	printf("Message of size %d sent.\n", packet_size_total);
        printf("Message at the sender:\n");

        for (unsigned int i = 0; i < packet_size_total; i++){
                printf("%c",code[i]);
        }
        printf("\n");

	return 0;
}
