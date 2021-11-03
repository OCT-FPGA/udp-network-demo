; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/ETH_inserter_hls_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint, %struct.ap_uint.0, %struct.ap_uint.0, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i512 }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i64 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i1 }
%"class.hls::stream.11" = type { %struct.arpTableReply }
%struct.arpTableReply = type { %struct.ap_uint.12, i1 }
%struct.ap_uint.12 = type { %struct.ap_int_base.13 }
%struct.ap_int_base.13 = type { %struct.ssdm_int.14 }
%struct.ssdm_int.14 = type { i48 }
%"class.hls::stream.6" = type { %struct.ap_uint.7 }
%struct.ap_uint.7 = type { %struct.ap_int_base.8 }
%struct.ap_int_base.8 = type { %struct.ssdm_int.9 }
%struct.ssdm_int.9 = type { i32 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_ethernet_header_inserter_ir(%"class.hls::stream"* %dataIn, %"class.hls::stream"* %dataOut, %"class.hls::stream.11"* %arpTableReplay, %"class.hls::stream.6"* %arpTableRequest, %struct.ap_uint.12* %myMacAddress, %struct.ap_uint.7* %regSubNetMask, %struct.ap_uint.7* %regDefaultGateway) local_unnamed_addr #1 {
entry:
  %dataIn_copy.data = alloca i512
  %dataIn_copy.keep = alloca i64
  %dataIn_copy.strb = alloca i64
  %dataIn_copy.last = alloca i1
  %dataOut_copy.data = alloca i512
  %dataOut_copy.keep = alloca i64
  %dataOut_copy.strb = alloca i64
  %dataOut_copy.last = alloca i1
  %arpTableReplay_copy = alloca %"class.hls::stream.11", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream.11"* %arpTableReplay_copy) ]
  %arpTableRequest_copy1 = alloca i32, align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(i32* %arpTableRequest_copy1) ]
  %myMacAddress_copy2 = alloca i48, align 512
  %regSubNetMask_copy3 = alloca i32, align 512
  %regDefaultGateway_copy4 = alloca i32, align 512
  %0 = bitcast i32* %arpTableRequest_copy1 to %"class.hls::stream.6"*
  call fastcc void @copy_in(%"class.hls::stream"* %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, %"class.hls::stream"* %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, %"class.hls::stream.11"* %arpTableReplay, %"class.hls::stream.11"* nonnull align 512 %arpTableReplay_copy, %"class.hls::stream.6"* %arpTableRequest, %"class.hls::stream.6"* nonnull align 512 %0, %struct.ap_uint.12* %myMacAddress, i48* nonnull align 512 %myMacAddress_copy2, %struct.ap_uint.7* %regSubNetMask, i32* nonnull align 512 %regSubNetMask_copy3, %struct.ap_uint.7* %regDefaultGateway, i32* nonnull align 512 %regDefaultGateway_copy4)
  call void @apatb_ethernet_header_inserter_hw(i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, %"class.hls::stream.11"* %arpTableReplay_copy, %"class.hls::stream.6"* %0, i48* %myMacAddress_copy2, i32* %regSubNetMask_copy3, i32* %regDefaultGateway_copy4)
  call fastcc void @copy_out(%"class.hls::stream"* %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, %"class.hls::stream"* %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, %"class.hls::stream.11"* %arpTableReplay, %"class.hls::stream.11"* nonnull align 512 %arpTableReplay_copy, %"class.hls::stream.6"* %arpTableRequest, %"class.hls::stream.6"* nonnull align 512 %0, %struct.ap_uint.12* %myMacAddress, i48* nonnull align 512 %myMacAddress_copy2, %struct.ap_uint.7* %regSubNetMask, i32* nonnull align 512 %regSubNetMask_copy3, %struct.ap_uint.7* %regDefaultGateway, i32* nonnull align 512 %regDefaultGateway_copy4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.3" %_V_last_V4, %"class.hls::stream.11"*, %"class.hls::stream.11"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %struct.ap_uint.12* readonly, i48* noalias align 512, %struct.ap_uint.7* readonly, i32* noalias align 512, %struct.ap_uint.7* readonly, i32* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.72"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.72"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* align 512 %3, %"class.hls::stream.11"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* align 512 %5, %"class.hls::stream.6"* %4)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.12.55(i48* align 512 %7, %struct.ap_uint.12* %6)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.7(i32* align 512 %9, %struct.ap_uint.7* %8)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.7(i32* align 512 %11, %struct.ap_uint.7* %10)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream.11"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream.11"* %0, null
  %3 = icmp eq %"class.hls::stream.11"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* nonnull align 512 %0, %"class.hls::stream.11"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream.11"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream.11"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.11"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.11"* %2 to i8*
  %6 = bitcast %"class.hls::stream.11"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.11", %"class.hls::stream.11"* %2
  %8 = bitcast %"class.hls::stream.11"* %2 to i8*
  %9 = bitcast %"class.hls::stream.11"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream.6"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream.6"* %0, null
  %3 = icmp eq %"class.hls::stream.6"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* nonnull align 512 %0, %"class.hls::stream.6"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream.6"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream.6"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.6"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.6"* %2 to i8*
  %6 = bitcast %"class.hls::stream.6"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.6", %"class.hls::stream.6"* %2
  %8 = bitcast %"class.hls::stream.6"* %2 to i8*
  %9 = bitcast %"class.hls::stream.6"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.12(%struct.ap_uint.12* noalias, i48* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.ap_uint.12* %0, null
  %3 = icmp eq i48* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.12, %struct.ap_uint.12* %0, i64 0, i32 0, i32 0, i32 0
  %6 = load i48, i48* %1, align 512
  store i48 %6, i48* %5, align 8
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="6.3" %_V_last_V4, %"class.hls::stream.11"*, %"class.hls::stream.11"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream.6"*, %"class.hls::stream.6"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %struct.ap_uint.12*, i48* noalias readonly align 512, %struct.ap_uint.7*, i32* noalias readonly align 512, %struct.ap_uint.7*, i32* noalias readonly align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.11"(%"class.hls::stream.11"* %2, %"class.hls::stream.11"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.6"(%"class.hls::stream.6"* %4, %"class.hls::stream.6"* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.12(%struct.ap_uint.12* %6, i48* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.7.46(%struct.ap_uint.7* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0struct.ap_uint.7.46(%struct.ap_uint.7* %10, i32* align 512 %11)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.7(i32* noalias align 512, %struct.ap_uint.7* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq %struct.ap_uint.7* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.7, %struct.ap_uint.7* %1, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.7.46(%struct.ap_uint.7* noalias, i32* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.ap_uint.7* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.7, %struct.ap_uint.7* %0, i64 0, i32 0, i32 0, i32 0
  %6 = load i32, i32* %1, align 512
  store i32 %6, i32* %5, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0struct.ap_uint.12.55(i48* noalias align 512, %struct.ap_uint.12* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i48* %0, null
  %3 = icmp eq %struct.ap_uint.12* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = getelementptr inbounds %struct.ap_uint.12, %struct.ap_uint.12* %1, i64 0, i32 0, i32 0, i32 0
  %6 = load i48, i48* %5, align 8
  store i48 %6, i48* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.66"(%"class.hls::stream"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.66"(%"class.hls::stream"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
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
  %12 = bitcast %struct.ap_uint* %11 to i512*
  store i512 %10, i512* %12
  %13 = bitcast i64* %4 to i8*
  %14 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %13, i8* %14)
  %15 = load volatile i64, i64* %4
  %16 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %17 = bitcast %struct.ap_uint.0* %16 to i64*
  store i64 %15, i64* %17
  %18 = bitcast i64* %3 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %18, i8* %19)
  %20 = load volatile i64, i64* %3
  %21 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %22 = bitcast %struct.ap_uint.0* %21 to i64*
  store i64 %20, i64* %22
  %23 = bitcast i1* %5 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %5 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %28 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %29 = bitcast %struct.ap_uint.3* %28 to i1*
  store i1 %27, i1* %29
  %30 = bitcast %"class.hls::stream"* %1 to i8*
  %31 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %30, i8* %31)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.72"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.75"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.75"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  %9 = bitcast %struct.ap_uint* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %struct.ap_uint.0* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %struct.ap_uint.0* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %struct.ap_uint.3* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_ethernet_header_inserter_hw(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"class.hls::stream.11"*, %"class.hls::stream.6"*, i48*, i32*, i32*)

define void @ethernet_header_inserter_hw_stub_wrapper(i512*, i64*, i64*, i1*, i512*, i64*, i64*, i1*, %"class.hls::stream.11"*, %"class.hls::stream.6"*, i48*, i32*, i32*) #6 {
entry:
  %13 = alloca %"class.hls::stream"
  %14 = alloca %"class.hls::stream"
  %15 = alloca %struct.ap_uint.12
  %16 = alloca %struct.ap_uint.7
  %17 = alloca %struct.ap_uint.7
  call void @copy_out(%"class.hls::stream"* %13, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream"* %14, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream.11"* null, %"class.hls::stream.11"* %8, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %9, %struct.ap_uint.12* %15, i48* %10, %struct.ap_uint.7* %16, i32* %11, %struct.ap_uint.7* %17, i32* %12)
  call void @ethernet_header_inserter_hw_stub(%"class.hls::stream"* %13, %"class.hls::stream"* %14, %"class.hls::stream.11"* %8, %"class.hls::stream.6"* %9, %struct.ap_uint.12* %15, %struct.ap_uint.7* %16, %struct.ap_uint.7* %17)
  call void @copy_in(%"class.hls::stream"* %13, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream"* %14, i512* %4, i64* %5, i64* %6, i1* %7, %"class.hls::stream.11"* null, %"class.hls::stream.11"* %8, %"class.hls::stream.6"* null, %"class.hls::stream.6"* %9, %struct.ap_uint.12* %15, i48* %10, %struct.ap_uint.7* %16, i32* %11, %struct.ap_uint.7* %17, i32* %12)
  ret void
}

declare void @ethernet_header_inserter_hw_stub(%"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.11"*, %"class.hls::stream.6"*, %struct.ap_uint.12*, %struct.ap_uint.7*, %struct.ap_uint.7*)

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
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

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
