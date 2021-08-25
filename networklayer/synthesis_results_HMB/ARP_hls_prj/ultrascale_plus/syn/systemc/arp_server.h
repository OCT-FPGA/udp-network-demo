// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _arp_server_HH_
#define _arp_server_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "arp_server_entry174.h"
#include "genARPDiscovery.h"
#include "arp_pkg_receiver.h"
#include "arp_pkg_sender.h"
#include "arp_table.h"
#include "fifo_w48_d3_A.h"
#include "fifo_w32_d2_A.h"
#include "fifo_w32_d3_A.h"
#include "fifo_w32_d4_A.h"
#include "fifo_w49_d4_A.h"
#include "fifo_w192_d4_A.h"
#include "fifo_w81_d4_A.h"
#include "arp_server_s_axilite_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_S_AXILITE_ADDR_WIDTH = 13,
         unsigned int C_S_AXI_S_AXILITE_DATA_WIDTH = 32>
struct arp_server : public sc_module {
    // Port declarations 39
    sc_in< sc_logic > s_axi_s_axilite_AWVALID;
    sc_out< sc_logic > s_axi_s_axilite_AWREADY;
    sc_in< sc_uint<C_S_AXI_S_AXILITE_ADDR_WIDTH> > s_axi_s_axilite_AWADDR;
    sc_in< sc_logic > s_axi_s_axilite_WVALID;
    sc_out< sc_logic > s_axi_s_axilite_WREADY;
    sc_in< sc_uint<C_S_AXI_S_AXILITE_DATA_WIDTH> > s_axi_s_axilite_WDATA;
    sc_in< sc_uint<C_S_AXI_S_AXILITE_DATA_WIDTH/8> > s_axi_s_axilite_WSTRB;
    sc_in< sc_logic > s_axi_s_axilite_ARVALID;
    sc_out< sc_logic > s_axi_s_axilite_ARREADY;
    sc_in< sc_uint<C_S_AXI_S_AXILITE_ADDR_WIDTH> > s_axi_s_axilite_ARADDR;
    sc_out< sc_logic > s_axi_s_axilite_RVALID;
    sc_in< sc_logic > s_axi_s_axilite_RREADY;
    sc_out< sc_uint<C_S_AXI_S_AXILITE_DATA_WIDTH> > s_axi_s_axilite_RDATA;
    sc_out< sc_lv<2> > s_axi_s_axilite_RRESP;
    sc_out< sc_logic > s_axi_s_axilite_BVALID;
    sc_in< sc_logic > s_axi_s_axilite_BREADY;
    sc_out< sc_lv<2> > s_axi_s_axilite_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<512> > arpDataIn_TDATA;
    sc_in< sc_lv<64> > arpDataIn_TKEEP;
    sc_in< sc_lv<1> > arpDataIn_TLAST;
    sc_in< sc_lv<32> > macIpEncode_req_V_V_TDATA;
    sc_out< sc_lv<512> > arpDataOut_TDATA;
    sc_out< sc_lv<64> > arpDataOut_TKEEP;
    sc_out< sc_lv<1> > arpDataOut_TLAST;
    sc_out< sc_lv<56> > macIpEncode_rsp_V_TDATA;
    sc_in< sc_lv<48> > myMacAddress_V;
    sc_in< sc_lv<32> > myIpAddress_V;
    sc_in< sc_lv<32> > gatewayIP_V;
    sc_in< sc_lv<32> > networkMask_V;
    sc_in< sc_logic > macIpEncode_req_V_V_TVALID;
    sc_out< sc_logic > macIpEncode_req_V_V_TREADY;
    sc_out< sc_logic > macIpEncode_rsp_V_TVALID;
    sc_in< sc_logic > macIpEncode_rsp_V_TREADY;
    sc_in< sc_logic > arpDataIn_TVALID;
    sc_out< sc_logic > arpDataIn_TREADY;
    sc_out< sc_logic > arpDataOut_TVALID;
    sc_in< sc_logic > arpDataOut_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    arp_server(sc_module_name name);
    SC_HAS_PROCESS(arp_server);

    ~arp_server();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    arp_server_s_axilite_s_axi<C_S_AXI_S_AXILITE_ADDR_WIDTH,C_S_AXI_S_AXILITE_DATA_WIDTH>* arp_server_s_axilite_s_axi_U;
    arp_server_entry174* arp_server_entry174_U0;
    genARPDiscovery* genARPDiscovery_U0;
    arp_pkg_receiver* arp_pkg_receiver_U0;
    arp_pkg_sender* arp_pkg_sender_U0;
    arp_table* arp_table_U0;
    fifo_w48_d3_A* myMacAddress_V_c_U;
    fifo_w32_d2_A* myIpAddress_V_c_U;
    fifo_w32_d2_A* myIpAddress_V_c40_U;
    fifo_w32_d3_A* gatewayIP_V_c_U;
    fifo_w32_d3_A* networkMask_V_c_U;
    fifo_w32_d4_A* macIpEncode_i_V_V_U;
    fifo_w49_d4_A* macIpEncode_rsp_i_V_U;
    fifo_w32_d2_A* myIpAddress_V_c41_U;
    fifo_w192_d4_A* arpReplyFifo_V_U;
    fifo_w81_d4_A* arpTableInsertFifo_V_U;
    fifo_w32_d2_A* myIpAddress_V_c42_U;
    fifo_w32_d2_A* gatewayIP_V_c43_U;
    fifo_w32_d2_A* networkMask_V_c44_U;
    fifo_w32_d4_A* arpRequestFifo_V_V_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<48> > arpTable_macAddress_V_q0;
    sc_signal< sc_lv<1> > arpTable_valid_V_q0;
    sc_signal< sc_lv<1> > arp_scan_V_i;
    sc_signal< sc_logic > arp_server_entry174_U0_ap_start;
    sc_signal< sc_logic > arp_server_entry174_U0_ap_done;
    sc_signal< sc_logic > arp_server_entry174_U0_ap_continue;
    sc_signal< sc_logic > arp_server_entry174_U0_ap_idle;
    sc_signal< sc_logic > arp_server_entry174_U0_ap_ready;
    sc_signal< sc_lv<48> > arp_server_entry174_U0_myMacAddress_V_out_din;
    sc_signal< sc_logic > arp_server_entry174_U0_myMacAddress_V_out_write;
    sc_signal< sc_lv<32> > arp_server_entry174_U0_myIpAddress_V_out_din;
    sc_signal< sc_logic > arp_server_entry174_U0_myIpAddress_V_out_write;
    sc_signal< sc_lv<32> > arp_server_entry174_U0_myIpAddress_V_out1_din;
    sc_signal< sc_logic > arp_server_entry174_U0_myIpAddress_V_out1_write;
    sc_signal< sc_lv<32> > arp_server_entry174_U0_gatewayIP_V_out_din;
    sc_signal< sc_logic > arp_server_entry174_U0_gatewayIP_V_out_write;
    sc_signal< sc_lv<32> > arp_server_entry174_U0_networkMask_V_out_din;
    sc_signal< sc_logic > arp_server_entry174_U0_networkMask_V_out_write;
    sc_signal< sc_logic > genARPDiscovery_U0_ap_start;
    sc_signal< sc_logic > genARPDiscovery_U0_ap_done;
    sc_signal< sc_logic > genARPDiscovery_U0_ap_continue;
    sc_signal< sc_logic > genARPDiscovery_U0_ap_idle;
    sc_signal< sc_logic > genARPDiscovery_U0_ap_ready;
    sc_signal< sc_logic > genARPDiscovery_U0_macIpEncode_rsp_i_V_read;
    sc_signal< sc_logic > genARPDiscovery_U0_myIpAddress_V_read;
    sc_signal< sc_lv<32> > genARPDiscovery_U0_macIpEncode_i_V_V_din;
    sc_signal< sc_logic > genARPDiscovery_U0_macIpEncode_i_V_V_write;
    sc_signal< sc_logic > genARPDiscovery_U0_macIpEncodeIn_V_V_TREADY;
    sc_signal< sc_lv<56> > genARPDiscovery_U0_macIpEncode_rsp_o_V_TDATA;
    sc_signal< sc_logic > genARPDiscovery_U0_macIpEncode_rsp_o_V_TVALID;
    sc_signal< sc_lv<1> > genARPDiscovery_U0_arp_scan_V_o;
    sc_signal< sc_logic > genARPDiscovery_U0_arp_scan_V_o_ap_vld;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > arp_pkg_receiver_U0_ap_start;
    sc_signal< sc_logic > arp_pkg_receiver_U0_ap_done;
    sc_signal< sc_logic > arp_pkg_receiver_U0_ap_continue;
    sc_signal< sc_logic > arp_pkg_receiver_U0_ap_idle;
    sc_signal< sc_logic > arp_pkg_receiver_U0_ap_ready;
    sc_signal< sc_logic > arp_pkg_receiver_U0_myIpAddress_V_read;
    sc_signal< sc_lv<32> > arp_pkg_receiver_U0_myIpAddress_V_out_din;
    sc_signal< sc_logic > arp_pkg_receiver_U0_myIpAddress_V_out_write;
    sc_signal< sc_lv<81> > arp_pkg_receiver_U0_arpTableInsertFifo_V_din;
    sc_signal< sc_logic > arp_pkg_receiver_U0_arpTableInsertFifo_V_write;
    sc_signal< sc_lv<192> > arp_pkg_receiver_U0_arpReplyFifo_V_din;
    sc_signal< sc_logic > arp_pkg_receiver_U0_arpReplyFifo_V_write;
    sc_signal< sc_logic > arp_pkg_receiver_U0_arpDataIn_TREADY;
    sc_signal< sc_logic > arp_pkg_sender_U0_ap_start;
    sc_signal< sc_logic > arp_pkg_sender_U0_ap_done;
    sc_signal< sc_logic > arp_pkg_sender_U0_ap_continue;
    sc_signal< sc_logic > arp_pkg_sender_U0_ap_idle;
    sc_signal< sc_logic > arp_pkg_sender_U0_ap_ready;
    sc_signal< sc_logic > arp_pkg_sender_U0_arpRequestFifo_V_V_read;
    sc_signal< sc_logic > arp_pkg_sender_U0_arpReplyFifo_V_read;
    sc_signal< sc_logic > arp_pkg_sender_U0_myIpAddress_V_read;
    sc_signal< sc_logic > arp_pkg_sender_U0_gatewayIP_V_read;
    sc_signal< sc_logic > arp_pkg_sender_U0_networkMask_V_read;
    sc_signal< sc_lv<32> > arp_pkg_sender_U0_myIpAddress_V_out_din;
    sc_signal< sc_logic > arp_pkg_sender_U0_myIpAddress_V_out_write;
    sc_signal< sc_lv<32> > arp_pkg_sender_U0_gatewayIP_V_out_din;
    sc_signal< sc_logic > arp_pkg_sender_U0_gatewayIP_V_out_write;
    sc_signal< sc_lv<32> > arp_pkg_sender_U0_networkMask_V_out_din;
    sc_signal< sc_logic > arp_pkg_sender_U0_networkMask_V_out_write;
    sc_signal< sc_logic > arp_pkg_sender_U0_myMacAddress_V_read;
    sc_signal< sc_lv<512> > arp_pkg_sender_U0_arpDataOut_TDATA;
    sc_signal< sc_logic > arp_pkg_sender_U0_arpDataOut_TVALID;
    sc_signal< sc_lv<64> > arp_pkg_sender_U0_arpDataOut_TKEEP;
    sc_signal< sc_lv<1> > arp_pkg_sender_U0_arpDataOut_TLAST;
    sc_signal< sc_logic > arp_table_U0_ap_start;
    sc_signal< sc_logic > arp_table_U0_ap_done;
    sc_signal< sc_logic > arp_table_U0_ap_continue;
    sc_signal< sc_logic > arp_table_U0_ap_idle;
    sc_signal< sc_logic > arp_table_U0_ap_ready;
    sc_signal< sc_logic > arp_table_U0_myIpAddress_V_read;
    sc_signal< sc_logic > arp_table_U0_gatewayIP_V_read;
    sc_signal< sc_logic > arp_table_U0_networkMask_V_read;
    sc_signal< sc_logic > arp_table_U0_macIpEncode_i_V_V_read;
    sc_signal< sc_logic > arp_table_U0_arpTableInsertFifo_V_read;
    sc_signal< sc_lv<49> > arp_table_U0_macIpEncode_rsp_i_V_din;
    sc_signal< sc_logic > arp_table_U0_macIpEncode_rsp_i_V_write;
    sc_signal< sc_lv<32> > arp_table_U0_arpRequestFifo_V_V_din;
    sc_signal< sc_logic > arp_table_U0_arpRequestFifo_V_V_write;
    sc_signal< sc_lv<8> > arp_table_U0_arpTable_macAddress_V_address0;
    sc_signal< sc_logic > arp_table_U0_arpTable_macAddress_V_ce0;
    sc_signal< sc_logic > arp_table_U0_arpTable_macAddress_V_we0;
    sc_signal< sc_lv<48> > arp_table_U0_arpTable_macAddress_V_d0;
    sc_signal< sc_lv<8> > arp_table_U0_arpTable_ipAddress_V_address0;
    sc_signal< sc_logic > arp_table_U0_arpTable_ipAddress_V_ce0;
    sc_signal< sc_logic > arp_table_U0_arpTable_ipAddress_V_we0;
    sc_signal< sc_lv<32> > arp_table_U0_arpTable_ipAddress_V_d0;
    sc_signal< sc_lv<8> > arp_table_U0_arpTable_valid_V_address0;
    sc_signal< sc_logic > arp_table_U0_arpTable_valid_V_ce0;
    sc_signal< sc_logic > arp_table_U0_arpTable_valid_V_we0;
    sc_signal< sc_lv<1> > arp_table_U0_arpTable_valid_V_d0;
    sc_signal< sc_logic > myMacAddress_V_c_full_n;
    sc_signal< sc_lv<48> > myMacAddress_V_c_dout;
    sc_signal< sc_logic > myMacAddress_V_c_empty_n;
    sc_signal< sc_logic > myIpAddress_V_c_full_n;
    sc_signal< sc_lv<32> > myIpAddress_V_c_dout;
    sc_signal< sc_logic > myIpAddress_V_c_empty_n;
    sc_signal< sc_logic > myIpAddress_V_c40_full_n;
    sc_signal< sc_lv<32> > myIpAddress_V_c40_dout;
    sc_signal< sc_logic > myIpAddress_V_c40_empty_n;
    sc_signal< sc_logic > gatewayIP_V_c_full_n;
    sc_signal< sc_lv<32> > gatewayIP_V_c_dout;
    sc_signal< sc_logic > gatewayIP_V_c_empty_n;
    sc_signal< sc_logic > networkMask_V_c_full_n;
    sc_signal< sc_lv<32> > networkMask_V_c_dout;
    sc_signal< sc_logic > networkMask_V_c_empty_n;
    sc_signal< sc_logic > macIpEncode_i_V_V_full_n;
    sc_signal< sc_lv<32> > macIpEncode_i_V_V_dout;
    sc_signal< sc_logic > macIpEncode_i_V_V_empty_n;
    sc_signal< sc_logic > macIpEncode_rsp_i_V_full_n;
    sc_signal< sc_lv<49> > macIpEncode_rsp_i_V_dout;
    sc_signal< sc_logic > macIpEncode_rsp_i_V_empty_n;
    sc_signal< sc_logic > myIpAddress_V_c41_full_n;
    sc_signal< sc_lv<32> > myIpAddress_V_c41_dout;
    sc_signal< sc_logic > myIpAddress_V_c41_empty_n;
    sc_signal< sc_logic > arpReplyFifo_V_full_n;
    sc_signal< sc_lv<192> > arpReplyFifo_V_dout;
    sc_signal< sc_logic > arpReplyFifo_V_empty_n;
    sc_signal< sc_logic > arpTableInsertFifo_V_full_n;
    sc_signal< sc_lv<81> > arpTableInsertFifo_V_dout;
    sc_signal< sc_logic > arpTableInsertFifo_V_empty_n;
    sc_signal< sc_logic > myIpAddress_V_c42_full_n;
    sc_signal< sc_lv<32> > myIpAddress_V_c42_dout;
    sc_signal< sc_logic > myIpAddress_V_c42_empty_n;
    sc_signal< sc_logic > gatewayIP_V_c43_full_n;
    sc_signal< sc_lv<32> > gatewayIP_V_c43_dout;
    sc_signal< sc_logic > gatewayIP_V_c43_empty_n;
    sc_signal< sc_logic > networkMask_V_c44_full_n;
    sc_signal< sc_lv<32> > networkMask_V_c44_dout;
    sc_signal< sc_logic > networkMask_V_c44_empty_n;
    sc_signal< sc_logic > arpRequestFifo_V_V_full_n;
    sc_signal< sc_lv<32> > arpRequestFifo_V_V_dout;
    sc_signal< sc_logic > arpRequestFifo_V_V_empty_n;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<512> ap_const_lv512_lc_2;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<56> ap_const_lv56_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_arpDataIn_TREADY();
    void thread_arpDataOut_TDATA();
    void thread_arpDataOut_TKEEP();
    void thread_arpDataOut_TLAST();
    void thread_arpDataOut_TVALID();
    void thread_arp_pkg_receiver_U0_ap_continue();
    void thread_arp_pkg_receiver_U0_ap_start();
    void thread_arp_pkg_sender_U0_ap_continue();
    void thread_arp_pkg_sender_U0_ap_start();
    void thread_arp_server_entry174_U0_ap_continue();
    void thread_arp_server_entry174_U0_ap_start();
    void thread_arp_table_U0_ap_continue();
    void thread_arp_table_U0_ap_start();
    void thread_genARPDiscovery_U0_ap_continue();
    void thread_genARPDiscovery_U0_ap_start();
    void thread_macIpEncode_req_V_V_TREADY();
    void thread_macIpEncode_rsp_V_TDATA();
    void thread_macIpEncode_rsp_V_TVALID();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
