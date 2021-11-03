// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module udp_s_axilite_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [31:0]                   SocketTable_theirIP_0,
    output wire [31:0]                   SocketTable_theirIP_1,
    output wire [31:0]                   SocketTable_theirIP_2,
    output wire [31:0]                   SocketTable_theirIP_3,
    output wire [31:0]                   SocketTable_theirIP_4,
    output wire [31:0]                   SocketTable_theirIP_5,
    output wire [31:0]                   SocketTable_theirIP_6,
    output wire [31:0]                   SocketTable_theirIP_7,
    output wire [31:0]                   SocketTable_theirIP_8,
    output wire [31:0]                   SocketTable_theirIP_9,
    output wire [31:0]                   SocketTable_theirIP_10,
    output wire [31:0]                   SocketTable_theirIP_11,
    output wire [31:0]                   SocketTable_theirIP_12,
    output wire [31:0]                   SocketTable_theirIP_13,
    output wire [31:0]                   SocketTable_theirIP_14,
    output wire [31:0]                   SocketTable_theirIP_15,
    output wire [15:0]                   SocketTable_theirPort_0,
    output wire [15:0]                   SocketTable_theirPort_1,
    output wire [15:0]                   SocketTable_theirPort_2,
    output wire [15:0]                   SocketTable_theirPort_3,
    output wire [15:0]                   SocketTable_theirPort_4,
    output wire [15:0]                   SocketTable_theirPort_5,
    output wire [15:0]                   SocketTable_theirPort_6,
    output wire [15:0]                   SocketTable_theirPort_7,
    output wire [15:0]                   SocketTable_theirPort_8,
    output wire [15:0]                   SocketTable_theirPort_9,
    output wire [15:0]                   SocketTable_theirPort_10,
    output wire [15:0]                   SocketTable_theirPort_11,
    output wire [15:0]                   SocketTable_theirPort_12,
    output wire [15:0]                   SocketTable_theirPort_13,
    output wire [15:0]                   SocketTable_theirPort_14,
    output wire [15:0]                   SocketTable_theirPort_15,
    output wire [15:0]                   SocketTable_myPort_0,
    output wire [15:0]                   SocketTable_myPort_1,
    output wire [15:0]                   SocketTable_myPort_2,
    output wire [15:0]                   SocketTable_myPort_3,
    output wire [15:0]                   SocketTable_myPort_4,
    output wire [15:0]                   SocketTable_myPort_5,
    output wire [15:0]                   SocketTable_myPort_6,
    output wire [15:0]                   SocketTable_myPort_7,
    output wire [15:0]                   SocketTable_myPort_8,
    output wire [15:0]                   SocketTable_myPort_9,
    output wire [15:0]                   SocketTable_myPort_10,
    output wire [15:0]                   SocketTable_myPort_11,
    output wire [15:0]                   SocketTable_myPort_12,
    output wire [15:0]                   SocketTable_myPort_13,
    output wire [15:0]                   SocketTable_myPort_14,
    output wire [15:0]                   SocketTable_myPort_15,
    output wire [0:0]                    SocketTable_valid_0,
    output wire [0:0]                    SocketTable_valid_1,
    output wire [0:0]                    SocketTable_valid_2,
    output wire [0:0]                    SocketTable_valid_3,
    output wire [0:0]                    SocketTable_valid_4,
    output wire [0:0]                    SocketTable_valid_5,
    output wire [0:0]                    SocketTable_valid_6,
    output wire [0:0]                    SocketTable_valid_7,
    output wire [0:0]                    SocketTable_valid_8,
    output wire [0:0]                    SocketTable_valid_9,
    output wire [0:0]                    SocketTable_valid_10,
    output wire [0:0]                    SocketTable_valid_11,
    output wire [0:0]                    SocketTable_valid_12,
    output wire [0:0]                    SocketTable_valid_13,
    output wire [0:0]                    SocketTable_valid_14,
    output wire [0:0]                    SocketTable_valid_15,
    input  wire [15:0]                   numberSockets,
    input  wire                          numberSockets_ap_vld
);
//------------------------Address Info-------------------
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of SocketTable_theirIP_0
//         bit 31~0 - SocketTable_theirIP_0[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of SocketTable_theirIP_1
//         bit 31~0 - SocketTable_theirIP_1[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of SocketTable_theirIP_2
//         bit 31~0 - SocketTable_theirIP_2[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of SocketTable_theirIP_3
//         bit 31~0 - SocketTable_theirIP_3[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of SocketTable_theirIP_4
//         bit 31~0 - SocketTable_theirIP_4[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of SocketTable_theirIP_5
//         bit 31~0 - SocketTable_theirIP_5[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of SocketTable_theirIP_6
//         bit 31~0 - SocketTable_theirIP_6[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of SocketTable_theirIP_7
//         bit 31~0 - SocketTable_theirIP_7[31:0] (Read/Write)
// 0x04c : reserved
// 0x050 : Data signal of SocketTable_theirIP_8
//         bit 31~0 - SocketTable_theirIP_8[31:0] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of SocketTable_theirIP_9
//         bit 31~0 - SocketTable_theirIP_9[31:0] (Read/Write)
// 0x05c : reserved
// 0x060 : Data signal of SocketTable_theirIP_10
//         bit 31~0 - SocketTable_theirIP_10[31:0] (Read/Write)
// 0x064 : reserved
// 0x068 : Data signal of SocketTable_theirIP_11
//         bit 31~0 - SocketTable_theirIP_11[31:0] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of SocketTable_theirIP_12
//         bit 31~0 - SocketTable_theirIP_12[31:0] (Read/Write)
// 0x074 : reserved
// 0x078 : Data signal of SocketTable_theirIP_13
//         bit 31~0 - SocketTable_theirIP_13[31:0] (Read/Write)
// 0x07c : reserved
// 0x080 : Data signal of SocketTable_theirIP_14
//         bit 31~0 - SocketTable_theirIP_14[31:0] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of SocketTable_theirIP_15
//         bit 31~0 - SocketTable_theirIP_15[31:0] (Read/Write)
// 0x08c : reserved
// 0x090 : Data signal of SocketTable_theirPort_0
//         bit 15~0 - SocketTable_theirPort_0[15:0] (Read/Write)
//         others   - reserved
// 0x094 : reserved
// 0x098 : Data signal of SocketTable_theirPort_1
//         bit 15~0 - SocketTable_theirPort_1[15:0] (Read/Write)
//         others   - reserved
// 0x09c : reserved
// 0x0a0 : Data signal of SocketTable_theirPort_2
//         bit 15~0 - SocketTable_theirPort_2[15:0] (Read/Write)
//         others   - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of SocketTable_theirPort_3
//         bit 15~0 - SocketTable_theirPort_3[15:0] (Read/Write)
//         others   - reserved
// 0x0ac : reserved
// 0x0b0 : Data signal of SocketTable_theirPort_4
//         bit 15~0 - SocketTable_theirPort_4[15:0] (Read/Write)
//         others   - reserved
// 0x0b4 : reserved
// 0x0b8 : Data signal of SocketTable_theirPort_5
//         bit 15~0 - SocketTable_theirPort_5[15:0] (Read/Write)
//         others   - reserved
// 0x0bc : reserved
// 0x0c0 : Data signal of SocketTable_theirPort_6
//         bit 15~0 - SocketTable_theirPort_6[15:0] (Read/Write)
//         others   - reserved
// 0x0c4 : reserved
// 0x0c8 : Data signal of SocketTable_theirPort_7
//         bit 15~0 - SocketTable_theirPort_7[15:0] (Read/Write)
//         others   - reserved
// 0x0cc : reserved
// 0x0d0 : Data signal of SocketTable_theirPort_8
//         bit 15~0 - SocketTable_theirPort_8[15:0] (Read/Write)
//         others   - reserved
// 0x0d4 : reserved
// 0x0d8 : Data signal of SocketTable_theirPort_9
//         bit 15~0 - SocketTable_theirPort_9[15:0] (Read/Write)
//         others   - reserved
// 0x0dc : reserved
// 0x0e0 : Data signal of SocketTable_theirPort_10
//         bit 15~0 - SocketTable_theirPort_10[15:0] (Read/Write)
//         others   - reserved
// 0x0e4 : reserved
// 0x0e8 : Data signal of SocketTable_theirPort_11
//         bit 15~0 - SocketTable_theirPort_11[15:0] (Read/Write)
//         others   - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of SocketTable_theirPort_12
//         bit 15~0 - SocketTable_theirPort_12[15:0] (Read/Write)
//         others   - reserved
// 0x0f4 : reserved
// 0x0f8 : Data signal of SocketTable_theirPort_13
//         bit 15~0 - SocketTable_theirPort_13[15:0] (Read/Write)
//         others   - reserved
// 0x0fc : reserved
// 0x100 : Data signal of SocketTable_theirPort_14
//         bit 15~0 - SocketTable_theirPort_14[15:0] (Read/Write)
//         others   - reserved
// 0x104 : reserved
// 0x108 : Data signal of SocketTable_theirPort_15
//         bit 15~0 - SocketTable_theirPort_15[15:0] (Read/Write)
//         others   - reserved
// 0x10c : reserved
// 0x110 : Data signal of SocketTable_myPort_0
//         bit 15~0 - SocketTable_myPort_0[15:0] (Read/Write)
//         others   - reserved
// 0x114 : reserved
// 0x118 : Data signal of SocketTable_myPort_1
//         bit 15~0 - SocketTable_myPort_1[15:0] (Read/Write)
//         others   - reserved
// 0x11c : reserved
// 0x120 : Data signal of SocketTable_myPort_2
//         bit 15~0 - SocketTable_myPort_2[15:0] (Read/Write)
//         others   - reserved
// 0x124 : reserved
// 0x128 : Data signal of SocketTable_myPort_3
//         bit 15~0 - SocketTable_myPort_3[15:0] (Read/Write)
//         others   - reserved
// 0x12c : reserved
// 0x130 : Data signal of SocketTable_myPort_4
//         bit 15~0 - SocketTable_myPort_4[15:0] (Read/Write)
//         others   - reserved
// 0x134 : reserved
// 0x138 : Data signal of SocketTable_myPort_5
//         bit 15~0 - SocketTable_myPort_5[15:0] (Read/Write)
//         others   - reserved
// 0x13c : reserved
// 0x140 : Data signal of SocketTable_myPort_6
//         bit 15~0 - SocketTable_myPort_6[15:0] (Read/Write)
//         others   - reserved
// 0x144 : reserved
// 0x148 : Data signal of SocketTable_myPort_7
//         bit 15~0 - SocketTable_myPort_7[15:0] (Read/Write)
//         others   - reserved
// 0x14c : reserved
// 0x150 : Data signal of SocketTable_myPort_8
//         bit 15~0 - SocketTable_myPort_8[15:0] (Read/Write)
//         others   - reserved
// 0x154 : reserved
// 0x158 : Data signal of SocketTable_myPort_9
//         bit 15~0 - SocketTable_myPort_9[15:0] (Read/Write)
//         others   - reserved
// 0x15c : reserved
// 0x160 : Data signal of SocketTable_myPort_10
//         bit 15~0 - SocketTable_myPort_10[15:0] (Read/Write)
//         others   - reserved
// 0x164 : reserved
// 0x168 : Data signal of SocketTable_myPort_11
//         bit 15~0 - SocketTable_myPort_11[15:0] (Read/Write)
//         others   - reserved
// 0x16c : reserved
// 0x170 : Data signal of SocketTable_myPort_12
//         bit 15~0 - SocketTable_myPort_12[15:0] (Read/Write)
//         others   - reserved
// 0x174 : reserved
// 0x178 : Data signal of SocketTable_myPort_13
//         bit 15~0 - SocketTable_myPort_13[15:0] (Read/Write)
//         others   - reserved
// 0x17c : reserved
// 0x180 : Data signal of SocketTable_myPort_14
//         bit 15~0 - SocketTable_myPort_14[15:0] (Read/Write)
//         others   - reserved
// 0x184 : reserved
// 0x188 : Data signal of SocketTable_myPort_15
//         bit 15~0 - SocketTable_myPort_15[15:0] (Read/Write)
//         others   - reserved
// 0x18c : reserved
// 0x190 : Data signal of SocketTable_valid_0
//         bit 0  - SocketTable_valid_0[0] (Read/Write)
//         others - reserved
// 0x194 : reserved
// 0x198 : Data signal of SocketTable_valid_1
//         bit 0  - SocketTable_valid_1[0] (Read/Write)
//         others - reserved
// 0x19c : reserved
// 0x1a0 : Data signal of SocketTable_valid_2
//         bit 0  - SocketTable_valid_2[0] (Read/Write)
//         others - reserved
// 0x1a4 : reserved
// 0x1a8 : Data signal of SocketTable_valid_3
//         bit 0  - SocketTable_valid_3[0] (Read/Write)
//         others - reserved
// 0x1ac : reserved
// 0x1b0 : Data signal of SocketTable_valid_4
//         bit 0  - SocketTable_valid_4[0] (Read/Write)
//         others - reserved
// 0x1b4 : reserved
// 0x1b8 : Data signal of SocketTable_valid_5
//         bit 0  - SocketTable_valid_5[0] (Read/Write)
//         others - reserved
// 0x1bc : reserved
// 0x1c0 : Data signal of SocketTable_valid_6
//         bit 0  - SocketTable_valid_6[0] (Read/Write)
//         others - reserved
// 0x1c4 : reserved
// 0x1c8 : Data signal of SocketTable_valid_7
//         bit 0  - SocketTable_valid_7[0] (Read/Write)
//         others - reserved
// 0x1cc : reserved
// 0x1d0 : Data signal of SocketTable_valid_8
//         bit 0  - SocketTable_valid_8[0] (Read/Write)
//         others - reserved
// 0x1d4 : reserved
// 0x1d8 : Data signal of SocketTable_valid_9
//         bit 0  - SocketTable_valid_9[0] (Read/Write)
//         others - reserved
// 0x1dc : reserved
// 0x1e0 : Data signal of SocketTable_valid_10
//         bit 0  - SocketTable_valid_10[0] (Read/Write)
//         others - reserved
// 0x1e4 : reserved
// 0x1e8 : Data signal of SocketTable_valid_11
//         bit 0  - SocketTable_valid_11[0] (Read/Write)
//         others - reserved
// 0x1ec : reserved
// 0x1f0 : Data signal of SocketTable_valid_12
//         bit 0  - SocketTable_valid_12[0] (Read/Write)
//         others - reserved
// 0x1f4 : reserved
// 0x1f8 : Data signal of SocketTable_valid_13
//         bit 0  - SocketTable_valid_13[0] (Read/Write)
//         others - reserved
// 0x1fc : reserved
// 0x200 : Data signal of SocketTable_valid_14
//         bit 0  - SocketTable_valid_14[0] (Read/Write)
//         others - reserved
// 0x204 : reserved
// 0x208 : Data signal of SocketTable_valid_15
//         bit 0  - SocketTable_valid_15[0] (Read/Write)
//         others - reserved
// 0x20c : reserved
// 0x210 : Data signal of numberSockets
//         bit 15~0 - numberSockets[15:0] (Read)
//         others   - reserved
// 0x214 : Control signal of numberSockets
//         bit 0  - numberSockets_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_SOCKETTABLE_THEIRIP_0_DATA_0    = 10'h010,
    ADDR_SOCKETTABLE_THEIRIP_0_CTRL      = 10'h014,
    ADDR_SOCKETTABLE_THEIRIP_1_DATA_0    = 10'h018,
    ADDR_SOCKETTABLE_THEIRIP_1_CTRL      = 10'h01c,
    ADDR_SOCKETTABLE_THEIRIP_2_DATA_0    = 10'h020,
    ADDR_SOCKETTABLE_THEIRIP_2_CTRL      = 10'h024,
    ADDR_SOCKETTABLE_THEIRIP_3_DATA_0    = 10'h028,
    ADDR_SOCKETTABLE_THEIRIP_3_CTRL      = 10'h02c,
    ADDR_SOCKETTABLE_THEIRIP_4_DATA_0    = 10'h030,
    ADDR_SOCKETTABLE_THEIRIP_4_CTRL      = 10'h034,
    ADDR_SOCKETTABLE_THEIRIP_5_DATA_0    = 10'h038,
    ADDR_SOCKETTABLE_THEIRIP_5_CTRL      = 10'h03c,
    ADDR_SOCKETTABLE_THEIRIP_6_DATA_0    = 10'h040,
    ADDR_SOCKETTABLE_THEIRIP_6_CTRL      = 10'h044,
    ADDR_SOCKETTABLE_THEIRIP_7_DATA_0    = 10'h048,
    ADDR_SOCKETTABLE_THEIRIP_7_CTRL      = 10'h04c,
    ADDR_SOCKETTABLE_THEIRIP_8_DATA_0    = 10'h050,
    ADDR_SOCKETTABLE_THEIRIP_8_CTRL      = 10'h054,
    ADDR_SOCKETTABLE_THEIRIP_9_DATA_0    = 10'h058,
    ADDR_SOCKETTABLE_THEIRIP_9_CTRL      = 10'h05c,
    ADDR_SOCKETTABLE_THEIRIP_10_DATA_0   = 10'h060,
    ADDR_SOCKETTABLE_THEIRIP_10_CTRL     = 10'h064,
    ADDR_SOCKETTABLE_THEIRIP_11_DATA_0   = 10'h068,
    ADDR_SOCKETTABLE_THEIRIP_11_CTRL     = 10'h06c,
    ADDR_SOCKETTABLE_THEIRIP_12_DATA_0   = 10'h070,
    ADDR_SOCKETTABLE_THEIRIP_12_CTRL     = 10'h074,
    ADDR_SOCKETTABLE_THEIRIP_13_DATA_0   = 10'h078,
    ADDR_SOCKETTABLE_THEIRIP_13_CTRL     = 10'h07c,
    ADDR_SOCKETTABLE_THEIRIP_14_DATA_0   = 10'h080,
    ADDR_SOCKETTABLE_THEIRIP_14_CTRL     = 10'h084,
    ADDR_SOCKETTABLE_THEIRIP_15_DATA_0   = 10'h088,
    ADDR_SOCKETTABLE_THEIRIP_15_CTRL     = 10'h08c,
    ADDR_SOCKETTABLE_THEIRPORT_0_DATA_0  = 10'h090,
    ADDR_SOCKETTABLE_THEIRPORT_0_CTRL    = 10'h094,
    ADDR_SOCKETTABLE_THEIRPORT_1_DATA_0  = 10'h098,
    ADDR_SOCKETTABLE_THEIRPORT_1_CTRL    = 10'h09c,
    ADDR_SOCKETTABLE_THEIRPORT_2_DATA_0  = 10'h0a0,
    ADDR_SOCKETTABLE_THEIRPORT_2_CTRL    = 10'h0a4,
    ADDR_SOCKETTABLE_THEIRPORT_3_DATA_0  = 10'h0a8,
    ADDR_SOCKETTABLE_THEIRPORT_3_CTRL    = 10'h0ac,
    ADDR_SOCKETTABLE_THEIRPORT_4_DATA_0  = 10'h0b0,
    ADDR_SOCKETTABLE_THEIRPORT_4_CTRL    = 10'h0b4,
    ADDR_SOCKETTABLE_THEIRPORT_5_DATA_0  = 10'h0b8,
    ADDR_SOCKETTABLE_THEIRPORT_5_CTRL    = 10'h0bc,
    ADDR_SOCKETTABLE_THEIRPORT_6_DATA_0  = 10'h0c0,
    ADDR_SOCKETTABLE_THEIRPORT_6_CTRL    = 10'h0c4,
    ADDR_SOCKETTABLE_THEIRPORT_7_DATA_0  = 10'h0c8,
    ADDR_SOCKETTABLE_THEIRPORT_7_CTRL    = 10'h0cc,
    ADDR_SOCKETTABLE_THEIRPORT_8_DATA_0  = 10'h0d0,
    ADDR_SOCKETTABLE_THEIRPORT_8_CTRL    = 10'h0d4,
    ADDR_SOCKETTABLE_THEIRPORT_9_DATA_0  = 10'h0d8,
    ADDR_SOCKETTABLE_THEIRPORT_9_CTRL    = 10'h0dc,
    ADDR_SOCKETTABLE_THEIRPORT_10_DATA_0 = 10'h0e0,
    ADDR_SOCKETTABLE_THEIRPORT_10_CTRL   = 10'h0e4,
    ADDR_SOCKETTABLE_THEIRPORT_11_DATA_0 = 10'h0e8,
    ADDR_SOCKETTABLE_THEIRPORT_11_CTRL   = 10'h0ec,
    ADDR_SOCKETTABLE_THEIRPORT_12_DATA_0 = 10'h0f0,
    ADDR_SOCKETTABLE_THEIRPORT_12_CTRL   = 10'h0f4,
    ADDR_SOCKETTABLE_THEIRPORT_13_DATA_0 = 10'h0f8,
    ADDR_SOCKETTABLE_THEIRPORT_13_CTRL   = 10'h0fc,
    ADDR_SOCKETTABLE_THEIRPORT_14_DATA_0 = 10'h100,
    ADDR_SOCKETTABLE_THEIRPORT_14_CTRL   = 10'h104,
    ADDR_SOCKETTABLE_THEIRPORT_15_DATA_0 = 10'h108,
    ADDR_SOCKETTABLE_THEIRPORT_15_CTRL   = 10'h10c,
    ADDR_SOCKETTABLE_MYPORT_0_DATA_0     = 10'h110,
    ADDR_SOCKETTABLE_MYPORT_0_CTRL       = 10'h114,
    ADDR_SOCKETTABLE_MYPORT_1_DATA_0     = 10'h118,
    ADDR_SOCKETTABLE_MYPORT_1_CTRL       = 10'h11c,
    ADDR_SOCKETTABLE_MYPORT_2_DATA_0     = 10'h120,
    ADDR_SOCKETTABLE_MYPORT_2_CTRL       = 10'h124,
    ADDR_SOCKETTABLE_MYPORT_3_DATA_0     = 10'h128,
    ADDR_SOCKETTABLE_MYPORT_3_CTRL       = 10'h12c,
    ADDR_SOCKETTABLE_MYPORT_4_DATA_0     = 10'h130,
    ADDR_SOCKETTABLE_MYPORT_4_CTRL       = 10'h134,
    ADDR_SOCKETTABLE_MYPORT_5_DATA_0     = 10'h138,
    ADDR_SOCKETTABLE_MYPORT_5_CTRL       = 10'h13c,
    ADDR_SOCKETTABLE_MYPORT_6_DATA_0     = 10'h140,
    ADDR_SOCKETTABLE_MYPORT_6_CTRL       = 10'h144,
    ADDR_SOCKETTABLE_MYPORT_7_DATA_0     = 10'h148,
    ADDR_SOCKETTABLE_MYPORT_7_CTRL       = 10'h14c,
    ADDR_SOCKETTABLE_MYPORT_8_DATA_0     = 10'h150,
    ADDR_SOCKETTABLE_MYPORT_8_CTRL       = 10'h154,
    ADDR_SOCKETTABLE_MYPORT_9_DATA_0     = 10'h158,
    ADDR_SOCKETTABLE_MYPORT_9_CTRL       = 10'h15c,
    ADDR_SOCKETTABLE_MYPORT_10_DATA_0    = 10'h160,
    ADDR_SOCKETTABLE_MYPORT_10_CTRL      = 10'h164,
    ADDR_SOCKETTABLE_MYPORT_11_DATA_0    = 10'h168,
    ADDR_SOCKETTABLE_MYPORT_11_CTRL      = 10'h16c,
    ADDR_SOCKETTABLE_MYPORT_12_DATA_0    = 10'h170,
    ADDR_SOCKETTABLE_MYPORT_12_CTRL      = 10'h174,
    ADDR_SOCKETTABLE_MYPORT_13_DATA_0    = 10'h178,
    ADDR_SOCKETTABLE_MYPORT_13_CTRL      = 10'h17c,
    ADDR_SOCKETTABLE_MYPORT_14_DATA_0    = 10'h180,
    ADDR_SOCKETTABLE_MYPORT_14_CTRL      = 10'h184,
    ADDR_SOCKETTABLE_MYPORT_15_DATA_0    = 10'h188,
    ADDR_SOCKETTABLE_MYPORT_15_CTRL      = 10'h18c,
    ADDR_SOCKETTABLE_VALID_0_DATA_0      = 10'h190,
    ADDR_SOCKETTABLE_VALID_0_CTRL        = 10'h194,
    ADDR_SOCKETTABLE_VALID_1_DATA_0      = 10'h198,
    ADDR_SOCKETTABLE_VALID_1_CTRL        = 10'h19c,
    ADDR_SOCKETTABLE_VALID_2_DATA_0      = 10'h1a0,
    ADDR_SOCKETTABLE_VALID_2_CTRL        = 10'h1a4,
    ADDR_SOCKETTABLE_VALID_3_DATA_0      = 10'h1a8,
    ADDR_SOCKETTABLE_VALID_3_CTRL        = 10'h1ac,
    ADDR_SOCKETTABLE_VALID_4_DATA_0      = 10'h1b0,
    ADDR_SOCKETTABLE_VALID_4_CTRL        = 10'h1b4,
    ADDR_SOCKETTABLE_VALID_5_DATA_0      = 10'h1b8,
    ADDR_SOCKETTABLE_VALID_5_CTRL        = 10'h1bc,
    ADDR_SOCKETTABLE_VALID_6_DATA_0      = 10'h1c0,
    ADDR_SOCKETTABLE_VALID_6_CTRL        = 10'h1c4,
    ADDR_SOCKETTABLE_VALID_7_DATA_0      = 10'h1c8,
    ADDR_SOCKETTABLE_VALID_7_CTRL        = 10'h1cc,
    ADDR_SOCKETTABLE_VALID_8_DATA_0      = 10'h1d0,
    ADDR_SOCKETTABLE_VALID_8_CTRL        = 10'h1d4,
    ADDR_SOCKETTABLE_VALID_9_DATA_0      = 10'h1d8,
    ADDR_SOCKETTABLE_VALID_9_CTRL        = 10'h1dc,
    ADDR_SOCKETTABLE_VALID_10_DATA_0     = 10'h1e0,
    ADDR_SOCKETTABLE_VALID_10_CTRL       = 10'h1e4,
    ADDR_SOCKETTABLE_VALID_11_DATA_0     = 10'h1e8,
    ADDR_SOCKETTABLE_VALID_11_CTRL       = 10'h1ec,
    ADDR_SOCKETTABLE_VALID_12_DATA_0     = 10'h1f0,
    ADDR_SOCKETTABLE_VALID_12_CTRL       = 10'h1f4,
    ADDR_SOCKETTABLE_VALID_13_DATA_0     = 10'h1f8,
    ADDR_SOCKETTABLE_VALID_13_CTRL       = 10'h1fc,
    ADDR_SOCKETTABLE_VALID_14_DATA_0     = 10'h200,
    ADDR_SOCKETTABLE_VALID_14_CTRL       = 10'h204,
    ADDR_SOCKETTABLE_VALID_15_DATA_0     = 10'h208,
    ADDR_SOCKETTABLE_VALID_15_CTRL       = 10'h20c,
    ADDR_NUMBERSOCKETS_DATA_0            = 10'h210,
    ADDR_NUMBERSOCKETS_CTRL              = 10'h214,
    WRIDLE                               = 2'd0,
    WRDATA                               = 2'd1,
    WRRESP                               = 2'd2,
    WRRESET                              = 2'd3,
    RDIDLE                               = 2'd0,
    RDDATA                               = 2'd1,
    RDRESET                              = 2'd2,
    ADDR_BITS                = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_SocketTable_theirIP_0 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_1 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_2 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_3 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_4 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_5 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_6 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_7 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_8 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_9 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_10 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_11 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_12 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_13 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_14 = 'b0;
    reg  [31:0]                   int_SocketTable_theirIP_15 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_0 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_1 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_2 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_3 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_4 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_5 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_6 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_7 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_8 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_9 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_10 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_11 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_12 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_13 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_14 = 'b0;
    reg  [15:0]                   int_SocketTable_theirPort_15 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_0 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_1 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_2 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_3 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_4 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_5 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_6 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_7 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_8 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_9 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_10 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_11 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_12 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_13 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_14 = 'b0;
    reg  [15:0]                   int_SocketTable_myPort_15 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_0 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_1 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_2 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_3 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_4 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_5 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_6 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_7 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_8 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_9 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_10 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_11 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_12 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_13 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_14 = 'b0;
    reg  [0:0]                    int_SocketTable_valid_15 = 'b0;
    reg                           int_numberSockets_ap_vld;
    reg  [15:0]                   int_numberSockets = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_SOCKETTABLE_THEIRIP_0_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_0[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_1_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_1[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_2_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_2[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_3_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_3[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_4_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_4[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_5_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_5[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_6_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_6[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_7_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_7[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_8_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_8[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_9_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_9[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_10_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_10[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_11_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_11[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_12_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_12[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_13_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_13[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_14_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_14[31:0];
                end
                ADDR_SOCKETTABLE_THEIRIP_15_DATA_0: begin
                    rdata <= int_SocketTable_theirIP_15[31:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_0_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_0[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_1_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_1[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_2_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_2[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_3_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_3[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_4_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_4[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_5_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_5[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_6_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_6[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_7_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_7[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_8_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_8[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_9_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_9[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_10_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_10[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_11_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_11[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_12_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_12[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_13_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_13[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_14_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_14[15:0];
                end
                ADDR_SOCKETTABLE_THEIRPORT_15_DATA_0: begin
                    rdata <= int_SocketTable_theirPort_15[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_0_DATA_0: begin
                    rdata <= int_SocketTable_myPort_0[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_1_DATA_0: begin
                    rdata <= int_SocketTable_myPort_1[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_2_DATA_0: begin
                    rdata <= int_SocketTable_myPort_2[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_3_DATA_0: begin
                    rdata <= int_SocketTable_myPort_3[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_4_DATA_0: begin
                    rdata <= int_SocketTable_myPort_4[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_5_DATA_0: begin
                    rdata <= int_SocketTable_myPort_5[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_6_DATA_0: begin
                    rdata <= int_SocketTable_myPort_6[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_7_DATA_0: begin
                    rdata <= int_SocketTable_myPort_7[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_8_DATA_0: begin
                    rdata <= int_SocketTable_myPort_8[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_9_DATA_0: begin
                    rdata <= int_SocketTable_myPort_9[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_10_DATA_0: begin
                    rdata <= int_SocketTable_myPort_10[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_11_DATA_0: begin
                    rdata <= int_SocketTable_myPort_11[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_12_DATA_0: begin
                    rdata <= int_SocketTable_myPort_12[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_13_DATA_0: begin
                    rdata <= int_SocketTable_myPort_13[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_14_DATA_0: begin
                    rdata <= int_SocketTable_myPort_14[15:0];
                end
                ADDR_SOCKETTABLE_MYPORT_15_DATA_0: begin
                    rdata <= int_SocketTable_myPort_15[15:0];
                end
                ADDR_SOCKETTABLE_VALID_0_DATA_0: begin
                    rdata <= int_SocketTable_valid_0[0:0];
                end
                ADDR_SOCKETTABLE_VALID_1_DATA_0: begin
                    rdata <= int_SocketTable_valid_1[0:0];
                end
                ADDR_SOCKETTABLE_VALID_2_DATA_0: begin
                    rdata <= int_SocketTable_valid_2[0:0];
                end
                ADDR_SOCKETTABLE_VALID_3_DATA_0: begin
                    rdata <= int_SocketTable_valid_3[0:0];
                end
                ADDR_SOCKETTABLE_VALID_4_DATA_0: begin
                    rdata <= int_SocketTable_valid_4[0:0];
                end
                ADDR_SOCKETTABLE_VALID_5_DATA_0: begin
                    rdata <= int_SocketTable_valid_5[0:0];
                end
                ADDR_SOCKETTABLE_VALID_6_DATA_0: begin
                    rdata <= int_SocketTable_valid_6[0:0];
                end
                ADDR_SOCKETTABLE_VALID_7_DATA_0: begin
                    rdata <= int_SocketTable_valid_7[0:0];
                end
                ADDR_SOCKETTABLE_VALID_8_DATA_0: begin
                    rdata <= int_SocketTable_valid_8[0:0];
                end
                ADDR_SOCKETTABLE_VALID_9_DATA_0: begin
                    rdata <= int_SocketTable_valid_9[0:0];
                end
                ADDR_SOCKETTABLE_VALID_10_DATA_0: begin
                    rdata <= int_SocketTable_valid_10[0:0];
                end
                ADDR_SOCKETTABLE_VALID_11_DATA_0: begin
                    rdata <= int_SocketTable_valid_11[0:0];
                end
                ADDR_SOCKETTABLE_VALID_12_DATA_0: begin
                    rdata <= int_SocketTable_valid_12[0:0];
                end
                ADDR_SOCKETTABLE_VALID_13_DATA_0: begin
                    rdata <= int_SocketTable_valid_13[0:0];
                end
                ADDR_SOCKETTABLE_VALID_14_DATA_0: begin
                    rdata <= int_SocketTable_valid_14[0:0];
                end
                ADDR_SOCKETTABLE_VALID_15_DATA_0: begin
                    rdata <= int_SocketTable_valid_15[0:0];
                end
                ADDR_NUMBERSOCKETS_DATA_0: begin
                    rdata <= int_numberSockets[15:0];
                end
                ADDR_NUMBERSOCKETS_CTRL: begin
                    rdata[0] <= int_numberSockets_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign SocketTable_theirIP_0    = int_SocketTable_theirIP_0;
assign SocketTable_theirIP_1    = int_SocketTable_theirIP_1;
assign SocketTable_theirIP_2    = int_SocketTable_theirIP_2;
assign SocketTable_theirIP_3    = int_SocketTable_theirIP_3;
assign SocketTable_theirIP_4    = int_SocketTable_theirIP_4;
assign SocketTable_theirIP_5    = int_SocketTable_theirIP_5;
assign SocketTable_theirIP_6    = int_SocketTable_theirIP_6;
assign SocketTable_theirIP_7    = int_SocketTable_theirIP_7;
assign SocketTable_theirIP_8    = int_SocketTable_theirIP_8;
assign SocketTable_theirIP_9    = int_SocketTable_theirIP_9;
assign SocketTable_theirIP_10   = int_SocketTable_theirIP_10;
assign SocketTable_theirIP_11   = int_SocketTable_theirIP_11;
assign SocketTable_theirIP_12   = int_SocketTable_theirIP_12;
assign SocketTable_theirIP_13   = int_SocketTable_theirIP_13;
assign SocketTable_theirIP_14   = int_SocketTable_theirIP_14;
assign SocketTable_theirIP_15   = int_SocketTable_theirIP_15;
assign SocketTable_theirPort_0  = int_SocketTable_theirPort_0;
assign SocketTable_theirPort_1  = int_SocketTable_theirPort_1;
assign SocketTable_theirPort_2  = int_SocketTable_theirPort_2;
assign SocketTable_theirPort_3  = int_SocketTable_theirPort_3;
assign SocketTable_theirPort_4  = int_SocketTable_theirPort_4;
assign SocketTable_theirPort_5  = int_SocketTable_theirPort_5;
assign SocketTable_theirPort_6  = int_SocketTable_theirPort_6;
assign SocketTable_theirPort_7  = int_SocketTable_theirPort_7;
assign SocketTable_theirPort_8  = int_SocketTable_theirPort_8;
assign SocketTable_theirPort_9  = int_SocketTable_theirPort_9;
assign SocketTable_theirPort_10 = int_SocketTable_theirPort_10;
assign SocketTable_theirPort_11 = int_SocketTable_theirPort_11;
assign SocketTable_theirPort_12 = int_SocketTable_theirPort_12;
assign SocketTable_theirPort_13 = int_SocketTable_theirPort_13;
assign SocketTable_theirPort_14 = int_SocketTable_theirPort_14;
assign SocketTable_theirPort_15 = int_SocketTable_theirPort_15;
assign SocketTable_myPort_0     = int_SocketTable_myPort_0;
assign SocketTable_myPort_1     = int_SocketTable_myPort_1;
assign SocketTable_myPort_2     = int_SocketTable_myPort_2;
assign SocketTable_myPort_3     = int_SocketTable_myPort_3;
assign SocketTable_myPort_4     = int_SocketTable_myPort_4;
assign SocketTable_myPort_5     = int_SocketTable_myPort_5;
assign SocketTable_myPort_6     = int_SocketTable_myPort_6;
assign SocketTable_myPort_7     = int_SocketTable_myPort_7;
assign SocketTable_myPort_8     = int_SocketTable_myPort_8;
assign SocketTable_myPort_9     = int_SocketTable_myPort_9;
assign SocketTable_myPort_10    = int_SocketTable_myPort_10;
assign SocketTable_myPort_11    = int_SocketTable_myPort_11;
assign SocketTable_myPort_12    = int_SocketTable_myPort_12;
assign SocketTable_myPort_13    = int_SocketTable_myPort_13;
assign SocketTable_myPort_14    = int_SocketTable_myPort_14;
assign SocketTable_myPort_15    = int_SocketTable_myPort_15;
assign SocketTable_valid_0      = int_SocketTable_valid_0;
assign SocketTable_valid_1      = int_SocketTable_valid_1;
assign SocketTable_valid_2      = int_SocketTable_valid_2;
assign SocketTable_valid_3      = int_SocketTable_valid_3;
assign SocketTable_valid_4      = int_SocketTable_valid_4;
assign SocketTable_valid_5      = int_SocketTable_valid_5;
assign SocketTable_valid_6      = int_SocketTable_valid_6;
assign SocketTable_valid_7      = int_SocketTable_valid_7;
assign SocketTable_valid_8      = int_SocketTable_valid_8;
assign SocketTable_valid_9      = int_SocketTable_valid_9;
assign SocketTable_valid_10     = int_SocketTable_valid_10;
assign SocketTable_valid_11     = int_SocketTable_valid_11;
assign SocketTable_valid_12     = int_SocketTable_valid_12;
assign SocketTable_valid_13     = int_SocketTable_valid_13;
assign SocketTable_valid_14     = int_SocketTable_valid_14;
assign SocketTable_valid_15     = int_SocketTable_valid_15;
// int_SocketTable_theirIP_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_0_DATA_0)
            int_SocketTable_theirIP_0[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_0[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_1_DATA_0)
            int_SocketTable_theirIP_1[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_1[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_2_DATA_0)
            int_SocketTable_theirIP_2[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_2[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_3_DATA_0)
            int_SocketTable_theirIP_3[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_3[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_4_DATA_0)
            int_SocketTable_theirIP_4[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_4[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_5_DATA_0)
            int_SocketTable_theirIP_5[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_5[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_6_DATA_0)
            int_SocketTable_theirIP_6[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_6[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_7_DATA_0)
            int_SocketTable_theirIP_7[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_7[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_8_DATA_0)
            int_SocketTable_theirIP_8[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_8[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_9_DATA_0)
            int_SocketTable_theirIP_9[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_9[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_10_DATA_0)
            int_SocketTable_theirIP_10[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_10[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_11_DATA_0)
            int_SocketTable_theirIP_11[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_11[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_12_DATA_0)
            int_SocketTable_theirIP_12[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_12[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_13_DATA_0)
            int_SocketTable_theirIP_13[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_13[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_14_DATA_0)
            int_SocketTable_theirIP_14[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_14[31:0] & ~wmask);
    end
end

// int_SocketTable_theirIP_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirIP_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRIP_15_DATA_0)
            int_SocketTable_theirIP_15[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirIP_15[31:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_0_DATA_0)
            int_SocketTable_theirPort_0[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_0[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_1_DATA_0)
            int_SocketTable_theirPort_1[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_1[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_2_DATA_0)
            int_SocketTable_theirPort_2[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_2[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_3_DATA_0)
            int_SocketTable_theirPort_3[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_3[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_4[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_4[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_4_DATA_0)
            int_SocketTable_theirPort_4[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_4[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_5[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_5[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_5_DATA_0)
            int_SocketTable_theirPort_5[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_5[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_6[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_6[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_6_DATA_0)
            int_SocketTable_theirPort_6[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_6[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_7[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_7[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_7_DATA_0)
            int_SocketTable_theirPort_7[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_7[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_8[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_8[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_8_DATA_0)
            int_SocketTable_theirPort_8[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_8[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_9[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_9[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_9_DATA_0)
            int_SocketTable_theirPort_9[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_9[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_10[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_10[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_10_DATA_0)
            int_SocketTable_theirPort_10[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_10[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_11[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_11[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_11_DATA_0)
            int_SocketTable_theirPort_11[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_11[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_12[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_12[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_12_DATA_0)
            int_SocketTable_theirPort_12[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_12[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_13[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_13[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_13_DATA_0)
            int_SocketTable_theirPort_13[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_13[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_14[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_14[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_14_DATA_0)
            int_SocketTable_theirPort_14[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_14[15:0] & ~wmask);
    end
end

// int_SocketTable_theirPort_15[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_theirPort_15[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_THEIRPORT_15_DATA_0)
            int_SocketTable_theirPort_15[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_theirPort_15[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_0[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_0[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_0_DATA_0)
            int_SocketTable_myPort_0[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_0[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_1[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_1[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_1_DATA_0)
            int_SocketTable_myPort_1[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_1[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_2[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_2[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_2_DATA_0)
            int_SocketTable_myPort_2[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_2[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_3[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_3[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_3_DATA_0)
            int_SocketTable_myPort_3[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_3[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_4[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_4[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_4_DATA_0)
            int_SocketTable_myPort_4[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_4[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_5[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_5[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_5_DATA_0)
            int_SocketTable_myPort_5[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_5[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_6[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_6[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_6_DATA_0)
            int_SocketTable_myPort_6[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_6[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_7[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_7[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_7_DATA_0)
            int_SocketTable_myPort_7[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_7[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_8[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_8[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_8_DATA_0)
            int_SocketTable_myPort_8[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_8[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_9[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_9[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_9_DATA_0)
            int_SocketTable_myPort_9[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_9[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_10[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_10[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_10_DATA_0)
            int_SocketTable_myPort_10[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_10[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_11[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_11[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_11_DATA_0)
            int_SocketTable_myPort_11[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_11[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_12[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_12[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_12_DATA_0)
            int_SocketTable_myPort_12[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_12[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_13[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_13[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_13_DATA_0)
            int_SocketTable_myPort_13[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_13[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_14[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_14[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_14_DATA_0)
            int_SocketTable_myPort_14[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_14[15:0] & ~wmask);
    end
end

// int_SocketTable_myPort_15[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_myPort_15[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_MYPORT_15_DATA_0)
            int_SocketTable_myPort_15[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_myPort_15[15:0] & ~wmask);
    end
end

// int_SocketTable_valid_0[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_0[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_0_DATA_0)
            int_SocketTable_valid_0[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_0[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_1[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_1[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_1_DATA_0)
            int_SocketTable_valid_1[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_1[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_2[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_2[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_2_DATA_0)
            int_SocketTable_valid_2[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_2[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_3[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_3[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_3_DATA_0)
            int_SocketTable_valid_3[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_3[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_4[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_4[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_4_DATA_0)
            int_SocketTable_valid_4[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_4[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_5[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_5[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_5_DATA_0)
            int_SocketTable_valid_5[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_5[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_6[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_6[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_6_DATA_0)
            int_SocketTable_valid_6[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_6[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_7[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_7[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_7_DATA_0)
            int_SocketTable_valid_7[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_7[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_8[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_8[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_8_DATA_0)
            int_SocketTable_valid_8[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_8[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_9[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_9[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_9_DATA_0)
            int_SocketTable_valid_9[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_9[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_10[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_10[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_10_DATA_0)
            int_SocketTable_valid_10[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_10[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_11[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_11[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_11_DATA_0)
            int_SocketTable_valid_11[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_11[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_12[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_12[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_12_DATA_0)
            int_SocketTable_valid_12[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_12[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_13[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_13[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_13_DATA_0)
            int_SocketTable_valid_13[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_13[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_14[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_14[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_14_DATA_0)
            int_SocketTable_valid_14[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_14[0:0] & ~wmask);
    end
end

// int_SocketTable_valid_15[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_valid_15[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_VALID_15_DATA_0)
            int_SocketTable_valid_15[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_valid_15[0:0] & ~wmask);
    end
end

// int_numberSockets
always @(posedge ACLK) begin
    if (ARESET)
        int_numberSockets <= 0;
    else if (ACLK_EN) begin
        if (numberSockets_ap_vld)
            int_numberSockets <= numberSockets;
    end
end

// int_numberSockets_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_numberSockets_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (numberSockets_ap_vld)
            int_numberSockets_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_NUMBERSOCKETS_CTRL)
            int_numberSockets_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------

endmodule
