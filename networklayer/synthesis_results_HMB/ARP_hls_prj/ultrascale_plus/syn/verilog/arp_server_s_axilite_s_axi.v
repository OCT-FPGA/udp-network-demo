// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module arp_server_s_axilite_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 13,
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
    input  wire [7:0]                    arpTable_macAddress_V_address0,
    input  wire                          arpTable_macAddress_V_ce0,
    input  wire                          arpTable_macAddress_V_we0,
    input  wire [47:0]                   arpTable_macAddress_V_d0,
    output wire [47:0]                   arpTable_macAddress_V_q0,
    input  wire [7:0]                    arpTable_ipAddress_V_address0,
    input  wire                          arpTable_ipAddress_V_ce0,
    input  wire                          arpTable_ipAddress_V_we0,
    input  wire [31:0]                   arpTable_ipAddress_V_d0,
    input  wire [7:0]                    arpTable_valid_V_address0,
    input  wire                          arpTable_valid_V_ce0,
    input  wire                          arpTable_valid_V_we0,
    input  wire [0:0]                    arpTable_valid_V_d0,
    output wire [0:0]                    arpTable_valid_V_q0,
    output wire [0:0]                    arp_scan_V_i,
    input  wire [0:0]                    arp_scan_V_o,
    input  wire                          arp_scan_V_o_ap_vld
);
//------------------------Address Info-------------------
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

//------------------------Parameter----------------------
localparam
    ADDR_ARP_SCAN_V_I_DATA_0        = 13'h1500,
    ADDR_ARP_SCAN_V_I_CTRL          = 13'h1504,
    ADDR_ARP_SCAN_V_O_DATA_0        = 13'h1508,
    ADDR_ARP_SCAN_V_O_CTRL          = 13'h150c,
    ADDR_ARPTABLE_MACADDRESS_V_BASE = 13'h0800,
    ADDR_ARPTABLE_MACADDRESS_V_HIGH = 13'h0fff,
    ADDR_ARPTABLE_IPADDRESS_V_BASE  = 13'h1000,
    ADDR_ARPTABLE_IPADDRESS_V_HIGH  = 13'h13ff,
    ADDR_ARPTABLE_VALID_V_BASE      = 13'h1400,
    ADDR_ARPTABLE_VALID_V_HIGH      = 13'h14ff,
    WRIDLE                          = 2'd0,
    WRDATA                          = 2'd1,
    WRRESP                          = 2'd2,
    WRRESET                         = 2'd3,
    RDIDLE                          = 2'd0,
    RDDATA                          = 2'd1,
    RDRESET                         = 2'd2,
    ADDR_BITS         = 13;

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
    reg  [0:0]                    int_arp_scan_V_i = 'b0;
    reg  [0:0]                    int_arp_scan_V_o = 'b0;
    reg                           int_arp_scan_V_o_ap_vld;
    // memory signals
    wire [7:0]                    int_arpTable_macAddress_V_address0;
    wire                          int_arpTable_macAddress_V_ce0;
    wire                          int_arpTable_macAddress_V_we0;
    wire [5:0]                    int_arpTable_macAddress_V_be0;
    wire [47:0]                   int_arpTable_macAddress_V_d0;
    wire [47:0]                   int_arpTable_macAddress_V_q0;
    wire [7:0]                    int_arpTable_macAddress_V_address1;
    wire                          int_arpTable_macAddress_V_ce1;
    wire                          int_arpTable_macAddress_V_we1;
    wire [5:0]                    int_arpTable_macAddress_V_be1;
    wire [47:0]                   int_arpTable_macAddress_V_d1;
    wire [47:0]                   int_arpTable_macAddress_V_q1;
    reg                           int_arpTable_macAddress_V_read;
    reg                           int_arpTable_macAddress_V_write;
    reg  [0:0]                    int_arpTable_macAddress_V_shift;
    wire [7:0]                    int_arpTable_ipAddress_V_address0;
    wire                          int_arpTable_ipAddress_V_ce0;
    wire                          int_arpTable_ipAddress_V_we0;
    wire [3:0]                    int_arpTable_ipAddress_V_be0;
    wire [31:0]                   int_arpTable_ipAddress_V_d0;
    wire [31:0]                   int_arpTable_ipAddress_V_q0;
    wire [7:0]                    int_arpTable_ipAddress_V_address1;
    wire                          int_arpTable_ipAddress_V_ce1;
    wire                          int_arpTable_ipAddress_V_we1;
    wire [3:0]                    int_arpTable_ipAddress_V_be1;
    wire [31:0]                   int_arpTable_ipAddress_V_d1;
    wire [31:0]                   int_arpTable_ipAddress_V_q1;
    reg                           int_arpTable_ipAddress_V_read;
    reg                           int_arpTable_ipAddress_V_write;
    wire [5:0]                    int_arpTable_valid_V_address0;
    wire                          int_arpTable_valid_V_ce0;
    wire                          int_arpTable_valid_V_we0;
    wire [3:0]                    int_arpTable_valid_V_be0;
    wire [31:0]                   int_arpTable_valid_V_d0;
    wire [31:0]                   int_arpTable_valid_V_q0;
    wire [5:0]                    int_arpTable_valid_V_address1;
    wire                          int_arpTable_valid_V_ce1;
    wire                          int_arpTable_valid_V_we1;
    wire [3:0]                    int_arpTable_valid_V_be1;
    wire [31:0]                   int_arpTable_valid_V_d1;
    wire [31:0]                   int_arpTable_valid_V_q1;
    reg                           int_arpTable_valid_V_read;
    reg                           int_arpTable_valid_V_write;
    reg  [1:0]                    int_arpTable_valid_V_shift;

//------------------------Instantiation------------------
// int_arpTable_macAddress_V
arp_server_s_axilite_s_axi_ram #(
    .BYTES    ( 6 ),
    .DEPTH    ( 256 )
) int_arpTable_macAddress_V (
    .clk0     ( ACLK ),
    .address0 ( int_arpTable_macAddress_V_address0 ),
    .ce0      ( int_arpTable_macAddress_V_ce0 ),
    .we0      ( int_arpTable_macAddress_V_we0 ),
    .be0      ( int_arpTable_macAddress_V_be0 ),
    .d0       ( int_arpTable_macAddress_V_d0 ),
    .q0       ( int_arpTable_macAddress_V_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_arpTable_macAddress_V_address1 ),
    .ce1      ( int_arpTable_macAddress_V_ce1 ),
    .we1      ( int_arpTable_macAddress_V_we1 ),
    .be1      ( int_arpTable_macAddress_V_be1 ),
    .d1       ( int_arpTable_macAddress_V_d1 ),
    .q1       ( int_arpTable_macAddress_V_q1 )
);
// int_arpTable_ipAddress_V
arp_server_s_axilite_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 256 )
) int_arpTable_ipAddress_V (
    .clk0     ( ACLK ),
    .address0 ( int_arpTable_ipAddress_V_address0 ),
    .ce0      ( int_arpTable_ipAddress_V_ce0 ),
    .we0      ( int_arpTable_ipAddress_V_we0 ),
    .be0      ( int_arpTable_ipAddress_V_be0 ),
    .d0       ( int_arpTable_ipAddress_V_d0 ),
    .q0       ( int_arpTable_ipAddress_V_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_arpTable_ipAddress_V_address1 ),
    .ce1      ( int_arpTable_ipAddress_V_ce1 ),
    .we1      ( int_arpTable_ipAddress_V_we1 ),
    .be1      ( int_arpTable_ipAddress_V_be1 ),
    .d1       ( int_arpTable_ipAddress_V_d1 ),
    .q1       ( int_arpTable_ipAddress_V_q1 )
);
// int_arpTable_valid_V
arp_server_s_axilite_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 64 )
) int_arpTable_valid_V (
    .clk0     ( ACLK ),
    .address0 ( int_arpTable_valid_V_address0 ),
    .ce0      ( int_arpTable_valid_V_ce0 ),
    .we0      ( int_arpTable_valid_V_we0 ),
    .be0      ( int_arpTable_valid_V_be0 ),
    .d0       ( int_arpTable_valid_V_d0 ),
    .q0       ( int_arpTable_valid_V_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_arpTable_valid_V_address1 ),
    .ce1      ( int_arpTable_valid_V_ce1 ),
    .we1      ( int_arpTable_valid_V_we1 ),
    .be1      ( int_arpTable_valid_V_be1 ),
    .d1       ( int_arpTable_valid_V_d1 ),
    .q1       ( int_arpTable_valid_V_q1 )
);

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
assign RVALID  = (rstate == RDDATA) & !int_arpTable_macAddress_V_read & !int_arpTable_ipAddress_V_read & !int_arpTable_valid_V_read;
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
                ADDR_ARP_SCAN_V_I_DATA_0: begin
                    rdata <= int_arp_scan_V_i[0:0];
                end
                ADDR_ARP_SCAN_V_O_DATA_0: begin
                    rdata <= int_arp_scan_V_o[0:0];
                end
                ADDR_ARP_SCAN_V_O_CTRL: begin
                    rdata[0] <= int_arp_scan_V_o_ap_vld;
                end
            endcase
        end
        else if (int_arpTable_macAddress_V_read) begin
            rdata <= int_arpTable_macAddress_V_q1 >> (int_arpTable_macAddress_V_shift * 32);
        end
        else if (int_arpTable_ipAddress_V_read) begin
            rdata <= int_arpTable_ipAddress_V_q1;
        end
        else if (int_arpTable_valid_V_read) begin
            rdata <= int_arpTable_valid_V_q1;
        end
    end
end


//------------------------Register logic-----------------
assign arp_scan_V_i = int_arp_scan_V_i;
// int_arp_scan_V_i[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_arp_scan_V_i[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ARP_SCAN_V_I_DATA_0)
            int_arp_scan_V_i[0:0] <= (WDATA[31:0] & wmask) | (int_arp_scan_V_i[0:0] & ~wmask);
    end
end

// int_arp_scan_V_o
always @(posedge ACLK) begin
    if (ARESET)
        int_arp_scan_V_o <= 0;
    else if (ACLK_EN) begin
        if (arp_scan_V_o_ap_vld)
            int_arp_scan_V_o <= arp_scan_V_o;
    end
end

// int_arp_scan_V_o_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_arp_scan_V_o_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (arp_scan_V_o_ap_vld)
            int_arp_scan_V_o_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_ARP_SCAN_V_O_CTRL)
            int_arp_scan_V_o_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------
// arpTable_macAddress_V
assign int_arpTable_macAddress_V_address0 = arpTable_macAddress_V_address0;
assign int_arpTable_macAddress_V_ce0      = arpTable_macAddress_V_ce0;
assign int_arpTable_macAddress_V_we0      = arpTable_macAddress_V_we0;
assign int_arpTable_macAddress_V_be0      = {6{arpTable_macAddress_V_we0}};
assign int_arpTable_macAddress_V_d0       = arpTable_macAddress_V_d0;
assign arpTable_macAddress_V_q0           = int_arpTable_macAddress_V_q0;
assign int_arpTable_macAddress_V_address1 = ar_hs? raddr[10:3] : waddr[10:3];
assign int_arpTable_macAddress_V_ce1      = ar_hs | (int_arpTable_macAddress_V_write & WVALID);
assign int_arpTable_macAddress_V_we1      = int_arpTable_macAddress_V_write & WVALID;
assign int_arpTable_macAddress_V_be1      = WSTRB << (waddr[2:2] * 4);
assign int_arpTable_macAddress_V_d1       = {2{WDATA}};
// arpTable_ipAddress_V
assign int_arpTable_ipAddress_V_address0  = arpTable_ipAddress_V_address0;
assign int_arpTable_ipAddress_V_ce0       = arpTable_ipAddress_V_ce0;
assign int_arpTable_ipAddress_V_we0       = arpTable_ipAddress_V_we0;
assign int_arpTable_ipAddress_V_be0       = {4{arpTable_ipAddress_V_we0}};
assign int_arpTable_ipAddress_V_d0        = arpTable_ipAddress_V_d0;
assign int_arpTable_ipAddress_V_address1  = ar_hs? raddr[9:2] : waddr[9:2];
assign int_arpTable_ipAddress_V_ce1       = ar_hs | (int_arpTable_ipAddress_V_write & WVALID);
assign int_arpTable_ipAddress_V_we1       = int_arpTable_ipAddress_V_write & WVALID;
assign int_arpTable_ipAddress_V_be1       = WSTRB;
assign int_arpTable_ipAddress_V_d1        = WDATA;
// arpTable_valid_V
assign int_arpTable_valid_V_address0      = arpTable_valid_V_address0 >> 2;
assign int_arpTable_valid_V_ce0           = arpTable_valid_V_ce0;
assign int_arpTable_valid_V_we0           = arpTable_valid_V_we0;
assign int_arpTable_valid_V_be0           = 1 << arpTable_valid_V_address0[1:0];
assign int_arpTable_valid_V_d0            = {4{7'd0, arpTable_valid_V_d0}};
assign arpTable_valid_V_q0                = int_arpTable_valid_V_q0 >> (int_arpTable_valid_V_shift * 8);
assign int_arpTable_valid_V_address1      = ar_hs? raddr[7:2] : waddr[7:2];
assign int_arpTable_valid_V_ce1           = ar_hs | (int_arpTable_valid_V_write & WVALID);
assign int_arpTable_valid_V_we1           = int_arpTable_valid_V_write & WVALID;
assign int_arpTable_valid_V_be1           = WSTRB;
assign int_arpTable_valid_V_d1            = WDATA;
// int_arpTable_macAddress_V_read
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_macAddress_V_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ARPTABLE_MACADDRESS_V_BASE && raddr <= ADDR_ARPTABLE_MACADDRESS_V_HIGH)
            int_arpTable_macAddress_V_read <= 1'b1;
        else
            int_arpTable_macAddress_V_read <= 1'b0;
    end
end

// int_arpTable_macAddress_V_write
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_macAddress_V_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ARPTABLE_MACADDRESS_V_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ARPTABLE_MACADDRESS_V_HIGH)
            int_arpTable_macAddress_V_write <= 1'b1;
        else if (WVALID)
            int_arpTable_macAddress_V_write <= 1'b0;
    end
end

// int_arpTable_macAddress_V_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs)
            int_arpTable_macAddress_V_shift <= raddr[2:2];
    end
end

// int_arpTable_ipAddress_V_read
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_ipAddress_V_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ARPTABLE_IPADDRESS_V_BASE && raddr <= ADDR_ARPTABLE_IPADDRESS_V_HIGH)
            int_arpTable_ipAddress_V_read <= 1'b1;
        else
            int_arpTable_ipAddress_V_read <= 1'b0;
    end
end

// int_arpTable_ipAddress_V_write
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_ipAddress_V_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ARPTABLE_IPADDRESS_V_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ARPTABLE_IPADDRESS_V_HIGH)
            int_arpTable_ipAddress_V_write <= 1'b1;
        else if (WVALID)
            int_arpTable_ipAddress_V_write <= 1'b0;
    end
end

// int_arpTable_valid_V_read
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_valid_V_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ARPTABLE_VALID_V_BASE && raddr <= ADDR_ARPTABLE_VALID_V_HIGH)
            int_arpTable_valid_V_read <= 1'b1;
        else
            int_arpTable_valid_V_read <= 1'b0;
    end
end

// int_arpTable_valid_V_write
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_valid_V_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ARPTABLE_VALID_V_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ARPTABLE_VALID_V_HIGH)
            int_arpTable_valid_V_write <= 1'b1;
        else if (WVALID)
            int_arpTable_valid_V_write <= 1'b0;
    end
end

// int_arpTable_valid_V_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (arpTable_valid_V_ce0)
            int_arpTable_valid_V_shift <= arpTable_valid_V_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module arp_server_s_axilite_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

