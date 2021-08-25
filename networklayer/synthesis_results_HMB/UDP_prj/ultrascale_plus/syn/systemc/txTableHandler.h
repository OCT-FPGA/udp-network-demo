// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _txTableHandler_HH_
#define _txTableHandler_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "udp_mux_164_32_1_1.h"
#include "udp_mux_164_16_1_1.h"
#include "udp_mux_164_1_1_1.h"

namespace ap_rtl {

struct txTableHandler : public sc_module {
    // Port declarations 206
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > SocketTableTx_0_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_0_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_0_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_1_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_1_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_1_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_2_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_2_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_2_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_3_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_3_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_3_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_4_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_4_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_4_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_5_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_5_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_5_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_6_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_6_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_6_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_7_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_7_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_7_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_8_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_8_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_8_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_9_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_9_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_9_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_10_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_10_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_10_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_11_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_11_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_11_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_12_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_12_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_12_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_13_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_13_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_13_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_14_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_14_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_14_theirIP_V_read;
    sc_in< sc_lv<32> > SocketTableTx_15_theirIP_V_dout;
    sc_in< sc_logic > SocketTableTx_15_theirIP_V_empty_n;
    sc_out< sc_logic > SocketTableTx_15_theirIP_V_read;
    sc_in< sc_lv<16> > SocketTableTx_0_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_0_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_0_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_1_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_1_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_1_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_2_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_2_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_2_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_3_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_3_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_3_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_4_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_4_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_4_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_5_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_5_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_5_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_6_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_6_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_6_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_7_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_7_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_7_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_8_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_8_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_8_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_9_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_9_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_9_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_10_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_10_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_10_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_11_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_11_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_11_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_12_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_12_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_12_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_13_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_13_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_13_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_14_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_14_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_14_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_15_theirPort_V_dout;
    sc_in< sc_logic > SocketTableTx_15_theirPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_15_theirPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_0_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_0_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_0_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_1_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_1_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_1_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_2_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_2_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_2_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_3_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_3_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_3_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_4_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_4_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_4_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_5_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_5_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_5_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_6_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_6_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_6_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_7_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_7_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_7_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_8_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_8_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_8_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_9_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_9_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_9_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_10_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_10_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_10_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_11_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_11_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_11_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_12_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_12_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_12_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_13_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_13_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_13_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_14_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_14_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_14_myPort_V_read;
    sc_in< sc_lv<16> > SocketTableTx_15_myPort_V_dout;
    sc_in< sc_logic > SocketTableTx_15_myPort_V_empty_n;
    sc_out< sc_logic > SocketTableTx_15_myPort_V_read;
    sc_in< sc_lv<1> > SocketTableTx_0_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_0_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_0_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_1_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_1_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_1_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_2_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_2_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_2_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_3_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_3_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_3_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_4_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_4_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_4_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_5_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_5_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_5_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_6_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_6_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_6_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_7_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_7_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_7_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_8_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_8_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_8_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_9_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_9_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_9_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_10_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_10_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_10_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_11_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_11_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_11_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_12_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_12_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_12_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_13_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_13_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_13_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_14_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_14_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_14_valid_V_read;
    sc_in< sc_lv<1> > SocketTableTx_15_valid_V_dout;
    sc_in< sc_logic > SocketTableTx_15_valid_V_empty_n;
    sc_out< sc_logic > SocketTableTx_15_valid_V_read;
    sc_in< sc_lv<16> > agmdIdOut_V_V_dout;
    sc_in< sc_logic > agmdIdOut_V_V_empty_n;
    sc_out< sc_logic > agmdIdOut_V_V_read;
    sc_out< sc_lv<97> > txthMetaData_V_din;
    sc_in< sc_logic > txthMetaData_V_full_n;
    sc_out< sc_logic > txthMetaData_V_write;
    sc_in< sc_lv<32> > myIpAddress_V;


    // Module declarations
    txTableHandler(sc_module_name name);
    SC_HAS_PROCESS(txTableHandler);

    ~txTableHandler();

    sc_trace_file* mVcdFile;

    udp_mux_164_32_1_1<1,1,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,4,32>* udp_mux_164_32_1_1_U379;
    udp_mux_164_16_1_1<1,1,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,4,16>* udp_mux_164_16_1_1_U380;
    udp_mux_164_16_1_1<1,1,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,4,16>* udp_mux_164_16_1_1_U381;
    udp_mux_164_1_1_1<1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,4,1>* udp_mux_164_1_1_1_U382;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_lv<1> > tmp_nbreadreq_fu_572_p3;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< sc_lv<1> > tmp_reg_802;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_logic > SocketTableTx_0_theirIP_V_blk_n;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > SocketTableTx_1_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_2_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_3_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_4_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_5_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_6_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_7_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_8_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_9_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_10_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_11_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_12_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_13_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_14_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_15_theirIP_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_0_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_1_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_2_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_3_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_4_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_5_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_6_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_7_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_8_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_9_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_10_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_11_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_12_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_13_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_14_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_15_theirPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_0_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_1_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_2_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_3_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_4_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_5_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_6_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_7_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_8_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_9_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_10_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_11_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_12_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_13_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_14_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_15_myPort_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_0_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_1_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_2_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_3_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_4_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_5_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_6_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_7_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_8_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_9_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_10_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_11_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_12_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_13_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_14_valid_V_blk_n;
    sc_signal< sc_logic > SocketTableTx_15_valid_V_blk_n;
    sc_signal< sc_logic > agmdIdOut_V_V_blk_n;
    sc_signal< sc_logic > txthMetaData_V_blk_n;
    sc_signal< sc_lv<32> > tmp_theirIP_V_fu_603_p18;
    sc_signal< sc_lv<32> > tmp_theirIP_V_reg_806;
    sc_signal< sc_lv<16> > tmp_theirPort_V_fu_641_p18;
    sc_signal< sc_lv<16> > tmp_theirPort_V_reg_811;
    sc_signal< sc_lv<16> > tmp_myPort_V_fu_679_p18;
    sc_signal< sc_lv<16> > tmp_myPort_V_reg_816;
    sc_signal< sc_lv<1> > tmp_valid_V_fu_717_p18;
    sc_signal< sc_lv<1> > tmp_valid_V_reg_821;
    sc_signal< sc_lv<8> > p_Result_237_i_i_i_fu_755_p4;
    sc_signal< sc_lv<8> > p_Result_237_1_i_i_fu_765_p4;
    sc_signal< sc_lv<8> > p_Result_237_2_i_i_fu_775_p4;
    sc_signal< sc_lv<8> > trunc_ln647_fu_785_p1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<4> > trunc_ln321_fu_599_p1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to0;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_SocketTableTx_0_myPort_V_blk_n();
    void thread_SocketTableTx_0_myPort_V_read();
    void thread_SocketTableTx_0_theirIP_V_blk_n();
    void thread_SocketTableTx_0_theirIP_V_read();
    void thread_SocketTableTx_0_theirPort_V_blk_n();
    void thread_SocketTableTx_0_theirPort_V_read();
    void thread_SocketTableTx_0_valid_V_blk_n();
    void thread_SocketTableTx_0_valid_V_read();
    void thread_SocketTableTx_10_myPort_V_blk_n();
    void thread_SocketTableTx_10_myPort_V_read();
    void thread_SocketTableTx_10_theirIP_V_blk_n();
    void thread_SocketTableTx_10_theirIP_V_read();
    void thread_SocketTableTx_10_theirPort_V_blk_n();
    void thread_SocketTableTx_10_theirPort_V_read();
    void thread_SocketTableTx_10_valid_V_blk_n();
    void thread_SocketTableTx_10_valid_V_read();
    void thread_SocketTableTx_11_myPort_V_blk_n();
    void thread_SocketTableTx_11_myPort_V_read();
    void thread_SocketTableTx_11_theirIP_V_blk_n();
    void thread_SocketTableTx_11_theirIP_V_read();
    void thread_SocketTableTx_11_theirPort_V_blk_n();
    void thread_SocketTableTx_11_theirPort_V_read();
    void thread_SocketTableTx_11_valid_V_blk_n();
    void thread_SocketTableTx_11_valid_V_read();
    void thread_SocketTableTx_12_myPort_V_blk_n();
    void thread_SocketTableTx_12_myPort_V_read();
    void thread_SocketTableTx_12_theirIP_V_blk_n();
    void thread_SocketTableTx_12_theirIP_V_read();
    void thread_SocketTableTx_12_theirPort_V_blk_n();
    void thread_SocketTableTx_12_theirPort_V_read();
    void thread_SocketTableTx_12_valid_V_blk_n();
    void thread_SocketTableTx_12_valid_V_read();
    void thread_SocketTableTx_13_myPort_V_blk_n();
    void thread_SocketTableTx_13_myPort_V_read();
    void thread_SocketTableTx_13_theirIP_V_blk_n();
    void thread_SocketTableTx_13_theirIP_V_read();
    void thread_SocketTableTx_13_theirPort_V_blk_n();
    void thread_SocketTableTx_13_theirPort_V_read();
    void thread_SocketTableTx_13_valid_V_blk_n();
    void thread_SocketTableTx_13_valid_V_read();
    void thread_SocketTableTx_14_myPort_V_blk_n();
    void thread_SocketTableTx_14_myPort_V_read();
    void thread_SocketTableTx_14_theirIP_V_blk_n();
    void thread_SocketTableTx_14_theirIP_V_read();
    void thread_SocketTableTx_14_theirPort_V_blk_n();
    void thread_SocketTableTx_14_theirPort_V_read();
    void thread_SocketTableTx_14_valid_V_blk_n();
    void thread_SocketTableTx_14_valid_V_read();
    void thread_SocketTableTx_15_myPort_V_blk_n();
    void thread_SocketTableTx_15_myPort_V_read();
    void thread_SocketTableTx_15_theirIP_V_blk_n();
    void thread_SocketTableTx_15_theirIP_V_read();
    void thread_SocketTableTx_15_theirPort_V_blk_n();
    void thread_SocketTableTx_15_theirPort_V_read();
    void thread_SocketTableTx_15_valid_V_blk_n();
    void thread_SocketTableTx_15_valid_V_read();
    void thread_SocketTableTx_1_myPort_V_blk_n();
    void thread_SocketTableTx_1_myPort_V_read();
    void thread_SocketTableTx_1_theirIP_V_blk_n();
    void thread_SocketTableTx_1_theirIP_V_read();
    void thread_SocketTableTx_1_theirPort_V_blk_n();
    void thread_SocketTableTx_1_theirPort_V_read();
    void thread_SocketTableTx_1_valid_V_blk_n();
    void thread_SocketTableTx_1_valid_V_read();
    void thread_SocketTableTx_2_myPort_V_blk_n();
    void thread_SocketTableTx_2_myPort_V_read();
    void thread_SocketTableTx_2_theirIP_V_blk_n();
    void thread_SocketTableTx_2_theirIP_V_read();
    void thread_SocketTableTx_2_theirPort_V_blk_n();
    void thread_SocketTableTx_2_theirPort_V_read();
    void thread_SocketTableTx_2_valid_V_blk_n();
    void thread_SocketTableTx_2_valid_V_read();
    void thread_SocketTableTx_3_myPort_V_blk_n();
    void thread_SocketTableTx_3_myPort_V_read();
    void thread_SocketTableTx_3_theirIP_V_blk_n();
    void thread_SocketTableTx_3_theirIP_V_read();
    void thread_SocketTableTx_3_theirPort_V_blk_n();
    void thread_SocketTableTx_3_theirPort_V_read();
    void thread_SocketTableTx_3_valid_V_blk_n();
    void thread_SocketTableTx_3_valid_V_read();
    void thread_SocketTableTx_4_myPort_V_blk_n();
    void thread_SocketTableTx_4_myPort_V_read();
    void thread_SocketTableTx_4_theirIP_V_blk_n();
    void thread_SocketTableTx_4_theirIP_V_read();
    void thread_SocketTableTx_4_theirPort_V_blk_n();
    void thread_SocketTableTx_4_theirPort_V_read();
    void thread_SocketTableTx_4_valid_V_blk_n();
    void thread_SocketTableTx_4_valid_V_read();
    void thread_SocketTableTx_5_myPort_V_blk_n();
    void thread_SocketTableTx_5_myPort_V_read();
    void thread_SocketTableTx_5_theirIP_V_blk_n();
    void thread_SocketTableTx_5_theirIP_V_read();
    void thread_SocketTableTx_5_theirPort_V_blk_n();
    void thread_SocketTableTx_5_theirPort_V_read();
    void thread_SocketTableTx_5_valid_V_blk_n();
    void thread_SocketTableTx_5_valid_V_read();
    void thread_SocketTableTx_6_myPort_V_blk_n();
    void thread_SocketTableTx_6_myPort_V_read();
    void thread_SocketTableTx_6_theirIP_V_blk_n();
    void thread_SocketTableTx_6_theirIP_V_read();
    void thread_SocketTableTx_6_theirPort_V_blk_n();
    void thread_SocketTableTx_6_theirPort_V_read();
    void thread_SocketTableTx_6_valid_V_blk_n();
    void thread_SocketTableTx_6_valid_V_read();
    void thread_SocketTableTx_7_myPort_V_blk_n();
    void thread_SocketTableTx_7_myPort_V_read();
    void thread_SocketTableTx_7_theirIP_V_blk_n();
    void thread_SocketTableTx_7_theirIP_V_read();
    void thread_SocketTableTx_7_theirPort_V_blk_n();
    void thread_SocketTableTx_7_theirPort_V_read();
    void thread_SocketTableTx_7_valid_V_blk_n();
    void thread_SocketTableTx_7_valid_V_read();
    void thread_SocketTableTx_8_myPort_V_blk_n();
    void thread_SocketTableTx_8_myPort_V_read();
    void thread_SocketTableTx_8_theirIP_V_blk_n();
    void thread_SocketTableTx_8_theirIP_V_read();
    void thread_SocketTableTx_8_theirPort_V_blk_n();
    void thread_SocketTableTx_8_theirPort_V_read();
    void thread_SocketTableTx_8_valid_V_blk_n();
    void thread_SocketTableTx_8_valid_V_read();
    void thread_SocketTableTx_9_myPort_V_blk_n();
    void thread_SocketTableTx_9_myPort_V_read();
    void thread_SocketTableTx_9_theirIP_V_blk_n();
    void thread_SocketTableTx_9_theirIP_V_read();
    void thread_SocketTableTx_9_theirPort_V_blk_n();
    void thread_SocketTableTx_9_theirPort_V_read();
    void thread_SocketTableTx_9_valid_V_blk_n();
    void thread_SocketTableTx_9_valid_V_read();
    void thread_agmdIdOut_V_V_blk_n();
    void thread_agmdIdOut_V_V_read();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to0();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_p_Result_237_1_i_i_fu_765_p4();
    void thread_p_Result_237_2_i_i_fu_775_p4();
    void thread_p_Result_237_i_i_i_fu_755_p4();
    void thread_tmp_nbreadreq_fu_572_p3();
    void thread_trunc_ln321_fu_599_p1();
    void thread_trunc_ln647_fu_785_p1();
    void thread_txthMetaData_V_blk_n();
    void thread_txthMetaData_V_din();
    void thread_txthMetaData_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
