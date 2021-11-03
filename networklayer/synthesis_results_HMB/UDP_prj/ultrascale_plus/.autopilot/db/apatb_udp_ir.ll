; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/UDP_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint.15, %struct.ap_uint.9, %struct.ap_uint.9, %struct.ap_uint.18, %struct.ap_uint.18, %struct.ap_uint.18, %struct.ap_uint.18 }
%struct.ap_uint.15 = type { %struct.ap_int_base.16 }
%struct.ap_int_base.16 = type { %struct.ssdm_int.17 }
%struct.ssdm_int.17 = type { i512 }
%struct.ap_uint.9 = type { %struct.ap_int_base.10 }
%struct.ap_int_base.10 = type { %struct.ssdm_int.11 }
%struct.ssdm_int.11 = type { i64 }
%struct.ap_uint.18 = type { %struct.ap_int_base.19 }
%struct.ap_int_base.19 = type { %struct.ssdm_int.20 }
%struct.ssdm_int.20 = type { i1 }
%"class.hls::stream.26" = type { %"struct.hls::axis.27" }
%"struct.hls::axis.27" = type { %struct.ap_uint.15, %struct.ap_uint.9, %struct.ap_uint.9, %struct.ap_uint.28, %struct.ap_uint.18, %struct.ap_uint.18, %struct.ap_uint }
%struct.ap_uint.28 = type { %struct.ap_int_base.49 }
%struct.ap_int_base.49 = type { %struct.ssdm_int.50 }
%struct.ssdm_int.50 = type { i96 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i16 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i32 }
%struct.socket_table = type { %struct.ap_uint.3, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint.18 }

; Function Attrs: noinline
define void @apatb_udp_ir(%"class.hls::stream"* %rxUdpDataIn, %"class.hls::stream"* %txUdpDataOut, %"class.hls::stream.26"* %DataOutApp, %"class.hls::stream.26"* %DataInApp, %struct.ap_uint.3* %myIpAddress, %struct.socket_table* %SocketTable, %struct.ap_uint* %numberSockets) local_unnamed_addr #0 {
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
  %myIpAddress_copy5 = alloca i32, align 512
  %SocketTable_copy.0_0 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_1 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_2 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_3 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_4 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_5 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_6 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_7 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_8 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_9 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_10 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_11 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_12 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_13 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_14 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.0_15 = alloca %struct.ap_uint.3, align 512
  %SocketTable_copy.1_0 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_1 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_2 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_3 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_4 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_5 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_6 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_7 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_8 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_9 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_10 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_11 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_12 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_13 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_14 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.1_15 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_0 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_1 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_2 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_3 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_4 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_5 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_6 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_7 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_8 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_9 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_10 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_11 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_12 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_13 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_14 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.2_15 = alloca %struct.ap_uint, align 512
  %SocketTable_copy.3_0 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_1 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_2 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_3 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_4 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_5 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_6 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_7 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_8 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_9 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_10 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_11 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_12 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_13 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_14 = alloca %struct.ap_uint.18, align 512
  %SocketTable_copy.3_15 = alloca %struct.ap_uint.18, align 512
  %numberSockets_copy6 = alloca %struct.ap_uint, align 512
  %0 = bitcast %struct.socket_table* %SocketTable to [16 x %struct.socket_table]*
  call void @copy_in(%"class.hls::stream"* %rxUdpDataIn, i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, %"class.hls::stream"* %txUdpDataOut, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, %"class.hls::stream.26"* %DataOutApp, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, %"class.hls::stream.26"* %DataInApp, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, %struct.ap_uint.3* %myIpAddress, i32* nonnull align 512 %myIpAddress_copy5, [16 x %struct.socket_table]* %0, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_0, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_1, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_2, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_3, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_4, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_5, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_6, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_7, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_8, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_9, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_10, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_11, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_12, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_13, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_14, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_15, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_0, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_1, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_2, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_3, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_4, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_5, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_6, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_7, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_8, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_9, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_10, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_11, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_12, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_13, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_14, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_15, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_0, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_1, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_2, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_3, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_4, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_5, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_6, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_7, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_8, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_9, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_10, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_11, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_12, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_13, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_14, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_15, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_0, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_1, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_2, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_3, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_4, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_5, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_6, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_7, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_8, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_9, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_10, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_11, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_12, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_13, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_14, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_15, %struct.ap_uint* %numberSockets, %struct.ap_uint* nonnull align 512 %numberSockets_copy6)
  call void @apatb_udp_hw(i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, i32* %myIpAddress_copy5, %struct.ap_uint.3* %SocketTable_copy.0_0, %struct.ap_uint.3* %SocketTable_copy.0_1, %struct.ap_uint.3* %SocketTable_copy.0_2, %struct.ap_uint.3* %SocketTable_copy.0_3, %struct.ap_uint.3* %SocketTable_copy.0_4, %struct.ap_uint.3* %SocketTable_copy.0_5, %struct.ap_uint.3* %SocketTable_copy.0_6, %struct.ap_uint.3* %SocketTable_copy.0_7, %struct.ap_uint.3* %SocketTable_copy.0_8, %struct.ap_uint.3* %SocketTable_copy.0_9, %struct.ap_uint.3* %SocketTable_copy.0_10, %struct.ap_uint.3* %SocketTable_copy.0_11, %struct.ap_uint.3* %SocketTable_copy.0_12, %struct.ap_uint.3* %SocketTable_copy.0_13, %struct.ap_uint.3* %SocketTable_copy.0_14, %struct.ap_uint.3* %SocketTable_copy.0_15, %struct.ap_uint* %SocketTable_copy.1_0, %struct.ap_uint* %SocketTable_copy.1_1, %struct.ap_uint* %SocketTable_copy.1_2, %struct.ap_uint* %SocketTable_copy.1_3, %struct.ap_uint* %SocketTable_copy.1_4, %struct.ap_uint* %SocketTable_copy.1_5, %struct.ap_uint* %SocketTable_copy.1_6, %struct.ap_uint* %SocketTable_copy.1_7, %struct.ap_uint* %SocketTable_copy.1_8, %struct.ap_uint* %SocketTable_copy.1_9, %struct.ap_uint* %SocketTable_copy.1_10, %struct.ap_uint* %SocketTable_copy.1_11, %struct.ap_uint* %SocketTable_copy.1_12, %struct.ap_uint* %SocketTable_copy.1_13, %struct.ap_uint* %SocketTable_copy.1_14, %struct.ap_uint* %SocketTable_copy.1_15, %struct.ap_uint* %SocketTable_copy.2_0, %struct.ap_uint* %SocketTable_copy.2_1, %struct.ap_uint* %SocketTable_copy.2_2, %struct.ap_uint* %SocketTable_copy.2_3, %struct.ap_uint* %SocketTable_copy.2_4, %struct.ap_uint* %SocketTable_copy.2_5, %struct.ap_uint* %SocketTable_copy.2_6, %struct.ap_uint* %SocketTable_copy.2_7, %struct.ap_uint* %SocketTable_copy.2_8, %struct.ap_uint* %SocketTable_copy.2_9, %struct.ap_uint* %SocketTable_copy.2_10, %struct.ap_uint* %SocketTable_copy.2_11, %struct.ap_uint* %SocketTable_copy.2_12, %struct.ap_uint* %SocketTable_copy.2_13, %struct.ap_uint* %SocketTable_copy.2_14, %struct.ap_uint* %SocketTable_copy.2_15, %struct.ap_uint.18* %SocketTable_copy.3_0, %struct.ap_uint.18* %SocketTable_copy.3_1, %struct.ap_uint.18* %SocketTable_copy.3_2, %struct.ap_uint.18* %SocketTable_copy.3_3, %struct.ap_uint.18* %SocketTable_copy.3_4, %struct.ap_uint.18* %SocketTable_copy.3_5, %struct.ap_uint.18* %SocketTable_copy.3_6, %struct.ap_uint.18* %SocketTable_copy.3_7, %struct.ap_uint.18* %SocketTable_copy.3_8, %struct.ap_uint.18* %SocketTable_copy.3_9, %struct.ap_uint.18* %SocketTable_copy.3_10, %struct.ap_uint.18* %SocketTable_copy.3_11, %struct.ap_uint.18* %SocketTable_copy.3_12, %struct.ap_uint.18* %SocketTable_copy.3_13, %struct.ap_uint.18* %SocketTable_copy.3_14, %struct.ap_uint.18* %SocketTable_copy.3_15, %struct.ap_uint* %numberSockets_copy6)
  call void @copy_out(%"class.hls::stream"* %rxUdpDataIn, i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, %"class.hls::stream"* %txUdpDataOut, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, %"class.hls::stream.26"* %DataOutApp, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, %"class.hls::stream.26"* %DataInApp, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, %struct.ap_uint.3* %myIpAddress, i32* nonnull align 512 %myIpAddress_copy5, [16 x %struct.socket_table]* %0, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_0, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_1, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_2, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_3, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_4, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_5, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_6, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_7, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_8, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_9, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_10, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_11, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_12, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_13, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_14, %struct.ap_uint.3* nonnull align 512 %SocketTable_copy.0_15, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_0, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_1, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_2, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_3, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_4, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_5, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_6, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_7, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_8, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_9, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_10, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_11, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_12, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_13, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_14, %struct.ap_uint* nonnull align 512 %SocketTable_copy.1_15, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_0, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_1, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_2, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_3, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_4, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_5, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_6, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_7, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_8, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_9, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_10, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_11, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_12, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_13, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_14, %struct.ap_uint* nonnull align 512 %SocketTable_copy.2_15, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_0, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_1, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_2, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_3, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_4, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_5, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_6, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_7, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_8, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_9, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_10, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_11, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_12, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_13, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_14, %struct.ap_uint.18* nonnull align 512 %SocketTable_copy.3_15, %struct.ap_uint* %numberSockets, %struct.ap_uint* nonnull align 512 %numberSockets_copy6)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.3(i32* noalias align 512, %struct.ap_uint.3* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %struct.ap_uint.3* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.3, %struct.ap_uint.3* %1, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias align 512, %struct.ap_uint* noalias readonly) unnamed_addr #1 {
entry:
  %2 = icmp eq %struct.ap_uint* %0, null
  %3 = icmp eq %struct.ap_uint* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.ap_uint* %0 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a16struct.socket_table(%struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_0, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_1, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_2, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_3, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_4, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_5, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_6, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_7, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_8, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_9, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_10, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_11, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_12, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_13, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_14, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %.0_15, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_0, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_1, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_2, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_3, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_4, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_5, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_6, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_7, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_8, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_9, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_10, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_11, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_12, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_13, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_14, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="0.1" %.1_15, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_0, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_1, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_2, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_3, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_4, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_5, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_6, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_7, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_8, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_9, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_10, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_11, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_12, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_13, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_14, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="0.2" %.2_15, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_0, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_1, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_2, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_3, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_4, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_5, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_6, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_7, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_8, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_9, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_10, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_11, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_12, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_13, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_14, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="0.3" %.3_15, [16 x %struct.socket_table]* noalias readonly "orig.arg.no"="4") #1 {
entry:
  %1 = icmp eq [16 x %struct.socket_table]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %_0 = bitcast %struct.ap_uint.3* %.0_0 to i8*
  %_1 = bitcast %struct.ap_uint.3* %.0_1 to i8*
  %_2 = bitcast %struct.ap_uint.3* %.0_2 to i8*
  %_3 = bitcast %struct.ap_uint.3* %.0_3 to i8*
  %_4 = bitcast %struct.ap_uint.3* %.0_4 to i8*
  %_5 = bitcast %struct.ap_uint.3* %.0_5 to i8*
  %_6 = bitcast %struct.ap_uint.3* %.0_6 to i8*
  %_7 = bitcast %struct.ap_uint.3* %.0_7 to i8*
  %_8 = bitcast %struct.ap_uint.3* %.0_8 to i8*
  %_9 = bitcast %struct.ap_uint.3* %.0_9 to i8*
  %_10 = bitcast %struct.ap_uint.3* %.0_10 to i8*
  %_11 = bitcast %struct.ap_uint.3* %.0_11 to i8*
  %_12 = bitcast %struct.ap_uint.3* %.0_12 to i8*
  %_13 = bitcast %struct.ap_uint.3* %.0_13 to i8*
  %_14 = bitcast %struct.ap_uint.3* %.0_14 to i8*
  %_15 = bitcast %struct.ap_uint.3* %.0_15 to i8*
  %_01 = bitcast %struct.ap_uint* %.1_0 to i8*
  %_16 = bitcast %struct.ap_uint* %.1_1 to i8*
  %_27 = bitcast %struct.ap_uint* %.1_2 to i8*
  %_38 = bitcast %struct.ap_uint* %.1_3 to i8*
  %_49 = bitcast %struct.ap_uint* %.1_4 to i8*
  %_510 = bitcast %struct.ap_uint* %.1_5 to i8*
  %_611 = bitcast %struct.ap_uint* %.1_6 to i8*
  %_712 = bitcast %struct.ap_uint* %.1_7 to i8*
  %_813 = bitcast %struct.ap_uint* %.1_8 to i8*
  %_914 = bitcast %struct.ap_uint* %.1_9 to i8*
  %_1015 = bitcast %struct.ap_uint* %.1_10 to i8*
  %_1116 = bitcast %struct.ap_uint* %.1_11 to i8*
  %_1217 = bitcast %struct.ap_uint* %.1_12 to i8*
  %_1318 = bitcast %struct.ap_uint* %.1_13 to i8*
  %_1419 = bitcast %struct.ap_uint* %.1_14 to i8*
  %_1520 = bitcast %struct.ap_uint* %.1_15 to i8*
  %_038 = bitcast %struct.ap_uint* %.2_0 to i8*
  %_139 = bitcast %struct.ap_uint* %.2_1 to i8*
  %_240 = bitcast %struct.ap_uint* %.2_2 to i8*
  %_341 = bitcast %struct.ap_uint* %.2_3 to i8*
  %_442 = bitcast %struct.ap_uint* %.2_4 to i8*
  %_543 = bitcast %struct.ap_uint* %.2_5 to i8*
  %_644 = bitcast %struct.ap_uint* %.2_6 to i8*
  %_745 = bitcast %struct.ap_uint* %.2_7 to i8*
  %_846 = bitcast %struct.ap_uint* %.2_8 to i8*
  %_947 = bitcast %struct.ap_uint* %.2_9 to i8*
  %_1048 = bitcast %struct.ap_uint* %.2_10 to i8*
  %_1149 = bitcast %struct.ap_uint* %.2_11 to i8*
  %_1250 = bitcast %struct.ap_uint* %.2_12 to i8*
  %_1351 = bitcast %struct.ap_uint* %.2_13 to i8*
  %_1452 = bitcast %struct.ap_uint* %.2_14 to i8*
  %_1553 = bitcast %struct.ap_uint* %.2_15 to i8*
  %_071 = bitcast %struct.ap_uint.18* %.3_0 to i8*
  %_172 = bitcast %struct.ap_uint.18* %.3_1 to i8*
  %_273 = bitcast %struct.ap_uint.18* %.3_2 to i8*
  %_374 = bitcast %struct.ap_uint.18* %.3_3 to i8*
  %_475 = bitcast %struct.ap_uint.18* %.3_4 to i8*
  %_576 = bitcast %struct.ap_uint.18* %.3_5 to i8*
  %_677 = bitcast %struct.ap_uint.18* %.3_6 to i8*
  %_778 = bitcast %struct.ap_uint.18* %.3_7 to i8*
  %_879 = bitcast %struct.ap_uint.18* %.3_8 to i8*
  %_980 = bitcast %struct.ap_uint.18* %.3_9 to i8*
  %_1081 = bitcast %struct.ap_uint.18* %.3_10 to i8*
  %_1182 = bitcast %struct.ap_uint.18* %.3_11 to i8*
  %_1283 = bitcast %struct.ap_uint.18* %.3_12 to i8*
  %_1384 = bitcast %struct.ap_uint.18* %.3_13 to i8*
  %_1485 = bitcast %struct.ap_uint.18* %.3_14 to i8*
  %_1586 = bitcast %struct.ap_uint.18* %.3_15 to i8*
  br label %for.loop

for.loop:                                         ; preds = %.exit87, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit87 ]
  %src.addr.0.0.0.07.gep2 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0, i32 0
  %2 = bitcast i32* %src.addr.0.0.0.07.gep2 to i8*
  switch i64 %for.loop.idx9, label %.case.15103 [
    i64 0, label %.case.088
    i64 1, label %.case.189
    i64 2, label %.case.290
    i64 3, label %.case.391
    i64 4, label %.case.492
    i64 5, label %.case.593
    i64 6, label %.case.694
    i64 7, label %.case.795
    i64 8, label %.case.896
    i64 9, label %.case.997
    i64 10, label %.case.1098
    i64 11, label %.case.1199
    i64 12, label %.case.12100
    i64 13, label %.case.13101
    i64 14, label %.case.14102
  ]

.case.088:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_0, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep43 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0
  %3 = bitcast i16* %src.addr.1.0.0.015.gep43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %3, i64 2, i1 false)
  %src.addr.2.0.0.023.gep632 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 0, i32 2, i32 0, i32 0, i32 0
  %4 = bitcast i16* %src.addr.2.0.0.023.gep632 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_038, i8* align 1 %4, i64 2, i1 false)
  %src.addr.3.0.0.031.gep861 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 0, i32 3, i32 0, i32 0, i32 0
  %5 = bitcast i1* %src.addr.3.0.0.031.gep861 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_071, i8* align 1 %5, i64 1, i1 false)
  br label %.exit87

.case.189:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep45 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 1, i32 1, i32 0, i32 0, i32 0
  %6 = bitcast i16* %src.addr.1.0.0.015.gep45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_16, i8* align 1 %6, i64 2, i1 false)
  %src.addr.2.0.0.023.gep634 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 1, i32 2, i32 0, i32 0, i32 0
  %7 = bitcast i16* %src.addr.2.0.0.023.gep634 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_139, i8* align 1 %7, i64 2, i1 false)
  %src.addr.3.0.0.031.gep863 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 1, i32 3, i32 0, i32 0, i32 0
  %8 = bitcast i1* %src.addr.3.0.0.031.gep863 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_172, i8* align 1 %8, i64 1, i1 false)
  br label %.exit87

.case.290:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep47 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 2, i32 1, i32 0, i32 0, i32 0
  %9 = bitcast i16* %src.addr.1.0.0.015.gep47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_27, i8* align 1 %9, i64 2, i1 false)
  %src.addr.2.0.0.023.gep636 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 2, i32 2, i32 0, i32 0, i32 0
  %10 = bitcast i16* %src.addr.2.0.0.023.gep636 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_240, i8* align 1 %10, i64 2, i1 false)
  %src.addr.3.0.0.031.gep865 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 2, i32 3, i32 0, i32 0, i32 0
  %11 = bitcast i1* %src.addr.3.0.0.031.gep865 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_273, i8* align 1 %11, i64 1, i1 false)
  br label %.exit87

.case.391:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep49 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 3, i32 1, i32 0, i32 0, i32 0
  %12 = bitcast i16* %src.addr.1.0.0.015.gep49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_38, i8* align 1 %12, i64 2, i1 false)
  %src.addr.2.0.0.023.gep638 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 3, i32 2, i32 0, i32 0, i32 0
  %13 = bitcast i16* %src.addr.2.0.0.023.gep638 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_341, i8* align 1 %13, i64 2, i1 false)
  %src.addr.3.0.0.031.gep867 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 3, i32 3, i32 0, i32 0, i32 0
  %14 = bitcast i1* %src.addr.3.0.0.031.gep867 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_374, i8* align 1 %14, i64 1, i1 false)
  br label %.exit87

.case.492:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep411 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 4, i32 1, i32 0, i32 0, i32 0
  %15 = bitcast i16* %src.addr.1.0.0.015.gep411 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_49, i8* align 1 %15, i64 2, i1 false)
  %src.addr.2.0.0.023.gep640 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 4, i32 2, i32 0, i32 0, i32 0
  %16 = bitcast i16* %src.addr.2.0.0.023.gep640 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_442, i8* align 1 %16, i64 2, i1 false)
  %src.addr.3.0.0.031.gep869 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 4, i32 3, i32 0, i32 0, i32 0
  %17 = bitcast i1* %src.addr.3.0.0.031.gep869 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_475, i8* align 1 %17, i64 1, i1 false)
  br label %.exit87

.case.593:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep413 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 5, i32 1, i32 0, i32 0, i32 0
  %18 = bitcast i16* %src.addr.1.0.0.015.gep413 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_510, i8* align 1 %18, i64 2, i1 false)
  %src.addr.2.0.0.023.gep642 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 5, i32 2, i32 0, i32 0, i32 0
  %19 = bitcast i16* %src.addr.2.0.0.023.gep642 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_543, i8* align 1 %19, i64 2, i1 false)
  %src.addr.3.0.0.031.gep871 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 5, i32 3, i32 0, i32 0, i32 0
  %20 = bitcast i1* %src.addr.3.0.0.031.gep871 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_576, i8* align 1 %20, i64 1, i1 false)
  br label %.exit87

.case.694:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_6, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep415 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 6, i32 1, i32 0, i32 0, i32 0
  %21 = bitcast i16* %src.addr.1.0.0.015.gep415 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_611, i8* align 1 %21, i64 2, i1 false)
  %src.addr.2.0.0.023.gep644 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 6, i32 2, i32 0, i32 0, i32 0
  %22 = bitcast i16* %src.addr.2.0.0.023.gep644 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_644, i8* align 1 %22, i64 2, i1 false)
  %src.addr.3.0.0.031.gep873 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 6, i32 3, i32 0, i32 0, i32 0
  %23 = bitcast i1* %src.addr.3.0.0.031.gep873 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_677, i8* align 1 %23, i64 1, i1 false)
  br label %.exit87

.case.795:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_7, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep417 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 7, i32 1, i32 0, i32 0, i32 0
  %24 = bitcast i16* %src.addr.1.0.0.015.gep417 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_712, i8* align 1 %24, i64 2, i1 false)
  %src.addr.2.0.0.023.gep646 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 7, i32 2, i32 0, i32 0, i32 0
  %25 = bitcast i16* %src.addr.2.0.0.023.gep646 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_745, i8* align 1 %25, i64 2, i1 false)
  %src.addr.3.0.0.031.gep875 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 7, i32 3, i32 0, i32 0, i32 0
  %26 = bitcast i1* %src.addr.3.0.0.031.gep875 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_778, i8* align 1 %26, i64 1, i1 false)
  br label %.exit87

.case.896:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_8, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep419 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 8, i32 1, i32 0, i32 0, i32 0
  %27 = bitcast i16* %src.addr.1.0.0.015.gep419 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_813, i8* align 1 %27, i64 2, i1 false)
  %src.addr.2.0.0.023.gep648 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 8, i32 2, i32 0, i32 0, i32 0
  %28 = bitcast i16* %src.addr.2.0.0.023.gep648 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_846, i8* align 1 %28, i64 2, i1 false)
  %src.addr.3.0.0.031.gep877 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 8, i32 3, i32 0, i32 0, i32 0
  %29 = bitcast i1* %src.addr.3.0.0.031.gep877 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_879, i8* align 1 %29, i64 1, i1 false)
  br label %.exit87

.case.997:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_9, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep421 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 9, i32 1, i32 0, i32 0, i32 0
  %30 = bitcast i16* %src.addr.1.0.0.015.gep421 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_914, i8* align 1 %30, i64 2, i1 false)
  %src.addr.2.0.0.023.gep650 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 9, i32 2, i32 0, i32 0, i32 0
  %31 = bitcast i16* %src.addr.2.0.0.023.gep650 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_947, i8* align 1 %31, i64 2, i1 false)
  %src.addr.3.0.0.031.gep879 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 9, i32 3, i32 0, i32 0, i32 0
  %32 = bitcast i1* %src.addr.3.0.0.031.gep879 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_980, i8* align 1 %32, i64 1, i1 false)
  br label %.exit87

.case.1098:                                       ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_10, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep423 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 10, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %src.addr.1.0.0.015.gep423 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1015, i8* align 1 %33, i64 2, i1 false)
  %src.addr.2.0.0.023.gep652 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 10, i32 2, i32 0, i32 0, i32 0
  %34 = bitcast i16* %src.addr.2.0.0.023.gep652 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1048, i8* align 1 %34, i64 2, i1 false)
  %src.addr.3.0.0.031.gep881 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 10, i32 3, i32 0, i32 0, i32 0
  %35 = bitcast i1* %src.addr.3.0.0.031.gep881 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1081, i8* align 1 %35, i64 1, i1 false)
  br label %.exit87

.case.1199:                                       ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_11, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep425 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 11, i32 1, i32 0, i32 0, i32 0
  %36 = bitcast i16* %src.addr.1.0.0.015.gep425 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1116, i8* align 1 %36, i64 2, i1 false)
  %src.addr.2.0.0.023.gep654 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 11, i32 2, i32 0, i32 0, i32 0
  %37 = bitcast i16* %src.addr.2.0.0.023.gep654 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1149, i8* align 1 %37, i64 2, i1 false)
  %src.addr.3.0.0.031.gep883 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 11, i32 3, i32 0, i32 0, i32 0
  %38 = bitcast i1* %src.addr.3.0.0.031.gep883 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1182, i8* align 1 %38, i64 1, i1 false)
  br label %.exit87

.case.12100:                                      ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_12, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep427 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 12, i32 1, i32 0, i32 0, i32 0
  %39 = bitcast i16* %src.addr.1.0.0.015.gep427 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1217, i8* align 1 %39, i64 2, i1 false)
  %src.addr.2.0.0.023.gep656 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 12, i32 2, i32 0, i32 0, i32 0
  %40 = bitcast i16* %src.addr.2.0.0.023.gep656 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1250, i8* align 1 %40, i64 2, i1 false)
  %src.addr.3.0.0.031.gep885 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 12, i32 3, i32 0, i32 0, i32 0
  %41 = bitcast i1* %src.addr.3.0.0.031.gep885 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1283, i8* align 1 %41, i64 1, i1 false)
  br label %.exit87

.case.13101:                                      ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_13, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep429 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 13, i32 1, i32 0, i32 0, i32 0
  %42 = bitcast i16* %src.addr.1.0.0.015.gep429 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1318, i8* align 1 %42, i64 2, i1 false)
  %src.addr.2.0.0.023.gep658 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 13, i32 2, i32 0, i32 0, i32 0
  %43 = bitcast i16* %src.addr.2.0.0.023.gep658 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1351, i8* align 1 %43, i64 2, i1 false)
  %src.addr.3.0.0.031.gep887 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 13, i32 3, i32 0, i32 0, i32 0
  %44 = bitcast i1* %src.addr.3.0.0.031.gep887 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1384, i8* align 1 %44, i64 1, i1 false)
  br label %.exit87

.case.14102:                                      ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_14, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep4 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 14, i32 1, i32 0, i32 0, i32 0
  %45 = bitcast i16* %src.addr.1.0.0.015.gep4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1419, i8* align 1 %45, i64 2, i1 false)
  %src.addr.2.0.0.023.gep6 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 14, i32 2, i32 0, i32 0, i32 0
  %46 = bitcast i16* %src.addr.2.0.0.023.gep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1452, i8* align 1 %46, i64 2, i1 false)
  %src.addr.3.0.0.031.gep8 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 14, i32 3, i32 0, i32 0, i32 0
  %47 = bitcast i1* %src.addr.3.0.0.031.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1485, i8* align 1 %47, i64 1, i1 false)
  br label %.exit87

.case.15103:                                      ; preds = %for.loop
  %48 = icmp eq i64 %for.loop.idx9, 15
  call void @llvm.assume(i1 %48)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_15, i8* align 1 %2, i64 4, i1 false)
  %src.addr.1.0.0.015.gep41 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 15, i32 1, i32 0, i32 0, i32 0
  %49 = bitcast i16* %src.addr.1.0.0.015.gep41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1520, i8* align 1 %49, i64 2, i1 false)
  %src.addr.2.0.0.023.gep630 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 15, i32 2, i32 0, i32 0, i32 0
  %50 = bitcast i16* %src.addr.2.0.0.023.gep630 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1553, i8* align 1 %50, i64 2, i1 false)
  %src.addr.3.0.0.031.gep859 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 15, i32 3, i32 0, i32 0, i32 0
  %51 = bitcast i1* %src.addr.3.0.0.031.gep859 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1586, i8* align 1 %51, i64 1, i1 false)
  br label %.exit87

.exit87:                                          ; preds = %.case.15103, %.case.14102, %.case.13101, %.case.12100, %.case.1199, %.case.1098, %.case.997, %.case.896, %.case.795, %.case.694, %.case.593, %.case.492, %.case.391, %.case.290, %.case.189, %.case.088
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit87, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(%"class.hls::stream"* "orig.arg.no"="0", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream"* "orig.arg.no"="2", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.3" %_V_last_V4, %"class.hls::stream.26"* "orig.arg.no"="4", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.2" %_V_strb_V37, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.4" %_V_last_V48, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.5" %_V_dest_V, %"class.hls::stream.26"* "orig.arg.no"="6", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.2" %_V_strb_V4, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.4" %_V_last_V6, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.5" %_V_dest_V7, %struct.ap_uint.3* readonly "orig.arg.no"="8", i32* noalias align 512 "orig.arg.no"="9", [16 x %struct.socket_table]* readonly "orig.arg.no"="10", %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_0, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_1, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_2, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_3, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_4, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_5, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_6, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_7, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_8, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_9, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_10, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_11, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_12, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_13, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_14, %struct.ap_uint.3* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_15, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_0, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_1, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_2, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_3, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_4, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_5, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_6, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_7, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_8, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_9, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_10, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_11, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_12, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_13, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_14, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_15, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_0, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_1, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_2, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_3, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_4, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_5, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_6, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_7, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_8, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_9, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_10, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_11, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_12, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_13, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_14, %struct.ap_uint* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_15, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_0, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_1, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_2, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_3, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_4, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_5, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_6, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_7, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_8, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_9, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_10, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_11, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_12, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_13, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_14, %struct.ap_uint.18* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_15, %struct.ap_uint* readonly "orig.arg.no"="15", %struct.ap_uint* noalias align 512 "orig.arg.no"="16") #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.26.517"(i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V, %"class.hls::stream.26"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.26.517"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7, %"class.hls::stream.26"* %3)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.3(i32* align 512 %5, %struct.ap_uint.3* %4)
  call void @onebyonecpy_hls.p0a16struct.socket_table(%struct.ap_uint.3* align 512 %.0_0, %struct.ap_uint.3* align 512 %.0_1, %struct.ap_uint.3* align 512 %.0_2, %struct.ap_uint.3* align 512 %.0_3, %struct.ap_uint.3* align 512 %.0_4, %struct.ap_uint.3* align 512 %.0_5, %struct.ap_uint.3* align 512 %.0_6, %struct.ap_uint.3* align 512 %.0_7, %struct.ap_uint.3* align 512 %.0_8, %struct.ap_uint.3* align 512 %.0_9, %struct.ap_uint.3* align 512 %.0_10, %struct.ap_uint.3* align 512 %.0_11, %struct.ap_uint.3* align 512 %.0_12, %struct.ap_uint.3* align 512 %.0_13, %struct.ap_uint.3* align 512 %.0_14, %struct.ap_uint.3* align 512 %.0_15, %struct.ap_uint* align 512 %.1_0, %struct.ap_uint* align 512 %.1_1, %struct.ap_uint* align 512 %.1_2, %struct.ap_uint* align 512 %.1_3, %struct.ap_uint* align 512 %.1_4, %struct.ap_uint* align 512 %.1_5, %struct.ap_uint* align 512 %.1_6, %struct.ap_uint* align 512 %.1_7, %struct.ap_uint* align 512 %.1_8, %struct.ap_uint* align 512 %.1_9, %struct.ap_uint* align 512 %.1_10, %struct.ap_uint* align 512 %.1_11, %struct.ap_uint* align 512 %.1_12, %struct.ap_uint* align 512 %.1_13, %struct.ap_uint* align 512 %.1_14, %struct.ap_uint* align 512 %.1_15, %struct.ap_uint* align 512 %.2_0, %struct.ap_uint* align 512 %.2_1, %struct.ap_uint* align 512 %.2_2, %struct.ap_uint* align 512 %.2_3, %struct.ap_uint* align 512 %.2_4, %struct.ap_uint* align 512 %.2_5, %struct.ap_uint* align 512 %.2_6, %struct.ap_uint* align 512 %.2_7, %struct.ap_uint* align 512 %.2_8, %struct.ap_uint* align 512 %.2_9, %struct.ap_uint* align 512 %.2_10, %struct.ap_uint* align 512 %.2_11, %struct.ap_uint* align 512 %.2_12, %struct.ap_uint* align 512 %.2_13, %struct.ap_uint* align 512 %.2_14, %struct.ap_uint* align 512 %.2_15, %struct.ap_uint.18* align 512 %.3_0, %struct.ap_uint.18* align 512 %.3_1, %struct.ap_uint.18* align 512 %.3_2, %struct.ap_uint.18* align 512 %.3_3, %struct.ap_uint.18* align 512 %.3_4, %struct.ap_uint.18* align 512 %.3_5, %struct.ap_uint.18* align 512 %.3_6, %struct.ap_uint.18* align 512 %.3_7, %struct.ap_uint.18* align 512 %.3_8, %struct.ap_uint.18* align 512 %.3_9, %struct.ap_uint.18* align 512 %.3_10, %struct.ap_uint.18* align 512 %.3_11, %struct.ap_uint.18* align 512 %.3_12, %struct.ap_uint.18* align 512 %.3_13, %struct.ap_uint.18* align 512 %.3_14, %struct.ap_uint.18* align 512 %.3_15, [16 x %struct.socket_table]* %6)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %8, %struct.ap_uint* %7)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @onebyonecpy_hls.p0a16struct.socket_table.462([16 x %struct.socket_table]* noalias "orig.arg.no"="0", %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_0, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_1, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_2, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_3, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_4, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_5, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_6, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_7, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_8, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_9, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_10, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_11, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_12, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_13, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_14, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %.0_15, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_0, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_1, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_2, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_3, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_4, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_5, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_6, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_7, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_8, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_9, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_10, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_11, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_12, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_13, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_14, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="2" "unpacked"="1.1" %.1_15, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_0, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_1, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_2, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_3, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_4, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_5, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_6, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_7, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_8, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_9, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_10, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_11, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_12, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_13, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_14, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="1.2" %.2_15, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_0, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_1, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_2, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_3, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_4, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_5, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_6, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_7, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_8, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_9, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_10, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_11, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_12, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_13, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_14, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="4" "unpacked"="1.3" %.3_15) #1 {
entry:
  %1 = icmp eq [16 x %struct.socket_table]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  %_0 = bitcast %struct.ap_uint.3* %.0_0 to i8*
  %_1 = bitcast %struct.ap_uint.3* %.0_1 to i8*
  %_2 = bitcast %struct.ap_uint.3* %.0_2 to i8*
  %_3 = bitcast %struct.ap_uint.3* %.0_3 to i8*
  %_4 = bitcast %struct.ap_uint.3* %.0_4 to i8*
  %_5 = bitcast %struct.ap_uint.3* %.0_5 to i8*
  %_6 = bitcast %struct.ap_uint.3* %.0_6 to i8*
  %_7 = bitcast %struct.ap_uint.3* %.0_7 to i8*
  %_8 = bitcast %struct.ap_uint.3* %.0_8 to i8*
  %_9 = bitcast %struct.ap_uint.3* %.0_9 to i8*
  %_10 = bitcast %struct.ap_uint.3* %.0_10 to i8*
  %_11 = bitcast %struct.ap_uint.3* %.0_11 to i8*
  %_12 = bitcast %struct.ap_uint.3* %.0_12 to i8*
  %_13 = bitcast %struct.ap_uint.3* %.0_13 to i8*
  %_14 = bitcast %struct.ap_uint.3* %.0_14 to i8*
  %_15 = bitcast %struct.ap_uint.3* %.0_15 to i8*
  %_01 = bitcast %struct.ap_uint* %.1_0 to i8*
  %_16 = bitcast %struct.ap_uint* %.1_1 to i8*
  %_27 = bitcast %struct.ap_uint* %.1_2 to i8*
  %_38 = bitcast %struct.ap_uint* %.1_3 to i8*
  %_49 = bitcast %struct.ap_uint* %.1_4 to i8*
  %_510 = bitcast %struct.ap_uint* %.1_5 to i8*
  %_611 = bitcast %struct.ap_uint* %.1_6 to i8*
  %_712 = bitcast %struct.ap_uint* %.1_7 to i8*
  %_813 = bitcast %struct.ap_uint* %.1_8 to i8*
  %_914 = bitcast %struct.ap_uint* %.1_9 to i8*
  %_1015 = bitcast %struct.ap_uint* %.1_10 to i8*
  %_1116 = bitcast %struct.ap_uint* %.1_11 to i8*
  %_1217 = bitcast %struct.ap_uint* %.1_12 to i8*
  %_1318 = bitcast %struct.ap_uint* %.1_13 to i8*
  %_1419 = bitcast %struct.ap_uint* %.1_14 to i8*
  %_1520 = bitcast %struct.ap_uint* %.1_15 to i8*
  %_038 = bitcast %struct.ap_uint* %.2_0 to i8*
  %_139 = bitcast %struct.ap_uint* %.2_1 to i8*
  %_240 = bitcast %struct.ap_uint* %.2_2 to i8*
  %_341 = bitcast %struct.ap_uint* %.2_3 to i8*
  %_442 = bitcast %struct.ap_uint* %.2_4 to i8*
  %_543 = bitcast %struct.ap_uint* %.2_5 to i8*
  %_644 = bitcast %struct.ap_uint* %.2_6 to i8*
  %_745 = bitcast %struct.ap_uint* %.2_7 to i8*
  %_846 = bitcast %struct.ap_uint* %.2_8 to i8*
  %_947 = bitcast %struct.ap_uint* %.2_9 to i8*
  %_1048 = bitcast %struct.ap_uint* %.2_10 to i8*
  %_1149 = bitcast %struct.ap_uint* %.2_11 to i8*
  %_1250 = bitcast %struct.ap_uint* %.2_12 to i8*
  %_1351 = bitcast %struct.ap_uint* %.2_13 to i8*
  %_1452 = bitcast %struct.ap_uint* %.2_14 to i8*
  %_1553 = bitcast %struct.ap_uint* %.2_15 to i8*
  %_071 = bitcast %struct.ap_uint.18* %.3_0 to i8*
  %_172 = bitcast %struct.ap_uint.18* %.3_1 to i8*
  %_273 = bitcast %struct.ap_uint.18* %.3_2 to i8*
  %_374 = bitcast %struct.ap_uint.18* %.3_3 to i8*
  %_475 = bitcast %struct.ap_uint.18* %.3_4 to i8*
  %_576 = bitcast %struct.ap_uint.18* %.3_5 to i8*
  %_677 = bitcast %struct.ap_uint.18* %.3_6 to i8*
  %_778 = bitcast %struct.ap_uint.18* %.3_7 to i8*
  %_879 = bitcast %struct.ap_uint.18* %.3_8 to i8*
  %_980 = bitcast %struct.ap_uint.18* %.3_9 to i8*
  %_1081 = bitcast %struct.ap_uint.18* %.3_10 to i8*
  %_1182 = bitcast %struct.ap_uint.18* %.3_11 to i8*
  %_1283 = bitcast %struct.ap_uint.18* %.3_12 to i8*
  %_1384 = bitcast %struct.ap_uint.18* %.3_13 to i8*
  %_1485 = bitcast %struct.ap_uint.18* %.3_14 to i8*
  %_1586 = bitcast %struct.ap_uint.18* %.3_15 to i8*
  br label %for.loop

for.loop:                                         ; preds = %.exit87, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %.exit87 ]
  %dst.addr.0.0.0.08.gep1 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0, i32 0
  %2 = bitcast i32* %dst.addr.0.0.0.08.gep1 to i8*
  switch i64 %for.loop.idx9, label %.case.15103 [
    i64 0, label %.case.088
    i64 1, label %.case.189
    i64 2, label %.case.290
    i64 3, label %.case.391
    i64 4, label %.case.492
    i64 5, label %.case.593
    i64 6, label %.case.694
    i64 7, label %.case.795
    i64 8, label %.case.896
    i64 9, label %.case.997
    i64 10, label %.case.1098
    i64 11, label %.case.1199
    i64 12, label %.case.12100
    i64 13, label %.case.13101
    i64 14, label %.case.14102
  ]

.case.088:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_0, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep33 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0
  %3 = bitcast i16* %dst.addr.1.0.0.016.gep33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %_01, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep532 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 0, i32 2, i32 0, i32 0, i32 0
  %4 = bitcast i16* %dst.addr.2.0.0.024.gep532 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_038, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep761 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 0, i32 3, i32 0, i32 0, i32 0
  %5 = bitcast i1* %dst.addr.3.0.0.032.gep761 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %_071, i64 1, i1 false)
  br label %.exit87

.case.189:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_1, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep35 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 1, i32 1, i32 0, i32 0, i32 0
  %6 = bitcast i16* %dst.addr.1.0.0.016.gep35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %_16, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep534 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 1, i32 2, i32 0, i32 0, i32 0
  %7 = bitcast i16* %dst.addr.2.0.0.024.gep534 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_139, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep763 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 1, i32 3, i32 0, i32 0, i32 0
  %8 = bitcast i1* %dst.addr.3.0.0.032.gep763 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %_172, i64 1, i1 false)
  br label %.exit87

.case.290:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_2, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep37 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 2, i32 1, i32 0, i32 0, i32 0
  %9 = bitcast i16* %dst.addr.1.0.0.016.gep37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %_27, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep536 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 2, i32 2, i32 0, i32 0, i32 0
  %10 = bitcast i16* %dst.addr.2.0.0.024.gep536 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %_240, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep765 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 2, i32 3, i32 0, i32 0, i32 0
  %11 = bitcast i1* %dst.addr.3.0.0.032.gep765 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %_273, i64 1, i1 false)
  br label %.exit87

.case.391:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_3, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep39 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 3, i32 1, i32 0, i32 0, i32 0
  %12 = bitcast i16* %dst.addr.1.0.0.016.gep39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %_38, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep538 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 3, i32 2, i32 0, i32 0, i32 0
  %13 = bitcast i16* %dst.addr.2.0.0.024.gep538 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %_341, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep767 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 3, i32 3, i32 0, i32 0, i32 0
  %14 = bitcast i1* %dst.addr.3.0.0.032.gep767 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %_374, i64 1, i1 false)
  br label %.exit87

.case.492:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_4, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep311 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 4, i32 1, i32 0, i32 0, i32 0
  %15 = bitcast i16* %dst.addr.1.0.0.016.gep311 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %_49, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep540 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 4, i32 2, i32 0, i32 0, i32 0
  %16 = bitcast i16* %dst.addr.2.0.0.024.gep540 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %_442, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep769 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 4, i32 3, i32 0, i32 0, i32 0
  %17 = bitcast i1* %dst.addr.3.0.0.032.gep769 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %_475, i64 1, i1 false)
  br label %.exit87

.case.593:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_5, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep313 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 5, i32 1, i32 0, i32 0, i32 0
  %18 = bitcast i16* %dst.addr.1.0.0.016.gep313 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %_510, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep542 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 5, i32 2, i32 0, i32 0, i32 0
  %19 = bitcast i16* %dst.addr.2.0.0.024.gep542 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %_543, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep771 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 5, i32 3, i32 0, i32 0, i32 0
  %20 = bitcast i1* %dst.addr.3.0.0.032.gep771 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 %_576, i64 1, i1 false)
  br label %.exit87

.case.694:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_6, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep315 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 6, i32 1, i32 0, i32 0, i32 0
  %21 = bitcast i16* %dst.addr.1.0.0.016.gep315 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %_611, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep544 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 6, i32 2, i32 0, i32 0, i32 0
  %22 = bitcast i16* %dst.addr.2.0.0.024.gep544 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 %_644, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep773 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 6, i32 3, i32 0, i32 0, i32 0
  %23 = bitcast i1* %dst.addr.3.0.0.032.gep773 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %_677, i64 1, i1 false)
  br label %.exit87

.case.795:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_7, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep317 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 7, i32 1, i32 0, i32 0, i32 0
  %24 = bitcast i16* %dst.addr.1.0.0.016.gep317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %_712, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep546 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 7, i32 2, i32 0, i32 0, i32 0
  %25 = bitcast i16* %dst.addr.2.0.0.024.gep546 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %_745, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep775 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 7, i32 3, i32 0, i32 0, i32 0
  %26 = bitcast i1* %dst.addr.3.0.0.032.gep775 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %_778, i64 1, i1 false)
  br label %.exit87

.case.896:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_8, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep319 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 8, i32 1, i32 0, i32 0, i32 0
  %27 = bitcast i16* %dst.addr.1.0.0.016.gep319 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %_813, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep548 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 8, i32 2, i32 0, i32 0, i32 0
  %28 = bitcast i16* %dst.addr.2.0.0.024.gep548 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %_846, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep777 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 8, i32 3, i32 0, i32 0, i32 0
  %29 = bitcast i1* %dst.addr.3.0.0.032.gep777 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %_879, i64 1, i1 false)
  br label %.exit87

.case.997:                                        ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_9, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep321 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 9, i32 1, i32 0, i32 0, i32 0
  %30 = bitcast i16* %dst.addr.1.0.0.016.gep321 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %30, i8* align 1 %_914, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep550 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 9, i32 2, i32 0, i32 0, i32 0
  %31 = bitcast i16* %dst.addr.2.0.0.024.gep550 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %_947, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep779 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 9, i32 3, i32 0, i32 0, i32 0
  %32 = bitcast i1* %dst.addr.3.0.0.032.gep779 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %_980, i64 1, i1 false)
  br label %.exit87

.case.1098:                                       ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_10, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep323 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 10, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %dst.addr.1.0.0.016.gep323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %_1015, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep552 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 10, i32 2, i32 0, i32 0, i32 0
  %34 = bitcast i16* %dst.addr.2.0.0.024.gep552 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 %_1048, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep781 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 10, i32 3, i32 0, i32 0, i32 0
  %35 = bitcast i1* %dst.addr.3.0.0.032.gep781 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %_1081, i64 1, i1 false)
  br label %.exit87

.case.1199:                                       ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_11, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep325 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 11, i32 1, i32 0, i32 0, i32 0
  %36 = bitcast i16* %dst.addr.1.0.0.016.gep325 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 %_1116, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep554 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 11, i32 2, i32 0, i32 0, i32 0
  %37 = bitcast i16* %dst.addr.2.0.0.024.gep554 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 %_1149, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep783 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 11, i32 3, i32 0, i32 0, i32 0
  %38 = bitcast i1* %dst.addr.3.0.0.032.gep783 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %38, i8* align 1 %_1182, i64 1, i1 false)
  br label %.exit87

.case.12100:                                      ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_12, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep327 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 12, i32 1, i32 0, i32 0, i32 0
  %39 = bitcast i16* %dst.addr.1.0.0.016.gep327 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %_1217, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep556 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 12, i32 2, i32 0, i32 0, i32 0
  %40 = bitcast i16* %dst.addr.2.0.0.024.gep556 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %_1250, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep785 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 12, i32 3, i32 0, i32 0, i32 0
  %41 = bitcast i1* %dst.addr.3.0.0.032.gep785 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %_1283, i64 1, i1 false)
  br label %.exit87

.case.13101:                                      ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_13, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep329 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 13, i32 1, i32 0, i32 0, i32 0
  %42 = bitcast i16* %dst.addr.1.0.0.016.gep329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %42, i8* align 1 %_1318, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep558 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 13, i32 2, i32 0, i32 0, i32 0
  %43 = bitcast i16* %dst.addr.2.0.0.024.gep558 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %43, i8* align 1 %_1351, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep787 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 13, i32 3, i32 0, i32 0, i32 0
  %44 = bitcast i1* %dst.addr.3.0.0.032.gep787 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %44, i8* align 1 %_1384, i64 1, i1 false)
  br label %.exit87

.case.14102:                                      ; preds = %for.loop
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_14, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep3 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 14, i32 1, i32 0, i32 0, i32 0
  %45 = bitcast i16* %dst.addr.1.0.0.016.gep3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %_1419, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep5 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 14, i32 2, i32 0, i32 0, i32 0
  %46 = bitcast i16* %dst.addr.2.0.0.024.gep5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 %_1452, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep7 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 14, i32 3, i32 0, i32 0, i32 0
  %47 = bitcast i1* %dst.addr.3.0.0.032.gep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %_1485, i64 1, i1 false)
  br label %.exit87

.case.15103:                                      ; preds = %for.loop
  %48 = icmp eq i64 %for.loop.idx9, 15
  call void @llvm.assume(i1 %48)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %_15, i64 4, i1 false)
  %dst.addr.1.0.0.016.gep31 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 15, i32 1, i32 0, i32 0, i32 0
  %49 = bitcast i16* %dst.addr.1.0.0.016.gep31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %_1520, i64 2, i1 false)
  %dst.addr.2.0.0.024.gep530 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 15, i32 2, i32 0, i32 0, i32 0
  %50 = bitcast i16* %dst.addr.2.0.0.024.gep530 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %50, i8* align 1 %_1553, i64 2, i1 false)
  %dst.addr.3.0.0.032.gep759 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %0, i64 0, i64 15, i32 3, i32 0, i32 0, i32 0
  %51 = bitcast i1* %dst.addr.3.0.0.032.gep759 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %_1586, i64 1, i1 false)
  br label %.exit87

.exit87:                                          ; preds = %.case.15103, %.case.14102, %.case.13101, %.case.12100, %.case.1199, %.case.1098, %.case.997, %.case.896, %.case.795, %.case.694, %.case.593, %.case.492, %.case.391, %.case.290, %.case.189, %.case.088
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %.exit87, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(%"class.hls::stream"* "orig.arg.no"="0", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream"* "orig.arg.no"="2", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="6.3" %_V_last_V4, %"class.hls::stream.26"* "orig.arg.no"="4", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.0" %_V_data_V15, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.1" %_V_keep_V26, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.2" %_V_strb_V37, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.4" %_V_last_V48, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="8.5" %_V_dest_V, %"class.hls::stream.26"* "orig.arg.no"="6", i512* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.0" %_V_data_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.1" %_V_keep_V3, i64* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.2" %_V_strb_V4, i96* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.3" %_V_user_V5, i1* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.4" %_V_last_V6, i16* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="7" "unpacked"="15.5" %_V_dest_V7, %struct.ap_uint.3* "orig.arg.no"="8", i32* noalias readonly align 512 "orig.arg.no"="9", [16 x %struct.socket_table]* "orig.arg.no"="10", %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_0, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_1, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_2, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_3, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_4, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_5, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_6, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_7, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_8, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_9, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_10, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_11, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_12, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_13, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_14, %struct.ap_uint.3* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="11" "unpacked"="11.0" %.0_15, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_0, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_1, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_2, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_3, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_4, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_5, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_6, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_7, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_8, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_9, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_10, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_11, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_12, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_13, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_14, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="12" "unpacked"="11.1" %.1_15, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_0, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_1, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_2, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_3, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_4, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_5, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_6, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_7, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_8, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_9, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_10, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_11, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_12, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_13, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_14, %struct.ap_uint* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="13" "unpacked"="11.2" %.2_15, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_0, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_1, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_2, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_3, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_4, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_5, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_6, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_7, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_8, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_9, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_10, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_11, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_12, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_13, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_14, %struct.ap_uint.18* noalias nocapture readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="14" "unpacked"="11.3" %.3_15, %struct.ap_uint* "orig.arg.no"="15", %struct.ap_uint* noalias readonly align 512 "orig.arg.no"="16") #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.501"(%"class.hls::stream"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.501"(%"class.hls::stream"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.26"(%"class.hls::stream.26"* %2, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.26"(%"class.hls::stream.26"* %3, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.3.484(%struct.ap_uint.3* %4, i32* align 512 %5)
  call void @onebyonecpy_hls.p0a16struct.socket_table.462([16 x %struct.socket_table]* %6, %struct.ap_uint.3* align 512 %.0_0, %struct.ap_uint.3* align 512 %.0_1, %struct.ap_uint.3* align 512 %.0_2, %struct.ap_uint.3* align 512 %.0_3, %struct.ap_uint.3* align 512 %.0_4, %struct.ap_uint.3* align 512 %.0_5, %struct.ap_uint.3* align 512 %.0_6, %struct.ap_uint.3* align 512 %.0_7, %struct.ap_uint.3* align 512 %.0_8, %struct.ap_uint.3* align 512 %.0_9, %struct.ap_uint.3* align 512 %.0_10, %struct.ap_uint.3* align 512 %.0_11, %struct.ap_uint.3* align 512 %.0_12, %struct.ap_uint.3* align 512 %.0_13, %struct.ap_uint.3* align 512 %.0_14, %struct.ap_uint.3* align 512 %.0_15, %struct.ap_uint* align 512 %.1_0, %struct.ap_uint* align 512 %.1_1, %struct.ap_uint* align 512 %.1_2, %struct.ap_uint* align 512 %.1_3, %struct.ap_uint* align 512 %.1_4, %struct.ap_uint* align 512 %.1_5, %struct.ap_uint* align 512 %.1_6, %struct.ap_uint* align 512 %.1_7, %struct.ap_uint* align 512 %.1_8, %struct.ap_uint* align 512 %.1_9, %struct.ap_uint* align 512 %.1_10, %struct.ap_uint* align 512 %.1_11, %struct.ap_uint* align 512 %.1_12, %struct.ap_uint* align 512 %.1_13, %struct.ap_uint* align 512 %.1_14, %struct.ap_uint* align 512 %.1_15, %struct.ap_uint* align 512 %.2_0, %struct.ap_uint* align 512 %.2_1, %struct.ap_uint* align 512 %.2_2, %struct.ap_uint* align 512 %.2_3, %struct.ap_uint* align 512 %.2_4, %struct.ap_uint* align 512 %.2_5, %struct.ap_uint* align 512 %.2_6, %struct.ap_uint* align 512 %.2_7, %struct.ap_uint* align 512 %.2_8, %struct.ap_uint* align 512 %.2_9, %struct.ap_uint* align 512 %.2_10, %struct.ap_uint* align 512 %.2_11, %struct.ap_uint* align 512 %.2_12, %struct.ap_uint* align 512 %.2_13, %struct.ap_uint* align 512 %.2_14, %struct.ap_uint* align 512 %.2_15, %struct.ap_uint.18* align 512 %.3_0, %struct.ap_uint.18* align 512 %.3_1, %struct.ap_uint.18* align 512 %.3_2, %struct.ap_uint.18* align 512 %.3_3, %struct.ap_uint.18* align 512 %.3_4, %struct.ap_uint.18* align 512 %.3_5, %struct.ap_uint.18* align 512 %.3_6, %struct.ap_uint.18* align 512 %.3_7, %struct.ap_uint.18* align 512 %.3_8, %struct.ap_uint.18* align 512 %.3_9, %struct.ap_uint.18* align 512 %.3_10, %struct.ap_uint.18* align 512 %.3_11, %struct.ap_uint.18* align 512 %.3_12, %struct.ap_uint.18* align 512 %.3_13, %struct.ap_uint.18* align 512 %.3_14, %struct.ap_uint.18* align 512 %.3_15)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint(%struct.ap_uint* %7, %struct.ap_uint* align 512 %8)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.3.484(%struct.ap_uint.3* noalias, i32* noalias readonly align 512) unnamed_addr #1 {
entry:
  %2 = icmp eq %struct.ap_uint.3* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.3, %struct.ap_uint.3* %0, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %1, align 512
  store i32 %6, i32* %5, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #1 {
entry:
  %1 = icmp eq %"class.hls::stream"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.495"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.495"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream"
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  store %"class.hls::stream" %7, %"class.hls::stream"* %1
  %8 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %struct.ap_uint.15* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %struct.ap_uint.9* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %struct.ap_uint.9* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %struct.ap_uint.18* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.501"(%"class.hls::stream"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #1 {
entry:
  %1 = icmp eq %"class.hls::stream"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.504"(%"class.hls::stream"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.504"(%"class.hls::stream"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream"
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
  %11 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %struct.ap_uint.15* %11 to i512*
  store i512 %10, i512* %12
  %13 = bitcast i64* %4 to i8*
  %14 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i64, i64* %4
  %16 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %struct.ap_uint.9* %16 to i64*
  store i64 %15, i64* %17
  %18 = bitcast i64* %3 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i64, i64* %3
  %21 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %struct.ap_uint.9* %21 to i64*
  store i64 %20, i64* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %struct.ap_uint.18* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream"* %1 to i8*
  %31 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %30, i8* %31)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.26"(%"class.hls::stream.26"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i96* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_dest_V) unnamed_addr #1 {
entry:
  %1 = icmp eq %"class.hls::stream.26"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.26.511"(%"class.hls::stream.26"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i96* %_V_user_V, i1* %_V_last_V, i16* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.26.511"(%"class.hls::stream.26"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i96* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_last_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.5" %_V_dest_V) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream.26"
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
  %13 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 0
  %14 = bitcast %struct.ap_uint.15* %13 to i512*
  store i512 %12, i512* %14
  %15 = bitcast i64* %4 to i8*
  %16 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %15, i8* %16)
  %17 = load volatile i64, i64* %4
  %18 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %struct.ap_uint.9* %18 to i64*
  store i64 %17, i64* %19
  %20 = bitcast i64* %3 to i8*
  %21 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %20, i8* %21)
  %22 = load volatile i64, i64* %3
  %23 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 2
  %24 = bitcast %struct.ap_uint.9* %23 to i64*
  store i64 %22, i64* %24
  %25 = bitcast i96* %6 to i8*
  %26 = bitcast i96* %_V_user_V to i8*
  call void @fpga_fifo_pop_16(i8* %25, i8* %26)
  %27 = load volatile i96, i96* %6
  %28 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 3
  %29 = bitcast %struct.ap_uint.28* %28 to i96*
  store i96 %27, i96* %29
  %30 = bitcast i1* %5 to i8*
  %31 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i1* %5 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 4
  %36 = bitcast %struct.ap_uint.18* %35 to i1*
  store i1 %34, i1* %36
  %37 = bitcast i16* %7 to i8*
  %38 = bitcast i16* %_V_dest_V to i8*
  call void @fpga_fifo_pop_2(i8* %37, i8* %38)
  %39 = load volatile i16, i16* %7
  %40 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 6
  %41 = bitcast %struct.ap_uint* %40 to i16*
  store i16 %39, i16* %41
  %42 = bitcast %"class.hls::stream.26"* %1 to i8*
  %43 = bitcast %"class.hls::stream.26"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %42, i8* %43)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.26.517"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i96* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_dest_V, %"class.hls::stream.26"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #1 {
entry:
  %1 = icmp eq %"class.hls::stream.26"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.26.520"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i96* %_V_user_V, i1* %_V_last_V, i16* %_V_dest_V, %"class.hls::stream.26"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.26.520"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i96* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_last_V, i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.5" %_V_dest_V, %"class.hls::stream.26"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream.26"
  %2 = alloca %"class.hls::stream.26"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.26"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.26"* %2 to i8*
  %6 = bitcast %"class.hls::stream.26"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.26", %"class.hls::stream.26"* %2
  store %"class.hls::stream.26" %7, %"class.hls::stream.26"* %1
  %8 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %struct.ap_uint.15* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %struct.ap_uint.9* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %struct.ap_uint.9* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 3
  %21 = bitcast %struct.ap_uint.28* %20 to i96*
  %22 = bitcast i96* %21 to i8*
  %23 = bitcast i96* %_V_user_V to i8*
  call void @fpga_fifo_push_16(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 4
  %25 = bitcast %struct.ap_uint.18* %24 to i1*
  %26 = bitcast i1* %25 to i8*
  %27 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  %28 = getelementptr inbounds %"class.hls::stream.26", %"class.hls::stream.26"* %1, i32 0, i32 0, i32 6
  %29 = bitcast %struct.ap_uint* %28 to i16*
  %30 = bitcast i16* %29 to i8*
  %31 = bitcast i16* %_V_dest_V to i8*
  call void @fpga_fifo_push_2(i8* %30, i8* %31)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_udp_hw(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i96*, i1*, i16*, i512*, i64*, i64*, i96*, i1*, i16*, i32*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint*)

define void @udp_hw_stub_wrapper(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i96*, i1*, i16*, i512*, i64*, i64*, i96*, i1*, i16*, i32*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint.3*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint.18*, %struct.ap_uint*) #7 {
entry:
  %86 = alloca %"class.hls::stream"
  %87 = alloca %"class.hls::stream"
  %88 = alloca %"class.hls::stream.26"
  %89 = alloca %"class.hls::stream.26"
  %90 = alloca %struct.ap_uint.3
  %91 = alloca [16 x %struct.socket_table]
  call void @copy_out(%"class.hls::stream"* %86, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream"* %87, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream.26"* %88, i512* %8, i64* %9, i64* %10, i96* %11, i1* %12, i16* %13, %"class.hls::stream.26"* %89, i512* %14, i64* %15, i64* %16, i96* %17, i1* %18, i16* %19, %struct.ap_uint.3* %90, i32* %20, [16 x %struct.socket_table]* %91, %struct.ap_uint.3* %21, %struct.ap_uint.3* %22, %struct.ap_uint.3* %23, %struct.ap_uint.3* %24, %struct.ap_uint.3* %25, %struct.ap_uint.3* %26, %struct.ap_uint.3* %27, %struct.ap_uint.3* %28, %struct.ap_uint.3* %29, %struct.ap_uint.3* %30, %struct.ap_uint.3* %31, %struct.ap_uint.3* %32, %struct.ap_uint.3* %33, %struct.ap_uint.3* %34, %struct.ap_uint.3* %35, %struct.ap_uint.3* %36, %struct.ap_uint* %37, %struct.ap_uint* %38, %struct.ap_uint* %39, %struct.ap_uint* %40, %struct.ap_uint* %41, %struct.ap_uint* %42, %struct.ap_uint* %43, %struct.ap_uint* %44, %struct.ap_uint* %45, %struct.ap_uint* %46, %struct.ap_uint* %47, %struct.ap_uint* %48, %struct.ap_uint* %49, %struct.ap_uint* %50, %struct.ap_uint* %51, %struct.ap_uint* %52, %struct.ap_uint* %53, %struct.ap_uint* %54, %struct.ap_uint* %55, %struct.ap_uint* %56, %struct.ap_uint* %57, %struct.ap_uint* %58, %struct.ap_uint* %59, %struct.ap_uint* %60, %struct.ap_uint* %61, %struct.ap_uint* %62, %struct.ap_uint* %63, %struct.ap_uint* %64, %struct.ap_uint* %65, %struct.ap_uint* %66, %struct.ap_uint* %67, %struct.ap_uint* %68, %struct.ap_uint.18* %69, %struct.ap_uint.18* %70, %struct.ap_uint.18* %71, %struct.ap_uint.18* %72, %struct.ap_uint.18* %73, %struct.ap_uint.18* %74, %struct.ap_uint.18* %75, %struct.ap_uint.18* %76, %struct.ap_uint.18* %77, %struct.ap_uint.18* %78, %struct.ap_uint.18* %79, %struct.ap_uint.18* %80, %struct.ap_uint.18* %81, %struct.ap_uint.18* %82, %struct.ap_uint.18* %83, %struct.ap_uint.18* %84, %struct.ap_uint* null, %struct.ap_uint* %85)
  %92 = bitcast [16 x %struct.socket_table]* %91 to %struct.socket_table*
  call void @udp_hw_stub(%"class.hls::stream"* %86, %"class.hls::stream"* %87, %"class.hls::stream.26"* %88, %"class.hls::stream.26"* %89, %struct.ap_uint.3* %90, %struct.socket_table* %92, %struct.ap_uint* %85)
  call void @copy_in(%"class.hls::stream"* %86, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream"* %87, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream.26"* %88, i512* %8, i64* %9, i64* %10, i96* %11, i1* %12, i16* %13, %"class.hls::stream.26"* %89, i512* %14, i64* %15, i64* %16, i96* %17, i1* %18, i16* %19, %struct.ap_uint.3* %90, i32* %20, [16 x %struct.socket_table]* %91, %struct.ap_uint.3* %21, %struct.ap_uint.3* %22, %struct.ap_uint.3* %23, %struct.ap_uint.3* %24, %struct.ap_uint.3* %25, %struct.ap_uint.3* %26, %struct.ap_uint.3* %27, %struct.ap_uint.3* %28, %struct.ap_uint.3* %29, %struct.ap_uint.3* %30, %struct.ap_uint.3* %31, %struct.ap_uint.3* %32, %struct.ap_uint.3* %33, %struct.ap_uint.3* %34, %struct.ap_uint.3* %35, %struct.ap_uint.3* %36, %struct.ap_uint* %37, %struct.ap_uint* %38, %struct.ap_uint* %39, %struct.ap_uint* %40, %struct.ap_uint* %41, %struct.ap_uint* %42, %struct.ap_uint* %43, %struct.ap_uint* %44, %struct.ap_uint* %45, %struct.ap_uint* %46, %struct.ap_uint* %47, %struct.ap_uint* %48, %struct.ap_uint* %49, %struct.ap_uint* %50, %struct.ap_uint* %51, %struct.ap_uint* %52, %struct.ap_uint* %53, %struct.ap_uint* %54, %struct.ap_uint* %55, %struct.ap_uint* %56, %struct.ap_uint* %57, %struct.ap_uint* %58, %struct.ap_uint* %59, %struct.ap_uint* %60, %struct.ap_uint* %61, %struct.ap_uint* %62, %struct.ap_uint* %63, %struct.ap_uint* %64, %struct.ap_uint* %65, %struct.ap_uint* %66, %struct.ap_uint* %67, %struct.ap_uint* %68, %struct.ap_uint.18* %69, %struct.ap_uint.18* %70, %struct.ap_uint.18* %71, %struct.ap_uint.18* %72, %struct.ap_uint.18* %73, %struct.ap_uint.18* %74, %struct.ap_uint.18* %75, %struct.ap_uint.18* %76, %struct.ap_uint.18* %77, %struct.ap_uint.18* %78, %struct.ap_uint.18* %79, %struct.ap_uint.18* %80, %struct.ap_uint.18* %81, %struct.ap_uint.18* %82, %struct.ap_uint.18* %83, %struct.ap_uint.18* %84, %struct.ap_uint* null, %struct.ap_uint* %85)
  ret void
}

declare void @udp_hw_stub(%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.26"*, %"class.hls::stream.26"*, %struct.ap_uint.3*, %struct.socket_table*, %struct.ap_uint*)

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
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }

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
