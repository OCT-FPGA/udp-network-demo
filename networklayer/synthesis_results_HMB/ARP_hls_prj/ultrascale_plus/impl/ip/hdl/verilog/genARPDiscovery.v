// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module genARPDiscovery (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        macIpEncodeIn_V_V_TVALID,
        macIpEncode_rsp_i_V_dout,
        macIpEncode_rsp_i_V_empty_n,
        macIpEncode_rsp_i_V_read,
        myIpAddress_V_dout,
        myIpAddress_V_empty_n,
        myIpAddress_V_read,
        macIpEncode_i_V_V_din,
        macIpEncode_i_V_V_full_n,
        macIpEncode_i_V_V_write,
        macIpEncode_rsp_o_V_TREADY,
        macIpEncodeIn_V_V_TDATA,
        macIpEncodeIn_V_V_TREADY,
        macIpEncode_rsp_o_V_TDATA,
        macIpEncode_rsp_o_V_TVALID,
        arp_scan_V_i,
        arp_scan_V_o,
        arp_scan_V_o_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input   macIpEncodeIn_V_V_TVALID;
input  [48:0] macIpEncode_rsp_i_V_dout;
input   macIpEncode_rsp_i_V_empty_n;
output   macIpEncode_rsp_i_V_read;
input  [31:0] myIpAddress_V_dout;
input   myIpAddress_V_empty_n;
output   myIpAddress_V_read;
output  [31:0] macIpEncode_i_V_V_din;
input   macIpEncode_i_V_V_full_n;
output   macIpEncode_i_V_V_write;
input   macIpEncode_rsp_o_V_TREADY;
input  [31:0] macIpEncodeIn_V_V_TDATA;
output   macIpEncodeIn_V_V_TREADY;
output  [55:0] macIpEncode_rsp_o_V_TDATA;
output   macIpEncode_rsp_o_V_TVALID;
input  [0:0] arp_scan_V_i;
output  [0:0] arp_scan_V_o;
output   arp_scan_V_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg macIpEncode_rsp_i_V_read;
reg myIpAddress_V_read;
reg[31:0] macIpEncode_i_V_V_din;
reg macIpEncode_i_V_V_write;
reg macIpEncodeIn_V_V_TREADY;
reg[0:0] arp_scan_V_o;
reg arp_scan_V_o_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [2:0] gia_fsm_state_load_load_fu_186_p1;
wire   [0:0] tmp_1_nbreadreq_fu_90_p3;
reg    ap_predicate_op13_read_state1;
wire   [0:0] grp_nbreadreq_fu_104_p3;
reg    ap_predicate_op17_read_state1;
reg    ap_predicate_op27_read_state1;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] gia_fsm_state_load_reg_304;
reg   [0:0] tmp_1_reg_324;
reg    ap_predicate_op44_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] tmp_2_reg_333;
reg    ap_predicate_op47_write_state2;
reg    ap_block_state2_io;
wire    regslice_both_macIpEncode_rsp_o_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg   [2:0] gia_fsm_state_load_reg_304_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_333_pp0_iter1_reg;
reg    ap_predicate_op65_write_state3;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
reg   [2:0] gia_fsm_state;
reg   [7:0] ip_lsb_V;
reg   [31:0] time_counter_V;
reg   [0:0] arp_scan_1d_V;
reg    macIpEncodeIn_V_V_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    macIpEncode_rsp_o_V_TDATA_blk_n;
reg    myIpAddress_V_blk_n;
reg    macIpEncode_i_V_V_blk_n;
reg    macIpEncode_rsp_i_V_blk_n;
reg   [7:0] v1_V_reg_308;
reg   [31:0] tmp_V_1_reg_328;
reg   [48:0] tmp_18_reg_337;
wire   [0:0] icmp_ln879_fu_264_p2;
reg    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4;
wire   [0:0] ap_phi_reg_pp0_iter0_p_0120_0_i_i_reg_146;
wire   [0:0] ap_phi_reg_pp0_iter0_arp_scan_V_loc_1_i_i_reg_157;
reg   [0:0] ap_phi_reg_pp0_iter1_arp_scan_V_loc_1_i_i_reg_157;
wire   [0:0] or_ln323_fu_210_p2;
wire   [2:0] select_ln304_fu_228_p3;
wire   [7:0] add_ln700_fu_242_p2;
wire   [31:0] add_ln700_1_fu_270_p2;
reg   [0:0] ap_sig_allocacmp_arp_scan_1d_V_load;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] ip_aux_V_fu_290_p3;
wire   [0:0] xor_ln323_fu_204_p2;
wire   [0:0] icmp_ln879_1_fu_222_p2;
wire   [23:0] trunc_ln647_fu_286_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
wire   [55:0] macIpEncode_rsp_o_V_TDATA_int;
reg    macIpEncode_rsp_o_V_TVALID_int;
wire    macIpEncode_rsp_o_V_TREADY_int;
wire    regslice_both_macIpEncode_rsp_o_V_U_vld_out;
reg    ap_condition_132;
reg    ap_condition_291;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 gia_fsm_state = 3'd3;
#0 ip_lsb_V = 8'd0;
#0 time_counter_V = 32'd0;
#0 arp_scan_1d_V = 1'd0;
end

regslice_both #(
    .DataWidth( 56 ))
regslice_both_macIpEncode_rsp_o_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(macIpEncode_rsp_o_V_TDATA_int),
    .vld_in(macIpEncode_rsp_o_V_TVALID_int),
    .ack_in(macIpEncode_rsp_o_V_TREADY_int),
    .data_out(macIpEncode_rsp_o_V_TDATA),
    .vld_out(regslice_both_macIpEncode_rsp_o_V_U_vld_out),
    .ack_out(macIpEncode_rsp_o_V_TREADY),
    .apdone_blk(regslice_both_macIpEncode_rsp_o_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        gia_fsm_state <= 3'd3;
    end else begin
        if (((gia_fsm_state_load_load_fu_186_p1 == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            gia_fsm_state <= 3'd4;
        end else if (((grp_nbreadreq_fu_104_p3 == 1'd1) & (gia_fsm_state == 3'd4) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            gia_fsm_state <= select_ln304_fu_228_p3;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((grp_nbreadreq_fu_104_p3 == 1'd0) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0)) | ((ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 == 1'd1) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0))))) begin
            gia_fsm_state <= 3'd0;
        end else if ((((gia_fsm_state_load_load_fu_186_p1 == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((icmp_ln879_fu_264_p2 == 1'd1) & (gia_fsm_state_load_load_fu_186_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
            gia_fsm_state <= 3'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((grp_nbreadreq_fu_104_p3 == 1'd0) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0)) | ((ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 == 1'd1) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0))))) begin
        ap_phi_reg_pp0_iter1_arp_scan_V_loc_1_i_i_reg_157 <= 1'd0;
    end else if ((((gia_fsm_state == 3'd4) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_104_p3 == 1'd1) & (gia_fsm_state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((grp_nbreadreq_fu_104_p3 == 1'd0) & (or_ln323_fu_210_p2 == 1'd1) & (gia_fsm_state == 3'd3)) | ((or_ln323_fu_210_p2 == 1'd1) & (ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 == 1'd1) & (gia_fsm_state == 3'd3)))) | ((gia_fsm_state_load_load_fu_186_p1 == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((gia_fsm_state_load_load_fu_186_p1 == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & ((gia_fsm_state_load_load_fu_186_p1 == 3'd5) | ((gia_fsm_state_load_load_fu_186_p1 == 3'd6) | (gia_fsm_state_load_load_fu_186_p1 == 3'd7)))) | ((gia_fsm_state_load_load_fu_186_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_arp_scan_V_loc_1_i_i_reg_157 <= arp_scan_V_i;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_arp_scan_V_loc_1_i_i_reg_157 <= ap_phi_reg_pp0_iter0_arp_scan_V_loc_1_i_i_reg_157;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_132)) begin
        if ((gia_fsm_state_load_load_fu_186_p1 == 3'd2)) begin
            ip_lsb_V <= add_ln700_fu_242_p2;
        end else if ((gia_fsm_state_load_load_fu_186_p1 == 3'd0)) begin
            ip_lsb_V <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        arp_scan_1d_V <= ap_phi_reg_pp0_iter1_arp_scan_V_loc_1_i_i_reg_157;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        gia_fsm_state_load_reg_304 <= gia_fsm_state;
        gia_fsm_state_load_reg_304_pp0_iter1_reg <= gia_fsm_state_load_reg_304;
        tmp_2_reg_333_pp0_iter1_reg <= tmp_2_reg_333;
        v1_V_reg_308 <= ip_lsb_V;
    end
end

always @ (posedge ap_clk) begin
    if (((gia_fsm_state_load_load_fu_186_p1 == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        time_counter_V <= add_ln700_1_fu_270_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_18_reg_337 <= macIpEncode_rsp_i_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((gia_fsm_state == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_reg_324 <= tmp_1_nbreadreq_fu_90_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((gia_fsm_state == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_2_reg_333 <= grp_nbreadreq_fu_104_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op13_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_V_1_reg_328 <= macIpEncodeIn_V_V_TDATA;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if ((gia_fsm_state == 3'd3)) begin
        if ((tmp_1_nbreadreq_fu_90_p3 == 1'd0)) begin
            ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 = 1'd1;
        end else if ((tmp_1_nbreadreq_fu_90_p3 == 1'd1)) begin
            ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 = 1'd0;
        end else begin
            ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 = ap_phi_reg_pp0_iter0_p_0120_0_i_i_reg_146;
        end
    end else begin
        ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 = ap_phi_reg_pp0_iter0_p_0120_0_i_i_reg_146;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_arp_scan_1d_V_load = ap_phi_reg_pp0_iter1_arp_scan_V_loc_1_i_i_reg_157;
    end else begin
        ap_sig_allocacmp_arp_scan_1d_V_load = arp_scan_1d_V;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (((grp_nbreadreq_fu_104_p3 == 1'd0) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0)) | ((ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 == 1'd1) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0))))) begin
        arp_scan_V_o = 1'd0;
    end else begin
        arp_scan_V_o = arp_scan_V_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (((grp_nbreadreq_fu_104_p3 == 1'd0) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0)) | ((ap_phi_mux_p_0120_0_i_i_phi_fu_149_p4 == 1'd1) & (gia_fsm_state == 3'd3) & (or_ln323_fu_210_p2 == 1'd0))))) begin
        arp_scan_V_o_ap_vld = 1'b1;
    end else begin
        arp_scan_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op13_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        macIpEncodeIn_V_V_TDATA_blk_n = macIpEncodeIn_V_V_TVALID;
    end else begin
        macIpEncodeIn_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op13_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macIpEncodeIn_V_V_TREADY = 1'b1;
    end else begin
        macIpEncodeIn_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((gia_fsm_state_load_reg_304 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op44_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        macIpEncode_i_V_V_blk_n = macIpEncode_i_V_V_full_n;
    end else begin
        macIpEncode_i_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_291)) begin
        if ((gia_fsm_state_load_reg_304 == 3'd2)) begin
            macIpEncode_i_V_V_din = ip_aux_V_fu_290_p3;
        end else if ((ap_predicate_op44_write_state2 == 1'b1)) begin
            macIpEncode_i_V_V_din = tmp_V_1_reg_328;
        end else begin
            macIpEncode_i_V_V_din = 'bx;
        end
    end else begin
        macIpEncode_i_V_V_din = 'bx;
    end
end

always @ (*) begin
    if ((((gia_fsm_state_load_reg_304 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op44_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        macIpEncode_i_V_V_write = 1'b1;
    end else begin
        macIpEncode_i_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op27_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        macIpEncode_rsp_i_V_blk_n = macIpEncode_rsp_i_V_empty_n;
    end else begin
        macIpEncode_rsp_i_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op27_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op17_read_state1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        macIpEncode_rsp_i_V_read = 1'b1;
    end else begin
        macIpEncode_rsp_i_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op47_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_op65_write_state3 == 1'b1) & (1'b0 == ap_block_pp0_stage0)))) begin
        macIpEncode_rsp_o_V_TDATA_blk_n = macIpEncode_rsp_o_V_TREADY_int;
    end else begin
        macIpEncode_rsp_o_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op47_write_state2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        macIpEncode_rsp_o_V_TVALID_int = 1'b1;
    end else begin
        macIpEncode_rsp_o_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        myIpAddress_V_blk_n = myIpAddress_V_empty_n;
    end else begin
        myIpAddress_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        myIpAddress_V_read = 1'b1;
    end else begin
        myIpAddress_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln700_1_fu_270_p2 = (time_counter_V + 32'd1);

assign add_ln700_fu_242_p2 = (8'd1 + ip_lsb_V);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((myIpAddress_V_empty_n == 1'b0) | ((gia_fsm_state_load_reg_304 == 3'd2) & (macIpEncode_i_V_V_full_n == 1'b0)) | ((macIpEncode_i_V_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)))) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op27_read_state1 == 1'b1)) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((macIpEncodeIn_V_V_TVALID == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (regslice_both_macIpEncode_rsp_o_V_U_apdone_blk == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op27_read_state1 == 1'b1)) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((macIpEncodeIn_V_V_TVALID == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_macIpEncode_rsp_o_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((myIpAddress_V_empty_n == 1'b0) | (1'b1 == ap_block_state2_io) | ((gia_fsm_state_load_reg_304 == 3'd2) & (macIpEncode_i_V_V_full_n == 1'b0)) | ((macIpEncode_i_V_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op27_read_state1 == 1'b1)) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((macIpEncodeIn_V_V_TVALID == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_macIpEncode_rsp_o_V_U_apdone_blk == 1'b1) | (1'b1 == ap_block_state3_io))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((myIpAddress_V_empty_n == 1'b0) | (1'b1 == ap_block_state2_io) | ((gia_fsm_state_load_reg_304 == 3'd2) & (macIpEncode_i_V_V_full_n == 1'b0)) | ((macIpEncode_i_V_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op27_read_state1 == 1'b1)) | ((macIpEncode_rsp_i_V_empty_n == 1'b0) & (ap_predicate_op17_read_state1 == 1'b1)) | ((macIpEncodeIn_V_V_TVALID == 1'b0) & (ap_predicate_op13_read_state1 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_io = ((macIpEncode_rsp_o_V_TREADY_int == 1'b0) & (ap_predicate_op47_write_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((myIpAddress_V_empty_n == 1'b0) | ((gia_fsm_state_load_reg_304 == 3'd2) & (macIpEncode_i_V_V_full_n == 1'b0)) | ((macIpEncode_i_V_V_full_n == 1'b0) & (ap_predicate_op44_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_io = ((macIpEncode_rsp_o_V_TREADY_int == 1'b0) & (ap_predicate_op65_write_state3 == 1'b1));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (regslice_both_macIpEncode_rsp_o_V_U_apdone_blk == 1'b1);
end

always @ (*) begin
    ap_condition_132 = ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

always @ (*) begin
    ap_condition_291 = ((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_arp_scan_V_loc_1_i_i_reg_157 = 'bx;

assign ap_phi_reg_pp0_iter0_p_0120_0_i_i_reg_146 = 'bx;

always @ (*) begin
    ap_predicate_op13_read_state1 = ((tmp_1_nbreadreq_fu_90_p3 == 1'd1) & (gia_fsm_state == 3'd3));
end

always @ (*) begin
    ap_predicate_op17_read_state1 = ((grp_nbreadreq_fu_104_p3 == 1'd1) & (gia_fsm_state == 3'd3));
end

always @ (*) begin
    ap_predicate_op27_read_state1 = ((grp_nbreadreq_fu_104_p3 == 1'd1) & (gia_fsm_state == 3'd4));
end

always @ (*) begin
    ap_predicate_op44_write_state2 = ((tmp_1_reg_324 == 1'd1) & (gia_fsm_state_load_reg_304 == 3'd3));
end

always @ (*) begin
    ap_predicate_op47_write_state2 = ((tmp_2_reg_333 == 1'd1) & (gia_fsm_state_load_reg_304 == 3'd3));
end

always @ (*) begin
    ap_predicate_op65_write_state3 = ((tmp_2_reg_333_pp0_iter1_reg == 1'd1) & (gia_fsm_state_load_reg_304_pp0_iter1_reg == 3'd3));
end

assign gia_fsm_state_load_load_fu_186_p1 = gia_fsm_state;

assign grp_nbreadreq_fu_104_p3 = macIpEncode_rsp_i_V_empty_n;

assign icmp_ln879_1_fu_222_p2 = ((ip_lsb_V == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_264_p2 = ((time_counter_V == 32'd1500000000) ? 1'b1 : 1'b0);

assign ip_aux_V_fu_290_p3 = {{v1_V_reg_308}, {trunc_ln647_fu_286_p1}};

assign macIpEncode_rsp_o_V_TDATA_int = $signed(tmp_18_reg_337);

assign macIpEncode_rsp_o_V_TVALID = regslice_both_macIpEncode_rsp_o_V_U_vld_out;

assign or_ln323_fu_210_p2 = (xor_ln323_fu_204_p2 | ap_sig_allocacmp_arp_scan_1d_V_load);

assign select_ln304_fu_228_p3 = ((icmp_ln879_1_fu_222_p2[0:0] === 1'b1) ? 3'd3 : 3'd2);

assign tmp_1_nbreadreq_fu_90_p3 = macIpEncodeIn_V_V_TVALID;

assign trunc_ln647_fu_286_p1 = myIpAddress_V_dout[23:0];

assign xor_ln323_fu_204_p2 = (arp_scan_V_i ^ 1'd1);

endmodule //genARPDiscovery
