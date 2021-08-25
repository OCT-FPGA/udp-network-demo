// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// s_axilite
// 0x0000 : reserved
// 0x0004 : reserved
// 0x0008 : reserved
// 0x000c : reserved
// 0x1500 : Data signal of arp_scan_V_i
//          bit 0  - arp_scan_V_i[0] (Read/Write)
//          others - reserved
// 0x1504 : reserved
// 0x1508 : Data signal of arp_scan_V_o
//          bit 0  - arp_scan_V_o[0] (Read)
//          others - reserved
// 0x150c : Control signal of arp_scan_V_o
//          bit 0  - arp_scan_V_o_ap_vld (Read/COR)
//          others - reserved
// 0x0800 ~
// 0x0fff : Memory 'arpTable_macAddress_V' (256 * 48b)
//          Word 2n   : bit [31:0] - arpTable_macAddress_V[n][31: 0]
//          Word 2n+1 : bit [15:0] - arpTable_macAddress_V[n][47:32]
//                      others     - reserved
// 0x1000 ~
// 0x13ff : Memory 'arpTable_ipAddress_V' (256 * 32b)
//          Word n : bit [31:0] - arpTable_ipAddress_V[n]
// 0x1400 ~
// 0x14ff : Memory 'arpTable_valid_V' (256 * 1b)
//          Word n : bit [ 0: 0] - arpTable_valid_V[4n]
//                   bit [ 8: 8] - arpTable_valid_V[4n+1]
//                   bit [16:16] - arpTable_valid_V[4n+2]
//                   bit [24:24] - arpTable_valid_V[4n+3]
//                   others      - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_V_I_DATA          0x1500
#define XARP_SERVER_S_AXILITE_BITS_ARP_SCAN_V_I_DATA          1
#define XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_V_O_DATA          0x1508
#define XARP_SERVER_S_AXILITE_BITS_ARP_SCAN_V_O_DATA          1
#define XARP_SERVER_S_AXILITE_ADDR_ARP_SCAN_V_O_CTRL          0x150c
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_V_BASE 0x0800
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_MACADDRESS_V_HIGH 0x0fff
#define XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_MACADDRESS_V     48
#define XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_MACADDRESS_V     256
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_V_BASE  0x1000
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_IPADDRESS_V_HIGH  0x13ff
#define XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_IPADDRESS_V      32
#define XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_IPADDRESS_V      256
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_V_BASE      0x1400
#define XARP_SERVER_S_AXILITE_ADDR_ARPTABLE_VALID_V_HIGH      0x14ff
#define XARP_SERVER_S_AXILITE_WIDTH_ARPTABLE_VALID_V          1
#define XARP_SERVER_S_AXILITE_DEPTH_ARPTABLE_VALID_V          256

