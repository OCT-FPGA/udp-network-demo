// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// s_axilite
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of arp_scan_i
//         bit 0  - arp_scan_i[0] (Read/Write)
//         others - reserved
// 0x014 : reserved
// 0x018 : Data signal of arp_scan_o
//         bit 0  - arp_scan_o[0] (Read)
//         others - reserved
// 0x01c : Control signal of arp_scan_o
//         bit 0  - arp_scan_o_ap_vld (Read/COR)
//         others - reserved
// 0x100 ~
// 0x1ff : Memory 'arpTable_valid' (256 * 8b)
//         Word n : bit [ 7: 0] - arpTable_valid[4n]
//                  bit [15: 8] - arpTable_valid[4n+1]
//                  bit [23:16] - arpTable_valid[4n+2]
//                  bit [31:24] - arpTable_valid[4n+3]
// 0x400 ~
// 0x7ff : Memory 'arpTable_ipAddress' (256 * 32b)
//         Word n : bit [31:0] - arpTable_ipAddress[n]
// 0x800 ~
// 0xfff : Memory 'arpTable_macAddress' (256 * 64b)
//         Word 2n   : bit [31:0] - arpTable_macAddress[n][31: 0]
//         Word 2n+1 : bit [31:0] - arpTable_macAddress[n][63:32]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_I_DATA          0x010
#define XARP_SERVER_S_AXILITE_BITS_ARP_SCAN_I_DATA          1
#define XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_O_DATA          0x018
#define XARP_SERVER_S_AXILITE_BITS_ARP_SCAN_O_DATA          1
#define XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_O_CTRL          0x01c
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_BASE      0x100
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_HIGH      0x1ff
#define XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_VALID          8
#define XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_VALID          256
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_BASE  0x400
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_HIGH  0x7ff
#define XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_IPADDRESS      32
#define XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_IPADDRESS      256
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_BASE 0x800
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_HIGH 0xfff
#define XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_MACADDRESS     64
#define XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_MACADDRESS     256

