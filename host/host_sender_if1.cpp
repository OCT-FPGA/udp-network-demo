/**********
Copyright (c) 2019, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/
#include "xcl2.hpp"
#include <vector>
#include <chrono>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <iostream>
#include "xclhal2.h"
#include <CL/cl2.hpp>
#include <CL/cl_ext_xilinx.h>
#include <unistd.h>
#include <uuid/uuid.h>
#include <limits.h>
#include <sys/stat.h>
#include "CL/cl_ext_xilinx.h"
#include "experimental/xclbin_util.h"

#include "fileops.h"

#define BYTES_PER_PACKET 1408
#define MY_IP_ADDR 0xC0A80101
#define THEIR_IP_ADDR 0xC0A80102
#define IP_GATEWAY 0xC0A801FF
#define ARP_DISCOVERY 0x3010
#define ARP_IP_ADDR_OFFSET 0x3400
#define ARP_MAC_ADDR_OFFSET 0x3800
#define ARP_VALID_OFFSET 0x3100
#define IP_ADDR_OFFSET 0x0018
#define GATEWAY_OFFSET 0x001C
#define MAC_ADDR_OFFSET 0x0010
#define NUM_SOCKETS_HW 0x2210
#define UDP_OFFSET 0x2000

typedef struct {
	uint32_t theirIP;
	uint16_t theirPort;
	uint16_t myPort;
	bool valid;
} socket_type;

int main(int argc, char **argv) {
	unsigned char *kernelBinary;
    	const char* xclbinFilename;
    	cl_int err;
    	if (argc < 2){
		std::cout << "Usage: " << argv[0] << " <XCLBIN File> [<#Tx Pkt>] [<encrypt>] [<My IP>] [<Their IP>] [<IP Gateway>]" << std::endl;
		return EXIT_FAILURE;
	}
	else{
		xclbinFilename = argv[1];
		std::cout <<"Using FPGA binary file specfied through the command line: " << xclbinFilename << std::endl;
    	}

	// Load xclbin 
    	std::cout << "Loading: '" << xclbinFilename << "'\n";
    	cl_uint num_platforms;
    	cl_uint deviceCount;
    	cl_platform_id *platform_id;
    	cl_device_id device_id; 
    	cl_program program;
    	cl_context context;
    	cl_command_queue q;
    	cl_int binaryStatus;
    	xclDeviceHandle handle;
    	xuid_t xclbinId;
    	cl_kernel nl;
    	cl_kernel cmac;
   	cl_kernel ul;
    	cl_uint nlidx;
    	cl_uint cmacidx;
    	socket_type sockets[16] = {0};
    	unsigned int packet_size_total; 
    	uint32_t txPkt = 3200;
    	cl_mem buffer_packetdata;
	unsigned int enc = 0;

    	if(argc >= 3){
		txPkt = strtol(argv[2], NULL, 10);
		packet_size_total = BYTES_PER_PACKET*txPkt; 
	}

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


	err = clGetPlatformIDs(0, NULL, &num_platforms); 
    	printf("Number of available platforms = %d\n", num_platforms);
    	platform_id = (cl_platform_id *) malloc(sizeof(cl_platform_id) * num_platforms);
    	err = clGetPlatformIDs(num_platforms, platform_id, NULL); 
    	if (err != CL_SUCCESS) {
		printf("Error: clGetPlatformIDs failed!\n"); 
		return EXIT_FAILURE;
	}
	// Get characteristics for each platform
	for (uint i = 0; i < num_platforms; i++){
		err = clGetDeviceIDs(platform_id[i], CL_DEVICE_TYPE_ALL, 1, &device_id, &deviceCount);
	       	if (err != CL_SUCCESS) {
			printf("Error: clGetDeviceIDs failed!\n"); 
			return EXIT_FAILURE;
		}
		context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
	       	q = clCreateCommandQueue(context, device_id, CL_QUEUE_PROFILING_ENABLE, &err);
       		printf("Device count %d\n",deviceCount); 
       		int size=load_file_to_memory(xclbinFilename, (char **) &kernelBinary);
       		printf("xclbin size: %d\n",size);
       		size_t size_var = size; 
		if (!(program = clCreateProgramWithBinary(context, 1, &device_id, &size_var, (const unsigned char **) &kernelBinary, &binaryStatus, &err))) return EXIT_FAILURE;
	}
    
	cmac = clCreateKernel(program, "cmac_1", &err);
	nl = clCreateKernel(program, "networklayer",&err);
	xclGetComputeUnitInfo(cmac, 0, XCL_COMPUTE_UNIT_INDEX, sizeof(cmacidx), &cmacidx, NULL);
	xclGetComputeUnitInfo(nl, 0, XCL_COMPUTE_UNIT_INDEX, sizeof(nlidx), &nlidx, NULL);
	clGetDeviceInfo(device_id, CL_DEVICE_HANDLE, sizeof(handle), &handle, NULL);
 
	std::ifstream bin_file(xclbinFilename, std::ifstream::binary);
	bin_file.seekg (0, bin_file.end);
	unsigned nb = bin_file.tellg();
	bin_file.seekg (0, bin_file.beg);
	char *buf = new char [nb];
	bin_file.read(buf, nb);
    
	xclbin_uuid(buf, xclbinId);

       	xclOpenContext(handle, xclbinId, nlidx, false);
	
	unsigned int my_ip_address = argc>=5 ? (unsigned int)strtol(argv[4], NULL, 16) : (unsigned int)MY_IP_ADDR;
	unsigned int their_ip_address = argc>=6 ? (unsigned int)strtol(argv[5], NULL, 16) : (unsigned int)THEIR_IP_ADDR;
	unsigned int ip_gateway = argc>=7 ? (unsigned int)strtol(argv[6], NULL, 16) : (unsigned int)IP_GATEWAY;
    	long mac_address = (0xf0f1f2f3f4f5 & 0xFFFFFFFFFF0) + (my_ip_address & 0xF);
    	xclRegWrite(handle, nlidx, MAC_ADDR_OFFSET, mac_address); 
    	xclRegWrite(handle, nlidx, MAC_ADDR_OFFSET + 4, mac_address >> 32);
    	xclRegWrite(handle, nlidx, IP_ADDR_OFFSET, my_ip_address);
    	xclRegWrite(handle, nlidx, GATEWAY_OFFSET, ip_gateway); 

	unsigned num_sockets_hw = 0, num_sockets_sw = sizeof(sockets) / sizeof(sockets[0]);
    	sockets[0].theirIP = their_ip_address;
    	sockets[0].theirPort = 60000;
    	sockets[0].myPort = 50000;
    	sockets[0].valid = true;
    	printf("My port: %d\n", sockets[0].myPort);
    	printf("Their port: %d\n", sockets[0].theirPort);
    
   	printf("My IP address: %x\n", my_ip_address);
    	printf("Their IP address: %x\n", their_ip_address);
    	printf("My MAC address: %lx\n",mac_address);
    	xclRegRead(handle, nlidx, NUM_SOCKETS_HW, &num_sockets_hw);
    	printf("Number of sockets HW: %d\n", num_sockets_hw);

	if (num_sockets_hw != num_sockets_sw) {
		printf("HW Socket list for device [0] should be [%d], is [%d]\n", num_sockets_sw, num_sockets_hw);
		fflush(stdout);
		xclCloseContext(handle, xclbinId, nlidx);
		return 1;
	}
	for (unsigned int i = 0; i < num_sockets_hw; i++) {
		uint32_t TI_OFFSET = 0x10 + i * 8;
		uint32_t TP_OFFSET = TI_OFFSET + 16 * 8;
		uint32_t MP_OFFSET = TI_OFFSET + 16 * 8 * 2;
		uint32_t V_OFFSET  = TI_OFFSET + 16 * 8 * 3;
                  
		xclRegWrite(handle, nlidx, UDP_OFFSET + TI_OFFSET, sockets[i].theirIP);
		xclRegWrite(handle, nlidx, UDP_OFFSET + TP_OFFSET, sockets[i].theirPort);
		xclRegWrite(handle, nlidx, UDP_OFFSET + MP_OFFSET, sockets[i].myPort);
		xclRegWrite(handle, nlidx, UDP_OFFSET + V_OFFSET, sockets[i].valid);
	}
	for(int i = 0; i < 256; i++) {
		xclRegWrite(handle, nlidx, ARP_VALID_OFFSET + (i / 4) * 4, 0);
	}
	
	xclRegWrite(handle, nlidx, ARP_DISCOVERY, 0);
    	xclRegWrite(handle, nlidx, ARP_DISCOVERY, 1); 
    	xclRegWrite(handle, nlidx, ARP_DISCOVERY, 0);

	//ARP
    	for (int i = 0; i < 256; i++) {
		unsigned valid_entry;
            	xclRegRead(handle, nlidx, ARP_VALID_OFFSET + (i / 4) * 4, &valid_entry);
            	valid_entry = (valid_entry >> ((i % 4) * 8)) & 0x1; 
            	if (valid_entry){
			printf("ARP valid entry found at %d\n", i);
		}	
	} 

	xclCloseContext(handle, xclbinId, nlidx);
    	xclOpenContext(handle, xclbinId, cmacidx, false);
    	unsigned tx_status = 0;
	unsigned rx_status = 0;
	xclRegRead(handle, cmacidx, 0x0200, &tx_status);
	xclRegRead(handle, cmacidx, 0x0200, &tx_status);
    	xclRegRead(handle, cmacidx, 0x0204, &rx_status);
	xclRegRead(handle, cmacidx, 0x0204, &rx_status);
    	xclCloseContext(handle, xclbinId, cmacidx);
    	printf("TX status %d\n", tx_status);
	printf("RX status %d\n", rx_status);

    	if (rx_status & 0x1){
		printf("Link is active\n");
	}
	else{
		printf("Link is not active\n"); 
		return EXIT_FAILURE;
	}
      
	// User logic stuff
	ul = clCreateKernel(program, "txkrnl", &err);
   	auto packet_size_bytes = sizeof(uint8_t) * packet_size_total;
   	buffer_packetdata = clCreateBuffer(context, CL_MEM_READ_ONLY, packet_size_bytes, NULL, &err);  
   	cl_uint pst = (cl_uint)packet_size_bytes;
   	cl_uint desti = 0;
  	clSetKernelArg(ul, 0,  sizeof(cl_mem), &buffer_packetdata);
   	clSetKernelArg(ul, 2,  sizeof(cl_uint), &pst); 
   	clSetKernelArg(ul, 3,  sizeof(cl_uint), &desti); 
   	clSetKernelArg(ul, 4,  sizeof(cl_uint), &enc);
	uint8_t *ptr_packetdata = (uint8_t*)clEnqueueMapBuffer(q, buffer_packetdata, CL_TRUE, CL_MAP_WRITE, 0, packet_size_bytes, 0, NULL, NULL, &err);
	// Read text file
    	char *code = readFile("./alice29.txt");
    	for (unsigned int i = 0; i < packet_size_total; i++){
		ptr_packetdata[i] = code[i];
	}
    	const cl_mem mems[1] = {buffer_packetdata}; 
    	clEnqueueMigrateMemObjects(q, 1, mems, 0, 0, NULL, NULL);
    	printf("Enqueue user kernel...\n");
    	clEnqueueTask(q, ul, 0, NULL, NULL);
    	clFinish(q);
    	printf("Message of size %d transmitted.\n", packet_size_total);
    	printf("Message at the transmitter:\n");
	
	for (unsigned int i = 0; i < packet_size_total; i++){
		printf("%c",ptr_packetdata[i]);
	} 
    	printf("\n"); 
       	return 0;	
}
