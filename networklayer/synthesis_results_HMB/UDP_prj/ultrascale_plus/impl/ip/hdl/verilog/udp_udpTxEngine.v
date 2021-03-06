// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module udp_udpTxEngine (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        agmdDataOut_dout,
        agmdDataOut_empty_n,
        agmdDataOut_read,
        txthMetaData_dout,
        txthMetaData_empty_n,
        txthMetaData_read,
        agmdpayloadLenOut_dout,
        agmdpayloadLenOut_empty_n,
        agmdpayloadLenOut_read,
        txUdpDataOut_TREADY,
        txUdpDataOut_TDATA,
        txUdpDataOut_TVALID,
        txUdpDataOut_TKEEP,
        txUdpDataOut_TSTRB,
        txUdpDataOut_TLAST
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1023:0] agmdDataOut_dout;
input   agmdDataOut_empty_n;
output   agmdDataOut_read;
input  [127:0] txthMetaData_dout;
input   txthMetaData_empty_n;
output   txthMetaData_read;
input  [15:0] agmdpayloadLenOut_dout;
input   agmdpayloadLenOut_empty_n;
output   agmdpayloadLenOut_read;
input   txUdpDataOut_TREADY;
output  [511:0] txUdpDataOut_TDATA;
output   txUdpDataOut_TVALID;
output  [63:0] txUdpDataOut_TKEEP;
output  [63:0] txUdpDataOut_TSTRB;
output  [0:0] txUdpDataOut_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg agmdDataOut_read;
reg txthMetaData_read;
reg agmdpayloadLenOut_read;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire   [2:0] ute_state_load_load_fu_310_p1;
wire   [0:0] grp_nbreadreq_fu_162_p3;
reg    ap_predicate_op24_read_state1;
reg    ap_predicate_op36_read_state1;
reg    ap_predicate_op58_read_state1;
wire   [0:0] tmp_i_nbreadreq_fu_176_p3;
wire   [0:0] tmp_i_104_nbreadreq_fu_184_p3;
reg    ap_predicate_op82_read_state1;
reg    ap_predicate_op92_read_state1;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg   [2:0] ute_state_load_reg_788;
reg   [0:0] tmp_2_i_reg_808;
reg    ap_predicate_op107_write_state2;
reg   [0:0] tmp_1_i_reg_833;
reg    ap_predicate_op133_write_state2;
reg    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state2_io;
reg   [2:0] ute_state_load_reg_788_pp0_iter1_reg;
reg   [0:0] tmp_2_i_reg_808_pp0_iter1_reg;
reg    ap_predicate_op136_write_state3;
reg   [0:0] tmp_1_i_reg_833_pp0_iter1_reg;
reg    ap_predicate_op138_write_state3;
wire    regslice_both_txUdpDataOut_V_data_V_U_apdone_blk;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_subdone;
reg   [2:0] ute_state;
reg   [511:0] prevWord_data_V;
reg   [63:0] prevWord_keep_V;
reg   [31:0] currMetaData_theirIP_V;
reg   [31:0] currMetaData_myIP_V;
reg   [15:0] currMetaData_theirPort_V;
reg   [15:0] currMetaData_myPort_V;
reg   [15:0] ip_len_V;
reg   [15:0] udp_len_V;
reg    txUdpDataOut_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    txthMetaData_blk_n;
reg    agmdpayloadLenOut_blk_n;
reg    agmdDataOut_blk_n;
reg   [35:0] reg_306;
reg    ap_block_pp0_stage0_11001;
wire   [223:0] p_Result_14_fu_328_p1;
reg   [223:0] p_Result_14_reg_798;
wire   [27:0] p_Result_15_fu_332_p1;
reg   [27:0] p_Result_15_reg_803;
wire   [223:0] trunc_ln674_7_fu_342_p1;
reg   [223:0] trunc_ln674_7_reg_815;
wire   [27:0] trunc_ln674_8_fu_346_p1;
reg   [27:0] trunc_ln674_8_reg_820;
wire   [287:0] trunc_ln674_9_fu_350_p1;
reg   [287:0] trunc_ln674_9_reg_825;
wire   [287:0] trunc_ln674_6_fu_402_p1;
reg   [287:0] trunc_ln674_6_reg_840;
wire   [511:0] zext_ln414_fu_564_p1;
wire   [63:0] zext_ln414_1_fu_568_p1;
wire   [511:0] p_Result_12_fu_572_p3;
wire   [63:0] p_Result_13_fu_579_p3;
wire   [511:0] p_Result_10_fu_735_p21;
wire   [63:0] p_Result_11_fu_779_p3;
wire   [0:0] ap_phi_reg_pp0_iter0_sendWord_last_V_1_reg_222;
reg   [0:0] ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_222;
wire   [0:0] grp_fu_260_p3;
wire   [0:0] grp_fu_298_p3;
wire   [0:0] ap_phi_reg_pp0_iter0_sendWord_last_V_reg_241;
reg   [0:0] ap_phi_reg_pp0_iter1_sendWord_last_V_reg_241;
wire   [2:0] select_ln312_fu_550_p3;
wire   [511:0] p_Result_4_fu_354_p5;
wire   [511:0] p_Result_s_fu_406_p5;
wire   [63:0] p_Result_5_fu_372_p5;
wire   [63:0] p_Result_1_fu_424_p5;
wire   [31:0] trunc_ln145_fu_460_p1;
wire   [15:0] add_ln223_fu_526_p2;
wire   [15:0] add_ln223_1_fu_538_p2;
reg    ap_block_pp0_stage0_01001;
wire   [223:0] grp_fu_278_p4;
wire   [27:0] grp_fu_288_p4;
wire   [0:0] tmp_5_fu_518_p3;
wire   [7:0] trunc_ln674_5_fu_731_p1;
wire   [7:0] p_Result_76_i_fu_721_p4;
wire   [7:0] trunc_ln674_4_fu_713_p1;
wire   [7:0] p_Result_73_i_fu_703_p4;
wire   [7:0] trunc_ln674_3_fu_695_p1;
wire   [7:0] p_Result_70_i_fu_685_p4;
wire   [7:0] trunc_ln674_2_fu_677_p1;
wire   [7:0] p_Result_67_2_i_fu_667_p4;
wire   [7:0] p_Result_67_1_i_fu_657_p4;
wire   [7:0] p_Result_67_i_fu_647_p4;
wire   [7:0] trunc_ln674_1_fu_639_p1;
wire   [7:0] p_Result_64_2_i_fu_629_p4;
wire   [7:0] p_Result_64_1_i_fu_619_p4;
wire   [7:0] p_Result_64_i_fu_609_p4;
wire   [7:0] trunc_ln674_fu_601_p1;
wire   [7:0] p_Result_55_i_fu_591_p4;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to1;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;
reg   [511:0] txUdpDataOut_TDATA_int_regslice;
reg    txUdpDataOut_TVALID_int_regslice;
wire    txUdpDataOut_TREADY_int_regslice;
wire    regslice_both_txUdpDataOut_V_data_V_U_vld_out;
wire    regslice_both_txUdpDataOut_V_keep_V_U_apdone_blk;
reg   [63:0] txUdpDataOut_TKEEP_int_regslice;
wire    regslice_both_txUdpDataOut_V_keep_V_U_ack_in_dummy;
wire    regslice_both_txUdpDataOut_V_keep_V_U_vld_out;
wire    regslice_both_txUdpDataOut_V_strb_V_U_apdone_blk;
wire    regslice_both_txUdpDataOut_V_strb_V_U_ack_in_dummy;
wire    regslice_both_txUdpDataOut_V_strb_V_U_vld_out;
wire    regslice_both_txUdpDataOut_V_last_V_U_apdone_blk;
reg   [0:0] txUdpDataOut_TLAST_int_regslice;
wire    regslice_both_txUdpDataOut_V_last_V_U_ack_in_dummy;
wire    regslice_both_txUdpDataOut_V_last_V_U_vld_out;
reg    ap_condition_666;
reg    ap_condition_350;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ute_state = 3'd0;
#0 prevWord_data_V = 512'd0;
#0 prevWord_keep_V = 64'd0;
#0 currMetaData_theirIP_V = 32'd0;
#0 currMetaData_myIP_V = 32'd0;
#0 currMetaData_theirPort_V = 16'd0;
#0 currMetaData_myPort_V = 16'd0;
#0 ip_len_V = 16'd0;
#0 udp_len_V = 16'd0;
end

udp_regslice_both #(
    .DataWidth( 512 ))
regslice_both_txUdpDataOut_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(txUdpDataOut_TDATA_int_regslice),
    .vld_in(txUdpDataOut_TVALID_int_regslice),
    .ack_in(txUdpDataOut_TREADY_int_regslice),
    .data_out(txUdpDataOut_TDATA),
    .vld_out(regslice_both_txUdpDataOut_V_data_V_U_vld_out),
    .ack_out(txUdpDataOut_TREADY),
    .apdone_blk(regslice_both_txUdpDataOut_V_data_V_U_apdone_blk)
);

udp_regslice_both #(
    .DataWidth( 64 ))
regslice_both_txUdpDataOut_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(txUdpDataOut_TKEEP_int_regslice),
    .vld_in(txUdpDataOut_TVALID_int_regslice),
    .ack_in(regslice_both_txUdpDataOut_V_keep_V_U_ack_in_dummy),
    .data_out(txUdpDataOut_TKEEP),
    .vld_out(regslice_both_txUdpDataOut_V_keep_V_U_vld_out),
    .ack_out(txUdpDataOut_TREADY),
    .apdone_blk(regslice_both_txUdpDataOut_V_keep_V_U_apdone_blk)
);

udp_regslice_both #(
    .DataWidth( 64 ))
regslice_both_txUdpDataOut_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(64'd0),
    .vld_in(txUdpDataOut_TVALID_int_regslice),
    .ack_in(regslice_both_txUdpDataOut_V_strb_V_U_ack_in_dummy),
    .data_out(txUdpDataOut_TSTRB),
    .vld_out(regslice_both_txUdpDataOut_V_strb_V_U_vld_out),
    .ack_out(txUdpDataOut_TREADY),
    .apdone_blk(regslice_both_txUdpDataOut_V_strb_V_U_apdone_blk)
);

udp_regslice_both #(
    .DataWidth( 1 ))
regslice_both_txUdpDataOut_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(txUdpDataOut_TLAST_int_regslice),
    .vld_in(txUdpDataOut_TVALID_int_regslice),
    .ack_in(regslice_both_txUdpDataOut_V_last_V_U_ack_in_dummy),
    .data_out(txUdpDataOut_TLAST),
    .vld_out(regslice_both_txUdpDataOut_V_last_V_U_vld_out),
    .ack_out(txUdpDataOut_TREADY),
    .apdone_blk(regslice_both_txUdpDataOut_V_last_V_U_apdone_blk)
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
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (grp_fu_298_p3 == 1'd0) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_222 <= 1'd1;
    end else if ((((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (grp_fu_260_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (grp_fu_298_p3 == 1'd1) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_222 <= 1'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_222 <= ap_phi_reg_pp0_iter0_sendWord_last_V_1_reg_222;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (grp_fu_298_p3 == 1'd0) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_reg_241 <= 1'd1;
    end else if ((((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (grp_fu_260_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (grp_fu_298_p3 == 1'd1) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_reg_241 <= 1'd0;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_phi_reg_pp0_iter1_sendWord_last_V_reg_241 <= ap_phi_reg_pp0_iter0_sendWord_last_V_reg_241;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_666)) begin
        if ((ute_state == 3'd1)) begin
            prevWord_data_V <= p_Result_s_fu_406_p5;
        end else if ((ute_state == 3'd2)) begin
            prevWord_data_V <= p_Result_4_fu_354_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_666)) begin
        if ((ute_state == 3'd1)) begin
            prevWord_keep_V <= p_Result_1_fu_424_p5;
        end else if ((ute_state == 3'd2)) begin
            prevWord_keep_V <= p_Result_5_fu_372_p5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_104_nbreadreq_fu_184_p3 == 1'd1) & (tmp_i_nbreadreq_fu_176_p3 == 1'd1) & (ute_state == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ute_state <= select_ln312_fu_550_p3;
    end else if (((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (grp_fu_260_p3 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ute_state <= 3'd2;
    end else if ((((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (grp_fu_298_p3 == 1'd1) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (grp_fu_298_p3 == 1'd1) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ute_state <= 3'd3;
    end else if ((((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (grp_fu_298_p3 == 1'd0) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (grp_fu_298_p3 == 1'd0) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd4) & (grp_fu_260_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ute_state_load_load_fu_310_p1 == 3'd3) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        ute_state <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_104_nbreadreq_fu_184_p3 == 1'd1) & (tmp_i_nbreadreq_fu_176_p3 == 1'd1) & (ute_state == 3'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        currMetaData_myIP_V <= {{txthMetaData_dout[63:32]}};
        currMetaData_myPort_V <= {{txthMetaData_dout[95:80]}};
        currMetaData_theirIP_V <= trunc_ln145_fu_460_p1;
        currMetaData_theirPort_V <= {{txthMetaData_dout[79:64]}};
        ip_len_V <= add_ln223_fu_526_p2;
        udp_len_V <= add_ln223_1_fu_538_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ute_state_load_load_fu_310_p1 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_14_reg_798 <= p_Result_14_fu_328_p1;
        p_Result_15_reg_803 <= p_Result_15_fu_332_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_306 <= {{agmdDataOut_dout[547:512]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ute_state == 3'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_i_reg_833 <= grp_nbreadreq_fu_162_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_1_i_reg_833_pp0_iter1_reg <= tmp_1_i_reg_833;
        tmp_2_i_reg_808_pp0_iter1_reg <= tmp_2_i_reg_808;
        ute_state_load_reg_788 <= ute_state;
        ute_state_load_reg_788_pp0_iter1_reg <= ute_state_load_reg_788;
    end
end

always @ (posedge ap_clk) begin
    if (((ute_state == 3'd2) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_2_i_reg_808 <= grp_nbreadreq_fu_162_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln674_6_reg_840 <= trunc_ln674_6_fu_402_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln674_7_reg_815 <= trunc_ln674_7_fu_342_p1;
        trunc_ln674_8_reg_820 <= trunc_ln674_8_fu_346_p1;
        trunc_ln674_9_reg_825 <= trunc_ln674_9_fu_350_p1;
    end
end

always @ (*) begin
    if ((((ap_done_reg == 1'b0) & (ap_predicate_op58_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_done_reg == 1'b0) & (ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_done_reg == 1'b0) & (ap_predicate_op24_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        agmdDataOut_blk_n = agmdDataOut_empty_n;
    end else begin
        agmdDataOut_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((ap_predicate_op58_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op36_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_predicate_op24_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        agmdDataOut_read = 1'b1;
    end else begin
        agmdDataOut_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op92_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        agmdpayloadLenOut_blk_n = agmdpayloadLenOut_empty_n;
    end else begin
        agmdpayloadLenOut_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op92_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        agmdpayloadLenOut_read = 1'b1;
    end else begin
        agmdpayloadLenOut_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if ((((ute_state_load_reg_788 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op138_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op136_write_state3 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op133_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_predicate_op107_write_state2 == 1'b1)))) begin
        txUdpDataOut_TDATA_blk_n = txUdpDataOut_TREADY_int_regslice;
    end else begin
        txUdpDataOut_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((ap_predicate_op133_write_state2 == 1'b1)) begin
            txUdpDataOut_TDATA_int_regslice = p_Result_10_fu_735_p21;
        end else if ((ap_predicate_op107_write_state2 == 1'b1)) begin
            txUdpDataOut_TDATA_int_regslice = p_Result_12_fu_572_p3;
        end else if ((ute_state_load_reg_788 == 3'd3)) begin
            txUdpDataOut_TDATA_int_regslice = zext_ln414_fu_564_p1;
        end else begin
            txUdpDataOut_TDATA_int_regslice = 'bx;
        end
    end else begin
        txUdpDataOut_TDATA_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((ap_predicate_op133_write_state2 == 1'b1)) begin
            txUdpDataOut_TKEEP_int_regslice = p_Result_11_fu_779_p3;
        end else if ((ap_predicate_op107_write_state2 == 1'b1)) begin
            txUdpDataOut_TKEEP_int_regslice = p_Result_13_fu_579_p3;
        end else if ((ute_state_load_reg_788 == 3'd3)) begin
            txUdpDataOut_TKEEP_int_regslice = zext_ln414_1_fu_568_p1;
        end else begin
            txUdpDataOut_TKEEP_int_regslice = 'bx;
        end
    end else begin
        txUdpDataOut_TKEEP_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if ((ap_predicate_op133_write_state2 == 1'b1)) begin
            txUdpDataOut_TLAST_int_regslice = ap_phi_reg_pp0_iter1_sendWord_last_V_reg_241;
        end else if ((ap_predicate_op107_write_state2 == 1'b1)) begin
            txUdpDataOut_TLAST_int_regslice = ap_phi_reg_pp0_iter1_sendWord_last_V_1_reg_222;
        end else if ((ute_state_load_reg_788 == 3'd3)) begin
            txUdpDataOut_TLAST_int_regslice = 1'd1;
        end else begin
            txUdpDataOut_TLAST_int_regslice = 'bx;
        end
    end else begin
        txUdpDataOut_TLAST_int_regslice = 'bx;
    end
end

always @ (*) begin
    if ((((ute_state_load_reg_788 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op133_write_state2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_op107_write_state2 == 1'b1)))) begin
        txUdpDataOut_TVALID_int_regslice = 1'b1;
    end else begin
        txUdpDataOut_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((ap_done_reg == 1'b0) & (ap_predicate_op82_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        txthMetaData_blk_n = txthMetaData_empty_n;
    end else begin
        txthMetaData_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op82_read_state1 == 1'b1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        txthMetaData_read = 1'b1;
    end else begin
        txthMetaData_read = 1'b0;
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

assign add_ln223_1_fu_538_p2 = (agmdpayloadLenOut_dout + 16'd8);

assign add_ln223_fu_526_p2 = (agmdpayloadLenOut_dout + 16'd28);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op92_read_state1 == 1'b1) & (1'b0 == agmdpayloadLenOut_empty_n)) | ((ap_predicate_op82_read_state1 == 1'b1) & (txthMetaData_empty_n == 1'b0)) | ((ap_predicate_op58_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((regslice_both_txUdpDataOut_V_data_V_U_apdone_blk == 1'b1) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op138_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op136_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd3)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((ute_state_load_reg_788 == 3'd3) & (txUdpDataOut_TREADY_int_regslice == 1'b0)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op133_write_state2 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op107_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op92_read_state1 == 1'b1) & (1'b0 == agmdpayloadLenOut_empty_n)) | ((ap_predicate_op82_read_state1 == 1'b1) & (txthMetaData_empty_n == 1'b0)) | ((ap_predicate_op58_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_txUdpDataOut_V_data_V_U_apdone_blk == 1'b1) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op138_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op136_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd3)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ute_state_load_reg_788 == 3'd3) & (txUdpDataOut_TREADY_int_regslice == 1'b0)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op133_write_state2 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op107_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_done_reg == 1'b1) | ((ap_predicate_op92_read_state1 == 1'b1) & (1'b0 == agmdpayloadLenOut_empty_n)) | ((ap_predicate_op82_read_state1 == 1'b1) & (txthMetaData_empty_n == 1'b0)) | ((ap_predicate_op58_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)))) | ((ap_enable_reg_pp0_iter2 == 1'b1) & ((1'b1 == ap_block_state3_io) | (regslice_both_txUdpDataOut_V_data_V_U_apdone_blk == 1'b1) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op138_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op136_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd3)))) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state2_io) | ((ute_state_load_reg_788 == 3'd3) & (txUdpDataOut_TREADY_int_regslice == 1'b0)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op133_write_state2 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op107_write_state2 == 1'b1)))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_done_reg == 1'b1) | ((ap_predicate_op92_read_state1 == 1'b1) & (1'b0 == agmdpayloadLenOut_empty_n)) | ((ap_predicate_op82_read_state1 == 1'b1) & (txthMetaData_empty_n == 1'b0)) | ((ap_predicate_op58_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op36_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)) | ((ap_predicate_op24_read_state1 == 1'b1) & (1'b0 == agmdDataOut_empty_n)));
end

always @ (*) begin
    ap_block_state2_io = (((ute_state_load_reg_788 == 3'd3) & (txUdpDataOut_TREADY_int_regslice == 1'b0)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op133_write_state2 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op107_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (((ute_state_load_reg_788 == 3'd3) & (txUdpDataOut_TREADY_int_regslice == 1'b0)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op133_write_state2 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op107_write_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state3_io = (((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op138_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op136_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd3)));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((regslice_both_txUdpDataOut_V_data_V_U_apdone_blk == 1'b1) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op138_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ap_predicate_op136_write_state3 == 1'b1)) | ((txUdpDataOut_TREADY_int_regslice == 1'b0) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd3)));
end

always @ (*) begin
    ap_condition_350 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_01001));
end

always @ (*) begin
    ap_condition_666 = ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_phi_reg_pp0_iter0_sendWord_last_V_1_reg_222 = 'bx;

assign ap_phi_reg_pp0_iter0_sendWord_last_V_reg_241 = 'bx;

always @ (*) begin
    ap_predicate_op107_write_state2 = ((ute_state_load_reg_788 == 3'd2) & (tmp_2_i_reg_808 == 1'd1));
end

always @ (*) begin
    ap_predicate_op133_write_state2 = ((ute_state_load_reg_788 == 3'd1) & (tmp_1_i_reg_833 == 1'd1));
end

always @ (*) begin
    ap_predicate_op136_write_state3 = ((tmp_2_i_reg_808_pp0_iter1_reg == 1'd1) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd2));
end

always @ (*) begin
    ap_predicate_op138_write_state3 = ((tmp_1_i_reg_833_pp0_iter1_reg == 1'd1) & (ute_state_load_reg_788_pp0_iter1_reg == 3'd1));
end

always @ (*) begin
    ap_predicate_op24_read_state1 = ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd4));
end

always @ (*) begin
    ap_predicate_op36_read_state1 = ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd2));
end

always @ (*) begin
    ap_predicate_op58_read_state1 = ((grp_nbreadreq_fu_162_p3 == 1'd1) & (ute_state == 3'd1));
end

always @ (*) begin
    ap_predicate_op82_read_state1 = ((tmp_i_104_nbreadreq_fu_184_p3 == 1'd1) & (tmp_i_nbreadreq_fu_176_p3 == 1'd1) & (ute_state == 3'd0));
end

always @ (*) begin
    ap_predicate_op92_read_state1 = ((tmp_i_104_nbreadreq_fu_184_p3 == 1'd1) & (tmp_i_nbreadreq_fu_176_p3 == 1'd1) & (ute_state == 3'd0));
end

assign grp_fu_260_p3 = agmdDataOut_dout[32'd576];

assign grp_fu_278_p4 = {{agmdDataOut_dout[511:288]}};

assign grp_fu_288_p4 = {{agmdDataOut_dout[575:548]}};

assign grp_fu_298_p3 = agmdDataOut_dout[32'd548];

assign grp_nbreadreq_fu_162_p3 = agmdDataOut_empty_n;

assign p_Result_10_fu_735_p21 = {{{{{{{{{{{{{{{{{{{{trunc_ln674_6_reg_840}, {16'd0}}, {trunc_ln674_5_fu_731_p1}}, {p_Result_76_i_fu_721_p4}}, {trunc_ln674_4_fu_713_p1}}, {p_Result_73_i_fu_703_p4}}, {trunc_ln674_3_fu_695_p1}}, {p_Result_70_i_fu_685_p4}}, {trunc_ln674_2_fu_677_p1}}, {p_Result_67_2_i_fu_667_p4}}, {p_Result_67_1_i_fu_657_p4}}, {p_Result_67_i_fu_647_p4}}, {trunc_ln674_1_fu_639_p1}}, {p_Result_64_2_i_fu_629_p4}}, {p_Result_64_1_i_fu_619_p4}}, {p_Result_64_i_fu_609_p4}}, {64'd18966575579136}}, {trunc_ln674_fu_601_p1}}, {p_Result_55_i_fu_591_p4}}, {16'd69}};

assign p_Result_11_fu_779_p3 = {{reg_306}, {28'd268435455}};

assign p_Result_12_fu_572_p3 = {{trunc_ln674_9_reg_825}, {trunc_ln674_7_reg_815}};

assign p_Result_13_fu_579_p3 = {{reg_306}, {trunc_ln674_8_reg_820}};

assign p_Result_14_fu_328_p1 = prevWord_data_V[223:0];

assign p_Result_15_fu_332_p1 = prevWord_keep_V[27:0];

assign p_Result_1_fu_424_p5 = {{prevWord_keep_V[63:28]}, {grp_fu_288_p4}};

assign p_Result_4_fu_354_p5 = {{prevWord_data_V[511:224]}, {grp_fu_278_p4}};

assign p_Result_55_i_fu_591_p4 = {{ip_len_V[15:8]}};

assign p_Result_5_fu_372_p5 = {{prevWord_keep_V[63:28]}, {grp_fu_288_p4}};

assign p_Result_64_1_i_fu_619_p4 = {{currMetaData_myIP_V[23:16]}};

assign p_Result_64_2_i_fu_629_p4 = {{currMetaData_myIP_V[15:8]}};

assign p_Result_64_i_fu_609_p4 = {{currMetaData_myIP_V[31:24]}};

assign p_Result_67_1_i_fu_657_p4 = {{currMetaData_theirIP_V[23:16]}};

assign p_Result_67_2_i_fu_667_p4 = {{currMetaData_theirIP_V[15:8]}};

assign p_Result_67_i_fu_647_p4 = {{currMetaData_theirIP_V[31:24]}};

assign p_Result_70_i_fu_685_p4 = {{currMetaData_myPort_V[15:8]}};

assign p_Result_73_i_fu_703_p4 = {{currMetaData_theirPort_V[15:8]}};

assign p_Result_76_i_fu_721_p4 = {{udp_len_V[15:8]}};

assign p_Result_s_fu_406_p5 = {{prevWord_data_V[511:224]}, {grp_fu_278_p4}};

assign select_ln312_fu_550_p3 = ((tmp_5_fu_518_p3[0:0] == 1'b1) ? 3'd1 : 3'd4);

assign tmp_5_fu_518_p3 = txthMetaData_dout[32'd96];

assign tmp_i_104_nbreadreq_fu_184_p3 = agmdpayloadLenOut_empty_n;

assign tmp_i_nbreadreq_fu_176_p3 = txthMetaData_empty_n;

assign trunc_ln145_fu_460_p1 = txthMetaData_dout[31:0];

assign trunc_ln674_1_fu_639_p1 = currMetaData_myIP_V[7:0];

assign trunc_ln674_2_fu_677_p1 = currMetaData_theirIP_V[7:0];

assign trunc_ln674_3_fu_695_p1 = currMetaData_myPort_V[7:0];

assign trunc_ln674_4_fu_713_p1 = currMetaData_theirPort_V[7:0];

assign trunc_ln674_5_fu_731_p1 = udp_len_V[7:0];

assign trunc_ln674_6_fu_402_p1 = agmdDataOut_dout[287:0];

assign trunc_ln674_7_fu_342_p1 = prevWord_data_V[223:0];

assign trunc_ln674_8_fu_346_p1 = prevWord_keep_V[27:0];

assign trunc_ln674_9_fu_350_p1 = agmdDataOut_dout[287:0];

assign trunc_ln674_fu_601_p1 = ip_len_V[7:0];

assign txUdpDataOut_TVALID = regslice_both_txUdpDataOut_V_data_V_U_vld_out;

assign ute_state_load_load_fu_310_p1 = ute_state;

assign zext_ln414_1_fu_568_p1 = p_Result_15_reg_803;

assign zext_ln414_fu_564_p1 = p_Result_14_reg_798;

endmodule //udp_udpTxEngine
