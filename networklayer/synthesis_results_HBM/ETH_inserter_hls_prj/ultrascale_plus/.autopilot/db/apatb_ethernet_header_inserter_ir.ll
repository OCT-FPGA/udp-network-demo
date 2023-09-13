; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/ETH_inserter_hls_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
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
%"class.hls::stream<arpTableReply, 0>" = type { %struct.arpTableReply }
%struct.arpTableReply = type { %"struct.ap_uint<48>", i1 }
%"struct.ap_uint<48>" = type { %"struct.ap_int_base<48, false>" }
%"struct.ap_int_base<48, false>" = type { %"struct.ssdm_int<48, false>" }
%"struct.ssdm_int<48, false>" = type { i48 }
%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_ethernet_header_inserter_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %dataIn, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %dataOut, %"class.hls::stream<arpTableReply, 0>"* noalias nocapture nonnull dereferenceable(16) %arpTableReplay, %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture nonnull dereferenceable(4) %arpTableRequest, %"struct.ap_uint<48>"* noalias nocapture nonnull readonly dereferenceable(8) %myMacAddress, %"struct.ap_uint<32>"* noalias nocapture nonnull readonly dereferenceable(4) %regSubNetMask, %"struct.ap_uint<32>"* noalias nocapture nonnull readonly dereferenceable(4) %regDefaultGateway) local_unnamed_addr #1 {
entry:
  %dataIn_copy.data = alloca i512
  %dataIn_copy.keep = alloca i64
  %dataIn_copy.strb = alloca i64
  %dataIn_copy.last = alloca i1
  %dataOut_copy.data = alloca i512
  %dataOut_copy.keep = alloca i64
  %dataOut_copy.strb = alloca i64
  %dataOut_copy.last = alloca i1
  %arpTableReplay_copy = alloca %"class.hls::stream<arpTableReply, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<arpTableReply, 0>"* %arpTableReplay_copy, i32 0) ]
  %arpTableRequest_copy = alloca i32, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i32* %arpTableRequest_copy, i32 0) ]
  %myMacAddress_copy = alloca i48, align 512
  %regSubNetMask_copy = alloca i32, align 512
  %regDefaultGateway_copy = alloca i32, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, %"class.hls::stream<arpTableReply, 0>"* nonnull %arpTableReplay, %"class.hls::stream<arpTableReply, 0>"* nonnull align 512 %arpTableReplay_copy, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %arpTableRequest, i32* nonnull align 512 %arpTableRequest_copy, %"struct.ap_uint<48>"* nonnull %myMacAddress, i48* nonnull align 512 %myMacAddress_copy, %"struct.ap_uint<32>"* nonnull %regSubNetMask, i32* nonnull align 512 %regSubNetMask_copy, %"struct.ap_uint<32>"* nonnull %regDefaultGateway, i32* nonnull align 512 %regDefaultGateway_copy)
  call void @apatb_ethernet_header_inserter_hw(i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, %"class.hls::stream<arpTableReply, 0>"* %arpTableReplay_copy, i32* %arpTableRequest_copy, i48* %myMacAddress_copy, i32* %regSubNetMask_copy, i32* %regDefaultGateway_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, %"class.hls::stream<arpTableReply, 0>"* %arpTableReplay, %"class.hls::stream<arpTableReply, 0>"* %arpTableReplay_copy, %"class.hls::stream<ap_uint<32>, 0>"* %arpTableRequest, i32* %arpTableRequest_copy, %"struct.ap_uint<48>"* %myMacAddress, i48* %myMacAddress_copy, %"struct.ap_uint<32>"* %regSubNetMask, i32* %regSubNetMask_copy, %"struct.ap_uint<32>"* %regDefaultGateway, i32* %regDefaultGateway_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i512* noalias "unpacked"="1.0" %_V_data_V, i64* noalias "unpacked"="1.1" %_V_keep_V, i64* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="2", i512* noalias "unpacked"="3.0" %_V_data_V1, i64* noalias "unpacked"="3.1" %_V_keep_V2, i64* noalias "unpacked"="3.2" %_V_strb_V3, i1* noalias "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<arpTableReply, 0>"* noalias "unpacked"="4", %"class.hls::stream<arpTableReply, 0>"* noalias align 512 "unpacked"="5", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_uint<48>"* noalias readonly "unpacked"="8", i48* noalias nocapture align 512 "unpacked"="9.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="10", i32* noalias nocapture align 512 "unpacked"="11.0", %"struct.ap_uint<32>"* noalias readonly "unpacked"="12", i32* noalias nocapture align 512 "unpacked"="13.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.59"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.59"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* align 512 %3, %"class.hls::stream<arpTableReply, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.38"(i32* align 512 %5, %"class.hls::stream<ap_uint<32>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>"(i48* align 512 %7, %"struct.ap_uint<48>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.21"(i32* align 512 %9, %"struct.ap_uint<32>"* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.21"(i32* align 512 %11, %"struct.ap_uint<32>"* %10)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* noalias align 512 %dst, %"class.hls::stream<arpTableReply, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<arpTableReply, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<arpTableReply, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* nonnull align 512 %dst, %"class.hls::stream<arpTableReply, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* noalias nocapture align 512, %"class.hls::stream<arpTableReply, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<arpTableReply, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<arpTableReply, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<arpTableReply, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<arpTableReply, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<arpTableReply, 0>", %"class.hls::stream<arpTableReply, 0>"* %2
  %8 = bitcast %"class.hls::stream<arpTableReply, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<arpTableReply, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull %dst, i32* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<32>, 0>" undef, i32 %8, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<32>, 0>" %.ivi, %"class.hls::stream<ap_uint<32>, 0>"* %3
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>"(i48* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<48>"* noalias readonly "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"struct.ap_uint<48>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_uint<48>", %"struct.ap_uint<48>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i48, i48* %src.0.0.03, align 8
  store i48 %1, i48* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i512* noalias "unpacked"="1.0" %_V_data_V, i64* noalias "unpacked"="1.1" %_V_keep_V, i64* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="2", i512* noalias "unpacked"="3.0" %_V_data_V1, i64* noalias "unpacked"="3.1" %_V_keep_V2, i64* noalias "unpacked"="3.2" %_V_strb_V3, i1* noalias "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<arpTableReply, 0>"* noalias "unpacked"="4", %"class.hls::stream<arpTableReply, 0>"* noalias align 512 "unpacked"="5", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_uint<48>"* noalias "unpacked"="8", i48* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_uint<32>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_uint<32>"* noalias "unpacked"="12", i32* noalias nocapture readonly align 512 "unpacked"="13.0") unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* %2, %"class.hls::stream<arpTableReply, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %4, i32* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>.30"(%"struct.ap_uint<48>"* %6, i48* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %8, i32* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %10, i32* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.21"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>.30"(%"struct.ap_uint<48>"* noalias "unpacked"="0" %dst, i48* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq %"struct.ap_uint<48>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_uint<48>", %"struct.ap_uint<48>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i48, i48* %src, align 512
  store i48 %1, i48* %dst.0.0.04, align 8
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>.38"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.41"(i32* align 512 %dst, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>.41"(i32* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<32>, 0>" %8, 0, 0, 0, 0
  store i32 %.evi, i32* %3
  %9 = bitcast i32* %3 to i8*
  %10 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 %dst, i512* noalias "unpacked"="1.0" %src_V_data_V, i64* noalias "unpacked"="1.1" %src_V_keep_V, i64* noalias "unpacked"="1.2" %src_V_strb_V, i1* noalias "unpacked"="1.3" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.53"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %dst, i512* %src_V_data_V, i64* %src_V_keep_V, i64* %src_V_strb_V, i1* %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.53"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512, i512* noalias nocapture "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
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
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.59"(i512* noalias "unpacked"="0.0" %dst_V_data_V, i64* noalias "unpacked"="0.1" %dst_V_keep_V, i64* noalias "unpacked"="0.2" %dst_V_strb_V, i1* noalias "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.62"(i512* %dst_V_data_V, i64* %dst_V_keep_V, i64* %dst_V_strb_V, i1* %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.62"(i512* noalias nocapture "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture) unnamed_addr #4 {
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
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_ethernet_header_inserter_hw(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"class.hls::stream<arpTableReply, 0>"*, i32*, i48*, i32*, i32*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i512* noalias "unpacked"="1.0" %_V_data_V, i64* noalias "unpacked"="1.1" %_V_keep_V, i64* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="2", i512* noalias "unpacked"="3.0" %_V_data_V1, i64* noalias "unpacked"="3.1" %_V_keep_V2, i64* noalias "unpacked"="3.2" %_V_strb_V3, i1* noalias "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<arpTableReply, 0>"* noalias "unpacked"="4", %"class.hls::stream<arpTableReply, 0>"* noalias align 512 "unpacked"="5", %"class.hls::stream<ap_uint<32>, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", %"struct.ap_uint<48>"* noalias "unpacked"="8", i48* noalias nocapture readonly align 512 "unpacked"="9.0", %"struct.ap_uint<32>"* noalias "unpacked"="10", i32* noalias nocapture readonly align 512 "unpacked"="11.0", %"struct.ap_uint<32>"* noalias "unpacked"="12", i32* noalias nocapture readonly align 512 "unpacked"="13.0") unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* %2, %"class.hls::stream<arpTableReply, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %4, i32* align 512 %5)
  ret void
}

define void @ethernet_header_inserter_hw_stub_wrapper(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"class.hls::stream<arpTableReply, 0>"*, i32*, i48*, i32*, i32*) #7 {
entry:
  %13 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %14 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %15 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  %16 = alloca %"struct.ap_uint<48>"
  %17 = alloca %"struct.ap_uint<32>"
  %18 = alloca %"struct.ap_uint<32>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %13, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %14, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<arpTableReply, 0>"* null, %"class.hls::stream<arpTableReply, 0>"* %8, %"class.hls::stream<ap_uint<32>, 0>"* %15, i32* %9, %"struct.ap_uint<48>"* %16, i48* %10, %"struct.ap_uint<32>"* %17, i32* %11, %"struct.ap_uint<32>"* %18, i32* %12)
  call void @ethernet_header_inserter_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %13, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %14, %"class.hls::stream<arpTableReply, 0>"* %8, %"class.hls::stream<ap_uint<32>, 0>"* %15, %"struct.ap_uint<48>"* %16, %"struct.ap_uint<32>"* %17, %"struct.ap_uint<32>"* %18)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %13, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %14, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream<arpTableReply, 0>"* null, %"class.hls::stream<arpTableReply, 0>"* %8, %"class.hls::stream<ap_uint<32>, 0>"* %15, i32* %9, %"struct.ap_uint<48>"* %16, i48* %10, %"struct.ap_uint<32>"* %17, i32* %11, %"struct.ap_uint<32>"* %18, i32* %12)
  ret void
}

declare void @ethernet_header_inserter_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<arpTableReply, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, %"struct.ap_uint<48>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="128" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
