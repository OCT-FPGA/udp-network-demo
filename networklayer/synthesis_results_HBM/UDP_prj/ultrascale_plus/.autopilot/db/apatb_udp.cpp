#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_rxUdpDataIn_V_data_V "../tv/cdatafile/c.udp.autotvin_rxUdpDataIn_V_data_V.dat"
#define AUTOTB_TVOUT_rxUdpDataIn_V_data_V "../tv/cdatafile/c.udp.autotvout_rxUdpDataIn_V_data_V.dat"
#define AUTOTB_TVIN_rxUdpDataIn_V_keep_V "../tv/cdatafile/c.udp.autotvin_rxUdpDataIn_V_keep_V.dat"
#define AUTOTB_TVOUT_rxUdpDataIn_V_keep_V "../tv/cdatafile/c.udp.autotvout_rxUdpDataIn_V_keep_V.dat"
#define AUTOTB_TVIN_rxUdpDataIn_V_strb_V "../tv/cdatafile/c.udp.autotvin_rxUdpDataIn_V_strb_V.dat"
#define AUTOTB_TVOUT_rxUdpDataIn_V_strb_V "../tv/cdatafile/c.udp.autotvout_rxUdpDataIn_V_strb_V.dat"
#define AUTOTB_TVIN_rxUdpDataIn_V_last_V "../tv/cdatafile/c.udp.autotvin_rxUdpDataIn_V_last_V.dat"
#define AUTOTB_TVOUT_rxUdpDataIn_V_last_V "../tv/cdatafile/c.udp.autotvout_rxUdpDataIn_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_data_V "../tv/stream_size/stream_size_in_rxUdpDataIn_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_data_V "../tv/stream_size/stream_ingress_status_rxUdpDataIn_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_keep_V "../tv/stream_size/stream_size_in_rxUdpDataIn_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_keep_V "../tv/stream_size/stream_ingress_status_rxUdpDataIn_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_strb_V "../tv/stream_size/stream_size_in_rxUdpDataIn_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_strb_V "../tv/stream_size/stream_ingress_status_rxUdpDataIn_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_last_V "../tv/stream_size/stream_size_in_rxUdpDataIn_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_last_V "../tv/stream_size/stream_ingress_status_rxUdpDataIn_V_last_V.dat"
#define AUTOTB_TVIN_txUdpDataOut_V_data_V "../tv/cdatafile/c.udp.autotvin_txUdpDataOut_V_data_V.dat"
#define AUTOTB_TVOUT_txUdpDataOut_V_data_V "../tv/cdatafile/c.udp.autotvout_txUdpDataOut_V_data_V.dat"
#define AUTOTB_TVIN_txUdpDataOut_V_keep_V "../tv/cdatafile/c.udp.autotvin_txUdpDataOut_V_keep_V.dat"
#define AUTOTB_TVOUT_txUdpDataOut_V_keep_V "../tv/cdatafile/c.udp.autotvout_txUdpDataOut_V_keep_V.dat"
#define AUTOTB_TVIN_txUdpDataOut_V_strb_V "../tv/cdatafile/c.udp.autotvin_txUdpDataOut_V_strb_V.dat"
#define AUTOTB_TVOUT_txUdpDataOut_V_strb_V "../tv/cdatafile/c.udp.autotvout_txUdpDataOut_V_strb_V.dat"
#define AUTOTB_TVIN_txUdpDataOut_V_last_V "../tv/cdatafile/c.udp.autotvin_txUdpDataOut_V_last_V.dat"
#define AUTOTB_TVOUT_txUdpDataOut_V_last_V "../tv/cdatafile/c.udp.autotvout_txUdpDataOut_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_data_V "../tv/stream_size/stream_size_out_txUdpDataOut_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_data_V "../tv/stream_size/stream_egress_status_txUdpDataOut_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_keep_V "../tv/stream_size/stream_size_out_txUdpDataOut_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_keep_V "../tv/stream_size/stream_egress_status_txUdpDataOut_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_strb_V "../tv/stream_size/stream_size_out_txUdpDataOut_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_strb_V "../tv/stream_size/stream_egress_status_txUdpDataOut_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_last_V "../tv/stream_size/stream_size_out_txUdpDataOut_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_last_V "../tv/stream_size/stream_egress_status_txUdpDataOut_V_last_V.dat"
#define AUTOTB_TVIN_DataOutApp_V_data_V "../tv/cdatafile/c.udp.autotvin_DataOutApp_V_data_V.dat"
#define AUTOTB_TVOUT_DataOutApp_V_data_V "../tv/cdatafile/c.udp.autotvout_DataOutApp_V_data_V.dat"
#define AUTOTB_TVIN_DataOutApp_V_keep_V "../tv/cdatafile/c.udp.autotvin_DataOutApp_V_keep_V.dat"
#define AUTOTB_TVOUT_DataOutApp_V_keep_V "../tv/cdatafile/c.udp.autotvout_DataOutApp_V_keep_V.dat"
#define AUTOTB_TVIN_DataOutApp_V_strb_V "../tv/cdatafile/c.udp.autotvin_DataOutApp_V_strb_V.dat"
#define AUTOTB_TVOUT_DataOutApp_V_strb_V "../tv/cdatafile/c.udp.autotvout_DataOutApp_V_strb_V.dat"
#define AUTOTB_TVIN_DataOutApp_V_user_V "../tv/cdatafile/c.udp.autotvin_DataOutApp_V_user_V.dat"
#define AUTOTB_TVOUT_DataOutApp_V_user_V "../tv/cdatafile/c.udp.autotvout_DataOutApp_V_user_V.dat"
#define AUTOTB_TVIN_DataOutApp_V_last_V "../tv/cdatafile/c.udp.autotvin_DataOutApp_V_last_V.dat"
#define AUTOTB_TVOUT_DataOutApp_V_last_V "../tv/cdatafile/c.udp.autotvout_DataOutApp_V_last_V.dat"
#define AUTOTB_TVIN_DataOutApp_V_dest_V "../tv/cdatafile/c.udp.autotvin_DataOutApp_V_dest_V.dat"
#define AUTOTB_TVOUT_DataOutApp_V_dest_V "../tv/cdatafile/c.udp.autotvout_DataOutApp_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DataOutApp_V_data_V "../tv/stream_size/stream_size_out_DataOutApp_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_data_V "../tv/stream_size/stream_egress_status_DataOutApp_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DataOutApp_V_keep_V "../tv/stream_size/stream_size_out_DataOutApp_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_keep_V "../tv/stream_size/stream_egress_status_DataOutApp_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DataOutApp_V_strb_V "../tv/stream_size/stream_size_out_DataOutApp_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_strb_V "../tv/stream_size/stream_egress_status_DataOutApp_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DataOutApp_V_user_V "../tv/stream_size/stream_size_out_DataOutApp_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_user_V "../tv/stream_size/stream_egress_status_DataOutApp_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DataOutApp_V_last_V "../tv/stream_size/stream_size_out_DataOutApp_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_last_V "../tv/stream_size/stream_egress_status_DataOutApp_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_DataOutApp_V_dest_V "../tv/stream_size/stream_size_out_DataOutApp_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_dest_V "../tv/stream_size/stream_egress_status_DataOutApp_V_dest_V.dat"
#define AUTOTB_TVIN_DataInApp_V_data_V "../tv/cdatafile/c.udp.autotvin_DataInApp_V_data_V.dat"
#define AUTOTB_TVOUT_DataInApp_V_data_V "../tv/cdatafile/c.udp.autotvout_DataInApp_V_data_V.dat"
#define AUTOTB_TVIN_DataInApp_V_keep_V "../tv/cdatafile/c.udp.autotvin_DataInApp_V_keep_V.dat"
#define AUTOTB_TVOUT_DataInApp_V_keep_V "../tv/cdatafile/c.udp.autotvout_DataInApp_V_keep_V.dat"
#define AUTOTB_TVIN_DataInApp_V_strb_V "../tv/cdatafile/c.udp.autotvin_DataInApp_V_strb_V.dat"
#define AUTOTB_TVOUT_DataInApp_V_strb_V "../tv/cdatafile/c.udp.autotvout_DataInApp_V_strb_V.dat"
#define AUTOTB_TVIN_DataInApp_V_user_V "../tv/cdatafile/c.udp.autotvin_DataInApp_V_user_V.dat"
#define AUTOTB_TVOUT_DataInApp_V_user_V "../tv/cdatafile/c.udp.autotvout_DataInApp_V_user_V.dat"
#define AUTOTB_TVIN_DataInApp_V_last_V "../tv/cdatafile/c.udp.autotvin_DataInApp_V_last_V.dat"
#define AUTOTB_TVOUT_DataInApp_V_last_V "../tv/cdatafile/c.udp.autotvout_DataInApp_V_last_V.dat"
#define AUTOTB_TVIN_DataInApp_V_dest_V "../tv/cdatafile/c.udp.autotvin_DataInApp_V_dest_V.dat"
#define AUTOTB_TVOUT_DataInApp_V_dest_V "../tv/cdatafile/c.udp.autotvout_DataInApp_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_DataInApp_V_data_V "../tv/stream_size/stream_size_in_DataInApp_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_data_V "../tv/stream_size/stream_ingress_status_DataInApp_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_DataInApp_V_keep_V "../tv/stream_size/stream_size_in_DataInApp_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_keep_V "../tv/stream_size/stream_ingress_status_DataInApp_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_DataInApp_V_strb_V "../tv/stream_size/stream_size_in_DataInApp_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_strb_V "../tv/stream_size/stream_ingress_status_DataInApp_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_DataInApp_V_user_V "../tv/stream_size/stream_size_in_DataInApp_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_user_V "../tv/stream_size/stream_ingress_status_DataInApp_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_DataInApp_V_last_V "../tv/stream_size/stream_size_in_DataInApp_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_last_V "../tv/stream_size/stream_ingress_status_DataInApp_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_DataInApp_V_dest_V "../tv/stream_size/stream_size_in_DataInApp_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_dest_V "../tv/stream_size/stream_ingress_status_DataInApp_V_dest_V.dat"
#define AUTOTB_TVIN_myIpAddress "../tv/cdatafile/c.udp.autotvin_myIpAddress.dat"
#define AUTOTB_TVOUT_myIpAddress "../tv/cdatafile/c.udp.autotvout_myIpAddress.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_0 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_0.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_0 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_0.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_1 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_1.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_1 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_1.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_2 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_2.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_2 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_2.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_3 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_3.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_3 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_3.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_4 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_4.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_4 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_4.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_5 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_5.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_5 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_5.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_6 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_6.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_6 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_6.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_7 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_7.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_7 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_7.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_8 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_8.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_8 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_8.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_9 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_9.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_9 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_9.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_10 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_10.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_10 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_10.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_11 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_11.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_11 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_11.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_12 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_12.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_12 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_12.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_13 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_13.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_13 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_13.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_14 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_14.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_14 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_14.dat"
#define AUTOTB_TVIN_SocketTable_theirIP_15 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirIP_15.dat"
#define AUTOTB_TVOUT_SocketTable_theirIP_15 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirIP_15.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_0 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_0.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_0 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_0.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_1 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_1.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_1 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_1.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_2 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_2.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_2 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_2.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_3 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_3.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_3 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_3.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_4 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_4.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_4 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_4.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_5 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_5.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_5 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_5.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_6 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_6.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_6 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_6.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_7 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_7.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_7 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_7.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_8 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_8.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_8 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_8.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_9 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_9.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_9 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_9.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_10 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_10.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_10 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_10.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_11 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_11.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_11 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_11.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_12 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_12.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_12 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_12.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_13 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_13.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_13 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_13.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_14 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_14.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_14 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_14.dat"
#define AUTOTB_TVIN_SocketTable_theirPort_15 "../tv/cdatafile/c.udp.autotvin_SocketTable_theirPort_15.dat"
#define AUTOTB_TVOUT_SocketTable_theirPort_15 "../tv/cdatafile/c.udp.autotvout_SocketTable_theirPort_15.dat"
#define AUTOTB_TVIN_SocketTable_myPort_0 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_0.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_0 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_0.dat"
#define AUTOTB_TVIN_SocketTable_myPort_1 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_1.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_1 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_1.dat"
#define AUTOTB_TVIN_SocketTable_myPort_2 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_2.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_2 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_2.dat"
#define AUTOTB_TVIN_SocketTable_myPort_3 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_3.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_3 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_3.dat"
#define AUTOTB_TVIN_SocketTable_myPort_4 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_4.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_4 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_4.dat"
#define AUTOTB_TVIN_SocketTable_myPort_5 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_5.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_5 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_5.dat"
#define AUTOTB_TVIN_SocketTable_myPort_6 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_6.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_6 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_6.dat"
#define AUTOTB_TVIN_SocketTable_myPort_7 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_7.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_7 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_7.dat"
#define AUTOTB_TVIN_SocketTable_myPort_8 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_8.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_8 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_8.dat"
#define AUTOTB_TVIN_SocketTable_myPort_9 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_9.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_9 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_9.dat"
#define AUTOTB_TVIN_SocketTable_myPort_10 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_10.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_10 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_10.dat"
#define AUTOTB_TVIN_SocketTable_myPort_11 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_11.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_11 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_11.dat"
#define AUTOTB_TVIN_SocketTable_myPort_12 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_12.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_12 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_12.dat"
#define AUTOTB_TVIN_SocketTable_myPort_13 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_13.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_13 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_13.dat"
#define AUTOTB_TVIN_SocketTable_myPort_14 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_14.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_14 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_14.dat"
#define AUTOTB_TVIN_SocketTable_myPort_15 "../tv/cdatafile/c.udp.autotvin_SocketTable_myPort_15.dat"
#define AUTOTB_TVOUT_SocketTable_myPort_15 "../tv/cdatafile/c.udp.autotvout_SocketTable_myPort_15.dat"
#define AUTOTB_TVIN_SocketTable_valid_0 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_0.dat"
#define AUTOTB_TVOUT_SocketTable_valid_0 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_0.dat"
#define AUTOTB_TVIN_SocketTable_valid_1 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_1.dat"
#define AUTOTB_TVOUT_SocketTable_valid_1 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_1.dat"
#define AUTOTB_TVIN_SocketTable_valid_2 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_2.dat"
#define AUTOTB_TVOUT_SocketTable_valid_2 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_2.dat"
#define AUTOTB_TVIN_SocketTable_valid_3 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_3.dat"
#define AUTOTB_TVOUT_SocketTable_valid_3 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_3.dat"
#define AUTOTB_TVIN_SocketTable_valid_4 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_4.dat"
#define AUTOTB_TVOUT_SocketTable_valid_4 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_4.dat"
#define AUTOTB_TVIN_SocketTable_valid_5 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_5.dat"
#define AUTOTB_TVOUT_SocketTable_valid_5 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_5.dat"
#define AUTOTB_TVIN_SocketTable_valid_6 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_6.dat"
#define AUTOTB_TVOUT_SocketTable_valid_6 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_6.dat"
#define AUTOTB_TVIN_SocketTable_valid_7 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_7.dat"
#define AUTOTB_TVOUT_SocketTable_valid_7 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_7.dat"
#define AUTOTB_TVIN_SocketTable_valid_8 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_8.dat"
#define AUTOTB_TVOUT_SocketTable_valid_8 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_8.dat"
#define AUTOTB_TVIN_SocketTable_valid_9 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_9.dat"
#define AUTOTB_TVOUT_SocketTable_valid_9 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_9.dat"
#define AUTOTB_TVIN_SocketTable_valid_10 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_10.dat"
#define AUTOTB_TVOUT_SocketTable_valid_10 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_10.dat"
#define AUTOTB_TVIN_SocketTable_valid_11 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_11.dat"
#define AUTOTB_TVOUT_SocketTable_valid_11 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_11.dat"
#define AUTOTB_TVIN_SocketTable_valid_12 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_12.dat"
#define AUTOTB_TVOUT_SocketTable_valid_12 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_12.dat"
#define AUTOTB_TVIN_SocketTable_valid_13 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_13.dat"
#define AUTOTB_TVOUT_SocketTable_valid_13 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_13.dat"
#define AUTOTB_TVIN_SocketTable_valid_14 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_14.dat"
#define AUTOTB_TVOUT_SocketTable_valid_14 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_14.dat"
#define AUTOTB_TVIN_SocketTable_valid_15 "../tv/cdatafile/c.udp.autotvin_SocketTable_valid_15.dat"
#define AUTOTB_TVOUT_SocketTable_valid_15 "../tv/cdatafile/c.udp.autotvout_SocketTable_valid_15.dat"
#define AUTOTB_TVIN_numberSockets "../tv/cdatafile/c.udp.autotvin_numberSockets.dat"
#define AUTOTB_TVOUT_numberSockets "../tv/cdatafile/c.udp.autotvout_numberSockets.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_rxUdpDataIn_V_data_V "../tv/rtldatafile/rtl.udp.autotvout_rxUdpDataIn_V_data_V.dat"
#define AUTOTB_TVOUT_PC_rxUdpDataIn_V_keep_V "../tv/rtldatafile/rtl.udp.autotvout_rxUdpDataIn_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_rxUdpDataIn_V_strb_V "../tv/rtldatafile/rtl.udp.autotvout_rxUdpDataIn_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_rxUdpDataIn_V_last_V "../tv/rtldatafile/rtl.udp.autotvout_rxUdpDataIn_V_last_V.dat"
#define AUTOTB_TVOUT_PC_txUdpDataOut_V_data_V "../tv/rtldatafile/rtl.udp.autotvout_txUdpDataOut_V_data_V.dat"
#define AUTOTB_TVOUT_PC_txUdpDataOut_V_keep_V "../tv/rtldatafile/rtl.udp.autotvout_txUdpDataOut_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_txUdpDataOut_V_strb_V "../tv/rtldatafile/rtl.udp.autotvout_txUdpDataOut_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_txUdpDataOut_V_last_V "../tv/rtldatafile/rtl.udp.autotvout_txUdpDataOut_V_last_V.dat"
#define AUTOTB_TVOUT_PC_DataOutApp_V_data_V "../tv/rtldatafile/rtl.udp.autotvout_DataOutApp_V_data_V.dat"
#define AUTOTB_TVOUT_PC_DataOutApp_V_keep_V "../tv/rtldatafile/rtl.udp.autotvout_DataOutApp_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_DataOutApp_V_strb_V "../tv/rtldatafile/rtl.udp.autotvout_DataOutApp_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_DataOutApp_V_user_V "../tv/rtldatafile/rtl.udp.autotvout_DataOutApp_V_user_V.dat"
#define AUTOTB_TVOUT_PC_DataOutApp_V_last_V "../tv/rtldatafile/rtl.udp.autotvout_DataOutApp_V_last_V.dat"
#define AUTOTB_TVOUT_PC_DataOutApp_V_dest_V "../tv/rtldatafile/rtl.udp.autotvout_DataOutApp_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_DataInApp_V_data_V "../tv/rtldatafile/rtl.udp.autotvout_DataInApp_V_data_V.dat"
#define AUTOTB_TVOUT_PC_DataInApp_V_keep_V "../tv/rtldatafile/rtl.udp.autotvout_DataInApp_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_DataInApp_V_strb_V "../tv/rtldatafile/rtl.udp.autotvout_DataInApp_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_DataInApp_V_user_V "../tv/rtldatafile/rtl.udp.autotvout_DataInApp_V_user_V.dat"
#define AUTOTB_TVOUT_PC_DataInApp_V_last_V "../tv/rtldatafile/rtl.udp.autotvout_DataInApp_V_last_V.dat"
#define AUTOTB_TVOUT_PC_DataInApp_V_dest_V "../tv/rtldatafile/rtl.udp.autotvout_DataInApp_V_dest_V.dat"
#define AUTOTB_TVOUT_PC_numberSockets "../tv/rtldatafile/rtl.udp.autotvout_numberSockets.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  template<size_t n>
  void move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    while (!f->empty()) {
      t->write(f->read());
    }
  }

  template<size_t n>
  void task_move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    std::thread(
      [=] () { while (true) { t->write(f->read()); } }
    ).detach();
  }

  template<typename A, typename K, typename S, typename U, typename L, typename I, typename E>
  struct MoveAXIS
  {
    struct ST { A data; K keep; S strb; U user; L last; I id; E dest; };

    static void toSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<ST>*)axis)->read(st);
      ((hls::stream<A>*)data)->write(st.data);
      ((hls::stream<K>*)keep)->write(st.keep);
      ((hls::stream<S>*)strb)->write(st.strb);
      ((hls::stream<U>*)user)->write(st.user);
      ((hls::stream<L>*)last)->write(st.last);
      ((hls::stream<I>*)id)->write(st.id);
      ((hls::stream<E>*)dest)->write(st.dest);
    }

    static void fromSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<A>*)data)->read(st.data);
      ((hls::stream<K>*)keep)->read(st.keep);
      ((hls::stream<S>*)strb)->read(st.strb);
      ((hls::stream<U>*)user)->read(st.user);
      ((hls::stream<L>*)last)->read(st.last);
      ((hls::stream<I>*)id)->read(st.id);
      ((hls::stream<E>*)dest)->read(st.dest);
      ((hls::stream<ST>*)axis)->write(st);
    }
  };

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                  void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<typename M::ST>*)axis)->empty()) {
      M::toSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                       void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::toSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                    void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<ap_uint<sdata>>*)data)->empty()) {
      M::fromSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                         void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::fromSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for MAXI interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void udp_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_udp_hw(void* __xlx_apatb_param_rxUdpDataIn_V_data_V, void* __xlx_apatb_param_rxUdpDataIn_V_keep_V, void* __xlx_apatb_param_rxUdpDataIn_V_strb_V, void* __xlx_apatb_param_rxUdpDataIn_V_last_V, void* __xlx_apatb_param_txUdpDataOut_V_data_V, void* __xlx_apatb_param_txUdpDataOut_V_keep_V, void* __xlx_apatb_param_txUdpDataOut_V_strb_V, void* __xlx_apatb_param_txUdpDataOut_V_last_V, void* __xlx_apatb_param_DataOutApp_V_data_V, void* __xlx_apatb_param_DataOutApp_V_keep_V, void* __xlx_apatb_param_DataOutApp_V_strb_V, void* __xlx_apatb_param_DataOutApp_V_user_V, void* __xlx_apatb_param_DataOutApp_V_last_V, void* __xlx_apatb_param_DataOutApp_V_dest_V, void* __xlx_apatb_param_DataInApp_V_data_V, void* __xlx_apatb_param_DataInApp_V_keep_V, void* __xlx_apatb_param_DataInApp_V_strb_V, void* __xlx_apatb_param_DataInApp_V_user_V, void* __xlx_apatb_param_DataInApp_V_last_V, void* __xlx_apatb_param_DataInApp_V_dest_V, void* __xlx_apatb_param_myIpAddress, void* __xlx_apatb_param_SocketTable_theirIP_0, void* __xlx_apatb_param_SocketTable_theirIP_1, void* __xlx_apatb_param_SocketTable_theirIP_2, void* __xlx_apatb_param_SocketTable_theirIP_3, void* __xlx_apatb_param_SocketTable_theirIP_4, void* __xlx_apatb_param_SocketTable_theirIP_5, void* __xlx_apatb_param_SocketTable_theirIP_6, void* __xlx_apatb_param_SocketTable_theirIP_7, void* __xlx_apatb_param_SocketTable_theirIP_8, void* __xlx_apatb_param_SocketTable_theirIP_9, void* __xlx_apatb_param_SocketTable_theirIP_10, void* __xlx_apatb_param_SocketTable_theirIP_11, void* __xlx_apatb_param_SocketTable_theirIP_12, void* __xlx_apatb_param_SocketTable_theirIP_13, void* __xlx_apatb_param_SocketTable_theirIP_14, void* __xlx_apatb_param_SocketTable_theirIP_15, void* __xlx_apatb_param_SocketTable_theirPort_0, void* __xlx_apatb_param_SocketTable_theirPort_1, void* __xlx_apatb_param_SocketTable_theirPort_2, void* __xlx_apatb_param_SocketTable_theirPort_3, void* __xlx_apatb_param_SocketTable_theirPort_4, void* __xlx_apatb_param_SocketTable_theirPort_5, void* __xlx_apatb_param_SocketTable_theirPort_6, void* __xlx_apatb_param_SocketTable_theirPort_7, void* __xlx_apatb_param_SocketTable_theirPort_8, void* __xlx_apatb_param_SocketTable_theirPort_9, void* __xlx_apatb_param_SocketTable_theirPort_10, void* __xlx_apatb_param_SocketTable_theirPort_11, void* __xlx_apatb_param_SocketTable_theirPort_12, void* __xlx_apatb_param_SocketTable_theirPort_13, void* __xlx_apatb_param_SocketTable_theirPort_14, void* __xlx_apatb_param_SocketTable_theirPort_15, void* __xlx_apatb_param_SocketTable_myPort_0, void* __xlx_apatb_param_SocketTable_myPort_1, void* __xlx_apatb_param_SocketTable_myPort_2, void* __xlx_apatb_param_SocketTable_myPort_3, void* __xlx_apatb_param_SocketTable_myPort_4, void* __xlx_apatb_param_SocketTable_myPort_5, void* __xlx_apatb_param_SocketTable_myPort_6, void* __xlx_apatb_param_SocketTable_myPort_7, void* __xlx_apatb_param_SocketTable_myPort_8, void* __xlx_apatb_param_SocketTable_myPort_9, void* __xlx_apatb_param_SocketTable_myPort_10, void* __xlx_apatb_param_SocketTable_myPort_11, void* __xlx_apatb_param_SocketTable_myPort_12, void* __xlx_apatb_param_SocketTable_myPort_13, void* __xlx_apatb_param_SocketTable_myPort_14, void* __xlx_apatb_param_SocketTable_myPort_15, void* __xlx_apatb_param_SocketTable_valid_0, void* __xlx_apatb_param_SocketTable_valid_1, void* __xlx_apatb_param_SocketTable_valid_2, void* __xlx_apatb_param_SocketTable_valid_3, void* __xlx_apatb_param_SocketTable_valid_4, void* __xlx_apatb_param_SocketTable_valid_5, void* __xlx_apatb_param_SocketTable_valid_6, void* __xlx_apatb_param_SocketTable_valid_7, void* __xlx_apatb_param_SocketTable_valid_8, void* __xlx_apatb_param_SocketTable_valid_9, void* __xlx_apatb_param_SocketTable_valid_10, void* __xlx_apatb_param_SocketTable_valid_11, void* __xlx_apatb_param_SocketTable_valid_12, void* __xlx_apatb_param_SocketTable_valid_13, void* __xlx_apatb_param_SocketTable_valid_14, void* __xlx_apatb_param_SocketTable_valid_15, void* __xlx_apatb_param_numberSockets)
{
  static hls::sim::Stream<hls::sim::Byte<64>> port0 {
    .width = 512,
    .name = "rxUdpDataIn_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_rxUdpDataIn_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_data_V),
#endif
  };
  port0.param = (hls::stream<hls::sim::Byte<64>>*)__xlx_apatb_param_rxUdpDataIn_V_data_V;
  port0.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<8>> port1 {
    .width = 64,
    .name = "rxUdpDataIn_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_rxUdpDataIn_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_keep_V),
#endif
  };
  port1.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_rxUdpDataIn_V_keep_V;
  port1.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<8>> port2 {
    .width = 64,
    .name = "rxUdpDataIn_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_rxUdpDataIn_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_strb_V),
#endif
  };
  port2.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_rxUdpDataIn_V_strb_V;
  port2.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port3 {
    .width = 1,
    .name = "rxUdpDataIn_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_rxUdpDataIn_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_rxUdpDataIn_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_rxUdpDataIn_V_last_V),
#endif
  };
  port3.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_rxUdpDataIn_V_last_V;
  port3.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<64>> port4 {
    .width = 512,
    .name = "txUdpDataOut_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_txUdpDataOut_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_txUdpDataOut_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_data_V),
#endif
  };
  port4.param = (hls::stream<hls::sim::Byte<64>>*)__xlx_apatb_param_txUdpDataOut_V_data_V;
  port4.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<8>> port5 {
    .width = 64,
    .name = "txUdpDataOut_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_txUdpDataOut_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_txUdpDataOut_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_keep_V),
#endif
  };
  port5.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_txUdpDataOut_V_keep_V;
  port5.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<8>> port6 {
    .width = 64,
    .name = "txUdpDataOut_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_txUdpDataOut_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_txUdpDataOut_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_strb_V),
#endif
  };
  port6.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_txUdpDataOut_V_strb_V;
  port6.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port7 {
    .width = 1,
    .name = "txUdpDataOut_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_txUdpDataOut_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_txUdpDataOut_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_txUdpDataOut_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_txUdpDataOut_V_last_V),
#endif
  };
  port7.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_txUdpDataOut_V_last_V;
  port7.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<64>> port8 {
    .width = 512,
    .name = "DataOutApp_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_DataOutApp_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_DataOutApp_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_DataOutApp_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_data_V),
#endif
  };
  port8.param = (hls::stream<hls::sim::Byte<64>>*)__xlx_apatb_param_DataOutApp_V_data_V;
  port8.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<8>> port9 {
    .width = 64,
    .name = "DataOutApp_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_DataOutApp_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_DataOutApp_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_DataOutApp_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_keep_V),
#endif
  };
  port9.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_DataOutApp_V_keep_V;
  port9.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<8>> port10 {
    .width = 64,
    .name = "DataOutApp_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_DataOutApp_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_DataOutApp_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_DataOutApp_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_strb_V),
#endif
  };
  port10.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_DataOutApp_V_strb_V;
  port10.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<16>> port11 {
    .width = 96,
    .name = "DataOutApp_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_DataOutApp_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_DataOutApp_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_DataOutApp_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_user_V),
#endif
  };
  port11.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_DataOutApp_V_user_V;
  port11.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<1>> port12 {
    .width = 1,
    .name = "DataOutApp_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_DataOutApp_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_DataOutApp_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_DataOutApp_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_last_V),
#endif
  };
  port12.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_DataOutApp_V_last_V;
  port12.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<2>> port13 {
    .width = 16,
    .name = "DataOutApp_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_DataOutApp_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVOUT_DataOutApp_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_OUT_DataOutApp_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_EGRESS_STATUS_DataOutApp_V_dest_V),
#endif
  };
  port13.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_DataOutApp_V_dest_V;
  port13.hasWrite = true;

  static hls::sim::Stream<hls::sim::Byte<64>> port14 {
    .width = 512,
    .name = "DataInApp_V_data_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_DataInApp_V_data_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_DataInApp_V_data_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_DataInApp_V_data_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_data_V),
#endif
  };
  port14.param = (hls::stream<hls::sim::Byte<64>>*)__xlx_apatb_param_DataInApp_V_data_V;
  port14.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<8>> port15 {
    .width = 64,
    .name = "DataInApp_V_keep_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_DataInApp_V_keep_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_DataInApp_V_keep_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_DataInApp_V_keep_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_keep_V),
#endif
  };
  port15.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_DataInApp_V_keep_V;
  port15.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<8>> port16 {
    .width = 64,
    .name = "DataInApp_V_strb_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_DataInApp_V_strb_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_DataInApp_V_strb_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_DataInApp_V_strb_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_strb_V),
#endif
  };
  port16.param = (hls::stream<hls::sim::Byte<8>>*)__xlx_apatb_param_DataInApp_V_strb_V;
  port16.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<16>> port17 {
    .width = 96,
    .name = "DataInApp_V_user_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_DataInApp_V_user_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_DataInApp_V_user_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_DataInApp_V_user_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_user_V),
#endif
  };
  port17.param = (hls::stream<hls::sim::Byte<16>>*)__xlx_apatb_param_DataInApp_V_user_V;
  port17.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<1>> port18 {
    .width = 1,
    .name = "DataInApp_V_last_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_DataInApp_V_last_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_DataInApp_V_last_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_DataInApp_V_last_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_last_V),
#endif
  };
  port18.param = (hls::stream<hls::sim::Byte<1>>*)__xlx_apatb_param_DataInApp_V_last_V;
  port18.hasWrite = false;

  static hls::sim::Stream<hls::sim::Byte<2>> port19 {
    .width = 16,
    .name = "DataInApp_V_dest_V",
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(WRAPC_STREAM_SIZE_IN_DataInApp_V_dest_V),
#else
    .writer = new hls::sim::Writer(AUTOTB_TVIN_DataInApp_V_dest_V),
    .swriter = new hls::sim::Writer(WRAPC_STREAM_SIZE_IN_DataInApp_V_dest_V),
    .gwriter = new hls::sim::Writer(WRAPC_STREAM_INGRESS_STATUS_DataInApp_V_dest_V),
#endif
  };
  port19.param = (hls::stream<hls::sim::Byte<2>>*)__xlx_apatb_param_DataInApp_V_dest_V;
  port19.hasWrite = false;

  static hls::sim::Register port20 {
    .name = "myIpAddress",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_myIpAddress),
#endif
  };
  port20.param = __xlx_apatb_param_myIpAddress;

  static hls::sim::Register port21 {
    .name = "SocketTable_theirIP_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_0),
#endif
  };
  port21.param = __xlx_apatb_param_SocketTable_theirIP_0;

  static hls::sim::Register port22 {
    .name = "SocketTable_theirIP_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_1),
#endif
  };
  port22.param = __xlx_apatb_param_SocketTable_theirIP_1;

  static hls::sim::Register port23 {
    .name = "SocketTable_theirIP_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_2),
#endif
  };
  port23.param = __xlx_apatb_param_SocketTable_theirIP_2;

  static hls::sim::Register port24 {
    .name = "SocketTable_theirIP_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_3),
#endif
  };
  port24.param = __xlx_apatb_param_SocketTable_theirIP_3;

  static hls::sim::Register port25 {
    .name = "SocketTable_theirIP_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_4),
#endif
  };
  port25.param = __xlx_apatb_param_SocketTable_theirIP_4;

  static hls::sim::Register port26 {
    .name = "SocketTable_theirIP_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_5),
#endif
  };
  port26.param = __xlx_apatb_param_SocketTable_theirIP_5;

  static hls::sim::Register port27 {
    .name = "SocketTable_theirIP_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_6),
#endif
  };
  port27.param = __xlx_apatb_param_SocketTable_theirIP_6;

  static hls::sim::Register port28 {
    .name = "SocketTable_theirIP_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_7),
#endif
  };
  port28.param = __xlx_apatb_param_SocketTable_theirIP_7;

  static hls::sim::Register port29 {
    .name = "SocketTable_theirIP_8",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_8),
#endif
  };
  port29.param = __xlx_apatb_param_SocketTable_theirIP_8;

  static hls::sim::Register port30 {
    .name = "SocketTable_theirIP_9",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_9),
#endif
  };
  port30.param = __xlx_apatb_param_SocketTable_theirIP_9;

  static hls::sim::Register port31 {
    .name = "SocketTable_theirIP_10",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_10),
#endif
  };
  port31.param = __xlx_apatb_param_SocketTable_theirIP_10;

  static hls::sim::Register port32 {
    .name = "SocketTable_theirIP_11",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_11),
#endif
  };
  port32.param = __xlx_apatb_param_SocketTable_theirIP_11;

  static hls::sim::Register port33 {
    .name = "SocketTable_theirIP_12",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_12),
#endif
  };
  port33.param = __xlx_apatb_param_SocketTable_theirIP_12;

  static hls::sim::Register port34 {
    .name = "SocketTable_theirIP_13",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_13),
#endif
  };
  port34.param = __xlx_apatb_param_SocketTable_theirIP_13;

  static hls::sim::Register port35 {
    .name = "SocketTable_theirIP_14",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_14),
#endif
  };
  port35.param = __xlx_apatb_param_SocketTable_theirIP_14;

  static hls::sim::Register port36 {
    .name = "SocketTable_theirIP_15",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirIP_15),
#endif
  };
  port36.param = __xlx_apatb_param_SocketTable_theirIP_15;

  static hls::sim::Register port37 {
    .name = "SocketTable_theirPort_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_0),
#endif
  };
  port37.param = __xlx_apatb_param_SocketTable_theirPort_0;

  static hls::sim::Register port38 {
    .name = "SocketTable_theirPort_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_1),
#endif
  };
  port38.param = __xlx_apatb_param_SocketTable_theirPort_1;

  static hls::sim::Register port39 {
    .name = "SocketTable_theirPort_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_2),
#endif
  };
  port39.param = __xlx_apatb_param_SocketTable_theirPort_2;

  static hls::sim::Register port40 {
    .name = "SocketTable_theirPort_3",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_3),
#endif
  };
  port40.param = __xlx_apatb_param_SocketTable_theirPort_3;

  static hls::sim::Register port41 {
    .name = "SocketTable_theirPort_4",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_4),
#endif
  };
  port41.param = __xlx_apatb_param_SocketTable_theirPort_4;

  static hls::sim::Register port42 {
    .name = "SocketTable_theirPort_5",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_5),
#endif
  };
  port42.param = __xlx_apatb_param_SocketTable_theirPort_5;

  static hls::sim::Register port43 {
    .name = "SocketTable_theirPort_6",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_6),
#endif
  };
  port43.param = __xlx_apatb_param_SocketTable_theirPort_6;

  static hls::sim::Register port44 {
    .name = "SocketTable_theirPort_7",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_7),
#endif
  };
  port44.param = __xlx_apatb_param_SocketTable_theirPort_7;

  static hls::sim::Register port45 {
    .name = "SocketTable_theirPort_8",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_8),
#endif
  };
  port45.param = __xlx_apatb_param_SocketTable_theirPort_8;

  static hls::sim::Register port46 {
    .name = "SocketTable_theirPort_9",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_9),
#endif
  };
  port46.param = __xlx_apatb_param_SocketTable_theirPort_9;

  static hls::sim::Register port47 {
    .name = "SocketTable_theirPort_10",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_10),
#endif
  };
  port47.param = __xlx_apatb_param_SocketTable_theirPort_10;

  static hls::sim::Register port48 {
    .name = "SocketTable_theirPort_11",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_11),
#endif
  };
  port48.param = __xlx_apatb_param_SocketTable_theirPort_11;

  static hls::sim::Register port49 {
    .name = "SocketTable_theirPort_12",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_12),
#endif
  };
  port49.param = __xlx_apatb_param_SocketTable_theirPort_12;

  static hls::sim::Register port50 {
    .name = "SocketTable_theirPort_13",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_13),
#endif
  };
  port50.param = __xlx_apatb_param_SocketTable_theirPort_13;

  static hls::sim::Register port51 {
    .name = "SocketTable_theirPort_14",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_14),
#endif
  };
  port51.param = __xlx_apatb_param_SocketTable_theirPort_14;

  static hls::sim::Register port52 {
    .name = "SocketTable_theirPort_15",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_theirPort_15),
#endif
  };
  port52.param = __xlx_apatb_param_SocketTable_theirPort_15;

  static hls::sim::Register port53 {
    .name = "SocketTable_myPort_0",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_0),
#endif
  };
  port53.param = __xlx_apatb_param_SocketTable_myPort_0;

  static hls::sim::Register port54 {
    .name = "SocketTable_myPort_1",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_1),
#endif
  };
  port54.param = __xlx_apatb_param_SocketTable_myPort_1;

  static hls::sim::Register port55 {
    .name = "SocketTable_myPort_2",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_2),
#endif
  };
  port55.param = __xlx_apatb_param_SocketTable_myPort_2;

  static hls::sim::Register port56 {
    .name = "SocketTable_myPort_3",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_3),
#endif
  };
  port56.param = __xlx_apatb_param_SocketTable_myPort_3;

  static hls::sim::Register port57 {
    .name = "SocketTable_myPort_4",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_4),
#endif
  };
  port57.param = __xlx_apatb_param_SocketTable_myPort_4;

  static hls::sim::Register port58 {
    .name = "SocketTable_myPort_5",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_5),
#endif
  };
  port58.param = __xlx_apatb_param_SocketTable_myPort_5;

  static hls::sim::Register port59 {
    .name = "SocketTable_myPort_6",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_6),
#endif
  };
  port59.param = __xlx_apatb_param_SocketTable_myPort_6;

  static hls::sim::Register port60 {
    .name = "SocketTable_myPort_7",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_7),
#endif
  };
  port60.param = __xlx_apatb_param_SocketTable_myPort_7;

  static hls::sim::Register port61 {
    .name = "SocketTable_myPort_8",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_8),
#endif
  };
  port61.param = __xlx_apatb_param_SocketTable_myPort_8;

  static hls::sim::Register port62 {
    .name = "SocketTable_myPort_9",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_9),
#endif
  };
  port62.param = __xlx_apatb_param_SocketTable_myPort_9;

  static hls::sim::Register port63 {
    .name = "SocketTable_myPort_10",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_10),
#endif
  };
  port63.param = __xlx_apatb_param_SocketTable_myPort_10;

  static hls::sim::Register port64 {
    .name = "SocketTable_myPort_11",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_11),
#endif
  };
  port64.param = __xlx_apatb_param_SocketTable_myPort_11;

  static hls::sim::Register port65 {
    .name = "SocketTable_myPort_12",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_12),
#endif
  };
  port65.param = __xlx_apatb_param_SocketTable_myPort_12;

  static hls::sim::Register port66 {
    .name = "SocketTable_myPort_13",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_13),
#endif
  };
  port66.param = __xlx_apatb_param_SocketTable_myPort_13;

  static hls::sim::Register port67 {
    .name = "SocketTable_myPort_14",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_14),
#endif
  };
  port67.param = __xlx_apatb_param_SocketTable_myPort_14;

  static hls::sim::Register port68 {
    .name = "SocketTable_myPort_15",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_myPort_15),
#endif
  };
  port68.param = __xlx_apatb_param_SocketTable_myPort_15;

  static hls::sim::Register port69 {
    .name = "SocketTable_valid_0",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_0),
#endif
  };
  port69.param = __xlx_apatb_param_SocketTable_valid_0;

  static hls::sim::Register port70 {
    .name = "SocketTable_valid_1",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_1),
#endif
  };
  port70.param = __xlx_apatb_param_SocketTable_valid_1;

  static hls::sim::Register port71 {
    .name = "SocketTable_valid_2",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_2),
#endif
  };
  port71.param = __xlx_apatb_param_SocketTable_valid_2;

  static hls::sim::Register port72 {
    .name = "SocketTable_valid_3",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_3),
#endif
  };
  port72.param = __xlx_apatb_param_SocketTable_valid_3;

  static hls::sim::Register port73 {
    .name = "SocketTable_valid_4",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_4),
#endif
  };
  port73.param = __xlx_apatb_param_SocketTable_valid_4;

  static hls::sim::Register port74 {
    .name = "SocketTable_valid_5",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_5),
#endif
  };
  port74.param = __xlx_apatb_param_SocketTable_valid_5;

  static hls::sim::Register port75 {
    .name = "SocketTable_valid_6",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_6),
#endif
  };
  port75.param = __xlx_apatb_param_SocketTable_valid_6;

  static hls::sim::Register port76 {
    .name = "SocketTable_valid_7",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_7),
#endif
  };
  port76.param = __xlx_apatb_param_SocketTable_valid_7;

  static hls::sim::Register port77 {
    .name = "SocketTable_valid_8",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_8),
#endif
  };
  port77.param = __xlx_apatb_param_SocketTable_valid_8;

  static hls::sim::Register port78 {
    .name = "SocketTable_valid_9",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_9),
#endif
  };
  port78.param = __xlx_apatb_param_SocketTable_valid_9;

  static hls::sim::Register port79 {
    .name = "SocketTable_valid_10",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_10),
#endif
  };
  port79.param = __xlx_apatb_param_SocketTable_valid_10;

  static hls::sim::Register port80 {
    .name = "SocketTable_valid_11",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_11),
#endif
  };
  port80.param = __xlx_apatb_param_SocketTable_valid_11;

  static hls::sim::Register port81 {
    .name = "SocketTable_valid_12",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_12),
#endif
  };
  port81.param = __xlx_apatb_param_SocketTable_valid_12;

  static hls::sim::Register port82 {
    .name = "SocketTable_valid_13",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_13),
#endif
  };
  port82.param = __xlx_apatb_param_SocketTable_valid_13;

  static hls::sim::Register port83 {
    .name = "SocketTable_valid_14",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_14),
#endif
  };
  port83.param = __xlx_apatb_param_SocketTable_valid_14;

  static hls::sim::Register port84 {
    .name = "SocketTable_valid_15",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_SocketTable_valid_15),
#endif
  };
  port84.param = __xlx_apatb_param_SocketTable_valid_15;

  static hls::sim::Register port85 {
    .name = "numberSockets",
    .width = 16,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_numberSockets),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_numberSockets),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_numberSockets),
#endif
  };
  port85.param = __xlx_apatb_param_numberSockets;

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port85);
    check(port0);
    check(port1);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    dump(port82, port82.iwriter, tcl.AESL_transaction);
    dump(port83, port83.iwriter, tcl.AESL_transaction);
    dump(port84, port84.iwriter, tcl.AESL_transaction);
    dump(port85, port85.iwriter, tcl.AESL_transaction);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port81.doTCL(tcl);
    port82.doTCL(tcl);
    port83.doTCL(tcl);
    port84.doTCL(tcl);
    port85.doTCL(tcl);
    port0.markSize();
    port1.markSize();
    port2.markSize();
    port3.markSize();
    port14.markSize();
    port15.markSize();
    port16.markSize();
    port17.markSize();
    port18.markSize();
    port19.markSize();
    port0.buffer();
    port1.buffer();
    port2.buffer();
    port3.buffer();
    port14.buffer();
    port15.buffer();
    port16.buffer();
    port17.buffer();
    port18.buffer();
    port19.buffer();
    port4.markSize();
    port5.markSize();
    port6.markSize();
    port7.markSize();
    port8.markSize();
    port9.markSize();
    port10.markSize();
    port11.markSize();
    port12.markSize();
    port13.markSize();
    CodeState = CALL_C_DUT;
    udp_hw_stub_wrapper(__xlx_apatb_param_rxUdpDataIn_V_data_V, __xlx_apatb_param_rxUdpDataIn_V_keep_V, __xlx_apatb_param_rxUdpDataIn_V_strb_V, __xlx_apatb_param_rxUdpDataIn_V_last_V, __xlx_apatb_param_txUdpDataOut_V_data_V, __xlx_apatb_param_txUdpDataOut_V_keep_V, __xlx_apatb_param_txUdpDataOut_V_strb_V, __xlx_apatb_param_txUdpDataOut_V_last_V, __xlx_apatb_param_DataOutApp_V_data_V, __xlx_apatb_param_DataOutApp_V_keep_V, __xlx_apatb_param_DataOutApp_V_strb_V, __xlx_apatb_param_DataOutApp_V_user_V, __xlx_apatb_param_DataOutApp_V_last_V, __xlx_apatb_param_DataOutApp_V_dest_V, __xlx_apatb_param_DataInApp_V_data_V, __xlx_apatb_param_DataInApp_V_keep_V, __xlx_apatb_param_DataInApp_V_strb_V, __xlx_apatb_param_DataInApp_V_user_V, __xlx_apatb_param_DataInApp_V_last_V, __xlx_apatb_param_DataInApp_V_dest_V, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_SocketTable_theirIP_0, __xlx_apatb_param_SocketTable_theirIP_1, __xlx_apatb_param_SocketTable_theirIP_2, __xlx_apatb_param_SocketTable_theirIP_3, __xlx_apatb_param_SocketTable_theirIP_4, __xlx_apatb_param_SocketTable_theirIP_5, __xlx_apatb_param_SocketTable_theirIP_6, __xlx_apatb_param_SocketTable_theirIP_7, __xlx_apatb_param_SocketTable_theirIP_8, __xlx_apatb_param_SocketTable_theirIP_9, __xlx_apatb_param_SocketTable_theirIP_10, __xlx_apatb_param_SocketTable_theirIP_11, __xlx_apatb_param_SocketTable_theirIP_12, __xlx_apatb_param_SocketTable_theirIP_13, __xlx_apatb_param_SocketTable_theirIP_14, __xlx_apatb_param_SocketTable_theirIP_15, __xlx_apatb_param_SocketTable_theirPort_0, __xlx_apatb_param_SocketTable_theirPort_1, __xlx_apatb_param_SocketTable_theirPort_2, __xlx_apatb_param_SocketTable_theirPort_3, __xlx_apatb_param_SocketTable_theirPort_4, __xlx_apatb_param_SocketTable_theirPort_5, __xlx_apatb_param_SocketTable_theirPort_6, __xlx_apatb_param_SocketTable_theirPort_7, __xlx_apatb_param_SocketTable_theirPort_8, __xlx_apatb_param_SocketTable_theirPort_9, __xlx_apatb_param_SocketTable_theirPort_10, __xlx_apatb_param_SocketTable_theirPort_11, __xlx_apatb_param_SocketTable_theirPort_12, __xlx_apatb_param_SocketTable_theirPort_13, __xlx_apatb_param_SocketTable_theirPort_14, __xlx_apatb_param_SocketTable_theirPort_15, __xlx_apatb_param_SocketTable_myPort_0, __xlx_apatb_param_SocketTable_myPort_1, __xlx_apatb_param_SocketTable_myPort_2, __xlx_apatb_param_SocketTable_myPort_3, __xlx_apatb_param_SocketTable_myPort_4, __xlx_apatb_param_SocketTable_myPort_5, __xlx_apatb_param_SocketTable_myPort_6, __xlx_apatb_param_SocketTable_myPort_7, __xlx_apatb_param_SocketTable_myPort_8, __xlx_apatb_param_SocketTable_myPort_9, __xlx_apatb_param_SocketTable_myPort_10, __xlx_apatb_param_SocketTable_myPort_11, __xlx_apatb_param_SocketTable_myPort_12, __xlx_apatb_param_SocketTable_myPort_13, __xlx_apatb_param_SocketTable_myPort_14, __xlx_apatb_param_SocketTable_myPort_15, __xlx_apatb_param_SocketTable_valid_0, __xlx_apatb_param_SocketTable_valid_1, __xlx_apatb_param_SocketTable_valid_2, __xlx_apatb_param_SocketTable_valid_3, __xlx_apatb_param_SocketTable_valid_4, __xlx_apatb_param_SocketTable_valid_5, __xlx_apatb_param_SocketTable_valid_6, __xlx_apatb_param_SocketTable_valid_7, __xlx_apatb_param_SocketTable_valid_8, __xlx_apatb_param_SocketTable_valid_9, __xlx_apatb_param_SocketTable_valid_10, __xlx_apatb_param_SocketTable_valid_11, __xlx_apatb_param_SocketTable_valid_12, __xlx_apatb_param_SocketTable_valid_13, __xlx_apatb_param_SocketTable_valid_14, __xlx_apatb_param_SocketTable_valid_15, __xlx_apatb_param_numberSockets);
    port4.buffer();
    port5.buffer();
    port6.buffer();
    port7.buffer();
    port8.buffer();
    port9.buffer();
    port10.buffer();
    port11.buffer();
    port12.buffer();
    port13.buffer();
    dump(port0, tcl.AESL_transaction);
    dump(port1, tcl.AESL_transaction);
    dump(port2, tcl.AESL_transaction);
    dump(port3, tcl.AESL_transaction);
    dump(port14, tcl.AESL_transaction);
    dump(port15, tcl.AESL_transaction);
    dump(port16, tcl.AESL_transaction);
    dump(port17, tcl.AESL_transaction);
    dump(port18, tcl.AESL_transaction);
    dump(port19, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    CodeState = DUMP_OUTPUTS;
    dump(port85, port85.owriter, tcl.AESL_transaction);
    dump(port4, tcl.AESL_transaction);
    dump(port5, tcl.AESL_transaction);
    dump(port6, tcl.AESL_transaction);
    dump(port7, tcl.AESL_transaction);
    dump(port8, tcl.AESL_transaction);
    dump(port9, tcl.AESL_transaction);
    dump(port10, tcl.AESL_transaction);
    dump(port11, tcl.AESL_transaction);
    dump(port12, tcl.AESL_transaction);
    dump(port13, tcl.AESL_transaction);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}