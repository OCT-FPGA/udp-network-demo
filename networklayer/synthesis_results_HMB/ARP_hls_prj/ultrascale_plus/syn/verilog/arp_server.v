// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="arp_server_arp_server,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu280-fsvh2892-2L-e,HLS_INPUT_CLOCK=3.100000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.812000,HLS_SYN_LAT=4,HLS_SYN_TPT=1,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=1580,HLS_SYN_LUT=1539,HLS_VERSION=2021_1}" *)

module arp_server (
        s_axi_s_axilite_AWVALID,
        s_axi_s_axilite_AWREADY,
        s_axi_s_axilite_AWADDR,
        s_axi_s_axilite_WVALID,
        s_axi_s_axilite_WREADY,
        s_axi_s_axilite_WDATA,
        s_axi_s_axilite_WSTRB,
        s_axi_s_axilite_ARVALID,
        s_axi_s_axilite_ARREADY,
        s_axi_s_axilite_ARADDR,
        s_axi_s_axilite_RVALID,
        s_axi_s_axilite_RREADY,
        s_axi_s_axilite_RDATA,
        s_axi_s_axilite_RRESP,
        s_axi_s_axilite_BVALID,
        s_axi_s_axilite_BREADY,
        s_axi_s_axilite_BRESP,
        ap_clk,
        ap_rst_n,
        arpDataIn_TDATA,
        arpDataIn_TKEEP,
        arpDataIn_TSTRB,
        arpDataIn_TLAST,
        macIpEncode_req_V_TDATA,
        arpDataOut_TDATA,
        arpDataOut_TKEEP,
        arpDataOut_TSTRB,
        arpDataOut_TLAST,
        macIpEncode_rsp_V_TDATA,
        myMacAddress,
        myIpAddress,
        gatewayIP,
        networkMask,
        macIpEncode_req_V_TVALID,
        macIpEncode_req_V_TREADY,
        macIpEncode_rsp_V_TVALID,
        macIpEncode_rsp_V_TREADY,
        arpDataIn_TVALID,
        arpDataIn_TREADY,
        arpDataOut_TVALID,
        arpDataOut_TREADY
);

parameter    C_S_AXI_S_AXILITE_DATA_WIDTH = 32;
parameter    C_S_AXI_S_AXILITE_ADDR_WIDTH = 12;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_S_AXILITE_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_s_axilite_AWVALID;
output   s_axi_s_axilite_AWREADY;
input  [C_S_AXI_S_AXILITE_ADDR_WIDTH - 1:0] s_axi_s_axilite_AWADDR;
input   s_axi_s_axilite_WVALID;
output   s_axi_s_axilite_WREADY;
input  [C_S_AXI_S_AXILITE_DATA_WIDTH - 1:0] s_axi_s_axilite_WDATA;
input  [C_S_AXI_S_AXILITE_WSTRB_WIDTH - 1:0] s_axi_s_axilite_WSTRB;
input   s_axi_s_axilite_ARVALID;
output   s_axi_s_axilite_ARREADY;
input  [C_S_AXI_S_AXILITE_ADDR_WIDTH - 1:0] s_axi_s_axilite_ARADDR;
output   s_axi_s_axilite_RVALID;
input   s_axi_s_axilite_RREADY;
output  [C_S_AXI_S_AXILITE_DATA_WIDTH - 1:0] s_axi_s_axilite_RDATA;
output  [1:0] s_axi_s_axilite_RRESP;
output   s_axi_s_axilite_BVALID;
input   s_axi_s_axilite_BREADY;
output  [1:0] s_axi_s_axilite_BRESP;
input   ap_clk;
input   ap_rst_n;
input  [511:0] arpDataIn_TDATA;
input  [63:0] arpDataIn_TKEEP;
input  [63:0] arpDataIn_TSTRB;
input  [0:0] arpDataIn_TLAST;
input  [31:0] macIpEncode_req_V_TDATA;
output  [511:0] arpDataOut_TDATA;
output  [63:0] arpDataOut_TKEEP;
output  [63:0] arpDataOut_TSTRB;
output  [0:0] arpDataOut_TLAST;
output  [127:0] macIpEncode_rsp_V_TDATA;
input  [47:0] myMacAddress;
input  [31:0] myIpAddress;
input  [31:0] gatewayIP;
input  [31:0] networkMask;
input   macIpEncode_req_V_TVALID;
output   macIpEncode_req_V_TREADY;
output   macIpEncode_rsp_V_TVALID;
input   macIpEncode_rsp_V_TREADY;
input   arpDataIn_TVALID;
output   arpDataIn_TREADY;
output   arpDataOut_TVALID;
input   arpDataOut_TREADY;

 reg    ap_rst_n_inv;
wire   [0:0] arp_scan_i;
wire   [7:0] arpTable_valid_q0;
wire   [63:0] arpTable_macAddress_q0;
wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire   [31:0] entry_proc_U0_ap_return_0;
wire   [31:0] entry_proc_U0_ap_return_1;
wire    ap_channel_done_networkMask_c_channel;
wire    networkMask_c_channel_full_n;
reg    ap_sync_reg_channel_write_networkMask_c_channel;
wire    ap_sync_channel_write_networkMask_c_channel;
wire    ap_channel_done_gatewayIP_c_channel;
wire    gatewayIP_c_channel_full_n;
reg    ap_sync_reg_channel_write_gatewayIP_c_channel;
wire    ap_sync_channel_write_gatewayIP_c_channel;
wire    genARPDiscovery_U0_ap_start;
wire    genARPDiscovery_U0_ap_done;
wire    genARPDiscovery_U0_ap_continue;
wire    genARPDiscovery_U0_ap_idle;
wire    genARPDiscovery_U0_ap_ready;
wire    genARPDiscovery_U0_macIpEncode_rsp_i_read;
wire   [31:0] genARPDiscovery_U0_macIpEncode_i_din;
wire    genARPDiscovery_U0_macIpEncode_i_write;
wire    genARPDiscovery_U0_macIpEncode_req_V_TREADY;
wire   [127:0] genARPDiscovery_U0_macIpEncode_rsp_V_TDATA;
wire    genARPDiscovery_U0_macIpEncode_rsp_V_TVALID;
wire   [0:0] genARPDiscovery_U0_arp_scan_o;
wire    genARPDiscovery_U0_arp_scan_o_ap_vld;
wire    arp_pkg_receiver_U0_ap_start;
wire    arp_pkg_receiver_U0_ap_done;
wire    arp_pkg_receiver_U0_ap_continue;
wire    arp_pkg_receiver_U0_ap_idle;
wire    arp_pkg_receiver_U0_ap_ready;
wire   [31:0] arp_pkg_receiver_U0_myIpAddress_c_din;
wire    arp_pkg_receiver_U0_myIpAddress_c_write;
wire   [127:0] arp_pkg_receiver_U0_arpTableInsertFifo_din;
wire    arp_pkg_receiver_U0_arpTableInsertFifo_write;
wire   [255:0] arp_pkg_receiver_U0_arpReplyFifo_din;
wire    arp_pkg_receiver_U0_arpReplyFifo_write;
wire    arp_pkg_receiver_U0_arpDataIn_TREADY;
wire    arp_pkg_sender_U0_ap_start;
wire    arp_pkg_sender_U0_ap_done;
wire    arp_pkg_sender_U0_ap_continue;
wire    arp_pkg_sender_U0_ap_idle;
wire    arp_pkg_sender_U0_ap_ready;
wire    arp_pkg_sender_U0_arpRequestFifo_read;
wire    arp_pkg_sender_U0_arpReplyFifo_read;
wire   [511:0] arp_pkg_sender_U0_arpDataOut_TDATA;
wire    arp_pkg_sender_U0_arpDataOut_TVALID;
wire   [63:0] arp_pkg_sender_U0_arpDataOut_TKEEP;
wire   [63:0] arp_pkg_sender_U0_arpDataOut_TSTRB;
wire   [0:0] arp_pkg_sender_U0_arpDataOut_TLAST;
wire    arp_table_U0_ap_start;
wire    arp_table_U0_ap_done;
wire    arp_table_U0_ap_continue;
wire    arp_table_U0_ap_idle;
wire    arp_table_U0_ap_ready;
wire    arp_table_U0_myIpAddress_read;
wire    arp_table_U0_macIpEncode_i_read;
wire    arp_table_U0_arpTableInsertFifo_read;
wire   [127:0] arp_table_U0_macIpEncode_rsp_i_din;
wire    arp_table_U0_macIpEncode_rsp_i_write;
wire   [31:0] arp_table_U0_arpRequestFifo_din;
wire    arp_table_U0_arpRequestFifo_write;
wire   [7:0] arp_table_U0_arpTable_macAddress_address0;
wire    arp_table_U0_arpTable_macAddress_ce0;
wire   [7:0] arp_table_U0_arpTable_macAddress_we0;
wire   [63:0] arp_table_U0_arpTable_macAddress_d0;
wire   [7:0] arp_table_U0_arpTable_ipAddress_address0;
wire    arp_table_U0_arpTable_ipAddress_ce0;
wire    arp_table_U0_arpTable_ipAddress_we0;
wire   [31:0] arp_table_U0_arpTable_ipAddress_d0;
wire   [7:0] arp_table_U0_arpTable_valid_address0;
wire    arp_table_U0_arpTable_valid_ce0;
wire    arp_table_U0_arpTable_valid_we0;
wire   [7:0] arp_table_U0_arpTable_valid_d0;
wire   [31:0] gatewayIP_c_channel_dout;
wire    gatewayIP_c_channel_empty_n;
wire   [31:0] networkMask_c_channel_dout;
wire    networkMask_c_channel_empty_n;
wire    macIpEncode_i_full_n;
wire   [31:0] macIpEncode_i_dout;
wire    macIpEncode_i_empty_n;
wire    macIpEncode_rsp_i_full_n;
wire   [127:0] macIpEncode_rsp_i_dout;
wire    macIpEncode_rsp_i_empty_n;
wire    myIpAddress_c_full_n;
wire   [31:0] myIpAddress_c_dout;
wire    myIpAddress_c_empty_n;
wire    arpReplyFifo_full_n;
wire   [255:0] arpReplyFifo_dout;
wire    arpReplyFifo_empty_n;
wire    arpTableInsertFifo_full_n;
wire   [127:0] arpTableInsertFifo_dout;
wire    arpTableInsertFifo_empty_n;
wire    arpRequestFifo_full_n;
wire   [31:0] arpRequestFifo_dout;
wire    arpRequestFifo_empty_n;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_channel_write_networkMask_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_gatewayIP_c_channel = 1'b0;
end

arp_server_s_axilite_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_S_AXILITE_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_S_AXILITE_DATA_WIDTH ))
s_axilite_s_axi_U(
    .AWVALID(s_axi_s_axilite_AWVALID),
    .AWREADY(s_axi_s_axilite_AWREADY),
    .AWADDR(s_axi_s_axilite_AWADDR),
    .WVALID(s_axi_s_axilite_WVALID),
    .WREADY(s_axi_s_axilite_WREADY),
    .WDATA(s_axi_s_axilite_WDATA),
    .WSTRB(s_axi_s_axilite_WSTRB),
    .ARVALID(s_axi_s_axilite_ARVALID),
    .ARREADY(s_axi_s_axilite_ARREADY),
    .ARADDR(s_axi_s_axilite_ARADDR),
    .RVALID(s_axi_s_axilite_RVALID),
    .RREADY(s_axi_s_axilite_RREADY),
    .RDATA(s_axi_s_axilite_RDATA),
    .RRESP(s_axi_s_axilite_RRESP),
    .BVALID(s_axi_s_axilite_BVALID),
    .BREADY(s_axi_s_axilite_BREADY),
    .BRESP(s_axi_s_axilite_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .arp_scan_o(genARPDiscovery_U0_arp_scan_o),
    .arp_scan_o_ap_vld(genARPDiscovery_U0_arp_scan_o_ap_vld),
    .arp_scan_i(arp_scan_i),
    .arpTable_valid_address0(arp_table_U0_arpTable_valid_address0),
    .arpTable_valid_ce0(arp_table_U0_arpTable_valid_ce0),
    .arpTable_valid_we0(arp_table_U0_arpTable_valid_we0),
    .arpTable_valid_d0(arp_table_U0_arpTable_valid_d0),
    .arpTable_valid_q0(arpTable_valid_q0),
    .arpTable_ipAddress_address0(arp_table_U0_arpTable_ipAddress_address0),
    .arpTable_ipAddress_ce0(arp_table_U0_arpTable_ipAddress_ce0),
    .arpTable_ipAddress_we0(arp_table_U0_arpTable_ipAddress_we0),
    .arpTable_ipAddress_d0(arp_table_U0_arpTable_ipAddress_d0),
    .arpTable_macAddress_address0(arp_table_U0_arpTable_macAddress_address0),
    .arpTable_macAddress_ce0(arp_table_U0_arpTable_macAddress_ce0),
    .arpTable_macAddress_we0(arp_table_U0_arpTable_macAddress_we0),
    .arpTable_macAddress_d0(arp_table_U0_arpTable_macAddress_d0),
    .arpTable_macAddress_q0(arpTable_macAddress_q0)
);

arp_server_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(entry_proc_U0_ap_start),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .gatewayIP(gatewayIP),
    .networkMask(networkMask),
    .ap_return_0(entry_proc_U0_ap_return_0),
    .ap_return_1(entry_proc_U0_ap_return_1)
);

arp_server_genARPDiscovery genARPDiscovery_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(genARPDiscovery_U0_ap_start),
    .ap_done(genARPDiscovery_U0_ap_done),
    .ap_continue(genARPDiscovery_U0_ap_continue),
    .ap_idle(genARPDiscovery_U0_ap_idle),
    .ap_ready(genARPDiscovery_U0_ap_ready),
    .macIpEncode_req_V_TVALID(macIpEncode_req_V_TVALID),
    .macIpEncode_rsp_i_dout(macIpEncode_rsp_i_dout),
    .macIpEncode_rsp_i_empty_n(macIpEncode_rsp_i_empty_n),
    .macIpEncode_rsp_i_read(genARPDiscovery_U0_macIpEncode_rsp_i_read),
    .macIpEncode_i_din(genARPDiscovery_U0_macIpEncode_i_din),
    .macIpEncode_i_full_n(macIpEncode_i_full_n),
    .macIpEncode_i_write(genARPDiscovery_U0_macIpEncode_i_write),
    .macIpEncode_rsp_V_TREADY(macIpEncode_rsp_V_TREADY),
    .macIpEncode_req_V_TDATA(macIpEncode_req_V_TDATA),
    .macIpEncode_req_V_TREADY(genARPDiscovery_U0_macIpEncode_req_V_TREADY),
    .macIpEncode_rsp_V_TDATA(genARPDiscovery_U0_macIpEncode_rsp_V_TDATA),
    .macIpEncode_rsp_V_TVALID(genARPDiscovery_U0_macIpEncode_rsp_V_TVALID),
    .arp_scan_i(arp_scan_i),
    .arp_scan_o(genARPDiscovery_U0_arp_scan_o),
    .arp_scan_o_ap_vld(genARPDiscovery_U0_arp_scan_o_ap_vld),
    .myIpAddress(myIpAddress)
);

arp_server_arp_pkg_receiver arp_pkg_receiver_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_pkg_receiver_U0_ap_start),
    .ap_done(arp_pkg_receiver_U0_ap_done),
    .ap_continue(arp_pkg_receiver_U0_ap_continue),
    .ap_idle(arp_pkg_receiver_U0_ap_idle),
    .ap_ready(arp_pkg_receiver_U0_ap_ready),
    .myIpAddress_c_din(arp_pkg_receiver_U0_myIpAddress_c_din),
    .myIpAddress_c_full_n(myIpAddress_c_full_n),
    .myIpAddress_c_write(arp_pkg_receiver_U0_myIpAddress_c_write),
    .arpDataIn_TVALID(arpDataIn_TVALID),
    .arpTableInsertFifo_din(arp_pkg_receiver_U0_arpTableInsertFifo_din),
    .arpTableInsertFifo_full_n(arpTableInsertFifo_full_n),
    .arpTableInsertFifo_write(arp_pkg_receiver_U0_arpTableInsertFifo_write),
    .arpReplyFifo_din(arp_pkg_receiver_U0_arpReplyFifo_din),
    .arpReplyFifo_full_n(arpReplyFifo_full_n),
    .arpReplyFifo_write(arp_pkg_receiver_U0_arpReplyFifo_write),
    .arpDataIn_TDATA(arpDataIn_TDATA),
    .arpDataIn_TREADY(arp_pkg_receiver_U0_arpDataIn_TREADY),
    .arpDataIn_TKEEP(arpDataIn_TKEEP),
    .arpDataIn_TSTRB(arpDataIn_TSTRB),
    .arpDataIn_TLAST(arpDataIn_TLAST),
    .myIpAddress(myIpAddress)
);

arp_server_arp_pkg_sender arp_pkg_sender_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_pkg_sender_U0_ap_start),
    .ap_done(arp_pkg_sender_U0_ap_done),
    .ap_continue(arp_pkg_sender_U0_ap_continue),
    .ap_idle(arp_pkg_sender_U0_ap_idle),
    .ap_ready(arp_pkg_sender_U0_ap_ready),
    .arpRequestFifo_dout(arpRequestFifo_dout),
    .arpRequestFifo_empty_n(arpRequestFifo_empty_n),
    .arpRequestFifo_read(arp_pkg_sender_U0_arpRequestFifo_read),
    .arpReplyFifo_dout(arpReplyFifo_dout),
    .arpReplyFifo_empty_n(arpReplyFifo_empty_n),
    .arpReplyFifo_read(arp_pkg_sender_U0_arpReplyFifo_read),
    .arpDataOut_TREADY(arpDataOut_TREADY),
    .arpDataOut_TDATA(arp_pkg_sender_U0_arpDataOut_TDATA),
    .arpDataOut_TVALID(arp_pkg_sender_U0_arpDataOut_TVALID),
    .arpDataOut_TKEEP(arp_pkg_sender_U0_arpDataOut_TKEEP),
    .arpDataOut_TSTRB(arp_pkg_sender_U0_arpDataOut_TSTRB),
    .arpDataOut_TLAST(arp_pkg_sender_U0_arpDataOut_TLAST),
    .myMacAddress(myMacAddress),
    .myIpAddress(myIpAddress),
    .gatewayIP(gatewayIP),
    .networkMask(networkMask)
);

arp_server_arp_table arp_table_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(arp_table_U0_ap_start),
    .ap_done(arp_table_U0_ap_done),
    .ap_continue(arp_table_U0_ap_continue),
    .ap_idle(arp_table_U0_ap_idle),
    .ap_ready(arp_table_U0_ap_ready),
    .myIpAddress_dout(myIpAddress_c_dout),
    .myIpAddress_empty_n(myIpAddress_c_empty_n),
    .myIpAddress_read(arp_table_U0_myIpAddress_read),
    .macIpEncode_i_dout(macIpEncode_i_dout),
    .macIpEncode_i_empty_n(macIpEncode_i_empty_n),
    .macIpEncode_i_read(arp_table_U0_macIpEncode_i_read),
    .arpTableInsertFifo_dout(arpTableInsertFifo_dout),
    .arpTableInsertFifo_empty_n(arpTableInsertFifo_empty_n),
    .arpTableInsertFifo_read(arp_table_U0_arpTableInsertFifo_read),
    .macIpEncode_rsp_i_din(arp_table_U0_macIpEncode_rsp_i_din),
    .macIpEncode_rsp_i_full_n(macIpEncode_rsp_i_full_n),
    .macIpEncode_rsp_i_write(arp_table_U0_macIpEncode_rsp_i_write),
    .arpRequestFifo_din(arp_table_U0_arpRequestFifo_din),
    .arpRequestFifo_full_n(arpRequestFifo_full_n),
    .arpRequestFifo_write(arp_table_U0_arpRequestFifo_write),
    .arpTable_macAddress_address0(arp_table_U0_arpTable_macAddress_address0),
    .arpTable_macAddress_ce0(arp_table_U0_arpTable_macAddress_ce0),
    .arpTable_macAddress_we0(arp_table_U0_arpTable_macAddress_we0),
    .arpTable_macAddress_d0(arp_table_U0_arpTable_macAddress_d0),
    .arpTable_macAddress_q0(arpTable_macAddress_q0),
    .arpTable_ipAddress_address0(arp_table_U0_arpTable_ipAddress_address0),
    .arpTable_ipAddress_ce0(arp_table_U0_arpTable_ipAddress_ce0),
    .arpTable_ipAddress_we0(arp_table_U0_arpTable_ipAddress_we0),
    .arpTable_ipAddress_d0(arp_table_U0_arpTable_ipAddress_d0),
    .arpTable_valid_address0(arp_table_U0_arpTable_valid_address0),
    .arpTable_valid_ce0(arp_table_U0_arpTable_valid_ce0),
    .arpTable_valid_we0(arp_table_U0_arpTable_valid_we0),
    .arpTable_valid_d0(arp_table_U0_arpTable_valid_d0),
    .arpTable_valid_q0(arpTable_valid_q0),
    .p_read(gatewayIP_c_channel_dout),
    .p_read1(networkMask_c_channel_dout)
);

arp_server_fifo_w32_d2_S gatewayIP_c_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_ap_return_0),
    .if_full_n(gatewayIP_c_channel_full_n),
    .if_write(ap_channel_done_gatewayIP_c_channel),
    .if_dout(gatewayIP_c_channel_dout),
    .if_empty_n(gatewayIP_c_channel_empty_n),
    .if_read(arp_table_U0_ap_ready)
);

arp_server_fifo_w32_d2_S networkMask_c_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_ap_return_1),
    .if_full_n(networkMask_c_channel_full_n),
    .if_write(ap_channel_done_networkMask_c_channel),
    .if_dout(networkMask_c_channel_dout),
    .if_empty_n(networkMask_c_channel_empty_n),
    .if_read(arp_table_U0_ap_ready)
);

arp_server_fifo_w32_d4_S macIpEncode_i_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(genARPDiscovery_U0_macIpEncode_i_din),
    .if_full_n(macIpEncode_i_full_n),
    .if_write(genARPDiscovery_U0_macIpEncode_i_write),
    .if_dout(macIpEncode_i_dout),
    .if_empty_n(macIpEncode_i_empty_n),
    .if_read(arp_table_U0_macIpEncode_i_read)
);

arp_server_fifo_w128_d4_S macIpEncode_rsp_i_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_table_U0_macIpEncode_rsp_i_din),
    .if_full_n(macIpEncode_rsp_i_full_n),
    .if_write(arp_table_U0_macIpEncode_rsp_i_write),
    .if_dout(macIpEncode_rsp_i_dout),
    .if_empty_n(macIpEncode_rsp_i_empty_n),
    .if_read(genARPDiscovery_U0_macIpEncode_rsp_i_read)
);

arp_server_fifo_w32_d2_S myIpAddress_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_pkg_receiver_U0_myIpAddress_c_din),
    .if_full_n(myIpAddress_c_full_n),
    .if_write(arp_pkg_receiver_U0_myIpAddress_c_write),
    .if_dout(myIpAddress_c_dout),
    .if_empty_n(myIpAddress_c_empty_n),
    .if_read(arp_table_U0_myIpAddress_read)
);

arp_server_fifo_w256_d4_S arpReplyFifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_pkg_receiver_U0_arpReplyFifo_din),
    .if_full_n(arpReplyFifo_full_n),
    .if_write(arp_pkg_receiver_U0_arpReplyFifo_write),
    .if_dout(arpReplyFifo_dout),
    .if_empty_n(arpReplyFifo_empty_n),
    .if_read(arp_pkg_sender_U0_arpReplyFifo_read)
);

arp_server_fifo_w128_d4_S arpTableInsertFifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_pkg_receiver_U0_arpTableInsertFifo_din),
    .if_full_n(arpTableInsertFifo_full_n),
    .if_write(arp_pkg_receiver_U0_arpTableInsertFifo_write),
    .if_dout(arpTableInsertFifo_dout),
    .if_empty_n(arpTableInsertFifo_empty_n),
    .if_read(arp_table_U0_arpTableInsertFifo_read)
);

arp_server_fifo_w32_d4_S arpRequestFifo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(arp_table_U0_arpRequestFifo_din),
    .if_full_n(arpRequestFifo_full_n),
    .if_write(arp_table_U0_arpRequestFifo_write),
    .if_dout(arpRequestFifo_dout),
    .if_empty_n(arpRequestFifo_empty_n),
    .if_read(arp_pkg_sender_U0_arpRequestFifo_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_gatewayIP_c_channel <= 1'b0;
    end else begin
        if (((entry_proc_U0_ap_done & entry_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_gatewayIP_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_gatewayIP_c_channel <= ap_sync_channel_write_gatewayIP_c_channel;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_channel_write_networkMask_c_channel <= 1'b0;
    end else begin
        if (((entry_proc_U0_ap_done & entry_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_networkMask_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_networkMask_c_channel <= ap_sync_channel_write_networkMask_c_channel;
        end
    end
end

assign ap_channel_done_gatewayIP_c_channel = ((ap_sync_reg_channel_write_gatewayIP_c_channel ^ 1'b1) & entry_proc_U0_ap_done);

assign ap_channel_done_networkMask_c_channel = ((ap_sync_reg_channel_write_networkMask_c_channel ^ 1'b1) & entry_proc_U0_ap_done);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_channel_write_gatewayIP_c_channel = ((gatewayIP_c_channel_full_n & ap_channel_done_gatewayIP_c_channel) | ap_sync_reg_channel_write_gatewayIP_c_channel);

assign ap_sync_channel_write_networkMask_c_channel = ((networkMask_c_channel_full_n & ap_channel_done_networkMask_c_channel) | ap_sync_reg_channel_write_networkMask_c_channel);

assign arpDataIn_TREADY = arp_pkg_receiver_U0_arpDataIn_TREADY;

assign arpDataOut_TDATA = arp_pkg_sender_U0_arpDataOut_TDATA;

assign arpDataOut_TKEEP = arp_pkg_sender_U0_arpDataOut_TKEEP;

assign arpDataOut_TLAST = arp_pkg_sender_U0_arpDataOut_TLAST;

assign arpDataOut_TSTRB = arp_pkg_sender_U0_arpDataOut_TSTRB;

assign arpDataOut_TVALID = arp_pkg_sender_U0_arpDataOut_TVALID;

assign arp_pkg_receiver_U0_ap_continue = 1'b1;

assign arp_pkg_receiver_U0_ap_start = 1'b1;

assign arp_pkg_sender_U0_ap_continue = 1'b1;

assign arp_pkg_sender_U0_ap_start = 1'b1;

assign arp_table_U0_ap_continue = 1'b1;

assign arp_table_U0_ap_start = (networkMask_c_channel_empty_n & gatewayIP_c_channel_empty_n);

assign entry_proc_U0_ap_continue = (ap_sync_channel_write_networkMask_c_channel & ap_sync_channel_write_gatewayIP_c_channel);

assign entry_proc_U0_ap_start = 1'b1;

assign genARPDiscovery_U0_ap_continue = 1'b1;

assign genARPDiscovery_U0_ap_start = 1'b1;

assign macIpEncode_req_V_TREADY = genARPDiscovery_U0_macIpEncode_req_V_TREADY;

assign macIpEncode_rsp_V_TDATA = genARPDiscovery_U0_macIpEncode_rsp_V_TDATA;

assign macIpEncode_rsp_V_TVALID = genARPDiscovery_U0_macIpEncode_rsp_V_TVALID;

endmodule //arp_server
