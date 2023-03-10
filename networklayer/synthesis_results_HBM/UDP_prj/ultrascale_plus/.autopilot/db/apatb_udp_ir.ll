; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/UDP_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<512>, 0, 0, 0>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<512>" = type { %"struct.ap_int_base<512, false>" }
%"struct.ap_int_base<512, false>" = type { %"struct.ssdm_int<512, false>" }
%"struct.ssdm_int<512, false>" = type { i512 }
%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>" = type { %"struct.hls::axis<ap_uint<512>, 96, 0, 16>" }
%"struct.hls::axis<ap_uint<512>, 96, 0, 16>" = type { %"struct.ap_uint<512>", %"struct.ap_uint<64>", %"struct.ap_uint<64>", %"struct.ap_uint<96>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<16>" }
%"struct.ap_uint<96>" = type { %"struct.ap_int_base<96, false>" }
%"struct.ap_int_base<96, false>" = type { %"struct.ssdm_int<96, false>" }
%"struct.ssdm_int<96, false>" = type { i96 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
%struct.socket_table = type { %"struct.ap_uint<32>", %"struct.ap_uint<16>", %"struct.ap_uint<16>", %"struct.ap_uint<1>" }

; Function Attrs: noinline
define void @apatb_udp_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxUdpDataIn, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txUdpDataOut, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataOutApp, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataInApp, %"struct.ap_uint<32>"* %myIpAddress, %struct.socket_table* %SocketTable, %"struct.ap_uint<16>"* %numberSockets) local_unnamed_addr #0 {
entry:
  %rxUdpDataIn_copy.data = alloca i512
  %rxUdpDataIn_copy.keep = alloca i64
  %rxUdpDataIn_copy.strb = alloca i64
  %rxUdpDataIn_copy.last = alloca i1
  %txUdpDataOut_copy.data = alloca i512
  %txUdpDataOut_copy.keep = alloca i64
  %txUdpDataOut_copy.strb = alloca i64
  %txUdpDataOut_copy.last = alloca i1
  %DataOutApp_copy.data = alloca i512
  %DataOutApp_copy.keep = alloca i64
  %DataOutApp_copy.strb = alloca i64
  %DataOutApp_copy.user = alloca i96
  %DataOutApp_copy.last = alloca i1
  %DataOutApp_copy.dest = alloca i16
  %DataInApp_copy.data = alloca i512
  %DataInApp_copy.keep = alloca i64
  %DataInApp_copy.strb = alloca i64
  %DataInApp_copy.user = alloca i96
  %DataInApp_copy.last = alloca i1
  %DataInApp_copy.dest = alloca i16
  %myIpAddress_copy = alloca i32, align 512
  %SocketTable_copy.0_0 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_1 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_2 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_3 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_4 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_5 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_6 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_7 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_8 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_9 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_10 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_11 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_12 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_13 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_14 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.0_15 = alloca %"struct.ap_uint<32>", align 512
  %SocketTable_copy.1_0 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_1 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_2 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_3 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_4 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_5 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_6 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_7 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_8 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_9 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_10 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_11 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_12 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_13 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_14 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.1_15 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_0 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_1 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_2 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_3 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_4 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_5 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_6 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_7 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_8 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_9 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_10 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_11 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_12 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_13 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_14 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.2_15 = alloca %"struct.ap_uint<16>", align 512
  %SocketTable_copy.3_0 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_1 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_2 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_3 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_4 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_5 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_6 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_7 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_8 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_9 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_10 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_11 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_12 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_13 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_14 = alloca %"struct.ap_uint<1>", align 512
  %SocketTable_copy.3_15 = alloca %"struct.ap_uint<1>", align 512
  %numberSockets_copy = alloca %"struct.ap_uint<16>", align 512
  %0 = bitcast %struct.socket_table* %SocketTable to [16 x %struct.socket_table]*
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxUdpDataIn, i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txUdpDataOut, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataOutApp, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataInApp, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, %"struct.ap_uint<32>"* %myIpAddress, i32* nonnull align 512 %myIpAddress_copy, [16 x %struct.socket_table]* %0, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_0, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_1, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_2, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_3, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_4, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_5, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_6, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_7, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_8, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_9, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_10, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_11, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_12, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_13, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_14, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_15, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_0, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_1, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_2, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_3, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_4, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_5, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_6, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_7, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_8, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_9, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_10, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_11, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_12, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_13, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_14, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_15, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_0, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_1, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_2, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_3, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_4, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_5, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_6, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_7, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_8, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_9, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_10, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_11, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_12, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_13, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_14, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_15, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_0, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_1, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_2, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_3, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_4, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_5, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_6, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_7, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_8, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_9, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_10, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_11, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_12, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_13, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_14, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_15, %"struct.ap_uint<16>"* %numberSockets, %"struct.ap_uint<16>"* nonnull align 512 %numberSockets_copy)
  call void @apatb_udp_hw(i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, i32* %myIpAddress_copy, %"struct.ap_uint<32>"* %SocketTable_copy.0_0, %"struct.ap_uint<32>"* %SocketTable_copy.0_1, %"struct.ap_uint<32>"* %SocketTable_copy.0_2, %"struct.ap_uint<32>"* %SocketTable_copy.0_3, %"struct.ap_uint<32>"* %SocketTable_copy.0_4, %"struct.ap_uint<32>"* %SocketTable_copy.0_5, %"struct.ap_uint<32>"* %SocketTable_copy.0_6, %"struct.ap_uint<32>"* %SocketTable_copy.0_7, %"struct.ap_uint<32>"* %SocketTable_copy.0_8, %"struct.ap_uint<32>"* %SocketTable_copy.0_9, %"struct.ap_uint<32>"* %SocketTable_copy.0_10, %"struct.ap_uint<32>"* %SocketTable_copy.0_11, %"struct.ap_uint<32>"* %SocketTable_copy.0_12, %"struct.ap_uint<32>"* %SocketTable_copy.0_13, %"struct.ap_uint<32>"* %SocketTable_copy.0_14, %"struct.ap_uint<32>"* %SocketTable_copy.0_15, %"struct.ap_uint<16>"* %SocketTable_copy.1_0, %"struct.ap_uint<16>"* %SocketTable_copy.1_1, %"struct.ap_uint<16>"* %SocketTable_copy.1_2, %"struct.ap_uint<16>"* %SocketTable_copy.1_3, %"struct.ap_uint<16>"* %SocketTable_copy.1_4, %"struct.ap_uint<16>"* %SocketTable_copy.1_5, %"struct.ap_uint<16>"* %SocketTable_copy.1_6, %"struct.ap_uint<16>"* %SocketTable_copy.1_7, %"struct.ap_uint<16>"* %SocketTable_copy.1_8, %"struct.ap_uint<16>"* %SocketTable_copy.1_9, %"struct.ap_uint<16>"* %SocketTable_copy.1_10, %"struct.ap_uint<16>"* %SocketTable_copy.1_11, %"struct.ap_uint<16>"* %SocketTable_copy.1_12, %"struct.ap_uint<16>"* %SocketTable_copy.1_13, %"struct.ap_uint<16>"* %SocketTable_copy.1_14, %"struct.ap_uint<16>"* %SocketTable_copy.1_15, %"struct.ap_uint<16>"* %SocketTable_copy.2_0, %"struct.ap_uint<16>"* %SocketTable_copy.2_1, %"struct.ap_uint<16>"* %SocketTable_copy.2_2, %"struct.ap_uint<16>"* %SocketTable_copy.2_3, %"struct.ap_uint<16>"* %SocketTable_copy.2_4, %"struct.ap_uint<16>"* %SocketTable_copy.2_5, %"struct.ap_uint<16>"* %SocketTable_copy.2_6, %"struct.ap_uint<16>"* %SocketTable_copy.2_7, %"struct.ap_uint<16>"* %SocketTable_copy.2_8, %"struct.ap_uint<16>"* %SocketTable_copy.2_9, %"struct.ap_uint<16>"* %SocketTable_copy.2_10, %"struct.ap_uint<16>"* %SocketTable_copy.2_11, %"struct.ap_uint<16>"* %SocketTable_copy.2_12, %"struct.ap_uint<16>"* %SocketTable_copy.2_13, %"struct.ap_uint<16>"* %SocketTable_copy.2_14, %"struct.ap_uint<16>"* %SocketTable_copy.2_15, %"struct.ap_uint<1>"* %SocketTable_copy.3_0, %"struct.ap_uint<1>"* %SocketTable_copy.3_1, %"struct.ap_uint<1>"* %SocketTable_copy.3_2, %"struct.ap_uint<1>"* %SocketTable_copy.3_3, %"struct.ap_uint<1>"* %SocketTable_copy.3_4, %"struct.ap_uint<1>"* %SocketTable_copy.3_5, %"struct.ap_uint<1>"* %SocketTable_copy.3_6, %"struct.ap_uint<1>"* %SocketTable_copy.3_7, %"struct.ap_uint<1>"* %SocketTable_copy.3_8, %"struct.ap_uint<1>"* %SocketTable_copy.3_9, %"struct.ap_uint<1>"* %SocketTable_copy.3_10, %"struct.ap_uint<1>"* %SocketTable_copy.3_11, %"struct.ap_uint<1>"* %SocketTable_copy.3_12, %"struct.ap_uint<1>"* %SocketTable_copy.3_13, %"struct.ap_uint<1>"* %SocketTable_copy.3_14, %"struct.ap_uint<1>"* %SocketTable_copy.3_15, %"struct.ap_uint<16>"* %numberSockets_copy)
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxUdpDataIn, i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txUdpDataOut, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataOutApp, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataInApp, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, %"struct.ap_uint<32>"* %myIpAddress, i32* nonnull align 512 %myIpAddress_copy, [16 x %struct.socket_table]* %0, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_0, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_1, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_2, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_3, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_4, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_5, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_6, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_7, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_8, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_9, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_10, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_11, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_12, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_13, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_14, %"struct.ap_uint<32>"* nonnull align 512 %SocketTable_copy.0_15, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_0, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_1, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_2, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_3, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_4, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_5, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_6, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_7, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_8, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_9, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_10, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_11, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_12, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_13, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_14, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.1_15, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_0, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_1, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_2, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_3, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_4, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_5, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_6, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_7, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_8, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_9, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_10, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_11, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_12, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_13, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_14, %"struct.ap_uint<16>"* nonnull align 512 %SocketTable_copy.2_15, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_0, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_1, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_2, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_3, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_4, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_5, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_6, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_7, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_8, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_9, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_10, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_11, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_12, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_13, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_14, %"struct.ap_uint<1>"* nonnull align 512 %SocketTable_copy.3_15, %"struct.ap_uint<16>"* %numberSockets, %"struct.ap_uint<16>"* nonnull align 512 %numberSockets_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* noalias align 512, %"struct.ap_uint<32>"* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %"struct.ap_uint<32>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %.0.0.04, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* noalias align 512, %"struct.ap_uint<16>"* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq %"struct.ap_uint<16>"* %0, null
  %3 = icmp eq %"struct.ap_uint<16>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i16, i16* %.0.0.04, align 2
  store i16 %5, i16* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16struct.socket_table(%"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_0, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_1, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_2, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_3, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_4, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_5, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_6, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_7, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_8, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_9, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_10, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_11, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_12, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_13, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_14, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_15, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_0, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_1, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_2, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_3, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_4, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_5, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_6, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_7, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_8, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_9, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_10, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_11, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_12, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_13, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_14, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_15, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_0, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_1, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_2, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_3, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_4, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_5, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_6, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_7, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_8, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_9, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_10, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_11, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_12, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_13, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_14, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_15, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_0, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_1, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_2, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_3, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_4, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_5, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_6, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_7, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_8, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_9, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_10, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_11, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_12, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_13, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_14, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_15, [16 x %struct.socket_table]* noalias readonly "orig.arg.no"="4") #1 {
entry:
  %1 = icmp eq [16 x %struct.socket_table]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.addr.0.0.0.08_0 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_0, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_1 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_1, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_2 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_2, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_3 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_3, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_4 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_4, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_5 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_5, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_6 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_6, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_7 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_7, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_8 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_8, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_9 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_9, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_10 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_10, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_11 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_11, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_12 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_12, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_13 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_13, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_14 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_14, i64 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08_15 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_15, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_0 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_0, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_1 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_1, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_2 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_2, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_3 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_3, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_4 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_4, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_5 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_5, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_6 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_6, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_7 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_7, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_8 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_8, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_9 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_9, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_10 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_10, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_11 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_11, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_12 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_12, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_13 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_13, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_14 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_14, i64 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016_15 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_15, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_0 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_0, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_1 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_1, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_2 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_2, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_3 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_3, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_4 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_4, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_5 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_5, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_6 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_6, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_7 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_7, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_8 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_8, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_9 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_9, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_10 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_10, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_11 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_11, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_12 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_12, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_13 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_13, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_14 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_14, i64 0, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024_15 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_15, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_0 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_0, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_1 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_1, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_2 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_2, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_3 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_3, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_4 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_4, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_5 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_5, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_6 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_6, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_7 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_7, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_8 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_8, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_9 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_9, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_10 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_10, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_11 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_11, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_12 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_12, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_13 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_13, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_14 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_14, i64 0, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032_15 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_15, i64 0, i32 0, i32 0, i32 0
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.3.0.0.032.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.3.0.0.032.exit ]
  %src.addr.0.0.0.07 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %src.addr.0.0.0.07, align 4
  %3 = trunc i64 %for.loop.idx1 to i4
  %src.addr.1.0.0.0153 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 1, i32 0, i32 0, i32 0
  %src.addr.2.0.0.02332 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 2, i32 0, i32 0, i32 0
  %src.addr.3.0.0.03161 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 3, i32 0, i32 0, i32 0
  %4 = load i16, i16* %src.addr.1.0.0.0153, align 2
  %5 = load i16, i16* %src.addr.2.0.0.02332, align 2
  %6 = bitcast i1* %src.addr.3.0.0.03161 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i1
  switch i4 %3, label %dst.addr.3.0.0.032.case.15 [
    i4 0, label %dst.addr.3.0.0.032.case.0
    i4 1, label %dst.addr.3.0.0.032.case.1
    i4 2, label %dst.addr.3.0.0.032.case.2
    i4 3, label %dst.addr.3.0.0.032.case.3
    i4 4, label %dst.addr.3.0.0.032.case.4
    i4 5, label %dst.addr.3.0.0.032.case.5
    i4 6, label %dst.addr.3.0.0.032.case.6
    i4 7, label %dst.addr.3.0.0.032.case.7
    i4 -8, label %dst.addr.3.0.0.032.case.8
    i4 -7, label %dst.addr.3.0.0.032.case.9
    i4 -6, label %dst.addr.3.0.0.032.case.10
    i4 -5, label %dst.addr.3.0.0.032.case.11
    i4 -4, label %dst.addr.3.0.0.032.case.12
    i4 -3, label %dst.addr.3.0.0.032.case.13
    i4 -2, label %dst.addr.3.0.0.032.case.14
  ]

dst.addr.3.0.0.032.case.0:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_0, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_0, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_0, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_0, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.1:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_1, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_1, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_1, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_1, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.2:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_2, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_2, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_2, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_2, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.3:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_3, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_3, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_3, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_3, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.4:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_4, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_4, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_4, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_4, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.5:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_5, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_5, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_5, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_5, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.6:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_6, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_6, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_6, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_6, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.7:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_7, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_7, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_7, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_7, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.8:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_8, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_8, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_8, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_8, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.9:                        ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_9, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_9, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_9, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_9, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.10:                       ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_10, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_10, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_10, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_10, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.11:                       ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_11, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_11, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_11, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_11, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.12:                       ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_12, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_12, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_12, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_12, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.13:                       ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_13, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_13, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_13, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_13, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.14:                       ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_14, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_14, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_14, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_14, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.15:                       ; preds = %for.loop
  store i32 %2, i32* %dst.addr.0.0.0.08_15, align 512
  store i16 %4, i16* %dst.addr.1.0.0.016_15, align 512
  store i16 %5, i16* %dst.addr.2.0.0.024_15, align 512
  store i1 %8, i1* %dst.addr.3.0.0.032_15, align 512
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.exit:                          ; preds = %dst.addr.3.0.0.032.case.15, %dst.addr.3.0.0.032.case.14, %dst.addr.3.0.0.032.case.13, %dst.addr.3.0.0.032.case.12, %dst.addr.3.0.0.032.case.11, %dst.addr.3.0.0.032.case.10, %dst.addr.3.0.0.032.case.9, %dst.addr.3.0.0.032.case.8, %dst.addr.3.0.0.032.case.7, %dst.addr.3.0.0.032.case.6, %dst.addr.3.0.0.032.case.5, %dst.addr.3.0.0.032.case.4, %dst.addr.3.0.0.032.case.3, %dst.addr.3.0.0.032.case.2, %dst.addr.3.0.0.032.case.1, %dst.addr.3.0.0.032.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.3.0.0.032.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* "orig.arg.no"="0", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* "orig.arg.no"="2", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* "orig.arg.no"="4", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.2" %_V_strb_V37, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.4" %_V_last_V48, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* "orig.arg.no"="6", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.2" %_V_strb_V4, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.4" %_V_last_V6, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.5" %_V_dest_V7, %"struct.ap_uint<32>"* readonly "orig.arg.no"="8", i32* noalias align 512 "orig.arg.no"="9", [16 x %struct.socket_table]* readonly "orig.arg.no"="10", %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_0, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_1, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_2, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_3, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_4, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_5, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_6, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_7, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_8, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_9, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_10, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_11, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_12, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_13, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_14, %"struct.ap_uint<32>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_15, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_0, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_1, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_2, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_3, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_4, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_5, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_6, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_7, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_8, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_9, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_10, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_11, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_12, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_13, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_14, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_15, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_0, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_1, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_2, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_3, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_4, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_5, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_6, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_7, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_8, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_9, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_10, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_11, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_12, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_13, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_14, %"struct.ap_uint<16>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_15, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_0, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_1, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_2, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_3, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_4, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_5, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_6, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_7, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_8, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_9, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_10, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_11, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_12, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_13, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_14, %"struct.ap_uint<1>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_15, %"struct.ap_uint<16>"* readonly "orig.arg.no"="15", %"struct.ap_uint<16>"* noalias align 512 "orig.arg.no"="16") #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.517"(i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.517"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* align 512 %5, %"struct.ap_uint<32>"* %4)
  call void @onebyonecpy_hls.p0a16struct.socket_table(%"struct.ap_uint<32>"* align 512 %.0_0, %"struct.ap_uint<32>"* align 512 %.0_1, %"struct.ap_uint<32>"* align 512 %.0_2, %"struct.ap_uint<32>"* align 512 %.0_3, %"struct.ap_uint<32>"* align 512 %.0_4, %"struct.ap_uint<32>"* align 512 %.0_5, %"struct.ap_uint<32>"* align 512 %.0_6, %"struct.ap_uint<32>"* align 512 %.0_7, %"struct.ap_uint<32>"* align 512 %.0_8, %"struct.ap_uint<32>"* align 512 %.0_9, %"struct.ap_uint<32>"* align 512 %.0_10, %"struct.ap_uint<32>"* align 512 %.0_11, %"struct.ap_uint<32>"* align 512 %.0_12, %"struct.ap_uint<32>"* align 512 %.0_13, %"struct.ap_uint<32>"* align 512 %.0_14, %"struct.ap_uint<32>"* align 512 %.0_15, %"struct.ap_uint<16>"* align 512 %.1_0, %"struct.ap_uint<16>"* align 512 %.1_1, %"struct.ap_uint<16>"* align 512 %.1_2, %"struct.ap_uint<16>"* align 512 %.1_3, %"struct.ap_uint<16>"* align 512 %.1_4, %"struct.ap_uint<16>"* align 512 %.1_5, %"struct.ap_uint<16>"* align 512 %.1_6, %"struct.ap_uint<16>"* align 512 %.1_7, %"struct.ap_uint<16>"* align 512 %.1_8, %"struct.ap_uint<16>"* align 512 %.1_9, %"struct.ap_uint<16>"* align 512 %.1_10, %"struct.ap_uint<16>"* align 512 %.1_11, %"struct.ap_uint<16>"* align 512 %.1_12, %"struct.ap_uint<16>"* align 512 %.1_13, %"struct.ap_uint<16>"* align 512 %.1_14, %"struct.ap_uint<16>"* align 512 %.1_15, %"struct.ap_uint<16>"* align 512 %.2_0, %"struct.ap_uint<16>"* align 512 %.2_1, %"struct.ap_uint<16>"* align 512 %.2_2, %"struct.ap_uint<16>"* align 512 %.2_3, %"struct.ap_uint<16>"* align 512 %.2_4, %"struct.ap_uint<16>"* align 512 %.2_5, %"struct.ap_uint<16>"* align 512 %.2_6, %"struct.ap_uint<16>"* align 512 %.2_7, %"struct.ap_uint<16>"* align 512 %.2_8, %"struct.ap_uint<16>"* align 512 %.2_9, %"struct.ap_uint<16>"* align 512 %.2_10, %"struct.ap_uint<16>"* align 512 %.2_11, %"struct.ap_uint<16>"* align 512 %.2_12, %"struct.ap_uint<16>"* align 512 %.2_13, %"struct.ap_uint<16>"* align 512 %.2_14, %"struct.ap_uint<16>"* align 512 %.2_15, %"struct.ap_uint<1>"* align 512 %.3_0, %"struct.ap_uint<1>"* align 512 %.3_1, %"struct.ap_uint<1>"* align 512 %.3_2, %"struct.ap_uint<1>"* align 512 %.3_3, %"struct.ap_uint<1>"* align 512 %.3_4, %"struct.ap_uint<1>"* align 512 %.3_5, %"struct.ap_uint<1>"* align 512 %.3_6, %"struct.ap_uint<1>"* align 512 %.3_7, %"struct.ap_uint<1>"* align 512 %.3_8, %"struct.ap_uint<1>"* align 512 %.3_9, %"struct.ap_uint<1>"* align 512 %.3_10, %"struct.ap_uint<1>"* align 512 %.3_11, %"struct.ap_uint<1>"* align 512 %.3_12, %"struct.ap_uint<1>"* align 512 %.3_13, %"struct.ap_uint<1>"* align 512 %.3_14, %"struct.ap_uint<1>"* align 512 %.3_15, [16 x %struct.socket_table]* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* align 512 %8, %"struct.ap_uint<16>"* %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16struct.socket_table.464([16 x %struct.socket_table]* noalias "orig.arg.no"="0", %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_0, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_1, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_2, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_3, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_4, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_5, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_6, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_7, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_8, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_9, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_10, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_11, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_12, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_13, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_14, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_15, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_0, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_1, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_2, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_3, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_4, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_5, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_6, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_7, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_8, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_9, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_10, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_11, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_12, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_13, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_14, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_15, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_0, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_1, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_2, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_3, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_4, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_5, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_6, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_7, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_8, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_9, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_10, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_11, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_12, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_13, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_14, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_15, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_0, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_1, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_2, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_3, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_4, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_5, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_6, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_7, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_8, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_9, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_10, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_11, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_12, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_13, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_14, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_15) #1 {
entry:
  %1 = icmp eq [16 x %struct.socket_table]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.addr.0.0.0.07_0 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_0, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_1 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_1, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_2 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_2, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_3 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_3, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_4 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_4, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_5 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_5, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_6 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_6, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_7 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_7, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_8 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_8, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_9 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_9, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_10 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_10, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_11 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_11, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_12 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_12, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_13 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_13, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_14 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_14, i64 0, i32 0, i32 0, i32 0
  %src.addr.0.0.0.07_15 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %.0_15, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_0 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_0, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_1 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_1, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_2 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_2, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_3 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_3, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_4 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_4, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_5 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_5, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_6 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_6, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_7 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_7, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_8 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_8, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_9 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_9, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_10 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_10, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_11 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_11, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_12 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_12, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_13 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_13, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_14 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_14, i64 0, i32 0, i32 0, i32 0
  %src.addr.1.0.0.015_15 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.1_15, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_0 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_0, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_1 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_1, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_2 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_2, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_3 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_3, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_4 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_4, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_5 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_5, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_6 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_6, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_7 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_7, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_8 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_8, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_9 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_9, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_10 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_10, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_11 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_11, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_12 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_12, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_13 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_13, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_14 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_14, i64 0, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023_15 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %.2_15, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_0 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_0, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_1 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_1, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_2 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_2, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_3 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_3, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_4 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_4, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_5 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_5, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_6 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_6, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_7 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_7, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_8 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_8, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_9 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_9, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_10 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_10, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_11 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_11, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_12 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_12, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_13 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_13, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_14 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_14, i64 0, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031_15 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %.3_15, i64 0, i32 0, i32 0, i32 0
  br label %for.loop

for.loop:                                         ; preds = %src.addr.3.0.0.031.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.3.0.0.031.exit ]
  %dst.addr.0.0.0.08 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0, i32 0
  %2 = trunc i64 %for.loop.idx1 to i4
  %dst.addr.1.0.0.0165 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 1, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.02450 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 2, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.03295 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx1, i32 3, i32 0, i32 0, i32 0
  switch i4 %2, label %src.addr.3.0.0.031.case.15 [
    i4 0, label %src.addr.3.0.0.031.case.0
    i4 1, label %src.addr.3.0.0.031.case.1
    i4 2, label %src.addr.3.0.0.031.case.2
    i4 3, label %src.addr.3.0.0.031.case.3
    i4 4, label %src.addr.3.0.0.031.case.4
    i4 5, label %src.addr.3.0.0.031.case.5
    i4 6, label %src.addr.3.0.0.031.case.6
    i4 7, label %src.addr.3.0.0.031.case.7
    i4 -8, label %src.addr.3.0.0.031.case.8
    i4 -7, label %src.addr.3.0.0.031.case.9
    i4 -6, label %src.addr.3.0.0.031.case.10
    i4 -5, label %src.addr.3.0.0.031.case.11
    i4 -4, label %src.addr.3.0.0.031.case.12
    i4 -3, label %src.addr.3.0.0.031.case.13
    i4 -2, label %src.addr.3.0.0.031.case.14
  ]

src.addr.3.0.0.031.case.0:                        ; preds = %for.loop
  %_0 = load i32, i32* %src.addr.0.0.0.07_0, align 512
  store i32 %_0, i32* %dst.addr.0.0.0.08, align 4
  %_01 = load i16, i16* %src.addr.1.0.0.015_0, align 512
  store i16 %_01, i16* %dst.addr.1.0.0.0165, align 2
  %_021 = load i16, i16* %src.addr.2.0.0.023_0, align 512
  store i16 %_021, i16* %dst.addr.2.0.0.02450, align 2
  %3 = bitcast i1* %src.addr.3.0.0.031_0 to i8*
  %4 = load i8, i8* %3
  %5 = trunc i8 %4 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.1:                        ; preds = %for.loop
  %_1 = load i32, i32* %src.addr.0.0.0.07_1, align 512
  store i32 %_1, i32* %dst.addr.0.0.0.08, align 4
  %_16 = load i16, i16* %src.addr.1.0.0.015_1, align 512
  store i16 %_16, i16* %dst.addr.1.0.0.0165, align 2
  %_122 = load i16, i16* %src.addr.2.0.0.023_1, align 512
  store i16 %_122, i16* %dst.addr.2.0.0.02450, align 2
  %6 = bitcast i1* %src.addr.3.0.0.031_1 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.2:                        ; preds = %for.loop
  %_2 = load i32, i32* %src.addr.0.0.0.07_2, align 512
  store i32 %_2, i32* %dst.addr.0.0.0.08, align 4
  %_27 = load i16, i16* %src.addr.1.0.0.015_2, align 512
  store i16 %_27, i16* %dst.addr.1.0.0.0165, align 2
  %_223 = load i16, i16* %src.addr.2.0.0.023_2, align 512
  store i16 %_223, i16* %dst.addr.2.0.0.02450, align 2
  %9 = bitcast i1* %src.addr.3.0.0.031_2 to i8*
  %10 = load i8, i8* %9
  %11 = trunc i8 %10 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.3:                        ; preds = %for.loop
  %_3 = load i32, i32* %src.addr.0.0.0.07_3, align 512
  store i32 %_3, i32* %dst.addr.0.0.0.08, align 4
  %_38 = load i16, i16* %src.addr.1.0.0.015_3, align 512
  store i16 %_38, i16* %dst.addr.1.0.0.0165, align 2
  %_324 = load i16, i16* %src.addr.2.0.0.023_3, align 512
  store i16 %_324, i16* %dst.addr.2.0.0.02450, align 2
  %12 = bitcast i1* %src.addr.3.0.0.031_3 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.4:                        ; preds = %for.loop
  %_4 = load i32, i32* %src.addr.0.0.0.07_4, align 512
  store i32 %_4, i32* %dst.addr.0.0.0.08, align 4
  %_49 = load i16, i16* %src.addr.1.0.0.015_4, align 512
  store i16 %_49, i16* %dst.addr.1.0.0.0165, align 2
  %_425 = load i16, i16* %src.addr.2.0.0.023_4, align 512
  store i16 %_425, i16* %dst.addr.2.0.0.02450, align 2
  %15 = bitcast i1* %src.addr.3.0.0.031_4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.5:                        ; preds = %for.loop
  %_5 = load i32, i32* %src.addr.0.0.0.07_5, align 512
  store i32 %_5, i32* %dst.addr.0.0.0.08, align 4
  %_510 = load i16, i16* %src.addr.1.0.0.015_5, align 512
  store i16 %_510, i16* %dst.addr.1.0.0.0165, align 2
  %_526 = load i16, i16* %src.addr.2.0.0.023_5, align 512
  store i16 %_526, i16* %dst.addr.2.0.0.02450, align 2
  %18 = bitcast i1* %src.addr.3.0.0.031_5 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.6:                        ; preds = %for.loop
  %_6 = load i32, i32* %src.addr.0.0.0.07_6, align 512
  store i32 %_6, i32* %dst.addr.0.0.0.08, align 4
  %_611 = load i16, i16* %src.addr.1.0.0.015_6, align 512
  store i16 %_611, i16* %dst.addr.1.0.0.0165, align 2
  %_627 = load i16, i16* %src.addr.2.0.0.023_6, align 512
  store i16 %_627, i16* %dst.addr.2.0.0.02450, align 2
  %21 = bitcast i1* %src.addr.3.0.0.031_6 to i8*
  %22 = load i8, i8* %21
  %23 = trunc i8 %22 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.7:                        ; preds = %for.loop
  %_7 = load i32, i32* %src.addr.0.0.0.07_7, align 512
  store i32 %_7, i32* %dst.addr.0.0.0.08, align 4
  %_712 = load i16, i16* %src.addr.1.0.0.015_7, align 512
  store i16 %_712, i16* %dst.addr.1.0.0.0165, align 2
  %_728 = load i16, i16* %src.addr.2.0.0.023_7, align 512
  store i16 %_728, i16* %dst.addr.2.0.0.02450, align 2
  %24 = bitcast i1* %src.addr.3.0.0.031_7 to i8*
  %25 = load i8, i8* %24
  %26 = trunc i8 %25 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.8:                        ; preds = %for.loop
  %_8 = load i32, i32* %src.addr.0.0.0.07_8, align 512
  store i32 %_8, i32* %dst.addr.0.0.0.08, align 4
  %_813 = load i16, i16* %src.addr.1.0.0.015_8, align 512
  store i16 %_813, i16* %dst.addr.1.0.0.0165, align 2
  %_829 = load i16, i16* %src.addr.2.0.0.023_8, align 512
  store i16 %_829, i16* %dst.addr.2.0.0.02450, align 2
  %27 = bitcast i1* %src.addr.3.0.0.031_8 to i8*
  %28 = load i8, i8* %27
  %29 = trunc i8 %28 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.9:                        ; preds = %for.loop
  %_9 = load i32, i32* %src.addr.0.0.0.07_9, align 512
  store i32 %_9, i32* %dst.addr.0.0.0.08, align 4
  %_914 = load i16, i16* %src.addr.1.0.0.015_9, align 512
  store i16 %_914, i16* %dst.addr.1.0.0.0165, align 2
  %_930 = load i16, i16* %src.addr.2.0.0.023_9, align 512
  store i16 %_930, i16* %dst.addr.2.0.0.02450, align 2
  %30 = bitcast i1* %src.addr.3.0.0.031_9 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.10:                       ; preds = %for.loop
  %_10 = load i32, i32* %src.addr.0.0.0.07_10, align 512
  store i32 %_10, i32* %dst.addr.0.0.0.08, align 4
  %_1015 = load i16, i16* %src.addr.1.0.0.015_10, align 512
  store i16 %_1015, i16* %dst.addr.1.0.0.0165, align 2
  %_1031 = load i16, i16* %src.addr.2.0.0.023_10, align 512
  store i16 %_1031, i16* %dst.addr.2.0.0.02450, align 2
  %33 = bitcast i1* %src.addr.3.0.0.031_10 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.11:                       ; preds = %for.loop
  %_11 = load i32, i32* %src.addr.0.0.0.07_11, align 512
  store i32 %_11, i32* %dst.addr.0.0.0.08, align 4
  %_1116 = load i16, i16* %src.addr.1.0.0.015_11, align 512
  store i16 %_1116, i16* %dst.addr.1.0.0.0165, align 2
  %_1132 = load i16, i16* %src.addr.2.0.0.023_11, align 512
  store i16 %_1132, i16* %dst.addr.2.0.0.02450, align 2
  %36 = bitcast i1* %src.addr.3.0.0.031_11 to i8*
  %37 = load i8, i8* %36
  %38 = trunc i8 %37 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.12:                       ; preds = %for.loop
  %_12 = load i32, i32* %src.addr.0.0.0.07_12, align 512
  store i32 %_12, i32* %dst.addr.0.0.0.08, align 4
  %_1217 = load i16, i16* %src.addr.1.0.0.015_12, align 512
  store i16 %_1217, i16* %dst.addr.1.0.0.0165, align 2
  %_1233 = load i16, i16* %src.addr.2.0.0.023_12, align 512
  store i16 %_1233, i16* %dst.addr.2.0.0.02450, align 2
  %39 = bitcast i1* %src.addr.3.0.0.031_12 to i8*
  %40 = load i8, i8* %39
  %41 = trunc i8 %40 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.13:                       ; preds = %for.loop
  %_13 = load i32, i32* %src.addr.0.0.0.07_13, align 512
  store i32 %_13, i32* %dst.addr.0.0.0.08, align 4
  %_1318 = load i16, i16* %src.addr.1.0.0.015_13, align 512
  store i16 %_1318, i16* %dst.addr.1.0.0.0165, align 2
  %_1334 = load i16, i16* %src.addr.2.0.0.023_13, align 512
  store i16 %_1334, i16* %dst.addr.2.0.0.02450, align 2
  %42 = bitcast i1* %src.addr.3.0.0.031_13 to i8*
  %43 = load i8, i8* %42
  %44 = trunc i8 %43 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.14:                       ; preds = %for.loop
  %_14 = load i32, i32* %src.addr.0.0.0.07_14, align 512
  store i32 %_14, i32* %dst.addr.0.0.0.08, align 4
  %_1419 = load i16, i16* %src.addr.1.0.0.015_14, align 512
  store i16 %_1419, i16* %dst.addr.1.0.0.0165, align 2
  %_1435 = load i16, i16* %src.addr.2.0.0.023_14, align 512
  store i16 %_1435, i16* %dst.addr.2.0.0.02450, align 2
  %45 = bitcast i1* %src.addr.3.0.0.031_14 to i8*
  %46 = load i8, i8* %45
  %47 = trunc i8 %46 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.15:                       ; preds = %for.loop
  %_15 = load i32, i32* %src.addr.0.0.0.07_15, align 512
  store i32 %_15, i32* %dst.addr.0.0.0.08, align 4
  %_1520 = load i16, i16* %src.addr.1.0.0.015_15, align 512
  store i16 %_1520, i16* %dst.addr.1.0.0.0165, align 2
  %_1536 = load i16, i16* %src.addr.2.0.0.023_15, align 512
  store i16 %_1536, i16* %dst.addr.2.0.0.02450, align 2
  %48 = bitcast i1* %src.addr.3.0.0.031_15 to i8*
  %49 = load i8, i8* %48
  %50 = trunc i8 %49 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.exit:                          ; preds = %src.addr.3.0.0.031.case.15, %src.addr.3.0.0.031.case.14, %src.addr.3.0.0.031.case.13, %src.addr.3.0.0.031.case.12, %src.addr.3.0.0.031.case.11, %src.addr.3.0.0.031.case.10, %src.addr.3.0.0.031.case.9, %src.addr.3.0.0.031.case.8, %src.addr.3.0.0.031.case.7, %src.addr.3.0.0.031.case.6, %src.addr.3.0.0.031.case.5, %src.addr.3.0.0.031.case.4, %src.addr.3.0.0.031.case.3, %src.addr.3.0.0.031.case.2, %src.addr.3.0.0.031.case.1, %src.addr.3.0.0.031.case.0
  %51 = phi i1 [ %5, %src.addr.3.0.0.031.case.0 ], [ %8, %src.addr.3.0.0.031.case.1 ], [ %11, %src.addr.3.0.0.031.case.2 ], [ %14, %src.addr.3.0.0.031.case.3 ], [ %17, %src.addr.3.0.0.031.case.4 ], [ %20, %src.addr.3.0.0.031.case.5 ], [ %23, %src.addr.3.0.0.031.case.6 ], [ %26, %src.addr.3.0.0.031.case.7 ], [ %29, %src.addr.3.0.0.031.case.8 ], [ %32, %src.addr.3.0.0.031.case.9 ], [ %35, %src.addr.3.0.0.031.case.10 ], [ %38, %src.addr.3.0.0.031.case.11 ], [ %41, %src.addr.3.0.0.031.case.12 ], [ %44, %src.addr.3.0.0.031.case.13 ], [ %47, %src.addr.3.0.0.031.case.14 ], [ %50, %src.addr.3.0.0.031.case.15 ]
  store i1 %51, i1* %dst.addr.3.0.0.03295, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.3.0.0.031.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* "orig.arg.no"="0", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* "orig.arg.no"="2", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* "orig.arg.no"="4", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.2" %_V_strb_V37, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.4" %_V_last_V48, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* "orig.arg.no"="6", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.2" %_V_strb_V4, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.4" %_V_last_V6, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.5" %_V_dest_V7, %"struct.ap_uint<32>"* "orig.arg.no"="8", i32* noalias readonly align 512 "orig.arg.no"="9", [16 x %struct.socket_table]* "orig.arg.no"="10", %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_0, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_1, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_2, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_3, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_4, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_5, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_6, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_7, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_8, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_9, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_10, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_11, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_12, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_13, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_14, %"struct.ap_uint<32>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_15, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_0, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_1, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_2, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_3, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_4, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_5, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_6, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_7, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_8, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_9, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_10, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_11, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_12, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_13, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_14, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_15, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_0, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_1, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_2, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_3, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_4, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_5, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_6, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_7, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_8, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_9, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_10, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_11, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_12, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_13, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_14, %"struct.ap_uint<16>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_15, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_0, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_1, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_2, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_3, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_4, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_5, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_6, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_7, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_8, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_9, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_10, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_11, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_12, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_13, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_14, %"struct.ap_uint<1>"* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_15, %"struct.ap_uint<16>"* "orig.arg.no"="15", %"struct.ap_uint<16>"* noalias readonly align 512 "orig.arg.no"="16") #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.501"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.501"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %3, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.484"(%"struct.ap_uint<32>"* %4, i32* align 512 %5)
  call void @onebyonecpy_hls.p0a16struct.socket_table.464([16 x %struct.socket_table]* %6, %"struct.ap_uint<32>"* align 512 %.0_0, %"struct.ap_uint<32>"* align 512 %.0_1, %"struct.ap_uint<32>"* align 512 %.0_2, %"struct.ap_uint<32>"* align 512 %.0_3, %"struct.ap_uint<32>"* align 512 %.0_4, %"struct.ap_uint<32>"* align 512 %.0_5, %"struct.ap_uint<32>"* align 512 %.0_6, %"struct.ap_uint<32>"* align 512 %.0_7, %"struct.ap_uint<32>"* align 512 %.0_8, %"struct.ap_uint<32>"* align 512 %.0_9, %"struct.ap_uint<32>"* align 512 %.0_10, %"struct.ap_uint<32>"* align 512 %.0_11, %"struct.ap_uint<32>"* align 512 %.0_12, %"struct.ap_uint<32>"* align 512 %.0_13, %"struct.ap_uint<32>"* align 512 %.0_14, %"struct.ap_uint<32>"* align 512 %.0_15, %"struct.ap_uint<16>"* align 512 %.1_0, %"struct.ap_uint<16>"* align 512 %.1_1, %"struct.ap_uint<16>"* align 512 %.1_2, %"struct.ap_uint<16>"* align 512 %.1_3, %"struct.ap_uint<16>"* align 512 %.1_4, %"struct.ap_uint<16>"* align 512 %.1_5, %"struct.ap_uint<16>"* align 512 %.1_6, %"struct.ap_uint<16>"* align 512 %.1_7, %"struct.ap_uint<16>"* align 512 %.1_8, %"struct.ap_uint<16>"* align 512 %.1_9, %"struct.ap_uint<16>"* align 512 %.1_10, %"struct.ap_uint<16>"* align 512 %.1_11, %"struct.ap_uint<16>"* align 512 %.1_12, %"struct.ap_uint<16>"* align 512 %.1_13, %"struct.ap_uint<16>"* align 512 %.1_14, %"struct.ap_uint<16>"* align 512 %.1_15, %"struct.ap_uint<16>"* align 512 %.2_0, %"struct.ap_uint<16>"* align 512 %.2_1, %"struct.ap_uint<16>"* align 512 %.2_2, %"struct.ap_uint<16>"* align 512 %.2_3, %"struct.ap_uint<16>"* align 512 %.2_4, %"struct.ap_uint<16>"* align 512 %.2_5, %"struct.ap_uint<16>"* align 512 %.2_6, %"struct.ap_uint<16>"* align 512 %.2_7, %"struct.ap_uint<16>"* align 512 %.2_8, %"struct.ap_uint<16>"* align 512 %.2_9, %"struct.ap_uint<16>"* align 512 %.2_10, %"struct.ap_uint<16>"* align 512 %.2_11, %"struct.ap_uint<16>"* align 512 %.2_12, %"struct.ap_uint<16>"* align 512 %.2_13, %"struct.ap_uint<16>"* align 512 %.2_14, %"struct.ap_uint<16>"* align 512 %.2_15, %"struct.ap_uint<1>"* align 512 %.3_0, %"struct.ap_uint<1>"* align 512 %.3_1, %"struct.ap_uint<1>"* align 512 %.3_2, %"struct.ap_uint<1>"* align 512 %.3_3, %"struct.ap_uint<1>"* align 512 %.3_4, %"struct.ap_uint<1>"* align 512 %.3_5, %"struct.ap_uint<1>"* align 512 %.3_6, %"struct.ap_uint<1>"* align 512 %.3_7, %"struct.ap_uint<1>"* align 512 %.3_8, %"struct.ap_uint<1>"* align 512 %.3_9, %"struct.ap_uint<1>"* align 512 %.3_10, %"struct.ap_uint<1>"* align 512 %.3_11, %"struct.ap_uint<1>"* align 512 %.3_12, %"struct.ap_uint<1>"* align 512 %.3_13, %"struct.ap_uint<1>"* align 512 %.3_14, %"struct.ap_uint<1>"* align 512 %.3_15)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %7, %"struct.ap_uint<16>"* align 512 %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.484"(%"struct.ap_uint<32>"* noalias, i32* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq %"struct.ap_uint<32>"* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i32, i32* %1, align 512
  store i32 %5, i32* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.495"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.495"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<512>"* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<64>"* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.501"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.504"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.504"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i512* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i512* %2 to i8*
  %9 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile i512, i512* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<512>"* %11 to i512*
  store i512 %10, i512* %12
  %13 = bitcast i64* %4 to i8*
  %14 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i64, i64* %4
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  store i64 %15, i64* %17
  %18 = bitcast i64* %3 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i64, i64* %3
  %21 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %"struct.ap_uint<64>"* %21 to i64*
  store i64 %20, i64* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %"struct.ap_uint<1>"* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1 to i8*
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i96* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.511"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i96* %_V_user_V, i1* %_V_last_V, i16* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.511"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i96* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_dest_V) unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i96
  %7 = alloca i16
  br label %empty

empty:                                            ; preds = %push, %entry
  %8 = bitcast i512* %_V_data_V to i8*
  %9 = call i1 @fpga_fifo_not_empty_64(i8* %8)
  br i1 %9, label %push, label %ret

push:                                             ; preds = %empty
  %10 = bitcast i512* %2 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %10, i8* %11)
  %12 = load volatile i512, i512* %2
  %13 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 0
  %14 = bitcast %"struct.ap_uint<512>"* %13 to i512*
  store i512 %12, i512* %14
  %15 = bitcast i64* %4 to i8*
  %16 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %15, i8* %16)
  %17 = load volatile i64, i64* %4
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<64>"* %18 to i64*
  store i64 %17, i64* %19
  %20 = bitcast i64* %3 to i8*
  %21 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %20, i8* %21)
  %22 = load volatile i64, i64* %3
  %23 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 2
  %24 = bitcast %"struct.ap_uint<64>"* %23 to i64*
  store i64 %22, i64* %24
  %25 = bitcast i96* %6 to i8*
  %26 = bitcast i96* %_V_user_V to i8*
  call void @fpga_fifo_pop_16(i8* %25, i8* %26)
  %27 = load volatile i96, i96* %6
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 3
  %29 = bitcast %"struct.ap_uint<96>"* %28 to i96*
  store i96 %27, i96* %29
  %30 = bitcast i1* %5 to i8*
  %31 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i1* %5 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 4
  %36 = bitcast %"struct.ap_uint<1>"* %35 to i1*
  store i1 %34, i1* %36
  %37 = bitcast i16* %7 to i8*
  %38 = bitcast i16* %_V_dest_V to i8*
  call void @fpga_fifo_pop_2(i8* %37, i8* %38)
  %39 = load volatile i16, i16* %7
  %40 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 6
  %41 = bitcast %"struct.ap_uint<16>"* %40 to i16*
  store i16 %39, i16* %41
  %42 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1 to i8*
  %43 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %42, i8* %43)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.517"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i96* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.520"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i96* %_V_user_V, i1* %_V_last_V, i16* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.520"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i96* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<512>"* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<64>"* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<64>"* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %"struct.ap_uint<96>"* %20 to i96*
  %22 = bitcast i96* %21 to i8*
  %23 = bitcast i96* %_V_user_V to i8*
  call void @fpga_fifo_push_16(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %"struct.ap_uint<1>"* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 6
  %29 = bitcast %"struct.ap_uint<16>"* %28 to i16*
  %30 = bitcast i16* %29 to i8*
  %31 = bitcast i16* %_V_dest_V to i8*
  call void @fpga_fifo_push_2(i8* %30, i8* %31)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_udp_hw(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i96*, i1*, i16*, i512*, i64*, i64*, i96*, i1*, i16*, i32*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<16>"*)

define void @udp_hw_stub_wrapper(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i96*, i1*, i16*, i512*, i64*, i64*, i96*, i1*, i16*, i32*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<16>"*) #6 {
entry:
  %86 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %87 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %88 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %89 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %90 = alloca %"struct.ap_uint<32>"
  %91 = alloca [16 x %struct.socket_table]
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %86, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %87, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %88, i512* %8, i64* %9, i64* %10, i96* %11, i1* %12, i16* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %89, i512* %14, i64* %15, i64* %16, i96* %17, i1* %18, i16* %19, %"struct.ap_uint<32>"* %90, i32* %20, [16 x %struct.socket_table]* %91, %"struct.ap_uint<32>"* %21, %"struct.ap_uint<32>"* %22, %"struct.ap_uint<32>"* %23, %"struct.ap_uint<32>"* %24, %"struct.ap_uint<32>"* %25, %"struct.ap_uint<32>"* %26, %"struct.ap_uint<32>"* %27, %"struct.ap_uint<32>"* %28, %"struct.ap_uint<32>"* %29, %"struct.ap_uint<32>"* %30, %"struct.ap_uint<32>"* %31, %"struct.ap_uint<32>"* %32, %"struct.ap_uint<32>"* %33, %"struct.ap_uint<32>"* %34, %"struct.ap_uint<32>"* %35, %"struct.ap_uint<32>"* %36, %"struct.ap_uint<16>"* %37, %"struct.ap_uint<16>"* %38, %"struct.ap_uint<16>"* %39, %"struct.ap_uint<16>"* %40, %"struct.ap_uint<16>"* %41, %"struct.ap_uint<16>"* %42, %"struct.ap_uint<16>"* %43, %"struct.ap_uint<16>"* %44, %"struct.ap_uint<16>"* %45, %"struct.ap_uint<16>"* %46, %"struct.ap_uint<16>"* %47, %"struct.ap_uint<16>"* %48, %"struct.ap_uint<16>"* %49, %"struct.ap_uint<16>"* %50, %"struct.ap_uint<16>"* %51, %"struct.ap_uint<16>"* %52, %"struct.ap_uint<16>"* %53, %"struct.ap_uint<16>"* %54, %"struct.ap_uint<16>"* %55, %"struct.ap_uint<16>"* %56, %"struct.ap_uint<16>"* %57, %"struct.ap_uint<16>"* %58, %"struct.ap_uint<16>"* %59, %"struct.ap_uint<16>"* %60, %"struct.ap_uint<16>"* %61, %"struct.ap_uint<16>"* %62, %"struct.ap_uint<16>"* %63, %"struct.ap_uint<16>"* %64, %"struct.ap_uint<16>"* %65, %"struct.ap_uint<16>"* %66, %"struct.ap_uint<16>"* %67, %"struct.ap_uint<16>"* %68, %"struct.ap_uint<1>"* %69, %"struct.ap_uint<1>"* %70, %"struct.ap_uint<1>"* %71, %"struct.ap_uint<1>"* %72, %"struct.ap_uint<1>"* %73, %"struct.ap_uint<1>"* %74, %"struct.ap_uint<1>"* %75, %"struct.ap_uint<1>"* %76, %"struct.ap_uint<1>"* %77, %"struct.ap_uint<1>"* %78, %"struct.ap_uint<1>"* %79, %"struct.ap_uint<1>"* %80, %"struct.ap_uint<1>"* %81, %"struct.ap_uint<1>"* %82, %"struct.ap_uint<1>"* %83, %"struct.ap_uint<1>"* %84, %"struct.ap_uint<16>"* null, %"struct.ap_uint<16>"* %85)
  %92 = bitcast [16 x %struct.socket_table]* %91 to %struct.socket_table*
  call void @udp_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %86, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %87, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %88, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %89, %"struct.ap_uint<32>"* %90, %struct.socket_table* %92, %"struct.ap_uint<16>"* %85)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %86, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %87, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %88, i512* %8, i64* %9, i64* %10, i96* %11, i1* %12, i16* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %89, i512* %14, i64* %15, i64* %16, i96* %17, i1* %18, i16* %19, %"struct.ap_uint<32>"* %90, i32* %20, [16 x %struct.socket_table]* %91, %"struct.ap_uint<32>"* %21, %"struct.ap_uint<32>"* %22, %"struct.ap_uint<32>"* %23, %"struct.ap_uint<32>"* %24, %"struct.ap_uint<32>"* %25, %"struct.ap_uint<32>"* %26, %"struct.ap_uint<32>"* %27, %"struct.ap_uint<32>"* %28, %"struct.ap_uint<32>"* %29, %"struct.ap_uint<32>"* %30, %"struct.ap_uint<32>"* %31, %"struct.ap_uint<32>"* %32, %"struct.ap_uint<32>"* %33, %"struct.ap_uint<32>"* %34, %"struct.ap_uint<32>"* %35, %"struct.ap_uint<32>"* %36, %"struct.ap_uint<16>"* %37, %"struct.ap_uint<16>"* %38, %"struct.ap_uint<16>"* %39, %"struct.ap_uint<16>"* %40, %"struct.ap_uint<16>"* %41, %"struct.ap_uint<16>"* %42, %"struct.ap_uint<16>"* %43, %"struct.ap_uint<16>"* %44, %"struct.ap_uint<16>"* %45, %"struct.ap_uint<16>"* %46, %"struct.ap_uint<16>"* %47, %"struct.ap_uint<16>"* %48, %"struct.ap_uint<16>"* %49, %"struct.ap_uint<16>"* %50, %"struct.ap_uint<16>"* %51, %"struct.ap_uint<16>"* %52, %"struct.ap_uint<16>"* %53, %"struct.ap_uint<16>"* %54, %"struct.ap_uint<16>"* %55, %"struct.ap_uint<16>"* %56, %"struct.ap_uint<16>"* %57, %"struct.ap_uint<16>"* %58, %"struct.ap_uint<16>"* %59, %"struct.ap_uint<16>"* %60, %"struct.ap_uint<16>"* %61, %"struct.ap_uint<16>"* %62, %"struct.ap_uint<16>"* %63, %"struct.ap_uint<16>"* %64, %"struct.ap_uint<16>"* %65, %"struct.ap_uint<16>"* %66, %"struct.ap_uint<16>"* %67, %"struct.ap_uint<16>"* %68, %"struct.ap_uint<1>"* %69, %"struct.ap_uint<1>"* %70, %"struct.ap_uint<1>"* %71, %"struct.ap_uint<1>"* %72, %"struct.ap_uint<1>"* %73, %"struct.ap_uint<1>"* %74, %"struct.ap_uint<1>"* %75, %"struct.ap_uint<1>"* %76, %"struct.ap_uint<1>"* %77, %"struct.ap_uint<1>"* %78, %"struct.ap_uint<1>"* %79, %"struct.ap_uint<1>"* %80, %"struct.ap_uint<1>"* %81, %"struct.ap_uint<1>"* %82, %"struct.ap_uint<1>"* %83, %"struct.ap_uint<1>"* %84, %"struct.ap_uint<16>"* null, %"struct.ap_uint<16>"* %85)
  ret void
}

declare void @udp_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"*, %"struct.ap_uint<32>"*, %struct.socket_table*, %"struct.ap_uint<16>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
