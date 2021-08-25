// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
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
    output wire [31:0]                   SocketTable_0_theirIP_V,
    output wire [31:0]                   SocketTable_1_theirIP_V,
    output wire [31:0]                   SocketTable_2_theirIP_V,
    output wire [31:0]                   SocketTable_3_theirIP_V,
    output wire [31:0]                   SocketTable_4_theirIP_V,
    output wire [31:0]                   SocketTable_5_theirIP_V,
    output wire [31:0]                   SocketTable_6_theirIP_V,
    output wire [31:0]                   SocketTable_7_theirIP_V,
    output wire [31:0]                   SocketTable_8_theirIP_V,
    output wire [31:0]                   SocketTable_9_theirIP_V,
    output wire [31:0]                   SocketTable_10_theirIP_V,
    output wire [31:0]                   SocketTable_11_theirIP_V,
    output wire [31:0]                   SocketTable_12_theirIP_V,
    output wire [31:0]                   SocketTable_13_theirIP_V,
    output wire [31:0]                   SocketTable_14_theirIP_V,
    output wire [31:0]                   SocketTable_15_theirIP_V,
    output wire [15:0]                   SocketTable_0_theirPort_V,
    output wire [15:0]                   SocketTable_1_theirPort_V,
    output wire [15:0]                   SocketTable_2_theirPort_V,
    output wire [15:0]                   SocketTable_3_theirPort_V,
    output wire [15:0]                   SocketTable_4_theirPort_V,
    output wire [15:0]                   SocketTable_5_theirPort_V,
    output wire [15:0]                   SocketTable_6_theirPort_V,
    output wire [15:0]                   SocketTable_7_theirPort_V,
    output wire [15:0]                   SocketTable_8_theirPort_V,
    output wire [15:0]                   SocketTable_9_theirPort_V,
    output wire [15:0]                   SocketTable_10_theirPort_V,
    output wire [15:0]                   SocketTable_11_theirPort_V,
    output wire [15:0]                   SocketTable_12_theirPort_V,
    output wire [15:0]                   SocketTable_13_theirPort_V,
    output wire [15:0]                   SocketTable_14_theirPort_V,
    output wire [15:0]                   SocketTable_15_theirPort_V,
    output wire [15:0]                   SocketTable_0_myPort_V,
    output wire [15:0]                   SocketTable_1_myPort_V,
    output wire [15:0]                   SocketTable_2_myPort_V,
    output wire [15:0]                   SocketTable_3_myPort_V,
    output wire [15:0]                   SocketTable_4_myPort_V,
    output wire [15:0]                   SocketTable_5_myPort_V,
    output wire [15:0]                   SocketTable_6_myPort_V,
    output wire [15:0]                   SocketTable_7_myPort_V,
    output wire [15:0]                   SocketTable_8_myPort_V,
    output wire [15:0]                   SocketTable_9_myPort_V,
    output wire [15:0]                   SocketTable_10_myPort_V,
    output wire [15:0]                   SocketTable_11_myPort_V,
    output wire [15:0]                   SocketTable_12_myPort_V,
    output wire [15:0]                   SocketTable_13_myPort_V,
    output wire [15:0]                   SocketTable_14_myPort_V,
    output wire [15:0]                   SocketTable_15_myPort_V,
    output wire [0:0]                    SocketTable_0_valid_V,
    output wire [0:0]                    SocketTable_1_valid_V,
    output wire [0:0]                    SocketTable_2_valid_V,
    output wire [0:0]                    SocketTable_3_valid_V,
    output wire [0:0]                    SocketTable_4_valid_V,
    output wire [0:0]                    SocketTable_5_valid_V,
    output wire [0:0]                    SocketTable_6_valid_V,
    output wire [0:0]                    SocketTable_7_valid_V,
    output wire [0:0]                    SocketTable_8_valid_V,
    output wire [0:0]                    SocketTable_9_valid_V,
    output wire [0:0]                    SocketTable_10_valid_V,
    output wire [0:0]                    SocketTable_11_valid_V,
    output wire [0:0]                    SocketTable_12_valid_V,
    output wire [0:0]                    SocketTable_13_valid_V,
    output wire [0:0]                    SocketTable_14_valid_V,
    output wire [0:0]                    SocketTable_15_valid_V,
    input  wire [15:0]                   numberSockets_V,
    input  wire                          numberSockets_V_ap_vld
);
//------------------------Address Info-------------------
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of SocketTable_0_theirIP_V
//         bit 31~0 - SocketTable_0_theirIP_V[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of SocketTable_1_theirIP_V
//         bit 31~0 - SocketTable_1_theirIP_V[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of SocketTable_2_theirIP_V
//         bit 31~0 - SocketTable_2_theirIP_V[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of SocketTable_3_theirIP_V
//         bit 31~0 - SocketTable_3_theirIP_V[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of SocketTable_4_theirIP_V
//         bit 31~0 - SocketTable_4_theirIP_V[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of SocketTable_5_theirIP_V
//         bit 31~0 - SocketTable_5_theirIP_V[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of SocketTable_6_theirIP_V
//         bit 31~0 - SocketTable_6_theirIP_V[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of SocketTable_7_theirIP_V
//         bit 31~0 - SocketTable_7_theirIP_V[31:0] (Read/Write)
// 0x04c : reserved
// 0x050 : Data signal of SocketTable_8_theirIP_V
//         bit 31~0 - SocketTable_8_theirIP_V[31:0] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of SocketTable_9_theirIP_V
//         bit 31~0 - SocketTable_9_theirIP_V[31:0] (Read/Write)
// 0x05c : reserved
// 0x060 : Data signal of SocketTable_10_theirIP_V
//         bit 31~0 - SocketTable_10_theirIP_V[31:0] (Read/Write)
// 0x064 : reserved
// 0x068 : Data signal of SocketTable_11_theirIP_V
//         bit 31~0 - SocketTable_11_theirIP_V[31:0] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of SocketTable_12_theirIP_V
//         bit 31~0 - SocketTable_12_theirIP_V[31:0] (Read/Write)
// 0x074 : reserved
// 0x078 : Data signal of SocketTable_13_theirIP_V
//         bit 31~0 - SocketTable_13_theirIP_V[31:0] (Read/Write)
// 0x07c : reserved
// 0x080 : Data signal of SocketTable_14_theirIP_V
//         bit 31~0 - SocketTable_14_theirIP_V[31:0] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of SocketTable_15_theirIP_V
//         bit 31~0 - SocketTable_15_theirIP_V[31:0] (Read/Write)
// 0x08c : reserved
// 0x090 : Data signal of SocketTable_0_theirPort_V
//         bit 15~0 - SocketTable_0_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x094 : reserved
// 0x098 : Data signal of SocketTable_1_theirPort_V
//         bit 15~0 - SocketTable_1_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x09c : reserved
// 0x0a0 : Data signal of SocketTable_2_theirPort_V
//         bit 15~0 - SocketTable_2_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0a4 : reserved
// 0x0a8 : Data signal of SocketTable_3_theirPort_V
//         bit 15~0 - SocketTable_3_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0ac : reserved
// 0x0b0 : Data signal of SocketTable_4_theirPort_V
//         bit 15~0 - SocketTable_4_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0b4 : reserved
// 0x0b8 : Data signal of SocketTable_5_theirPort_V
//         bit 15~0 - SocketTable_5_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0bc : reserved
// 0x0c0 : Data signal of SocketTable_6_theirPort_V
//         bit 15~0 - SocketTable_6_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0c4 : reserved
// 0x0c8 : Data signal of SocketTable_7_theirPort_V
//         bit 15~0 - SocketTable_7_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0cc : reserved
// 0x0d0 : Data signal of SocketTable_8_theirPort_V
//         bit 15~0 - SocketTable_8_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0d4 : reserved
// 0x0d8 : Data signal of SocketTable_9_theirPort_V
//         bit 15~0 - SocketTable_9_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0dc : reserved
// 0x0e0 : Data signal of SocketTable_10_theirPort_V
//         bit 15~0 - SocketTable_10_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0e4 : reserved
// 0x0e8 : Data signal of SocketTable_11_theirPort_V
//         bit 15~0 - SocketTable_11_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0ec : reserved
// 0x0f0 : Data signal of SocketTable_12_theirPort_V
//         bit 15~0 - SocketTable_12_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0f4 : reserved
// 0x0f8 : Data signal of SocketTable_13_theirPort_V
//         bit 15~0 - SocketTable_13_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x0fc : reserved
// 0x100 : Data signal of SocketTable_14_theirPort_V
//         bit 15~0 - SocketTable_14_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x104 : reserved
// 0x108 : Data signal of SocketTable_15_theirPort_V
//         bit 15~0 - SocketTable_15_theirPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x10c : reserved
// 0x110 : Data signal of SocketTable_0_myPort_V
//         bit 15~0 - SocketTable_0_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x114 : reserved
// 0x118 : Data signal of SocketTable_1_myPort_V
//         bit 15~0 - SocketTable_1_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x11c : reserved
// 0x120 : Data signal of SocketTable_2_myPort_V
//         bit 15~0 - SocketTable_2_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x124 : reserved
// 0x128 : Data signal of SocketTable_3_myPort_V
//         bit 15~0 - SocketTable_3_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x12c : reserved
// 0x130 : Data signal of SocketTable_4_myPort_V
//         bit 15~0 - SocketTable_4_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x134 : reserved
// 0x138 : Data signal of SocketTable_5_myPort_V
//         bit 15~0 - SocketTable_5_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x13c : reserved
// 0x140 : Data signal of SocketTable_6_myPort_V
//         bit 15~0 - SocketTable_6_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x144 : reserved
// 0x148 : Data signal of SocketTable_7_myPort_V
//         bit 15~0 - SocketTable_7_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x14c : reserved
// 0x150 : Data signal of SocketTable_8_myPort_V
//         bit 15~0 - SocketTable_8_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x154 : reserved
// 0x158 : Data signal of SocketTable_9_myPort_V
//         bit 15~0 - SocketTable_9_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x15c : reserved
// 0x160 : Data signal of SocketTable_10_myPort_V
//         bit 15~0 - SocketTable_10_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x164 : reserved
// 0x168 : Data signal of SocketTable_11_myPort_V
//         bit 15~0 - SocketTable_11_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x16c : reserved
// 0x170 : Data signal of SocketTable_12_myPort_V
//         bit 15~0 - SocketTable_12_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x174 : reserved
// 0x178 : Data signal of SocketTable_13_myPort_V
//         bit 15~0 - SocketTable_13_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x17c : reserved
// 0x180 : Data signal of SocketTable_14_myPort_V
//         bit 15~0 - SocketTable_14_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x184 : reserved
// 0x188 : Data signal of SocketTable_15_myPort_V
//         bit 15~0 - SocketTable_15_myPort_V[15:0] (Read/Write)
//         others   - reserved
// 0x18c : reserved
// 0x190 : Data signal of SocketTable_0_valid_V
//         bit 0  - SocketTable_0_valid_V[0] (Read/Write)
//         others - reserved
// 0x194 : reserved
// 0x198 : Data signal of SocketTable_1_valid_V
//         bit 0  - SocketTable_1_valid_V[0] (Read/Write)
//         others - reserved
// 0x19c : reserved
// 0x1a0 : Data signal of SocketTable_2_valid_V
//         bit 0  - SocketTable_2_valid_V[0] (Read/Write)
//         others - reserved
// 0x1a4 : reserved
// 0x1a8 : Data signal of SocketTable_3_valid_V
//         bit 0  - SocketTable_3_valid_V[0] (Read/Write)
//         others - reserved
// 0x1ac : reserved
// 0x1b0 : Data signal of SocketTable_4_valid_V
//         bit 0  - SocketTable_4_valid_V[0] (Read/Write)
//         others - reserved
// 0x1b4 : reserved
// 0x1b8 : Data signal of SocketTable_5_valid_V
//         bit 0  - SocketTable_5_valid_V[0] (Read/Write)
//         others - reserved
// 0x1bc : reserved
// 0x1c0 : Data signal of SocketTable_6_valid_V
//         bit 0  - SocketTable_6_valid_V[0] (Read/Write)
//         others - reserved
// 0x1c4 : reserved
// 0x1c8 : Data signal of SocketTable_7_valid_V
//         bit 0  - SocketTable_7_valid_V[0] (Read/Write)
//         others - reserved
// 0x1cc : reserved
// 0x1d0 : Data signal of SocketTable_8_valid_V
//         bit 0  - SocketTable_8_valid_V[0] (Read/Write)
//         others - reserved
// 0x1d4 : reserved
// 0x1d8 : Data signal of SocketTable_9_valid_V
//         bit 0  - SocketTable_9_valid_V[0] (Read/Write)
//         others - reserved
// 0x1dc : reserved
// 0x1e0 : Data signal of SocketTable_10_valid_V
//         bit 0  - SocketTable_10_valid_V[0] (Read/Write)
//         others - reserved
// 0x1e4 : reserved
// 0x1e8 : Data signal of SocketTable_11_valid_V
//         bit 0  - SocketTable_11_valid_V[0] (Read/Write)
//         others - reserved
// 0x1ec : reserved
// 0x1f0 : Data signal of SocketTable_12_valid_V
//         bit 0  - SocketTable_12_valid_V[0] (Read/Write)
//         others - reserved
// 0x1f4 : reserved
// 0x1f8 : Data signal of SocketTable_13_valid_V
//         bit 0  - SocketTable_13_valid_V[0] (Read/Write)
//         others - reserved
// 0x1fc : reserved
// 0x200 : Data signal of SocketTable_14_valid_V
//         bit 0  - SocketTable_14_valid_V[0] (Read/Write)
//         others - reserved
// 0x204 : reserved
// 0x208 : Data signal of SocketTable_15_valid_V
//         bit 0  - SocketTable_15_valid_V[0] (Read/Write)
//         others - reserved
// 0x20c : reserved
// 0x210 : Data signal of numberSockets_V
//         bit 15~0 - numberSockets_V[15:0] (Read)
//         others   - reserved
// 0x214 : Control signal of numberSockets_V
//         bit 0  - numberSockets_V_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_SOCKETTABLE_0_THEIRIP_V_DATA_0    = 10'h010,
    ADDR_SOCKETTABLE_0_THEIRIP_V_CTRL      = 10'h014,
    ADDR_SOCKETTABLE_1_THEIRIP_V_DATA_0    = 10'h018,
    ADDR_SOCKETTABLE_1_THEIRIP_V_CTRL      = 10'h01c,
    ADDR_SOCKETTABLE_2_THEIRIP_V_DATA_0    = 10'h020,
    ADDR_SOCKETTABLE_2_THEIRIP_V_CTRL      = 10'h024,
    ADDR_SOCKETTABLE_3_THEIRIP_V_DATA_0    = 10'h028,
    ADDR_SOCKETTABLE_3_THEIRIP_V_CTRL      = 10'h02c,
    ADDR_SOCKETTABLE_4_THEIRIP_V_DATA_0    = 10'h030,
    ADDR_SOCKETTABLE_4_THEIRIP_V_CTRL      = 10'h034,
    ADDR_SOCKETTABLE_5_THEIRIP_V_DATA_0    = 10'h038,
    ADDR_SOCKETTABLE_5_THEIRIP_V_CTRL      = 10'h03c,
    ADDR_SOCKETTABLE_6_THEIRIP_V_DATA_0    = 10'h040,
    ADDR_SOCKETTABLE_6_THEIRIP_V_CTRL      = 10'h044,
    ADDR_SOCKETTABLE_7_THEIRIP_V_DATA_0    = 10'h048,
    ADDR_SOCKETTABLE_7_THEIRIP_V_CTRL      = 10'h04c,
    ADDR_SOCKETTABLE_8_THEIRIP_V_DATA_0    = 10'h050,
    ADDR_SOCKETTABLE_8_THEIRIP_V_CTRL      = 10'h054,
    ADDR_SOCKETTABLE_9_THEIRIP_V_DATA_0    = 10'h058,
    ADDR_SOCKETTABLE_9_THEIRIP_V_CTRL      = 10'h05c,
    ADDR_SOCKETTABLE_10_THEIRIP_V_DATA_0   = 10'h060,
    ADDR_SOCKETTABLE_10_THEIRIP_V_CTRL     = 10'h064,
    ADDR_SOCKETTABLE_11_THEIRIP_V_DATA_0   = 10'h068,
    ADDR_SOCKETTABLE_11_THEIRIP_V_CTRL     = 10'h06c,
    ADDR_SOCKETTABLE_12_THEIRIP_V_DATA_0   = 10'h070,
    ADDR_SOCKETTABLE_12_THEIRIP_V_CTRL     = 10'h074,
    ADDR_SOCKETTABLE_13_THEIRIP_V_DATA_0   = 10'h078,
    ADDR_SOCKETTABLE_13_THEIRIP_V_CTRL     = 10'h07c,
    ADDR_SOCKETTABLE_14_THEIRIP_V_DATA_0   = 10'h080,
    ADDR_SOCKETTABLE_14_THEIRIP_V_CTRL     = 10'h084,
    ADDR_SOCKETTABLE_15_THEIRIP_V_DATA_0   = 10'h088,
    ADDR_SOCKETTABLE_15_THEIRIP_V_CTRL     = 10'h08c,
    ADDR_SOCKETTABLE_0_THEIRPORT_V_DATA_0  = 10'h090,
    ADDR_SOCKETTABLE_0_THEIRPORT_V_CTRL    = 10'h094,
    ADDR_SOCKETTABLE_1_THEIRPORT_V_DATA_0  = 10'h098,
    ADDR_SOCKETTABLE_1_THEIRPORT_V_CTRL    = 10'h09c,
    ADDR_SOCKETTABLE_2_THEIRPORT_V_DATA_0  = 10'h0a0,
    ADDR_SOCKETTABLE_2_THEIRPORT_V_CTRL    = 10'h0a4,
    ADDR_SOCKETTABLE_3_THEIRPORT_V_DATA_0  = 10'h0a8,
    ADDR_SOCKETTABLE_3_THEIRPORT_V_CTRL    = 10'h0ac,
    ADDR_SOCKETTABLE_4_THEIRPORT_V_DATA_0  = 10'h0b0,
    ADDR_SOCKETTABLE_4_THEIRPORT_V_CTRL    = 10'h0b4,
    ADDR_SOCKETTABLE_5_THEIRPORT_V_DATA_0  = 10'h0b8,
    ADDR_SOCKETTABLE_5_THEIRPORT_V_CTRL    = 10'h0bc,
    ADDR_SOCKETTABLE_6_THEIRPORT_V_DATA_0  = 10'h0c0,
    ADDR_SOCKETTABLE_6_THEIRPORT_V_CTRL    = 10'h0c4,
    ADDR_SOCKETTABLE_7_THEIRPORT_V_DATA_0  = 10'h0c8,
    ADDR_SOCKETTABLE_7_THEIRPORT_V_CTRL    = 10'h0cc,
    ADDR_SOCKETTABLE_8_THEIRPORT_V_DATA_0  = 10'h0d0,
    ADDR_SOCKETTABLE_8_THEIRPORT_V_CTRL    = 10'h0d4,
    ADDR_SOCKETTABLE_9_THEIRPORT_V_DATA_0  = 10'h0d8,
    ADDR_SOCKETTABLE_9_THEIRPORT_V_CTRL    = 10'h0dc,
    ADDR_SOCKETTABLE_10_THEIRPORT_V_DATA_0 = 10'h0e0,
    ADDR_SOCKETTABLE_10_THEIRPORT_V_CTRL   = 10'h0e4,
    ADDR_SOCKETTABLE_11_THEIRPORT_V_DATA_0 = 10'h0e8,
    ADDR_SOCKETTABLE_11_THEIRPORT_V_CTRL   = 10'h0ec,
    ADDR_SOCKETTABLE_12_THEIRPORT_V_DATA_0 = 10'h0f0,
    ADDR_SOCKETTABLE_12_THEIRPORT_V_CTRL   = 10'h0f4,
    ADDR_SOCKETTABLE_13_THEIRPORT_V_DATA_0 = 10'h0f8,
    ADDR_SOCKETTABLE_13_THEIRPORT_V_CTRL   = 10'h0fc,
    ADDR_SOCKETTABLE_14_THEIRPORT_V_DATA_0 = 10'h100,
    ADDR_SOCKETTABLE_14_THEIRPORT_V_CTRL   = 10'h104,
    ADDR_SOCKETTABLE_15_THEIRPORT_V_DATA_0 = 10'h108,
    ADDR_SOCKETTABLE_15_THEIRPORT_V_CTRL   = 10'h10c,
    ADDR_SOCKETTABLE_0_MYPORT_V_DATA_0     = 10'h110,
    ADDR_SOCKETTABLE_0_MYPORT_V_CTRL       = 10'h114,
    ADDR_SOCKETTABLE_1_MYPORT_V_DATA_0     = 10'h118,
    ADDR_SOCKETTABLE_1_MYPORT_V_CTRL       = 10'h11c,
    ADDR_SOCKETTABLE_2_MYPORT_V_DATA_0     = 10'h120,
    ADDR_SOCKETTABLE_2_MYPORT_V_CTRL       = 10'h124,
    ADDR_SOCKETTABLE_3_MYPORT_V_DATA_0     = 10'h128,
    ADDR_SOCKETTABLE_3_MYPORT_V_CTRL       = 10'h12c,
    ADDR_SOCKETTABLE_4_MYPORT_V_DATA_0     = 10'h130,
    ADDR_SOCKETTABLE_4_MYPORT_V_CTRL       = 10'h134,
    ADDR_SOCKETTABLE_5_MYPORT_V_DATA_0     = 10'h138,
    ADDR_SOCKETTABLE_5_MYPORT_V_CTRL       = 10'h13c,
    ADDR_SOCKETTABLE_6_MYPORT_V_DATA_0     = 10'h140,
    ADDR_SOCKETTABLE_6_MYPORT_V_CTRL       = 10'h144,
    ADDR_SOCKETTABLE_7_MYPORT_V_DATA_0     = 10'h148,
    ADDR_SOCKETTABLE_7_MYPORT_V_CTRL       = 10'h14c,
    ADDR_SOCKETTABLE_8_MYPORT_V_DATA_0     = 10'h150,
    ADDR_SOCKETTABLE_8_MYPORT_V_CTRL       = 10'h154,
    ADDR_SOCKETTABLE_9_MYPORT_V_DATA_0     = 10'h158,
    ADDR_SOCKETTABLE_9_MYPORT_V_CTRL       = 10'h15c,
    ADDR_SOCKETTABLE_10_MYPORT_V_DATA_0    = 10'h160,
    ADDR_SOCKETTABLE_10_MYPORT_V_CTRL      = 10'h164,
    ADDR_SOCKETTABLE_11_MYPORT_V_DATA_0    = 10'h168,
    ADDR_SOCKETTABLE_11_MYPORT_V_CTRL      = 10'h16c,
    ADDR_SOCKETTABLE_12_MYPORT_V_DATA_0    = 10'h170,
    ADDR_SOCKETTABLE_12_MYPORT_V_CTRL      = 10'h174,
    ADDR_SOCKETTABLE_13_MYPORT_V_DATA_0    = 10'h178,
    ADDR_SOCKETTABLE_13_MYPORT_V_CTRL      = 10'h17c,
    ADDR_SOCKETTABLE_14_MYPORT_V_DATA_0    = 10'h180,
    ADDR_SOCKETTABLE_14_MYPORT_V_CTRL      = 10'h184,
    ADDR_SOCKETTABLE_15_MYPORT_V_DATA_0    = 10'h188,
    ADDR_SOCKETTABLE_15_MYPORT_V_CTRL      = 10'h18c,
    ADDR_SOCKETTABLE_0_VALID_V_DATA_0      = 10'h190,
    ADDR_SOCKETTABLE_0_VALID_V_CTRL        = 10'h194,
    ADDR_SOCKETTABLE_1_VALID_V_DATA_0      = 10'h198,
    ADDR_SOCKETTABLE_1_VALID_V_CTRL        = 10'h19c,
    ADDR_SOCKETTABLE_2_VALID_V_DATA_0      = 10'h1a0,
    ADDR_SOCKETTABLE_2_VALID_V_CTRL        = 10'h1a4,
    ADDR_SOCKETTABLE_3_VALID_V_DATA_0      = 10'h1a8,
    ADDR_SOCKETTABLE_3_VALID_V_CTRL        = 10'h1ac,
    ADDR_SOCKETTABLE_4_VALID_V_DATA_0      = 10'h1b0,
    ADDR_SOCKETTABLE_4_VALID_V_CTRL        = 10'h1b4,
    ADDR_SOCKETTABLE_5_VALID_V_DATA_0      = 10'h1b8,
    ADDR_SOCKETTABLE_5_VALID_V_CTRL        = 10'h1bc,
    ADDR_SOCKETTABLE_6_VALID_V_DATA_0      = 10'h1c0,
    ADDR_SOCKETTABLE_6_VALID_V_CTRL        = 10'h1c4,
    ADDR_SOCKETTABLE_7_VALID_V_DATA_0      = 10'h1c8,
    ADDR_SOCKETTABLE_7_VALID_V_CTRL        = 10'h1cc,
    ADDR_SOCKETTABLE_8_VALID_V_DATA_0      = 10'h1d0,
    ADDR_SOCKETTABLE_8_VALID_V_CTRL        = 10'h1d4,
    ADDR_SOCKETTABLE_9_VALID_V_DATA_0      = 10'h1d8,
    ADDR_SOCKETTABLE_9_VALID_V_CTRL        = 10'h1dc,
    ADDR_SOCKETTABLE_10_VALID_V_DATA_0     = 10'h1e0,
    ADDR_SOCKETTABLE_10_VALID_V_CTRL       = 10'h1e4,
    ADDR_SOCKETTABLE_11_VALID_V_DATA_0     = 10'h1e8,
    ADDR_SOCKETTABLE_11_VALID_V_CTRL       = 10'h1ec,
    ADDR_SOCKETTABLE_12_VALID_V_DATA_0     = 10'h1f0,
    ADDR_SOCKETTABLE_12_VALID_V_CTRL       = 10'h1f4,
    ADDR_SOCKETTABLE_13_VALID_V_DATA_0     = 10'h1f8,
    ADDR_SOCKETTABLE_13_VALID_V_CTRL       = 10'h1fc,
    ADDR_SOCKETTABLE_14_VALID_V_DATA_0     = 10'h200,
    ADDR_SOCKETTABLE_14_VALID_V_CTRL       = 10'h204,
    ADDR_SOCKETTABLE_15_VALID_V_DATA_0     = 10'h208,
    ADDR_SOCKETTABLE_15_VALID_V_CTRL       = 10'h20c,
    ADDR_NUMBERSOCKETS_V_DATA_0            = 10'h210,
    ADDR_NUMBERSOCKETS_V_CTRL              = 10'h214,
    WRIDLE                                 = 2'd0,
    WRDATA                                 = 2'd1,
    WRRESP                                 = 2'd2,
    WRRESET                                = 2'd3,
    RDIDLE                                 = 2'd0,
    RDDATA                                 = 2'd1,
    RDRESET                                = 2'd2,
    ADDR_BITS         = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_SocketTable_0_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_1_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_2_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_3_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_4_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_5_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_6_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_7_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_8_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_9_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_10_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_11_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_12_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_13_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_14_theirIP_V = 'b0;
    reg  [31:0]                   int_SocketTable_15_theirIP_V = 'b0;
    reg  [15:0]                   int_SocketTable_0_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_1_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_2_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_3_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_4_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_5_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_6_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_7_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_8_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_9_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_10_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_11_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_12_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_13_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_14_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_15_theirPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_0_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_1_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_2_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_3_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_4_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_5_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_6_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_7_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_8_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_9_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_10_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_11_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_12_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_13_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_14_myPort_V = 'b0;
    reg  [15:0]                   int_SocketTable_15_myPort_V = 'b0;
    reg  [0:0]                    int_SocketTable_0_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_1_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_2_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_3_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_4_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_5_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_6_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_7_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_8_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_9_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_10_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_11_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_12_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_13_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_14_valid_V = 'b0;
    reg  [0:0]                    int_SocketTable_15_valid_V = 'b0;
    reg  [15:0]                   int_numberSockets_V = 'b0;
    reg                           int_numberSockets_V_ap_vld;

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
            rdata <= 1'b0;
            case (raddr)
                ADDR_SOCKETTABLE_0_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_0_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_1_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_1_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_2_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_2_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_3_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_3_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_4_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_4_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_5_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_5_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_6_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_6_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_7_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_7_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_8_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_8_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_9_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_9_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_10_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_10_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_11_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_11_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_12_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_12_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_13_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_13_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_14_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_14_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_15_THEIRIP_V_DATA_0: begin
                    rdata <= int_SocketTable_15_theirIP_V[31:0];
                end
                ADDR_SOCKETTABLE_0_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_0_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_1_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_1_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_2_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_2_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_3_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_3_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_4_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_4_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_5_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_5_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_6_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_6_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_7_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_7_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_8_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_8_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_9_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_9_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_10_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_10_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_11_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_11_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_12_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_12_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_13_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_13_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_14_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_14_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_15_THEIRPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_15_theirPort_V[15:0];
                end
                ADDR_SOCKETTABLE_0_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_0_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_1_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_1_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_2_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_2_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_3_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_3_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_4_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_4_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_5_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_5_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_6_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_6_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_7_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_7_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_8_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_8_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_9_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_9_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_10_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_10_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_11_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_11_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_12_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_12_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_13_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_13_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_14_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_14_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_15_MYPORT_V_DATA_0: begin
                    rdata <= int_SocketTable_15_myPort_V[15:0];
                end
                ADDR_SOCKETTABLE_0_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_0_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_1_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_1_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_2_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_2_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_3_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_3_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_4_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_4_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_5_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_5_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_6_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_6_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_7_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_7_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_8_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_8_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_9_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_9_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_10_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_10_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_11_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_11_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_12_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_12_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_13_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_13_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_14_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_14_valid_V[0:0];
                end
                ADDR_SOCKETTABLE_15_VALID_V_DATA_0: begin
                    rdata <= int_SocketTable_15_valid_V[0:0];
                end
                ADDR_NUMBERSOCKETS_V_DATA_0: begin
                    rdata <= int_numberSockets_V[15:0];
                end
                ADDR_NUMBERSOCKETS_V_CTRL: begin
                    rdata[0] <= int_numberSockets_V_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign SocketTable_0_theirIP_V    = int_SocketTable_0_theirIP_V;
assign SocketTable_1_theirIP_V    = int_SocketTable_1_theirIP_V;
assign SocketTable_2_theirIP_V    = int_SocketTable_2_theirIP_V;
assign SocketTable_3_theirIP_V    = int_SocketTable_3_theirIP_V;
assign SocketTable_4_theirIP_V    = int_SocketTable_4_theirIP_V;
assign SocketTable_5_theirIP_V    = int_SocketTable_5_theirIP_V;
assign SocketTable_6_theirIP_V    = int_SocketTable_6_theirIP_V;
assign SocketTable_7_theirIP_V    = int_SocketTable_7_theirIP_V;
assign SocketTable_8_theirIP_V    = int_SocketTable_8_theirIP_V;
assign SocketTable_9_theirIP_V    = int_SocketTable_9_theirIP_V;
assign SocketTable_10_theirIP_V   = int_SocketTable_10_theirIP_V;
assign SocketTable_11_theirIP_V   = int_SocketTable_11_theirIP_V;
assign SocketTable_12_theirIP_V   = int_SocketTable_12_theirIP_V;
assign SocketTable_13_theirIP_V   = int_SocketTable_13_theirIP_V;
assign SocketTable_14_theirIP_V   = int_SocketTable_14_theirIP_V;
assign SocketTable_15_theirIP_V   = int_SocketTable_15_theirIP_V;
assign SocketTable_0_theirPort_V  = int_SocketTable_0_theirPort_V;
assign SocketTable_1_theirPort_V  = int_SocketTable_1_theirPort_V;
assign SocketTable_2_theirPort_V  = int_SocketTable_2_theirPort_V;
assign SocketTable_3_theirPort_V  = int_SocketTable_3_theirPort_V;
assign SocketTable_4_theirPort_V  = int_SocketTable_4_theirPort_V;
assign SocketTable_5_theirPort_V  = int_SocketTable_5_theirPort_V;
assign SocketTable_6_theirPort_V  = int_SocketTable_6_theirPort_V;
assign SocketTable_7_theirPort_V  = int_SocketTable_7_theirPort_V;
assign SocketTable_8_theirPort_V  = int_SocketTable_8_theirPort_V;
assign SocketTable_9_theirPort_V  = int_SocketTable_9_theirPort_V;
assign SocketTable_10_theirPort_V = int_SocketTable_10_theirPort_V;
assign SocketTable_11_theirPort_V = int_SocketTable_11_theirPort_V;
assign SocketTable_12_theirPort_V = int_SocketTable_12_theirPort_V;
assign SocketTable_13_theirPort_V = int_SocketTable_13_theirPort_V;
assign SocketTable_14_theirPort_V = int_SocketTable_14_theirPort_V;
assign SocketTable_15_theirPort_V = int_SocketTable_15_theirPort_V;
assign SocketTable_0_myPort_V     = int_SocketTable_0_myPort_V;
assign SocketTable_1_myPort_V     = int_SocketTable_1_myPort_V;
assign SocketTable_2_myPort_V     = int_SocketTable_2_myPort_V;
assign SocketTable_3_myPort_V     = int_SocketTable_3_myPort_V;
assign SocketTable_4_myPort_V     = int_SocketTable_4_myPort_V;
assign SocketTable_5_myPort_V     = int_SocketTable_5_myPort_V;
assign SocketTable_6_myPort_V     = int_SocketTable_6_myPort_V;
assign SocketTable_7_myPort_V     = int_SocketTable_7_myPort_V;
assign SocketTable_8_myPort_V     = int_SocketTable_8_myPort_V;
assign SocketTable_9_myPort_V     = int_SocketTable_9_myPort_V;
assign SocketTable_10_myPort_V    = int_SocketTable_10_myPort_V;
assign SocketTable_11_myPort_V    = int_SocketTable_11_myPort_V;
assign SocketTable_12_myPort_V    = int_SocketTable_12_myPort_V;
assign SocketTable_13_myPort_V    = int_SocketTable_13_myPort_V;
assign SocketTable_14_myPort_V    = int_SocketTable_14_myPort_V;
assign SocketTable_15_myPort_V    = int_SocketTable_15_myPort_V;
assign SocketTable_0_valid_V      = int_SocketTable_0_valid_V;
assign SocketTable_1_valid_V      = int_SocketTable_1_valid_V;
assign SocketTable_2_valid_V      = int_SocketTable_2_valid_V;
assign SocketTable_3_valid_V      = int_SocketTable_3_valid_V;
assign SocketTable_4_valid_V      = int_SocketTable_4_valid_V;
assign SocketTable_5_valid_V      = int_SocketTable_5_valid_V;
assign SocketTable_6_valid_V      = int_SocketTable_6_valid_V;
assign SocketTable_7_valid_V      = int_SocketTable_7_valid_V;
assign SocketTable_8_valid_V      = int_SocketTable_8_valid_V;
assign SocketTable_9_valid_V      = int_SocketTable_9_valid_V;
assign SocketTable_10_valid_V     = int_SocketTable_10_valid_V;
assign SocketTable_11_valid_V     = int_SocketTable_11_valid_V;
assign SocketTable_12_valid_V     = int_SocketTable_12_valid_V;
assign SocketTable_13_valid_V     = int_SocketTable_13_valid_V;
assign SocketTable_14_valid_V     = int_SocketTable_14_valid_V;
assign SocketTable_15_valid_V     = int_SocketTable_15_valid_V;
// int_SocketTable_0_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_0_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_0_THEIRIP_V_DATA_0)
            int_SocketTable_0_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_0_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_1_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_1_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_1_THEIRIP_V_DATA_0)
            int_SocketTable_1_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_1_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_2_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_2_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_2_THEIRIP_V_DATA_0)
            int_SocketTable_2_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_2_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_3_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_3_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_3_THEIRIP_V_DATA_0)
            int_SocketTable_3_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_3_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_4_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_4_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_4_THEIRIP_V_DATA_0)
            int_SocketTable_4_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_4_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_5_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_5_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_5_THEIRIP_V_DATA_0)
            int_SocketTable_5_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_5_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_6_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_6_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_6_THEIRIP_V_DATA_0)
            int_SocketTable_6_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_6_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_7_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_7_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_7_THEIRIP_V_DATA_0)
            int_SocketTable_7_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_7_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_8_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_8_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_8_THEIRIP_V_DATA_0)
            int_SocketTable_8_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_8_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_9_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_9_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_9_THEIRIP_V_DATA_0)
            int_SocketTable_9_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_9_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_10_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_10_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_10_THEIRIP_V_DATA_0)
            int_SocketTable_10_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_10_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_11_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_11_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_11_THEIRIP_V_DATA_0)
            int_SocketTable_11_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_11_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_12_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_12_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_12_THEIRIP_V_DATA_0)
            int_SocketTable_12_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_12_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_13_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_13_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_13_THEIRIP_V_DATA_0)
            int_SocketTable_13_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_13_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_14_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_14_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_14_THEIRIP_V_DATA_0)
            int_SocketTable_14_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_14_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_15_theirIP_V[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_15_theirIP_V[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_15_THEIRIP_V_DATA_0)
            int_SocketTable_15_theirIP_V[31:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_15_theirIP_V[31:0] & ~wmask);
    end
end

// int_SocketTable_0_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_0_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_0_THEIRPORT_V_DATA_0)
            int_SocketTable_0_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_0_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_1_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_1_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_1_THEIRPORT_V_DATA_0)
            int_SocketTable_1_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_1_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_2_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_2_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_2_THEIRPORT_V_DATA_0)
            int_SocketTable_2_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_2_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_3_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_3_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_3_THEIRPORT_V_DATA_0)
            int_SocketTable_3_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_3_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_4_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_4_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_4_THEIRPORT_V_DATA_0)
            int_SocketTable_4_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_4_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_5_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_5_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_5_THEIRPORT_V_DATA_0)
            int_SocketTable_5_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_5_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_6_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_6_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_6_THEIRPORT_V_DATA_0)
            int_SocketTable_6_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_6_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_7_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_7_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_7_THEIRPORT_V_DATA_0)
            int_SocketTable_7_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_7_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_8_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_8_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_8_THEIRPORT_V_DATA_0)
            int_SocketTable_8_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_8_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_9_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_9_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_9_THEIRPORT_V_DATA_0)
            int_SocketTable_9_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_9_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_10_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_10_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_10_THEIRPORT_V_DATA_0)
            int_SocketTable_10_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_10_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_11_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_11_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_11_THEIRPORT_V_DATA_0)
            int_SocketTable_11_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_11_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_12_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_12_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_12_THEIRPORT_V_DATA_0)
            int_SocketTable_12_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_12_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_13_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_13_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_13_THEIRPORT_V_DATA_0)
            int_SocketTable_13_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_13_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_14_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_14_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_14_THEIRPORT_V_DATA_0)
            int_SocketTable_14_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_14_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_15_theirPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_15_theirPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_15_THEIRPORT_V_DATA_0)
            int_SocketTable_15_theirPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_15_theirPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_0_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_0_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_0_MYPORT_V_DATA_0)
            int_SocketTable_0_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_0_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_1_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_1_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_1_MYPORT_V_DATA_0)
            int_SocketTable_1_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_1_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_2_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_2_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_2_MYPORT_V_DATA_0)
            int_SocketTable_2_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_2_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_3_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_3_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_3_MYPORT_V_DATA_0)
            int_SocketTable_3_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_3_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_4_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_4_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_4_MYPORT_V_DATA_0)
            int_SocketTable_4_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_4_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_5_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_5_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_5_MYPORT_V_DATA_0)
            int_SocketTable_5_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_5_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_6_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_6_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_6_MYPORT_V_DATA_0)
            int_SocketTable_6_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_6_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_7_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_7_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_7_MYPORT_V_DATA_0)
            int_SocketTable_7_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_7_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_8_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_8_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_8_MYPORT_V_DATA_0)
            int_SocketTable_8_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_8_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_9_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_9_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_9_MYPORT_V_DATA_0)
            int_SocketTable_9_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_9_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_10_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_10_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_10_MYPORT_V_DATA_0)
            int_SocketTable_10_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_10_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_11_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_11_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_11_MYPORT_V_DATA_0)
            int_SocketTable_11_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_11_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_12_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_12_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_12_MYPORT_V_DATA_0)
            int_SocketTable_12_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_12_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_13_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_13_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_13_MYPORT_V_DATA_0)
            int_SocketTable_13_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_13_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_14_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_14_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_14_MYPORT_V_DATA_0)
            int_SocketTable_14_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_14_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_15_myPort_V[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_15_myPort_V[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_15_MYPORT_V_DATA_0)
            int_SocketTable_15_myPort_V[15:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_15_myPort_V[15:0] & ~wmask);
    end
end

// int_SocketTable_0_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_0_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_0_VALID_V_DATA_0)
            int_SocketTable_0_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_0_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_1_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_1_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_1_VALID_V_DATA_0)
            int_SocketTable_1_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_1_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_2_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_2_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_2_VALID_V_DATA_0)
            int_SocketTable_2_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_2_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_3_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_3_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_3_VALID_V_DATA_0)
            int_SocketTable_3_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_3_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_4_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_4_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_4_VALID_V_DATA_0)
            int_SocketTable_4_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_4_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_5_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_5_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_5_VALID_V_DATA_0)
            int_SocketTable_5_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_5_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_6_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_6_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_6_VALID_V_DATA_0)
            int_SocketTable_6_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_6_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_7_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_7_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_7_VALID_V_DATA_0)
            int_SocketTable_7_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_7_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_8_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_8_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_8_VALID_V_DATA_0)
            int_SocketTable_8_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_8_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_9_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_9_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_9_VALID_V_DATA_0)
            int_SocketTable_9_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_9_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_10_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_10_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_10_VALID_V_DATA_0)
            int_SocketTable_10_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_10_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_11_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_11_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_11_VALID_V_DATA_0)
            int_SocketTable_11_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_11_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_12_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_12_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_12_VALID_V_DATA_0)
            int_SocketTable_12_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_12_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_13_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_13_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_13_VALID_V_DATA_0)
            int_SocketTable_13_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_13_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_14_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_14_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_14_VALID_V_DATA_0)
            int_SocketTable_14_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_14_valid_V[0:0] & ~wmask);
    end
end

// int_SocketTable_15_valid_V[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_SocketTable_15_valid_V[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_SOCKETTABLE_15_VALID_V_DATA_0)
            int_SocketTable_15_valid_V[0:0] <= (WDATA[31:0] & wmask) | (int_SocketTable_15_valid_V[0:0] & ~wmask);
    end
end

// int_numberSockets_V
always @(posedge ACLK) begin
    if (ARESET)
        int_numberSockets_V <= 0;
    else if (ACLK_EN) begin
        if (numberSockets_V_ap_vld)
            int_numberSockets_V <= numberSockets_V;
    end
end

// int_numberSockets_V_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_numberSockets_V_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (numberSockets_V_ap_vld)
            int_numberSockets_V_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_NUMBERSOCKETS_V_CTRL)
            int_numberSockets_V_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------

endmodule
