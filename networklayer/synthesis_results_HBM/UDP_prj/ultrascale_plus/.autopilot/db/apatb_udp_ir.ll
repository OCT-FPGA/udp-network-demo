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
define void @apatb_udp_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %rxUdpDataIn, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %txUdpDataOut, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias nonnull dereferenceable(128) %DataOutApp, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias nonnull dereferenceable(128) %DataInApp, %"struct.ap_uint<32>"* noalias nocapture nonnull readonly dereferenceable(4) %myIpAddress, %struct.socket_table* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" %SocketTable, %"struct.ap_uint<16>"* noalias nocapture nonnull dereferenceable(2) %numberSockets) local_unnamed_addr #0 {
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
  %SocketTable_copy.0_0 = alloca i32, align 512
  %SocketTable_copy.0_1 = alloca i32, align 512
  %SocketTable_copy.0_2 = alloca i32, align 512
  %SocketTable_copy.0_3 = alloca i32, align 512
  %SocketTable_copy.0_4 = alloca i32, align 512
  %SocketTable_copy.0_5 = alloca i32, align 512
  %SocketTable_copy.0_6 = alloca i32, align 512
  %SocketTable_copy.0_7 = alloca i32, align 512
  %SocketTable_copy.0_8 = alloca i32, align 512
  %SocketTable_copy.0_9 = alloca i32, align 512
  %SocketTable_copy.0_10 = alloca i32, align 512
  %SocketTable_copy.0_11 = alloca i32, align 512
  %SocketTable_copy.0_12 = alloca i32, align 512
  %SocketTable_copy.0_13 = alloca i32, align 512
  %SocketTable_copy.0_14 = alloca i32, align 512
  %SocketTable_copy.0_15 = alloca i32, align 512
  %SocketTable_copy.1_0 = alloca i16, align 512
  %SocketTable_copy.1_1 = alloca i16, align 512
  %SocketTable_copy.1_2 = alloca i16, align 512
  %SocketTable_copy.1_3 = alloca i16, align 512
  %SocketTable_copy.1_4 = alloca i16, align 512
  %SocketTable_copy.1_5 = alloca i16, align 512
  %SocketTable_copy.1_6 = alloca i16, align 512
  %SocketTable_copy.1_7 = alloca i16, align 512
  %SocketTable_copy.1_8 = alloca i16, align 512
  %SocketTable_copy.1_9 = alloca i16, align 512
  %SocketTable_copy.1_10 = alloca i16, align 512
  %SocketTable_copy.1_11 = alloca i16, align 512
  %SocketTable_copy.1_12 = alloca i16, align 512
  %SocketTable_copy.1_13 = alloca i16, align 512
  %SocketTable_copy.1_14 = alloca i16, align 512
  %SocketTable_copy.1_15 = alloca i16, align 512
  %SocketTable_copy.2_0 = alloca i16, align 512
  %SocketTable_copy.2_1 = alloca i16, align 512
  %SocketTable_copy.2_2 = alloca i16, align 512
  %SocketTable_copy.2_3 = alloca i16, align 512
  %SocketTable_copy.2_4 = alloca i16, align 512
  %SocketTable_copy.2_5 = alloca i16, align 512
  %SocketTable_copy.2_6 = alloca i16, align 512
  %SocketTable_copy.2_7 = alloca i16, align 512
  %SocketTable_copy.2_8 = alloca i16, align 512
  %SocketTable_copy.2_9 = alloca i16, align 512
  %SocketTable_copy.2_10 = alloca i16, align 512
  %SocketTable_copy.2_11 = alloca i16, align 512
  %SocketTable_copy.2_12 = alloca i16, align 512
  %SocketTable_copy.2_13 = alloca i16, align 512
  %SocketTable_copy.2_14 = alloca i16, align 512
  %SocketTable_copy.2_15 = alloca i16, align 512
  %SocketTable_copy.3_0 = alloca i1, align 512
  %SocketTable_copy.3_1 = alloca i1, align 512
  %SocketTable_copy.3_2 = alloca i1, align 512
  %SocketTable_copy.3_3 = alloca i1, align 512
  %SocketTable_copy.3_4 = alloca i1, align 512
  %SocketTable_copy.3_5 = alloca i1, align 512
  %SocketTable_copy.3_6 = alloca i1, align 512
  %SocketTable_copy.3_7 = alloca i1, align 512
  %SocketTable_copy.3_8 = alloca i1, align 512
  %SocketTable_copy.3_9 = alloca i1, align 512
  %SocketTable_copy.3_10 = alloca i1, align 512
  %SocketTable_copy.3_11 = alloca i1, align 512
  %SocketTable_copy.3_12 = alloca i1, align 512
  %SocketTable_copy.3_13 = alloca i1, align 512
  %SocketTable_copy.3_14 = alloca i1, align 512
  %SocketTable_copy.3_15 = alloca i1, align 512
  %numberSockets_copy = alloca i16, align 512
  %0 = bitcast %struct.socket_table* %SocketTable to [16 x %struct.socket_table]*
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %rxUdpDataIn, i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %txUdpDataOut, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* nonnull %DataOutApp, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* nonnull %DataInApp, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, %"struct.ap_uint<32>"* nonnull %myIpAddress, i32* nonnull align 512 %myIpAddress_copy, [16 x %struct.socket_table]* nonnull %0, i32* nonnull align 512 %SocketTable_copy.0_0, i32* nonnull align 512 %SocketTable_copy.0_1, i32* nonnull align 512 %SocketTable_copy.0_2, i32* nonnull align 512 %SocketTable_copy.0_3, i32* nonnull align 512 %SocketTable_copy.0_4, i32* nonnull align 512 %SocketTable_copy.0_5, i32* nonnull align 512 %SocketTable_copy.0_6, i32* nonnull align 512 %SocketTable_copy.0_7, i32* nonnull align 512 %SocketTable_copy.0_8, i32* nonnull align 512 %SocketTable_copy.0_9, i32* nonnull align 512 %SocketTable_copy.0_10, i32* nonnull align 512 %SocketTable_copy.0_11, i32* nonnull align 512 %SocketTable_copy.0_12, i32* nonnull align 512 %SocketTable_copy.0_13, i32* nonnull align 512 %SocketTable_copy.0_14, i32* nonnull align 512 %SocketTable_copy.0_15, i16* nonnull align 512 %SocketTable_copy.1_0, i16* nonnull align 512 %SocketTable_copy.1_1, i16* nonnull align 512 %SocketTable_copy.1_2, i16* nonnull align 512 %SocketTable_copy.1_3, i16* nonnull align 512 %SocketTable_copy.1_4, i16* nonnull align 512 %SocketTable_copy.1_5, i16* nonnull align 512 %SocketTable_copy.1_6, i16* nonnull align 512 %SocketTable_copy.1_7, i16* nonnull align 512 %SocketTable_copy.1_8, i16* nonnull align 512 %SocketTable_copy.1_9, i16* nonnull align 512 %SocketTable_copy.1_10, i16* nonnull align 512 %SocketTable_copy.1_11, i16* nonnull align 512 %SocketTable_copy.1_12, i16* nonnull align 512 %SocketTable_copy.1_13, i16* nonnull align 512 %SocketTable_copy.1_14, i16* nonnull align 512 %SocketTable_copy.1_15, i16* nonnull align 512 %SocketTable_copy.2_0, i16* nonnull align 512 %SocketTable_copy.2_1, i16* nonnull align 512 %SocketTable_copy.2_2, i16* nonnull align 512 %SocketTable_copy.2_3, i16* nonnull align 512 %SocketTable_copy.2_4, i16* nonnull align 512 %SocketTable_copy.2_5, i16* nonnull align 512 %SocketTable_copy.2_6, i16* nonnull align 512 %SocketTable_copy.2_7, i16* nonnull align 512 %SocketTable_copy.2_8, i16* nonnull align 512 %SocketTable_copy.2_9, i16* nonnull align 512 %SocketTable_copy.2_10, i16* nonnull align 512 %SocketTable_copy.2_11, i16* nonnull align 512 %SocketTable_copy.2_12, i16* nonnull align 512 %SocketTable_copy.2_13, i16* nonnull align 512 %SocketTable_copy.2_14, i16* nonnull align 512 %SocketTable_copy.2_15, i1* nonnull align 512 %SocketTable_copy.3_0, i1* nonnull align 512 %SocketTable_copy.3_1, i1* nonnull align 512 %SocketTable_copy.3_2, i1* nonnull align 512 %SocketTable_copy.3_3, i1* nonnull align 512 %SocketTable_copy.3_4, i1* nonnull align 512 %SocketTable_copy.3_5, i1* nonnull align 512 %SocketTable_copy.3_6, i1* nonnull align 512 %SocketTable_copy.3_7, i1* nonnull align 512 %SocketTable_copy.3_8, i1* nonnull align 512 %SocketTable_copy.3_9, i1* nonnull align 512 %SocketTable_copy.3_10, i1* nonnull align 512 %SocketTable_copy.3_11, i1* nonnull align 512 %SocketTable_copy.3_12, i1* nonnull align 512 %SocketTable_copy.3_13, i1* nonnull align 512 %SocketTable_copy.3_14, i1* nonnull align 512 %SocketTable_copy.3_15, %"struct.ap_uint<16>"* nonnull %numberSockets, i16* nonnull align 512 %numberSockets_copy)
  call void @apatb_udp_hw(i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, i32* %myIpAddress_copy, i32* %SocketTable_copy.0_0, i32* %SocketTable_copy.0_1, i32* %SocketTable_copy.0_2, i32* %SocketTable_copy.0_3, i32* %SocketTable_copy.0_4, i32* %SocketTable_copy.0_5, i32* %SocketTable_copy.0_6, i32* %SocketTable_copy.0_7, i32* %SocketTable_copy.0_8, i32* %SocketTable_copy.0_9, i32* %SocketTable_copy.0_10, i32* %SocketTable_copy.0_11, i32* %SocketTable_copy.0_12, i32* %SocketTable_copy.0_13, i32* %SocketTable_copy.0_14, i32* %SocketTable_copy.0_15, i16* %SocketTable_copy.1_0, i16* %SocketTable_copy.1_1, i16* %SocketTable_copy.1_2, i16* %SocketTable_copy.1_3, i16* %SocketTable_copy.1_4, i16* %SocketTable_copy.1_5, i16* %SocketTable_copy.1_6, i16* %SocketTable_copy.1_7, i16* %SocketTable_copy.1_8, i16* %SocketTable_copy.1_9, i16* %SocketTable_copy.1_10, i16* %SocketTable_copy.1_11, i16* %SocketTable_copy.1_12, i16* %SocketTable_copy.1_13, i16* %SocketTable_copy.1_14, i16* %SocketTable_copy.1_15, i16* %SocketTable_copy.2_0, i16* %SocketTable_copy.2_1, i16* %SocketTable_copy.2_2, i16* %SocketTable_copy.2_3, i16* %SocketTable_copy.2_4, i16* %SocketTable_copy.2_5, i16* %SocketTable_copy.2_6, i16* %SocketTable_copy.2_7, i16* %SocketTable_copy.2_8, i16* %SocketTable_copy.2_9, i16* %SocketTable_copy.2_10, i16* %SocketTable_copy.2_11, i16* %SocketTable_copy.2_12, i16* %SocketTable_copy.2_13, i16* %SocketTable_copy.2_14, i16* %SocketTable_copy.2_15, i1* %SocketTable_copy.3_0, i1* %SocketTable_copy.3_1, i1* %SocketTable_copy.3_2, i1* %SocketTable_copy.3_3, i1* %SocketTable_copy.3_4, i1* %SocketTable_copy.3_5, i1* %SocketTable_copy.3_6, i1* %SocketTable_copy.3_7, i1* %SocketTable_copy.3_8, i1* %SocketTable_copy.3_9, i1* %SocketTable_copy.3_10, i1* %SocketTable_copy.3_11, i1* %SocketTable_copy.3_12, i1* %SocketTable_copy.3_13, i1* %SocketTable_copy.3_14, i1* %SocketTable_copy.3_15, i16* %numberSockets_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %rxUdpDataIn, i512* %rxUdpDataIn_copy.data, i64* %rxUdpDataIn_copy.keep, i64* %rxUdpDataIn_copy.strb, i1* %rxUdpDataIn_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %txUdpDataOut, i512* %txUdpDataOut_copy.data, i64* %txUdpDataOut_copy.keep, i64* %txUdpDataOut_copy.strb, i1* %txUdpDataOut_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataOutApp, i512* %DataOutApp_copy.data, i64* %DataOutApp_copy.keep, i64* %DataOutApp_copy.strb, i96* %DataOutApp_copy.user, i1* %DataOutApp_copy.last, i16* %DataOutApp_copy.dest, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %DataInApp, i512* %DataInApp_copy.data, i64* %DataInApp_copy.keep, i64* %DataInApp_copy.strb, i96* %DataInApp_copy.user, i1* %DataInApp_copy.last, i16* %DataInApp_copy.dest, %"struct.ap_uint<32>"* %myIpAddress, i32* %myIpAddress_copy, [16 x %struct.socket_table]* %0, i32* %SocketTable_copy.0_0, i32* %SocketTable_copy.0_1, i32* %SocketTable_copy.0_2, i32* %SocketTable_copy.0_3, i32* %SocketTable_copy.0_4, i32* %SocketTable_copy.0_5, i32* %SocketTable_copy.0_6, i32* %SocketTable_copy.0_7, i32* %SocketTable_copy.0_8, i32* %SocketTable_copy.0_9, i32* %SocketTable_copy.0_10, i32* %SocketTable_copy.0_11, i32* %SocketTable_copy.0_12, i32* %SocketTable_copy.0_13, i32* %SocketTable_copy.0_14, i32* %SocketTable_copy.0_15, i16* %SocketTable_copy.1_0, i16* %SocketTable_copy.1_1, i16* %SocketTable_copy.1_2, i16* %SocketTable_copy.1_3, i16* %SocketTable_copy.1_4, i16* %SocketTable_copy.1_5, i16* %SocketTable_copy.1_6, i16* %SocketTable_copy.1_7, i16* %SocketTable_copy.1_8, i16* %SocketTable_copy.1_9, i16* %SocketTable_copy.1_10, i16* %SocketTable_copy.1_11, i16* %SocketTable_copy.1_12, i16* %SocketTable_copy.1_13, i16* %SocketTable_copy.1_14, i16* %SocketTable_copy.1_15, i16* %SocketTable_copy.2_0, i16* %SocketTable_copy.2_1, i16* %SocketTable_copy.2_2, i16* %SocketTable_copy.2_3, i16* %SocketTable_copy.2_4, i16* %SocketTable_copy.2_5, i16* %SocketTable_copy.2_6, i16* %SocketTable_copy.2_7, i16* %SocketTable_copy.2_8, i16* %SocketTable_copy.2_9, i16* %SocketTable_copy.2_10, i16* %SocketTable_copy.2_11, i16* %SocketTable_copy.2_12, i16* %SocketTable_copy.2_13, i16* %SocketTable_copy.2_14, i16* %SocketTable_copy.2_15, i1* %SocketTable_copy.3_0, i1* %SocketTable_copy.3_1, i1* %SocketTable_copy.3_2, i1* %SocketTable_copy.3_3, i1* %SocketTable_copy.3_4, i1* %SocketTable_copy.3_5, i1* %SocketTable_copy.3_6, i1* %SocketTable_copy.3_7, i1* %SocketTable_copy.3_8, i1* %SocketTable_copy.3_9, i1* %SocketTable_copy.3_10, i1* %SocketTable_copy.3_11, i1* %SocketTable_copy.3_12, i1* %SocketTable_copy.3_13, i1* %SocketTable_copy.3_14, i1* %SocketTable_copy.3_15, %"struct.ap_uint<16>"* %numberSockets, i16* %numberSockets_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_uint<32>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_uint<16>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.170"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<16>"* noalias readonly "unpacked"="1" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_uint<16>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<16>", %"struct.ap_uint<16>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.244"(%"struct.ap_uint<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_uint<32>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<32>", %"struct.ap_uint<32>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a16struct.socket_table.188.197.220.229(i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.0" %dst.0_0, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.1" %dst.0_1, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.2" %dst.0_2, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.3" %dst.0_3, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.4" %dst.0_4, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.5" %dst.0_5, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.6" %dst.0_6, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.7" %dst.0_7, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.8" %dst.0_8, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.9" %dst.0_9, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.10" %dst.0_10, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.11" %dst.0_11, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.12" %dst.0_12, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.13" %dst.0_13, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.14" %dst.0_14, i32* nocapture "orig.arg.no"="0" "unpacked"="0.0.0.15" %dst.0_15, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.0" %dst.1_0, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.1" %dst.1_1, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.2" %dst.1_2, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.3" %dst.1_3, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.4" %dst.1_4, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.5" %dst.1_5, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.6" %dst.1_6, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.7" %dst.1_7, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.8" %dst.1_8, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.9" %dst.1_9, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.10" %dst.1_10, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.11" %dst.1_11, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.12" %dst.1_12, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.13" %dst.1_13, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.14" %dst.1_14, i16* nocapture "orig.arg.no"="1" "unpacked"="0.1.0.15" %dst.1_15, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.0" %dst.2_0, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.1" %dst.2_1, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.2" %dst.2_2, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.3" %dst.2_3, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.4" %dst.2_4, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.5" %dst.2_5, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.6" %dst.2_6, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.7" %dst.2_7, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.8" %dst.2_8, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.9" %dst.2_9, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.10" %dst.2_10, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.11" %dst.2_11, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.12" %dst.2_12, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.13" %dst.2_13, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.14" %dst.2_14, i16* nocapture "orig.arg.no"="2" "unpacked"="0.2.0.15" %dst.2_15, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.0" %dst.3_0, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.1" %dst.3_1, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.2" %dst.3_2, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.3" %dst.3_3, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.4" %dst.3_4, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.5" %dst.3_5, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.6" %dst.3_6, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.7" %dst.3_7, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.8" %dst.3_8, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.9" %dst.3_9, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.10" %dst.3_10, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.11" %dst.3_11, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.12" %dst.3_12, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.13" %dst.3_13, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.14" %dst.3_14, i1* nocapture "orig.arg.no"="3" "unpacked"="0.3.0.15" %dst.3_15, [16 x %struct.socket_table]* readonly "orig.arg.no"="4" "unpacked"="1" %src, i64 "orig.arg.no"="5" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x %struct.socket_table]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.3.0.0.032.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.3.0.0.032.exit ]
  %1 = trunc i64 %for.loop.idx2 to i4
  %src.addr.0.0.0.07 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0, i32 0
  %2 = load i32, i32* %src.addr.0.0.0.07, align 4
  %src.addr.1.0.0.015 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %src, i64 0, i64 %for.loop.idx2, i32 1, i32 0, i32 0, i32 0
  %src.addr.2.0.0.023 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %src, i64 0, i64 %for.loop.idx2, i32 2, i32 0, i32 0, i32 0
  %src.addr.3.0.0.031 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %src, i64 0, i64 %for.loop.idx2, i32 3, i32 0, i32 0, i32 0
  switch i4 %1, label %dst.addr.3.0.0.032.case.15 [
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
  store i32 %2, i32* %dst.0_0, align 4
  %3 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %3, i16* %dst.1_0, align 2
  %4 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %4, i16* %dst.2_0, align 2
  %5 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %dst.3_0, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.1:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_1, align 4
  %8 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %8, i16* %dst.1_1, align 2
  %9 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %9, i16* %dst.2_1, align 2
  %10 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %11 = load i8, i8* %10
  %12 = trunc i8 %11 to i1
  store i1 %12, i1* %dst.3_1, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.2:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_2, align 4
  %13 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %13, i16* %dst.1_2, align 2
  %14 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %14, i16* %dst.2_2, align 2
  %15 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i1
  store i1 %17, i1* %dst.3_2, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.3:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_3, align 4
  %18 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %18, i16* %dst.1_3, align 2
  %19 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %19, i16* %dst.2_3, align 2
  %20 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %21 = load i8, i8* %20
  %22 = trunc i8 %21 to i1
  store i1 %22, i1* %dst.3_3, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.4:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_4, align 4
  %23 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %23, i16* %dst.1_4, align 2
  %24 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %24, i16* %dst.2_4, align 2
  %25 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  store i1 %27, i1* %dst.3_4, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.5:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_5, align 4
  %28 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %28, i16* %dst.1_5, align 2
  %29 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %29, i16* %dst.2_5, align 2
  %30 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %31 = load i8, i8* %30
  %32 = trunc i8 %31 to i1
  store i1 %32, i1* %dst.3_5, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.6:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_6, align 4
  %33 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %33, i16* %dst.1_6, align 2
  %34 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %34, i16* %dst.2_6, align 2
  %35 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %36 = load i8, i8* %35
  %37 = trunc i8 %36 to i1
  store i1 %37, i1* %dst.3_6, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.7:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_7, align 4
  %38 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %38, i16* %dst.1_7, align 2
  %39 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %39, i16* %dst.2_7, align 2
  %40 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %41 = load i8, i8* %40
  %42 = trunc i8 %41 to i1
  store i1 %42, i1* %dst.3_7, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.8:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_8, align 4
  %43 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %43, i16* %dst.1_8, align 2
  %44 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %44, i16* %dst.2_8, align 2
  %45 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %46 = load i8, i8* %45
  %47 = trunc i8 %46 to i1
  store i1 %47, i1* %dst.3_8, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.9:                        ; preds = %for.loop
  store i32 %2, i32* %dst.0_9, align 4
  %48 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %48, i16* %dst.1_9, align 2
  %49 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %49, i16* %dst.2_9, align 2
  %50 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %51 = load i8, i8* %50
  %52 = trunc i8 %51 to i1
  store i1 %52, i1* %dst.3_9, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.10:                       ; preds = %for.loop
  store i32 %2, i32* %dst.0_10, align 4
  %53 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %53, i16* %dst.1_10, align 2
  %54 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %54, i16* %dst.2_10, align 2
  %55 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %56 = load i8, i8* %55
  %57 = trunc i8 %56 to i1
  store i1 %57, i1* %dst.3_10, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.11:                       ; preds = %for.loop
  store i32 %2, i32* %dst.0_11, align 4
  %58 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %58, i16* %dst.1_11, align 2
  %59 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %59, i16* %dst.2_11, align 2
  %60 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %61 = load i8, i8* %60
  %62 = trunc i8 %61 to i1
  store i1 %62, i1* %dst.3_11, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.12:                       ; preds = %for.loop
  store i32 %2, i32* %dst.0_12, align 4
  %63 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %63, i16* %dst.1_12, align 2
  %64 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %64, i16* %dst.2_12, align 2
  %65 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %66 = load i8, i8* %65
  %67 = trunc i8 %66 to i1
  store i1 %67, i1* %dst.3_12, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.13:                       ; preds = %for.loop
  store i32 %2, i32* %dst.0_13, align 4
  %68 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %68, i16* %dst.1_13, align 2
  %69 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %69, i16* %dst.2_13, align 2
  %70 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %71 = load i8, i8* %70
  %72 = trunc i8 %71 to i1
  store i1 %72, i1* %dst.3_13, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.14:                       ; preds = %for.loop
  store i32 %2, i32* %dst.0_14, align 4
  %73 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %73, i16* %dst.1_14, align 2
  %74 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %74, i16* %dst.2_14, align 2
  %75 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %76 = load i8, i8* %75
  %77 = trunc i8 %76 to i1
  store i1 %77, i1* %dst.3_14, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.case.15:                       ; preds = %for.loop
  store i32 %2, i32* %dst.0_15, align 4
  %78 = load i16, i16* %src.addr.1.0.0.015, align 2
  store i16 %78, i16* %dst.1_15, align 2
  %79 = load i16, i16* %src.addr.2.0.0.023, align 2
  store i16 %79, i16* %dst.2_15, align 2
  %80 = bitcast i1* %src.addr.3.0.0.031 to i8*
  %81 = load i8, i8* %80
  %82 = trunc i8 %81 to i1
  store i1 %82, i1* %dst.3_15, align 1
  br label %dst.addr.3.0.0.032.exit

dst.addr.3.0.0.032.exit:                          ; preds = %dst.addr.3.0.0.032.case.15, %dst.addr.3.0.0.032.case.14, %dst.addr.3.0.0.032.case.13, %dst.addr.3.0.0.032.case.12, %dst.addr.3.0.0.032.case.11, %dst.addr.3.0.0.032.case.10, %dst.addr.3.0.0.032.case.9, %dst.addr.3.0.0.032.case.8, %dst.addr.3.0.0.032.case.7, %dst.addr.3.0.0.032.case.6, %dst.addr.3.0.0.032.case.5, %dst.addr.3.0.0.032.case.4, %dst.addr.3.0.0.032.case.3, %dst.addr.3.0.0.032.case.2, %dst.addr.3.0.0.032.case.1, %dst.addr.3.0.0.032.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.3.0.0.032.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16struct.socket_table(i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.0" %dst.0_0, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.1" %dst.0_1, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.2" %dst.0_2, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.3" %dst.0_3, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.4" %dst.0_4, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.5" %dst.0_5, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.6" %dst.0_6, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.7" %dst.0_7, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.8" %dst.0_8, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.9" %dst.0_9, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.10" %dst.0_10, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.11" %dst.0_11, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.12" %dst.0_12, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.13" %dst.0_13, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.14" %dst.0_14, i32* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0.15" %dst.0_15, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.0" %dst.1_0, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.1" %dst.1_1, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.2" %dst.1_2, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.3" %dst.1_3, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.4" %dst.1_4, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.5" %dst.1_5, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.6" %dst.1_6, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.7" %dst.1_7, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.8" %dst.1_8, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.9" %dst.1_9, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.10" %dst.1_10, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.11" %dst.1_11, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.12" %dst.1_12, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.13" %dst.1_13, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.14" %dst.1_14, i16* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="0.1.0.15" %dst.1_15, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.0" %dst.2_0, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.1" %dst.2_1, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.2" %dst.2_2, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.3" %dst.2_3, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.4" %dst.2_4, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.5" %dst.2_5, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.6" %dst.2_6, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.7" %dst.2_7, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.8" %dst.2_8, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.9" %dst.2_9, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.10" %dst.2_10, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.11" %dst.2_11, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.12" %dst.2_12, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.13" %dst.2_13, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.14" %dst.2_14, i16* noalias nocapture align 512 "orig.arg.no"="2" "unpacked"="0.2.0.15" %dst.2_15, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.0" %dst.3_0, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.1" %dst.3_1, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.2" %dst.3_2, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.3" %dst.3_3, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.4" %dst.3_4, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.5" %dst.3_5, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.6" %dst.3_6, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.7" %dst.3_7, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.8" %dst.3_8, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.9" %dst.3_9, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.10" %dst.3_10, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.11" %dst.3_11, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.12" %dst.3_12, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.13" %dst.3_13, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.14" %dst.3_14, i1* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="0.3.0.15" %dst.3_15, [16 x %struct.socket_table]* noalias readonly "orig.arg.no"="4" "unpacked"="1" %src) #1 {
entry:
  %0 = icmp eq [16 x %struct.socket_table]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16struct.socket_table.188.197.220.229(i32* %dst.0_0, i32* %dst.0_1, i32* %dst.0_2, i32* %dst.0_3, i32* %dst.0_4, i32* %dst.0_5, i32* %dst.0_6, i32* %dst.0_7, i32* %dst.0_8, i32* %dst.0_9, i32* %dst.0_10, i32* %dst.0_11, i32* %dst.0_12, i32* %dst.0_13, i32* %dst.0_14, i32* %dst.0_15, i16* %dst.1_0, i16* %dst.1_1, i16* %dst.1_2, i16* %dst.1_3, i16* %dst.1_4, i16* %dst.1_5, i16* %dst.1_6, i16* %dst.1_7, i16* %dst.1_8, i16* %dst.1_9, i16* %dst.1_10, i16* %dst.1_11, i16* %dst.1_12, i16* %dst.1_13, i16* %dst.1_14, i16* %dst.1_15, i16* %dst.2_0, i16* %dst.2_1, i16* %dst.2_2, i16* %dst.2_3, i16* %dst.2_4, i16* %dst.2_5, i16* %dst.2_6, i16* %dst.2_7, i16* %dst.2_8, i16* %dst.2_9, i16* %dst.2_10, i16* %dst.2_11, i16* %dst.2_12, i16* %dst.2_13, i16* %dst.2_14, i16* %dst.2_15, i1* %dst.3_0, i1* %dst.3_1, i1* %dst.3_2, i1* %dst.3_3, i1* %dst.3_4, i1* %dst.3_5, i1* %dst.3_6, i1* %dst.3_7, i1* %dst.3_8, i1* %dst.3_9, i1* %dst.3_10, i1* %dst.3_11, i1* %dst.3_12, i1* %dst.3_13, i1* %dst.3_14, i1* %dst.3_15, [16 x %struct.socket_table]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i512* noalias "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i512* noalias "orig.arg.no"="3" "unpacked"="3.0" %_V_data_V1, i64* noalias "orig.arg.no"="3" "unpacked"="3.1" %_V_keep_V2, i64* noalias "orig.arg.no"="3" "unpacked"="3.2" %_V_strb_V3, i1* noalias "orig.arg.no"="3" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i512* noalias "orig.arg.no"="5" "unpacked"="5.0" %_V_data_V15, i64* noalias "orig.arg.no"="5" "unpacked"="5.1" %_V_keep_V26, i64* noalias "orig.arg.no"="5" "unpacked"="5.2" %_V_strb_V37, i96* noalias "orig.arg.no"="5" "unpacked"="5.3" %_V_user_V, i1* noalias "orig.arg.no"="5" "unpacked"="5.4" %_V_last_V48, i16* noalias "orig.arg.no"="5" "unpacked"="5.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i512* noalias "orig.arg.no"="7" "unpacked"="7.0" %_V_data_V2, i64* noalias "orig.arg.no"="7" "unpacked"="7.1" %_V_keep_V3, i64* noalias "orig.arg.no"="7" "unpacked"="7.2" %_V_strb_V4, i96* noalias "orig.arg.no"="7" "unpacked"="7.3" %_V_user_V5, i1* noalias "orig.arg.no"="7" "unpacked"="7.4" %_V_last_V6, i16* noalias "orig.arg.no"="7" "unpacked"="7.5" %_V_dest_V7, %"struct.ap_uint<32>"* noalias readonly "orig.arg.no"="8" "unpacked"="8", i32* noalias nocapture align 512 "orig.arg.no"="9" "unpacked"="9.0", [16 x %struct.socket_table]* noalias readonly "orig.arg.no"="10" "unpacked"="10", i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.0" %.0_0, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.1" %.0_1, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.2" %.0_2, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.3" %.0_3, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.4" %.0_4, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.5" %.0_5, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.6" %.0_6, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.7" %.0_7, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.8" %.0_8, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.9" %.0_9, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.10" %.0_10, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.11" %.0_11, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.12" %.0_12, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.13" %.0_13, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.14" %.0_14, i32* noalias nocapture align 512 "orig.arg.no"="11" "unpacked"="11.0.0.15" %.0_15, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.0" %.1_0, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.1" %.1_1, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.2" %.1_2, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.3" %.1_3, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.4" %.1_4, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.5" %.1_5, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.6" %.1_6, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.7" %.1_7, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.8" %.1_8, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.9" %.1_9, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.10" %.1_10, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.11" %.1_11, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.12" %.1_12, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.13" %.1_13, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.14" %.1_14, i16* noalias nocapture align 512 "orig.arg.no"="12" "unpacked"="11.1.0.15" %.1_15, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.0" %.2_0, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.1" %.2_1, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.2" %.2_2, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.3" %.2_3, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.4" %.2_4, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.5" %.2_5, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.6" %.2_6, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.7" %.2_7, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.8" %.2_8, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.9" %.2_9, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.10" %.2_10, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.11" %.2_11, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.12" %.2_12, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.13" %.2_13, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.14" %.2_14, i16* noalias nocapture align 512 "orig.arg.no"="13" "unpacked"="11.2.0.15" %.2_15, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.0" %.3_0, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.1" %.3_1, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.2" %.3_2, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.3" %.3_3, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.4" %.3_4, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.5" %.3_5, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.6" %.3_6, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.7" %.3_7, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.8" %.3_8, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.9" %.3_9, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.10" %.3_10, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.11" %.3_11, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.12" %.3_12, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.13" %.3_13, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.14" %.3_14, i1* noalias nocapture align 512 "orig.arg.no"="14" "unpacked"="11.3.0.15" %.3_15, %"struct.ap_uint<16>"* noalias readonly "orig.arg.no"="15" "unpacked"="12", i16* noalias nocapture align 512 "orig.arg.no"="16" "unpacked"="13.0") #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.278"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.278"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"(i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"(i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* align 512 %5, %"struct.ap_uint<32>"* %4)
  call void @onebyonecpy_hls.p0a16struct.socket_table(i32* align 512 %.0_0, i32* align 512 %.0_1, i32* align 512 %.0_2, i32* align 512 %.0_3, i32* align 512 %.0_4, i32* align 512 %.0_5, i32* align 512 %.0_6, i32* align 512 %.0_7, i32* align 512 %.0_8, i32* align 512 %.0_9, i32* align 512 %.0_10, i32* align 512 %.0_11, i32* align 512 %.0_12, i32* align 512 %.0_13, i32* align 512 %.0_14, i32* align 512 %.0_15, i16* align 512 %.1_0, i16* align 512 %.1_1, i16* align 512 %.1_2, i16* align 512 %.1_3, i16* align 512 %.1_4, i16* align 512 %.1_5, i16* align 512 %.1_6, i16* align 512 %.1_7, i16* align 512 %.1_8, i16* align 512 %.1_9, i16* align 512 %.1_10, i16* align 512 %.1_11, i16* align 512 %.1_12, i16* align 512 %.1_13, i16* align 512 %.1_14, i16* align 512 %.1_15, i16* align 512 %.2_0, i16* align 512 %.2_1, i16* align 512 %.2_2, i16* align 512 %.2_3, i16* align 512 %.2_4, i16* align 512 %.2_5, i16* align 512 %.2_6, i16* align 512 %.2_7, i16* align 512 %.2_8, i16* align 512 %.2_9, i16* align 512 %.2_10, i16* align 512 %.2_11, i16* align 512 %.2_12, i16* align 512 %.2_13, i16* align 512 %.2_14, i16* align 512 %.2_15, i1* align 512 %.3_0, i1* align 512 %.3_1, i1* align 512 %.3_2, i1* align 512 %.3_3, i1* align 512 %.3_4, i1* align 512 %.3_5, i1* align 512 %.3_6, i1* align 512 %.3_7, i1* align 512 %.3_8, i1* align 512 %.3_9, i1* align 512 %.3_10, i1* align 512 %.3_11, i1* align 512 %.3_12, i1* align 512 %.3_13, i1* align 512 %.3_14, i1* align 512 %.3_15, [16 x %struct.socket_table]* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>.170"(i16* align 512 %8, %"struct.ap_uint<16>"* %7)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a16struct.socket_table.163.181.204.213.236([16 x %struct.socket_table]* "orig.arg.no"="0" "unpacked"="0" %dst, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.0" %src.0_0, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.1" %src.0_1, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.2" %src.0_2, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.3" %src.0_3, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.4" %src.0_4, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.5" %src.0_5, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.6" %src.0_6, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.7" %src.0_7, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.8" %src.0_8, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.9" %src.0_9, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.10" %src.0_10, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.11" %src.0_11, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.12" %src.0_12, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.13" %src.0_13, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.14" %src.0_14, i32* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0.15" %src.0_15, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.0" %src.1_0, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.1" %src.1_1, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.2" %src.1_2, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.3" %src.1_3, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.4" %src.1_4, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.5" %src.1_5, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.6" %src.1_6, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.7" %src.1_7, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.8" %src.1_8, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.9" %src.1_9, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.10" %src.1_10, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.11" %src.1_11, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.12" %src.1_12, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.13" %src.1_13, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.14" %src.1_14, i16* nocapture readonly "orig.arg.no"="2" "unpacked"="1.1.0.15" %src.1_15, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.0" %src.2_0, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.1" %src.2_1, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.2" %src.2_2, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.3" %src.2_3, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.4" %src.2_4, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.5" %src.2_5, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.6" %src.2_6, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.7" %src.2_7, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.8" %src.2_8, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.9" %src.2_9, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.10" %src.2_10, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.11" %src.2_11, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.12" %src.2_12, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.13" %src.2_13, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.14" %src.2_14, i16* nocapture readonly "orig.arg.no"="3" "unpacked"="1.2.0.15" %src.2_15, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.0" %src.3_0, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.1" %src.3_1, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.2" %src.3_2, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.3" %src.3_3, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.4" %src.3_4, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.5" %src.3_5, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.6" %src.3_6, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.7" %src.3_7, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.8" %src.3_8, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.9" %src.3_9, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.10" %src.3_10, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.11" %src.3_11, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.12" %src.3_12, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.13" %src.3_13, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.14" %src.3_14, i1* nocapture readonly "orig.arg.no"="4" "unpacked"="1.3.0.15" %src.3_15, i64 "orig.arg.no"="5" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [16 x %struct.socket_table]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.3.0.0.031.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.3.0.0.031.exit ]
  %1 = trunc i64 %for.loop.idx2 to i4
  %dst.addr.0.0.0.08 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %dst, i64 0, i64 %for.loop.idx2, i32 1, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %dst, i64 0, i64 %for.loop.idx2, i32 2, i32 0, i32 0, i32 0
  %dst.addr.3.0.0.032 = getelementptr [16 x %struct.socket_table], [16 x %struct.socket_table]* %dst, i64 0, i64 %for.loop.idx2, i32 3, i32 0, i32 0, i32 0
  switch i4 %1, label %src.addr.3.0.0.031.case.15 [
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
  %_0 = load i32, i32* %src.0_0, align 4
  store i32 %_0, i32* %dst.addr.0.0.0.08, align 4
  %_01 = load i16, i16* %src.1_0, align 2
  store i16 %_01, i16* %dst.addr.1.0.0.016, align 2
  %_021 = load i16, i16* %src.2_0, align 2
  store i16 %_021, i16* %dst.addr.2.0.0.024, align 2
  %2 = bitcast i1* %src.3_0 to i8*
  %3 = load i8, i8* %2
  %4 = trunc i8 %3 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.1:                        ; preds = %for.loop
  %_1 = load i32, i32* %src.0_1, align 4
  store i32 %_1, i32* %dst.addr.0.0.0.08, align 4
  %_16 = load i16, i16* %src.1_1, align 2
  store i16 %_16, i16* %dst.addr.1.0.0.016, align 2
  %_122 = load i16, i16* %src.2_1, align 2
  store i16 %_122, i16* %dst.addr.2.0.0.024, align 2
  %5 = bitcast i1* %src.3_1 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.2:                        ; preds = %for.loop
  %_2 = load i32, i32* %src.0_2, align 4
  store i32 %_2, i32* %dst.addr.0.0.0.08, align 4
  %_27 = load i16, i16* %src.1_2, align 2
  store i16 %_27, i16* %dst.addr.1.0.0.016, align 2
  %_223 = load i16, i16* %src.2_2, align 2
  store i16 %_223, i16* %dst.addr.2.0.0.024, align 2
  %8 = bitcast i1* %src.3_2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.3:                        ; preds = %for.loop
  %_3 = load i32, i32* %src.0_3, align 4
  store i32 %_3, i32* %dst.addr.0.0.0.08, align 4
  %_38 = load i16, i16* %src.1_3, align 2
  store i16 %_38, i16* %dst.addr.1.0.0.016, align 2
  %_324 = load i16, i16* %src.2_3, align 2
  store i16 %_324, i16* %dst.addr.2.0.0.024, align 2
  %11 = bitcast i1* %src.3_3 to i8*
  %12 = load i8, i8* %11
  %13 = trunc i8 %12 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.4:                        ; preds = %for.loop
  %_4 = load i32, i32* %src.0_4, align 4
  store i32 %_4, i32* %dst.addr.0.0.0.08, align 4
  %_49 = load i16, i16* %src.1_4, align 2
  store i16 %_49, i16* %dst.addr.1.0.0.016, align 2
  %_425 = load i16, i16* %src.2_4, align 2
  store i16 %_425, i16* %dst.addr.2.0.0.024, align 2
  %14 = bitcast i1* %src.3_4 to i8*
  %15 = load i8, i8* %14
  %16 = trunc i8 %15 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.5:                        ; preds = %for.loop
  %_5 = load i32, i32* %src.0_5, align 4
  store i32 %_5, i32* %dst.addr.0.0.0.08, align 4
  %_510 = load i16, i16* %src.1_5, align 2
  store i16 %_510, i16* %dst.addr.1.0.0.016, align 2
  %_526 = load i16, i16* %src.2_5, align 2
  store i16 %_526, i16* %dst.addr.2.0.0.024, align 2
  %17 = bitcast i1* %src.3_5 to i8*
  %18 = load i8, i8* %17
  %19 = trunc i8 %18 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.6:                        ; preds = %for.loop
  %_6 = load i32, i32* %src.0_6, align 4
  store i32 %_6, i32* %dst.addr.0.0.0.08, align 4
  %_611 = load i16, i16* %src.1_6, align 2
  store i16 %_611, i16* %dst.addr.1.0.0.016, align 2
  %_627 = load i16, i16* %src.2_6, align 2
  store i16 %_627, i16* %dst.addr.2.0.0.024, align 2
  %20 = bitcast i1* %src.3_6 to i8*
  %21 = load i8, i8* %20
  %22 = trunc i8 %21 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.7:                        ; preds = %for.loop
  %_7 = load i32, i32* %src.0_7, align 4
  store i32 %_7, i32* %dst.addr.0.0.0.08, align 4
  %_712 = load i16, i16* %src.1_7, align 2
  store i16 %_712, i16* %dst.addr.1.0.0.016, align 2
  %_728 = load i16, i16* %src.2_7, align 2
  store i16 %_728, i16* %dst.addr.2.0.0.024, align 2
  %23 = bitcast i1* %src.3_7 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.8:                        ; preds = %for.loop
  %_8 = load i32, i32* %src.0_8, align 4
  store i32 %_8, i32* %dst.addr.0.0.0.08, align 4
  %_813 = load i16, i16* %src.1_8, align 2
  store i16 %_813, i16* %dst.addr.1.0.0.016, align 2
  %_829 = load i16, i16* %src.2_8, align 2
  store i16 %_829, i16* %dst.addr.2.0.0.024, align 2
  %26 = bitcast i1* %src.3_8 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.9:                        ; preds = %for.loop
  %_9 = load i32, i32* %src.0_9, align 4
  store i32 %_9, i32* %dst.addr.0.0.0.08, align 4
  %_914 = load i16, i16* %src.1_9, align 2
  store i16 %_914, i16* %dst.addr.1.0.0.016, align 2
  %_930 = load i16, i16* %src.2_9, align 2
  store i16 %_930, i16* %dst.addr.2.0.0.024, align 2
  %29 = bitcast i1* %src.3_9 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.10:                       ; preds = %for.loop
  %_10 = load i32, i32* %src.0_10, align 4
  store i32 %_10, i32* %dst.addr.0.0.0.08, align 4
  %_1015 = load i16, i16* %src.1_10, align 2
  store i16 %_1015, i16* %dst.addr.1.0.0.016, align 2
  %_1031 = load i16, i16* %src.2_10, align 2
  store i16 %_1031, i16* %dst.addr.2.0.0.024, align 2
  %32 = bitcast i1* %src.3_10 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.11:                       ; preds = %for.loop
  %_11 = load i32, i32* %src.0_11, align 4
  store i32 %_11, i32* %dst.addr.0.0.0.08, align 4
  %_1116 = load i16, i16* %src.1_11, align 2
  store i16 %_1116, i16* %dst.addr.1.0.0.016, align 2
  %_1132 = load i16, i16* %src.2_11, align 2
  store i16 %_1132, i16* %dst.addr.2.0.0.024, align 2
  %35 = bitcast i1* %src.3_11 to i8*
  %36 = load i8, i8* %35
  %37 = trunc i8 %36 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.12:                       ; preds = %for.loop
  %_12 = load i32, i32* %src.0_12, align 4
  store i32 %_12, i32* %dst.addr.0.0.0.08, align 4
  %_1217 = load i16, i16* %src.1_12, align 2
  store i16 %_1217, i16* %dst.addr.1.0.0.016, align 2
  %_1233 = load i16, i16* %src.2_12, align 2
  store i16 %_1233, i16* %dst.addr.2.0.0.024, align 2
  %38 = bitcast i1* %src.3_12 to i8*
  %39 = load i8, i8* %38
  %40 = trunc i8 %39 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.13:                       ; preds = %for.loop
  %_13 = load i32, i32* %src.0_13, align 4
  store i32 %_13, i32* %dst.addr.0.0.0.08, align 4
  %_1318 = load i16, i16* %src.1_13, align 2
  store i16 %_1318, i16* %dst.addr.1.0.0.016, align 2
  %_1334 = load i16, i16* %src.2_13, align 2
  store i16 %_1334, i16* %dst.addr.2.0.0.024, align 2
  %41 = bitcast i1* %src.3_13 to i8*
  %42 = load i8, i8* %41
  %43 = trunc i8 %42 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.14:                       ; preds = %for.loop
  %_14 = load i32, i32* %src.0_14, align 4
  store i32 %_14, i32* %dst.addr.0.0.0.08, align 4
  %_1419 = load i16, i16* %src.1_14, align 2
  store i16 %_1419, i16* %dst.addr.1.0.0.016, align 2
  %_1435 = load i16, i16* %src.2_14, align 2
  store i16 %_1435, i16* %dst.addr.2.0.0.024, align 2
  %44 = bitcast i1* %src.3_14 to i8*
  %45 = load i8, i8* %44
  %46 = trunc i8 %45 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.case.15:                       ; preds = %for.loop
  %_15 = load i32, i32* %src.0_15, align 4
  store i32 %_15, i32* %dst.addr.0.0.0.08, align 4
  %_1520 = load i16, i16* %src.1_15, align 2
  store i16 %_1520, i16* %dst.addr.1.0.0.016, align 2
  %_1536 = load i16, i16* %src.2_15, align 2
  store i16 %_1536, i16* %dst.addr.2.0.0.024, align 2
  %47 = bitcast i1* %src.3_15 to i8*
  %48 = load i8, i8* %47
  %49 = trunc i8 %48 to i1
  br label %src.addr.3.0.0.031.exit

src.addr.3.0.0.031.exit:                          ; preds = %src.addr.3.0.0.031.case.15, %src.addr.3.0.0.031.case.14, %src.addr.3.0.0.031.case.13, %src.addr.3.0.0.031.case.12, %src.addr.3.0.0.031.case.11, %src.addr.3.0.0.031.case.10, %src.addr.3.0.0.031.case.9, %src.addr.3.0.0.031.case.8, %src.addr.3.0.0.031.case.7, %src.addr.3.0.0.031.case.6, %src.addr.3.0.0.031.case.5, %src.addr.3.0.0.031.case.4, %src.addr.3.0.0.031.case.3, %src.addr.3.0.0.031.case.2, %src.addr.3.0.0.031.case.1, %src.addr.3.0.0.031.case.0
  %50 = phi i1 [ %4, %src.addr.3.0.0.031.case.0 ], [ %7, %src.addr.3.0.0.031.case.1 ], [ %10, %src.addr.3.0.0.031.case.2 ], [ %13, %src.addr.3.0.0.031.case.3 ], [ %16, %src.addr.3.0.0.031.case.4 ], [ %19, %src.addr.3.0.0.031.case.5 ], [ %22, %src.addr.3.0.0.031.case.6 ], [ %25, %src.addr.3.0.0.031.case.7 ], [ %28, %src.addr.3.0.0.031.case.8 ], [ %31, %src.addr.3.0.0.031.case.9 ], [ %34, %src.addr.3.0.0.031.case.10 ], [ %37, %src.addr.3.0.0.031.case.11 ], [ %40, %src.addr.3.0.0.031.case.12 ], [ %43, %src.addr.3.0.0.031.case.13 ], [ %46, %src.addr.3.0.0.031.case.14 ], [ %49, %src.addr.3.0.0.031.case.15 ]
  store i1 %50, i1* %dst.addr.3.0.0.032, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.3.0.0.031.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a16struct.socket_table.160([16 x %struct.socket_table]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.0" %src.0_0, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.1" %src.0_1, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.2" %src.0_2, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.3" %src.0_3, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.4" %src.0_4, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.5" %src.0_5, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.6" %src.0_6, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.7" %src.0_7, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.8" %src.0_8, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.9" %src.0_9, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.10" %src.0_10, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.11" %src.0_11, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.12" %src.0_12, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.13" %src.0_13, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.14" %src.0_14, i32* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0.15" %src.0_15, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.0" %src.1_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.1" %src.1_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.2" %src.1_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.3" %src.1_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.4" %src.1_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.5" %src.1_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.6" %src.1_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.7" %src.1_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.8" %src.1_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.9" %src.1_9, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.10" %src.1_10, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.11" %src.1_11, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.12" %src.1_12, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.13" %src.1_13, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.14" %src.1_14, i16* noalias nocapture readonly align 512 "orig.arg.no"="2" "unpacked"="1.1.0.15" %src.1_15, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.0" %src.2_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.1" %src.2_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.2" %src.2_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.3" %src.2_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.4" %src.2_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.5" %src.2_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.6" %src.2_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.7" %src.2_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.8" %src.2_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.9" %src.2_9, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.10" %src.2_10, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.11" %src.2_11, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.12" %src.2_12, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.13" %src.2_13, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.14" %src.2_14, i16* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="1.2.0.15" %src.2_15, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.0" %src.3_0, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.1" %src.3_1, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.2" %src.3_2, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.3" %src.3_3, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.4" %src.3_4, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.5" %src.3_5, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.6" %src.3_6, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.7" %src.3_7, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.8" %src.3_8, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.9" %src.3_9, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.10" %src.3_10, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.11" %src.3_11, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.12" %src.3_12, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.13" %src.3_13, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.14" %src.3_14, i1* noalias nocapture readonly align 512 "orig.arg.no"="4" "unpacked"="1.3.0.15" %src.3_15) #1 {
entry:
  %0 = icmp eq [16 x %struct.socket_table]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16struct.socket_table.163.181.204.213.236([16 x %struct.socket_table]* nonnull %dst, i32* %src.0_0, i32* %src.0_1, i32* %src.0_2, i32* %src.0_3, i32* %src.0_4, i32* %src.0_5, i32* %src.0_6, i32* %src.0_7, i32* %src.0_8, i32* %src.0_9, i32* %src.0_10, i32* %src.0_11, i32* %src.0_12, i32* %src.0_13, i32* %src.0_14, i32* %src.0_15, i16* %src.1_0, i16* %src.1_1, i16* %src.1_2, i16* %src.1_3, i16* %src.1_4, i16* %src.1_5, i16* %src.1_6, i16* %src.1_7, i16* %src.1_8, i16* %src.1_9, i16* %src.1_10, i16* %src.1_11, i16* %src.1_12, i16* %src.1_13, i16* %src.1_14, i16* %src.1_15, i16* %src.2_0, i16* %src.2_1, i16* %src.2_2, i16* %src.2_3, i16* %src.2_4, i16* %src.2_5, i16* %src.2_6, i16* %src.2_7, i16* %src.2_8, i16* %src.2_9, i16* %src.2_10, i16* %src.2_11, i16* %src.2_12, i16* %src.2_13, i16* %src.2_14, i16* %src.2_15, i1* %src.3_0, i1* %src.3_1, i1* %src.3_2, i1* %src.3_3, i1* %src.3_4, i1* %src.3_5, i1* %src.3_6, i1* %src.3_7, i1* %src.3_8, i1* %src.3_9, i1* %src.3_10, i1* %src.3_11, i1* %src.3_12, i1* %src.3_13, i1* %src.3_14, i1* %src.3_15, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i512* noalias "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i512* noalias "orig.arg.no"="3" "unpacked"="3.0" %_V_data_V1, i64* noalias "orig.arg.no"="3" "unpacked"="3.1" %_V_keep_V2, i64* noalias "orig.arg.no"="3" "unpacked"="3.2" %_V_strb_V3, i1* noalias "orig.arg.no"="3" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i512* noalias "orig.arg.no"="5" "unpacked"="5.0" %_V_data_V15, i64* noalias "orig.arg.no"="5" "unpacked"="5.1" %_V_keep_V26, i64* noalias "orig.arg.no"="5" "unpacked"="5.2" %_V_strb_V37, i96* noalias "orig.arg.no"="5" "unpacked"="5.3" %_V_user_V, i1* noalias "orig.arg.no"="5" "unpacked"="5.4" %_V_last_V48, i16* noalias "orig.arg.no"="5" "unpacked"="5.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i512* noalias "orig.arg.no"="7" "unpacked"="7.0" %_V_data_V2, i64* noalias "orig.arg.no"="7" "unpacked"="7.1" %_V_keep_V3, i64* noalias "orig.arg.no"="7" "unpacked"="7.2" %_V_strb_V4, i96* noalias "orig.arg.no"="7" "unpacked"="7.3" %_V_user_V5, i1* noalias "orig.arg.no"="7" "unpacked"="7.4" %_V_last_V6, i16* noalias "orig.arg.no"="7" "unpacked"="7.5" %_V_dest_V7, %"struct.ap_uint<32>"* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias nocapture readonly align 512 "orig.arg.no"="9" "unpacked"="9.0", [16 x %struct.socket_table]* noalias "orig.arg.no"="10" "unpacked"="10", i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.0" %.0_0, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.1" %.0_1, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.2" %.0_2, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.3" %.0_3, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.4" %.0_4, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.5" %.0_5, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.6" %.0_6, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.7" %.0_7, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.8" %.0_8, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.9" %.0_9, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.10" %.0_10, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.11" %.0_11, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.12" %.0_12, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.13" %.0_13, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.14" %.0_14, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.15" %.0_15, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.0" %.1_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.1" %.1_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.2" %.1_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.3" %.1_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.4" %.1_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.5" %.1_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.6" %.1_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.7" %.1_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.8" %.1_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.9" %.1_9, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.10" %.1_10, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.11" %.1_11, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.12" %.1_12, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.13" %.1_13, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.14" %.1_14, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.15" %.1_15, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.0" %.2_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.1" %.2_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.2" %.2_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.3" %.2_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.4" %.2_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.5" %.2_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.6" %.2_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.7" %.2_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.8" %.2_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.9" %.2_9, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.10" %.2_10, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.11" %.2_11, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.12" %.2_12, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.13" %.2_13, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.14" %.2_14, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.15" %.2_15, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.0" %.3_0, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.1" %.3_1, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.2" %.3_2, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.3" %.3_3, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.4" %.3_4, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.5" %.3_5, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.6" %.3_6, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.7" %.3_7, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.8" %.3_8, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.9" %.3_9, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.10" %.3_10, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.11" %.3_11, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.12" %.3_12, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.13" %.3_13, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.14" %.3_14, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.15" %.3_15, %"struct.ap_uint<16>"* noalias "orig.arg.no"="15" "unpacked"="12", i16* noalias nocapture readonly align 512 "orig.arg.no"="16" "unpacked"="13.0") #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.294"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.294"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %3, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.244"(%"struct.ap_uint<32>"* %4, i32* align 512 %5)
  call void @onebyonecpy_hls.p0a16struct.socket_table.160([16 x %struct.socket_table]* %6, i32* align 512 %.0_0, i32* align 512 %.0_1, i32* align 512 %.0_2, i32* align 512 %.0_3, i32* align 512 %.0_4, i32* align 512 %.0_5, i32* align 512 %.0_6, i32* align 512 %.0_7, i32* align 512 %.0_8, i32* align 512 %.0_9, i32* align 512 %.0_10, i32* align 512 %.0_11, i32* align 512 %.0_12, i32* align 512 %.0_13, i32* align 512 %.0_14, i32* align 512 %.0_15, i16* align 512 %.1_0, i16* align 512 %.1_1, i16* align 512 %.1_2, i16* align 512 %.1_3, i16* align 512 %.1_4, i16* align 512 %.1_5, i16* align 512 %.1_6, i16* align 512 %.1_7, i16* align 512 %.1_8, i16* align 512 %.1_9, i16* align 512 %.1_10, i16* align 512 %.1_11, i16* align 512 %.1_12, i16* align 512 %.1_13, i16* align 512 %.1_14, i16* align 512 %.1_15, i16* align 512 %.2_0, i16* align 512 %.2_1, i16* align 512 %.2_2, i16* align 512 %.2_3, i16* align 512 %.2_4, i16* align 512 %.2_5, i16* align 512 %.2_6, i16* align 512 %.2_7, i16* align 512 %.2_8, i16* align 512 %.2_9, i16* align 512 %.2_10, i16* align 512 %.2_11, i16* align 512 %.2_12, i16* align 512 %.2_13, i16* align 512 %.2_14, i16* align 512 %.2_15, i1* align 512 %.3_0, i1* align 512 %.3_1, i1* align 512 %.3_2, i1* align 512 %.3_3, i1* align 512 %.3_4, i1* align 512 %.3_5, i1* align 512 %.3_6, i1* align 512 %.3_7, i1* align 512 %.3_8, i1* align 512 %.3_9, i1* align 512 %.3_10, i1* align 512 %.3_11, i1* align 512 %.3_12, i1* align 512 %.3_13, i1* align 512 %.3_14, i1* align 512 %.3_15)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %7, i16* align 512 %8)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 %dst, i512* noalias "unpacked"="1.0" %src_V_data_V, i64* noalias "unpacked"="1.1" %src_V_keep_V, i64* noalias "unpacked"="1.2" %src_V_strb_V, i1* noalias "unpacked"="1.3" %src_V_last_V) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.272"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %dst, i512* %src_V_data_V, i64* %src_V_keep_V, i64* %src_V_strb_V, i1* %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.272"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512, i512* noalias nocapture "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "unpacked"="1.3" %_V_last_V) unnamed_addr #6 {
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
  br label %empty, !llvm.loop !87

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.278"(i512* noalias "unpacked"="0.0" %dst_V_data_V, i64* noalias "unpacked"="0.1" %dst_V_keep_V, i64* noalias "unpacked"="0.2" %dst_V_strb_V, i1* noalias "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.281"(i512* %dst_V_data_V, i64* %dst_V_keep_V, i64* %dst_V_strb_V, i1* %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.281"(i512* noalias nocapture "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture) unnamed_addr #6 {
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
  br label %empty, !llvm.loop !87

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"(i512* noalias "unpacked"="0.0" %dst_V_data_V, i64* noalias "unpacked"="0.1" %dst_V_keep_V, i64* noalias "unpacked"="0.2" %dst_V_strb_V, i96* noalias "unpacked"="0.3" %dst_V_user_V, i1* noalias "unpacked"="0.4" %dst_V_last_V, i16* noalias "unpacked"="0.5" %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.288"(i512* %dst_V_data_V, i64* %dst_V_keep_V, i64* %dst_V_strb_V, i96* %dst_V_user_V, i1* %dst_V_last_V, i16* %dst_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.288"(i512* noalias nocapture "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "unpacked"="0.2" %_V_strb_V, i96* noalias nocapture "unpacked"="0.3" %_V_user_V, i1* noalias nocapture "unpacked"="0.4" %_V_last_V, i16* noalias nocapture "unpacked"="0.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias nocapture) unnamed_addr #6 {
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
  br label %empty, !llvm.loop !89

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.294"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias align 512 %dst, i512* noalias "unpacked"="1.0" %src_V_data_V, i64* noalias "unpacked"="1.1" %src_V_keep_V, i64* noalias "unpacked"="1.2" %src_V_strb_V, i96* noalias "unpacked"="1.3" %src_V_user_V, i1* noalias "unpacked"="1.4" %src_V_last_V, i16* noalias "unpacked"="1.5" %src_V_dest_V) unnamed_addr #5 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.297"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* nonnull align 512 %dst, i512* %src_V_data_V, i64* %src_V_keep_V, i64* %src_V_strb_V, i96* %src_V_user_V, i1* %src_V_last_V, i16* %src_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.297"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias nocapture align 512, i512* noalias nocapture "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "unpacked"="1.2" %_V_strb_V, i96* noalias nocapture "unpacked"="1.3" %_V_user_V, i1* noalias nocapture "unpacked"="1.4" %_V_last_V, i16* noalias nocapture "unpacked"="1.5" %_V_dest_V) unnamed_addr #6 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %2 = alloca i16
  %3 = alloca i512
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i1
  %7 = alloca i96
  br label %empty

empty:                                            ; preds = %push, %entry
  %8 = bitcast i512* %_V_data_V to i8*
  %9 = call i1 @fpga_fifo_not_empty_64(i8* %8)
  br i1 %9, label %push, label %ret

push:                                             ; preds = %empty
  %10 = bitcast i512* %3 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %10, i8* %11)
  %12 = load volatile i512, i512* %3
  %13 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 0
  %14 = bitcast %"struct.ap_uint<512>"* %13 to i512*
  store i512 %12, i512* %14
  %15 = bitcast i64* %5 to i8*
  %16 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %15, i8* %16)
  %17 = load volatile i64, i64* %5
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<64>"* %18 to i64*
  store i64 %17, i64* %19
  %20 = bitcast i64* %4 to i8*
  %21 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %20, i8* %21)
  %22 = load volatile i64, i64* %4
  %23 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 2
  %24 = bitcast %"struct.ap_uint<64>"* %23 to i64*
  store i64 %22, i64* %24
  %25 = bitcast i96* %7 to i8*
  %26 = bitcast i96* %_V_user_V to i8*
  call void @fpga_fifo_pop_16(i8* %25, i8* %26)
  %27 = load volatile i96, i96* %7
  %28 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 3
  %29 = bitcast %"struct.ap_uint<96>"* %28 to i96*
  store i96 %27, i96* %29
  %30 = bitcast i1* %6 to i8*
  %31 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %30, i8* %31)
  %32 = bitcast i1* %6 to i8*
  %33 = load i8, i8* %32
  %34 = trunc i8 %33 to i1
  %35 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 4
  %36 = bitcast %"struct.ap_uint<1>"* %35 to i1*
  store i1 %34, i1* %36
  %37 = bitcast i16* %2 to i8*
  %38 = bitcast i16* %_V_dest_V to i8*
  call void @fpga_fifo_pop_2(i8* %37, i8* %38)
  %39 = load volatile i16, i16* %2
  %40 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>", %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1, i32 0, i32 0, i32 6
  %41 = bitcast %"struct.ap_uint<16>"* %40 to i16*
  store i16 %39, i16* %41
  %42 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %1 to i8*
  %43 = bitcast %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %42, i8* %43)
  br label %empty, !llvm.loop !89

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_udp_hw(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i96*, i1*, i16*, i512*, i64*, i64*, i96*, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i16*)

; Function Attrs: argmemonly noinline
define internal void @copy_back(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "orig.arg.no"="0" "unpacked"="0", i512* noalias "orig.arg.no"="1" "unpacked"="1.0" %_V_data_V, i64* noalias "orig.arg.no"="1" "unpacked"="1.1" %_V_keep_V, i64* noalias "orig.arg.no"="1" "unpacked"="1.2" %_V_strb_V, i1* noalias "orig.arg.no"="1" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "orig.arg.no"="2" "unpacked"="2", i512* noalias "orig.arg.no"="3" "unpacked"="3.0" %_V_data_V1, i64* noalias "orig.arg.no"="3" "unpacked"="3.1" %_V_keep_V2, i64* noalias "orig.arg.no"="3" "unpacked"="3.2" %_V_strb_V3, i1* noalias "orig.arg.no"="3" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "orig.arg.no"="4" "unpacked"="4", i512* noalias "orig.arg.no"="5" "unpacked"="5.0" %_V_data_V15, i64* noalias "orig.arg.no"="5" "unpacked"="5.1" %_V_keep_V26, i64* noalias "orig.arg.no"="5" "unpacked"="5.2" %_V_strb_V37, i96* noalias "orig.arg.no"="5" "unpacked"="5.3" %_V_user_V, i1* noalias "orig.arg.no"="5" "unpacked"="5.4" %_V_last_V48, i16* noalias "orig.arg.no"="5" "unpacked"="5.5" %_V_dest_V, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* noalias "orig.arg.no"="6" "unpacked"="6", i512* noalias "orig.arg.no"="7" "unpacked"="7.0" %_V_data_V2, i64* noalias "orig.arg.no"="7" "unpacked"="7.1" %_V_keep_V3, i64* noalias "orig.arg.no"="7" "unpacked"="7.2" %_V_strb_V4, i96* noalias "orig.arg.no"="7" "unpacked"="7.3" %_V_user_V5, i1* noalias "orig.arg.no"="7" "unpacked"="7.4" %_V_last_V6, i16* noalias "orig.arg.no"="7" "unpacked"="7.5" %_V_dest_V7, %"struct.ap_uint<32>"* noalias "orig.arg.no"="8" "unpacked"="8", i32* noalias nocapture readonly align 512 "orig.arg.no"="9" "unpacked"="9.0", [16 x %struct.socket_table]* noalias "orig.arg.no"="10" "unpacked"="10", i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.0" %.0_0, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.1" %.0_1, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.2" %.0_2, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.3" %.0_3, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.4" %.0_4, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.5" %.0_5, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.6" %.0_6, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.7" %.0_7, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.8" %.0_8, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.9" %.0_9, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.10" %.0_10, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.11" %.0_11, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.12" %.0_12, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.13" %.0_13, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.14" %.0_14, i32* noalias nocapture readonly align 512 "orig.arg.no"="11" "unpacked"="11.0.0.15" %.0_15, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.0" %.1_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.1" %.1_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.2" %.1_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.3" %.1_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.4" %.1_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.5" %.1_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.6" %.1_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.7" %.1_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.8" %.1_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.9" %.1_9, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.10" %.1_10, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.11" %.1_11, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.12" %.1_12, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.13" %.1_13, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.14" %.1_14, i16* noalias nocapture readonly align 512 "orig.arg.no"="12" "unpacked"="11.1.0.15" %.1_15, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.0" %.2_0, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.1" %.2_1, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.2" %.2_2, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.3" %.2_3, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.4" %.2_4, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.5" %.2_5, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.6" %.2_6, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.7" %.2_7, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.8" %.2_8, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.9" %.2_9, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.10" %.2_10, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.11" %.2_11, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.12" %.2_12, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.13" %.2_13, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.14" %.2_14, i16* noalias nocapture readonly align 512 "orig.arg.no"="13" "unpacked"="11.2.0.15" %.2_15, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.0" %.3_0, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.1" %.3_1, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.2" %.3_2, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.3" %.3_3, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.4" %.3_4, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.5" %.3_5, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.6" %.3_6, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.7" %.3_7, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.8" %.3_8, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.9" %.3_9, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.10" %.3_10, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.11" %.3_11, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.12" %.3_12, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.13" %.3_13, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.14" %.3_14, i1* noalias nocapture readonly align 512 "orig.arg.no"="14" "unpacked"="11.3.0.15" %.3_15, %"struct.ap_uint<16>"* noalias "orig.arg.no"="15" "unpacked"="12", i16* noalias nocapture readonly align 512 "orig.arg.no"="16" "unpacked"="13.0") #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.294"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %2, i512* %_V_data_V15, i64* %_V_keep_V26, i64* %_V_strb_V37, i96* %_V_user_V, i1* %_V_last_V48, i16* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>.294"(%"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %3, i512* %_V_data_V2, i64* %_V_keep_V3, i64* %_V_strb_V4, i96* %_V_user_V5, i1* %_V_last_V6, i16* %_V_dest_V7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<16>"(%"struct.ap_uint<16>"* %7, i16* align 512 %8)
  ret void
}

define void @udp_hw_stub_wrapper(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, i512*, i64*, i64*, i96*, i1*, i16*, i512*, i64*, i64*, i96*, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i16*) #7 {
entry:
  %86 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %87 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %88 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %89 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"
  %90 = alloca %"struct.ap_uint<32>"
  %91 = alloca [16 x %struct.socket_table]
  %92 = alloca %"struct.ap_uint<16>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %86, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %87, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %88, i512* %8, i64* %9, i64* %10, i96* %11, i1* %12, i16* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %89, i512* %14, i64* %15, i64* %16, i96* %17, i1* %18, i16* %19, %"struct.ap_uint<32>"* %90, i32* %20, [16 x %struct.socket_table]* %91, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i16* %37, i16* %38, i16* %39, i16* %40, i16* %41, i16* %42, i16* %43, i16* %44, i16* %45, i16* %46, i16* %47, i16* %48, i16* %49, i16* %50, i16* %51, i16* %52, i16* %53, i16* %54, i16* %55, i16* %56, i16* %57, i16* %58, i16* %59, i16* %60, i16* %61, i16* %62, i16* %63, i16* %64, i16* %65, i16* %66, i16* %67, i16* %68, i1* %69, i1* %70, i1* %71, i1* %72, i1* %73, i1* %74, i1* %75, i1* %76, i1* %77, i1* %78, i1* %79, i1* %80, i1* %81, i1* %82, i1* %83, i1* %84, %"struct.ap_uint<16>"* %92, i16* %85)
  %93 = bitcast [16 x %struct.socket_table]* %91 to %struct.socket_table*
  call void @udp_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %86, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %87, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %88, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %89, %"struct.ap_uint<32>"* %90, %struct.socket_table* %93, %"struct.ap_uint<16>"* %92)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %86, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %87, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %88, i512* %8, i64* %9, i64* %10, i96* %11, i1* %12, i16* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"* %89, i512* %14, i64* %15, i64* %16, i96* %17, i1* %18, i16* %19, %"struct.ap_uint<32>"* %90, i32* %20, [16 x %struct.socket_table]* %91, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i16* %37, i16* %38, i16* %39, i16* %40, i16* %41, i16* %42, i16* %43, i16* %44, i16* %45, i16* %46, i16* %47, i16* %48, i16* %49, i16* %50, i16* %51, i16* %52, i16* %53, i16* %54, i16* %55, i16* %56, i16* %57, i16* %58, i16* %59, i16* %60, i16* %61, i16* %62, i16* %63, i16* %64, i16* %65, i16* %66, i16* %67, i16* %68, i1* %69, i1* %70, i1* %71, i1* %72, i1* %73, i1* %74, i1* %75, i1* %76, i1* %77, i1* %78, i1* %79, i1* %80, i1* %81, i1* %82, i1* %83, i1* %84, %"struct.ap_uint<16>"* %92, i16* %85)
  ret void
}

declare void @udp_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 96, 0, 16>, 0>"*, %"struct.ap_uint<32>"*, %struct.socket_table*, %"struct.ap_uint<16>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !27, !47, !67}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"5.0.0", [16 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!11 = !{!"5.0.0.0", i32* null}
!12 = !{!"5.0.0.1", i32* null}
!13 = !{!"5.0.0.2", i32* null}
!14 = !{!"5.0.0.3", i32* null}
!15 = !{!"5.0.0.4", i32* null}
!16 = !{!"5.0.0.5", i32* null}
!17 = !{!"5.0.0.6", i32* null}
!18 = !{!"5.0.0.7", i32* null}
!19 = !{!"5.0.0.8", i32* null}
!20 = !{!"5.0.0.9", i32* null}
!21 = !{!"5.0.0.10", i32* null}
!22 = !{!"5.0.0.11", i32* null}
!23 = !{!"5.0.0.12", i32* null}
!24 = !{!"5.0.0.13", i32* null}
!25 = !{!"5.0.0.14", i32* null}
!26 = !{!"5.0.0.15", i32* null}
!27 = !{!28, !8, !30}
!28 = !{!29}
!29 = !{!"5.1.0", [16 x i16]* null}
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!31 = !{!"5.1.0.0", i16* null}
!32 = !{!"5.1.0.1", i16* null}
!33 = !{!"5.1.0.2", i16* null}
!34 = !{!"5.1.0.3", i16* null}
!35 = !{!"5.1.0.4", i16* null}
!36 = !{!"5.1.0.5", i16* null}
!37 = !{!"5.1.0.6", i16* null}
!38 = !{!"5.1.0.7", i16* null}
!39 = !{!"5.1.0.8", i16* null}
!40 = !{!"5.1.0.9", i16* null}
!41 = !{!"5.1.0.10", i16* null}
!42 = !{!"5.1.0.11", i16* null}
!43 = !{!"5.1.0.12", i16* null}
!44 = !{!"5.1.0.13", i16* null}
!45 = !{!"5.1.0.14", i16* null}
!46 = !{!"5.1.0.15", i16* null}
!47 = !{!48, !8, !50}
!48 = !{!49}
!49 = !{!"5.2.0", [16 x i16]* null}
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!51 = !{!"5.2.0.0", i16* null}
!52 = !{!"5.2.0.1", i16* null}
!53 = !{!"5.2.0.2", i16* null}
!54 = !{!"5.2.0.3", i16* null}
!55 = !{!"5.2.0.4", i16* null}
!56 = !{!"5.2.0.5", i16* null}
!57 = !{!"5.2.0.6", i16* null}
!58 = !{!"5.2.0.7", i16* null}
!59 = !{!"5.2.0.8", i16* null}
!60 = !{!"5.2.0.9", i16* null}
!61 = !{!"5.2.0.10", i16* null}
!62 = !{!"5.2.0.11", i16* null}
!63 = !{!"5.2.0.12", i16* null}
!64 = !{!"5.2.0.13", i16* null}
!65 = !{!"5.2.0.14", i16* null}
!66 = !{!"5.2.0.15", i16* null}
!67 = !{!68, !8, !70}
!68 = !{!69}
!69 = !{!"5.3.0", [16 x i1]* null}
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!71 = !{!"5.3.0.0", i1* null}
!72 = !{!"5.3.0.1", i1* null}
!73 = !{!"5.3.0.2", i1* null}
!74 = !{!"5.3.0.3", i1* null}
!75 = !{!"5.3.0.4", i1* null}
!76 = !{!"5.3.0.5", i1* null}
!77 = !{!"5.3.0.6", i1* null}
!78 = !{!"5.3.0.7", i1* null}
!79 = !{!"5.3.0.8", i1* null}
!80 = !{!"5.3.0.9", i1* null}
!81 = !{!"5.3.0.10", i1* null}
!82 = !{!"5.3.0.11", i1* null}
!83 = !{!"5.3.0.12", i1* null}
!84 = !{!"5.3.0.13", i1* null}
!85 = !{!"5.3.0.14", i1* null}
!86 = !{!"5.3.0.15", i1* null}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.rotate.disable"}
!89 = distinct !{!89, !88}
