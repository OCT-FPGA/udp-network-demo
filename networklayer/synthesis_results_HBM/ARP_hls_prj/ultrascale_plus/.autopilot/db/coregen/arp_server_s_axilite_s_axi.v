// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module arp_server_s_axilite_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 12,
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
    output wire [0:0]                    arp_scan_i,
    input  wire [0:0]                    arp_scan_o,
    input  wire                          arp_scan_o_ap_vld,
    input  wire [7:0]                    arpTable_valid_address0,
    input  wire                          arpTable_valid_ce0,
    input  wire                          arpTable_valid_we0,
    input  wire [0:0]                    arpTable_valid_d0,
    output wire [0:0]                    arpTable_valid_q0,
    input  wire [7:0]                    arpTable_ipAddress_address0,
    input  wire                          arpTable_ipAddress_ce0,
    input  wire                          arpTable_ipAddress_we0,
    input  wire [31:0]                   arpTable_ipAddress_d0,
    output wire [31:0]                   arpTable_ipAddress_q0,
    input  wire [7:0]                    arpTable_macAddress_address0,
    input  wire                          arpTable_macAddress_ce0,
    input  wire                          arpTable_macAddress_we0,
    input  wire [47:0]                   arpTable_macAddress_d0,
    output wire [47:0]                   arpTable_macAddress_q0,
    input  wire [0:0]                    ap_local_deadlock
);
//------------------------Address Info-------------------
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
// 0x1ff : Memory 'arpTable_valid' (256 * 1b)
//         Word n : bit [ 0: 0] - arpTable_valid[4n]
//                  bit [ 8: 8] - arpTable_valid[4n+1]
//                  bit [16:16] - arpTable_valid[4n+2]
//                  bit [24:24] - arpTable_valid[4n+3]
//                  others      - reserved
// 0x400 ~
// 0x7ff : Memory 'arpTable_ipAddress' (256 * 32b)
//         Word n : bit [31:0] - arpTable_ipAddress[n]
// 0x800 ~
// 0xfff : Memory 'arpTable_macAddress' (256 * 48b)
//         Word 2n   : bit [31:0] - arpTable_macAddress[n][31: 0]
//         Word 2n+1 : bit [15:0] - arpTable_macAddress[n][47:32]
//                     others     - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_ARP_SCAN_I_DATA_0        = 12'h010,
    ADDR_ARP_SCAN_I_CTRL          = 12'h014,
    ADDR_ARP_SCAN_O_DATA_0        = 12'h018,
    ADDR_ARP_SCAN_O_CTRL          = 12'h01c,
    ADDR_ARPTABLE_VALID_BASE      = 12'h100,
    ADDR_ARPTABLE_VALID_HIGH      = 12'h1ff,
    ADDR_ARPTABLE_IPADDRESS_BASE  = 12'h400,
    ADDR_ARPTABLE_IPADDRESS_HIGH  = 12'h7ff,
    ADDR_ARPTABLE_MACADDRESS_BASE = 12'h800,
    ADDR_ARPTABLE_MACADDRESS_HIGH = 12'hfff,
    WRIDLE                        = 2'd0,
    WRDATA                        = 2'd1,
    WRRESP                        = 2'd2,
    WRRESET                       = 2'd3,
    RDIDLE                        = 2'd0,
    RDDATA                        = 2'd1,
    RDRESET                       = 2'd2,
    ADDR_BITS                = 12;

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
    reg  [0:0]                    int_arp_scan_i = 'b0;
    reg                           int_arp_scan_o_ap_vld;
    reg  [0:0]                    int_arp_scan_o = 'b0;
    // memory signals
    wire [5:0]                    int_arpTable_valid_address0;
    wire                          int_arpTable_valid_ce0;
    wire [3:0]                    int_arpTable_valid_be0;
    wire [31:0]                   int_arpTable_valid_d0;
    wire [31:0]                   int_arpTable_valid_q0;
    wire [5:0]                    int_arpTable_valid_address1;
    wire                          int_arpTable_valid_ce1;
    wire                          int_arpTable_valid_we1;
    wire [3:0]                    int_arpTable_valid_be1;
    wire [31:0]                   int_arpTable_valid_d1;
    wire [31:0]                   int_arpTable_valid_q1;
    reg                           int_arpTable_valid_read;
    reg                           int_arpTable_valid_write;
    reg  [1:0]                    int_arpTable_valid_shift0;
    wire [7:0]                    int_arpTable_ipAddress_address0;
    wire                          int_arpTable_ipAddress_ce0;
    wire [3:0]                    int_arpTable_ipAddress_be0;
    wire [31:0]                   int_arpTable_ipAddress_d0;
    wire [31:0]                   int_arpTable_ipAddress_q0;
    wire [7:0]                    int_arpTable_ipAddress_address1;
    wire                          int_arpTable_ipAddress_ce1;
    wire                          int_arpTable_ipAddress_we1;
    wire [3:0]                    int_arpTable_ipAddress_be1;
    wire [31:0]                   int_arpTable_ipAddress_d1;
    wire [31:0]                   int_arpTable_ipAddress_q1;
    reg                           int_arpTable_ipAddress_read;
    reg                           int_arpTable_ipAddress_write;
    wire [7:0]                    int_arpTable_macAddress_address0;
    wire                          int_arpTable_macAddress_ce0;
    wire [5:0]                    int_arpTable_macAddress_be0;
    wire [47:0]                   int_arpTable_macAddress_d0;
    wire [47:0]                   int_arpTable_macAddress_q0;
    wire [7:0]                    int_arpTable_macAddress_address1;
    wire                          int_arpTable_macAddress_ce1;
    wire                          int_arpTable_macAddress_we1;
    wire [5:0]                    int_arpTable_macAddress_be1;
    wire [47:0]                   int_arpTable_macAddress_d1;
    wire [47:0]                   int_arpTable_macAddress_q1;
    reg                           int_arpTable_macAddress_read;
    reg                           int_arpTable_macAddress_write;
    reg  [0:0]                    int_arpTable_macAddress_shift1;

//------------------------Instantiation------------------
// int_arpTable_valid
arp_server_s_axilite_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "T2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 64 )
) int_arpTable_valid (
    .clk0      ( ACLK ),
    .address0  ( int_arpTable_valid_address0 ),
    .ce0       ( int_arpTable_valid_ce0 ),
    .we0       ( int_arpTable_valid_be0 ),
    .d0        ( int_arpTable_valid_d0 ),
    .q0        ( int_arpTable_valid_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_arpTable_valid_address1 ),
    .ce1       ( int_arpTable_valid_ce1 ),
    .we1       ( int_arpTable_valid_be1 ),
    .d1        ( int_arpTable_valid_d1 ),
    .q1        ( int_arpTable_valid_q1 )
);
// int_arpTable_ipAddress
arp_server_s_axilite_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "T2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 256 )
) int_arpTable_ipAddress (
    .clk0      ( ACLK ),
    .address0  ( int_arpTable_ipAddress_address0 ),
    .ce0       ( int_arpTable_ipAddress_ce0 ),
    .we0       ( int_arpTable_ipAddress_be0 ),
    .d0        ( int_arpTable_ipAddress_d0 ),
    .q0        ( int_arpTable_ipAddress_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_arpTable_ipAddress_address1 ),
    .ce1       ( int_arpTable_ipAddress_ce1 ),
    .we1       ( int_arpTable_ipAddress_be1 ),
    .d1        ( int_arpTable_ipAddress_d1 ),
    .q1        ( int_arpTable_ipAddress_q1 )
);
// int_arpTable_macAddress
arp_server_s_axilite_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "T2P" ),
    .BYTES     ( 6 ),
    .DEPTH     ( 256 )
) int_arpTable_macAddress (
    .clk0      ( ACLK ),
    .address0  ( int_arpTable_macAddress_address0 ),
    .ce0       ( int_arpTable_macAddress_ce0 ),
    .we0       ( int_arpTable_macAddress_be0 ),
    .d0        ( int_arpTable_macAddress_d0 ),
    .q0        ( int_arpTable_macAddress_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_arpTable_macAddress_address1 ),
    .ce1       ( int_arpTable_macAddress_ce1 ),
    .we1       ( int_arpTable_macAddress_be1 ),
    .d1        ( int_arpTable_macAddress_d1 ),
    .q1        ( int_arpTable_macAddress_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
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
            if (w_hs)
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
assign RVALID  = (rstate == RDDATA) & !int_arpTable_valid_read & !int_arpTable_ipAddress_read & !int_arpTable_macAddress_read;
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
                ADDR_ARP_SCAN_I_DATA_0: begin
                    rdata <= int_arp_scan_i[0:0];
                end
                ADDR_ARP_SCAN_O_DATA_0: begin
                    rdata <= int_arp_scan_o[0:0];
                end
                ADDR_ARP_SCAN_O_CTRL: begin
                    rdata[0] <= int_arp_scan_o_ap_vld;
                end
            endcase
        end
        else if (int_arpTable_valid_read) begin
            rdata <= int_arpTable_valid_q1;
        end
        else if (int_arpTable_ipAddress_read) begin
            rdata <= int_arpTable_ipAddress_q1;
        end
        else if (int_arpTable_macAddress_read) begin
            rdata <= int_arpTable_macAddress_q1 >> (int_arpTable_macAddress_shift1 * 32);
        end
    end
end


//------------------------Register logic-----------------
assign arp_scan_i = int_arp_scan_i;
// int_arp_scan_i[0:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_arp_scan_i[0:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ARP_SCAN_I_DATA_0)
            int_arp_scan_i[0:0] <= (WDATA[31:0] & wmask) | (int_arp_scan_i[0:0] & ~wmask);
    end
end

// int_arp_scan_o
always @(posedge ACLK) begin
    if (ARESET)
        int_arp_scan_o <= 0;
    else if (ACLK_EN) begin
        if (arp_scan_o_ap_vld)
            int_arp_scan_o <= arp_scan_o;
    end
end

// int_arp_scan_o_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_arp_scan_o_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (arp_scan_o_ap_vld)
            int_arp_scan_o_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_ARP_SCAN_O_CTRL)
            int_arp_scan_o_ap_vld <= 1'b0; // clear on read
    end
end


//------------------------Memory logic-------------------
// arpTable_valid
assign int_arpTable_valid_address0      = arpTable_valid_address0 >> 2;
assign int_arpTable_valid_ce0           = arpTable_valid_ce0;
assign int_arpTable_valid_be0           = arpTable_valid_we0 << arpTable_valid_address0[1:0];
assign int_arpTable_valid_d0            = {4{7'd0, arpTable_valid_d0}};
assign arpTable_valid_q0                = int_arpTable_valid_q0 >> (int_arpTable_valid_shift0 * 8);
assign int_arpTable_valid_address1      = ar_hs? raddr[7:2] : waddr[7:2];
assign int_arpTable_valid_ce1           = ar_hs | (int_arpTable_valid_write & WVALID);
assign int_arpTable_valid_we1           = int_arpTable_valid_write & w_hs;
assign int_arpTable_valid_be1           = int_arpTable_valid_we1 ? WSTRB : 'b0;
assign int_arpTable_valid_d1            = WDATA;
// arpTable_ipAddress
assign int_arpTable_ipAddress_address0  = arpTable_ipAddress_address0;
assign int_arpTable_ipAddress_ce0       = arpTable_ipAddress_ce0;
assign int_arpTable_ipAddress_be0       = {4{arpTable_ipAddress_we0}};
assign int_arpTable_ipAddress_d0        = arpTable_ipAddress_d0;
assign arpTable_ipAddress_q0            = int_arpTable_ipAddress_q0;
assign int_arpTable_ipAddress_address1  = ar_hs? raddr[9:2] : waddr[9:2];
assign int_arpTable_ipAddress_ce1       = ar_hs | (int_arpTable_ipAddress_write & WVALID);
assign int_arpTable_ipAddress_we1       = int_arpTable_ipAddress_write & w_hs;
assign int_arpTable_ipAddress_be1       = int_arpTable_ipAddress_we1 ? WSTRB : 'b0;
assign int_arpTable_ipAddress_d1        = WDATA;
// arpTable_macAddress
assign int_arpTable_macAddress_address0 = arpTable_macAddress_address0;
assign int_arpTable_macAddress_ce0      = arpTable_macAddress_ce0;
assign int_arpTable_macAddress_be0      = {6{arpTable_macAddress_we0}};
assign int_arpTable_macAddress_d0       = arpTable_macAddress_d0;
assign arpTable_macAddress_q0           = int_arpTable_macAddress_q0;
assign int_arpTable_macAddress_address1 = ar_hs? raddr[10:3] : waddr[10:3];
assign int_arpTable_macAddress_ce1      = ar_hs | (int_arpTable_macAddress_write & WVALID);
assign int_arpTable_macAddress_we1      = int_arpTable_macAddress_write & w_hs;
assign int_arpTable_macAddress_be1      = int_arpTable_macAddress_we1 ? WSTRB << (waddr[2:2] * 4) : 'b0;
assign int_arpTable_macAddress_d1       = {2{WDATA}};
// int_arpTable_valid_read
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_valid_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ARPTABLE_VALID_BASE && raddr <= ADDR_ARPTABLE_VALID_HIGH)
            int_arpTable_valid_read <= 1'b1;
        else
            int_arpTable_valid_read <= 1'b0;
    end
end

// int_arpTable_valid_write
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_valid_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ARPTABLE_VALID_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ARPTABLE_VALID_HIGH)
            int_arpTable_valid_write <= 1'b1;
        else if (w_hs)
            int_arpTable_valid_write <= 1'b0;
    end
end

// int_arpTable_valid_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_valid_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (arpTable_valid_ce0)
            int_arpTable_valid_shift0 <= arpTable_valid_address0[1:0];
    end
end

// int_arpTable_ipAddress_read
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_ipAddress_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ARPTABLE_IPADDRESS_BASE && raddr <= ADDR_ARPTABLE_IPADDRESS_HIGH)
            int_arpTable_ipAddress_read <= 1'b1;
        else
            int_arpTable_ipAddress_read <= 1'b0;
    end
end

// int_arpTable_ipAddress_write
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_ipAddress_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ARPTABLE_IPADDRESS_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ARPTABLE_IPADDRESS_HIGH)
            int_arpTable_ipAddress_write <= 1'b1;
        else if (w_hs)
            int_arpTable_ipAddress_write <= 1'b0;
    end
end

// int_arpTable_macAddress_read
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_macAddress_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ARPTABLE_MACADDRESS_BASE && raddr <= ADDR_ARPTABLE_MACADDRESS_HIGH)
            int_arpTable_macAddress_read <= 1'b1;
        else
            int_arpTable_macAddress_read <= 1'b0;
    end
end

// int_arpTable_macAddress_write
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_macAddress_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ARPTABLE_MACADDRESS_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ARPTABLE_MACADDRESS_HIGH)
            int_arpTable_macAddress_write <= 1'b1;
        else if (w_hs)
            int_arpTable_macAddress_write <= 1'b0;
    end
end

// int_arpTable_macAddress_shift1
always @(posedge ACLK) begin
    if (ARESET)
        int_arpTable_macAddress_shift1 <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs)
            int_arpTable_macAddress_shift1 <= raddr[2:2];
    end
end


endmodule


`timescale 1ns/1ps

module arp_server_s_axilite_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
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
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

