; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/PKT_HANDLER_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream.15" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint.3, %struct.ap_uint.6, %struct.ap_uint.6, %struct.ap_uint.9, %struct.ap_uint.9, %struct.ap_uint.9, %struct.ap_uint.12 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i512 }
%struct.ap_uint.6 = type { %struct.ap_int_base.7 }
%struct.ap_int_base.7 = type { %struct.ssdm_int.8 }
%struct.ssdm_int.8 = type { i64 }
%struct.ap_uint.9 = type { %struct.ap_int_base.10 }
%struct.ap_int_base.10 = type { %struct.ssdm_int.11 }
%struct.ssdm_int.11 = type { i1 }
%struct.ap_uint.12 = type { %struct.ap_int_base.13 }
%struct.ap_int_base.13 = type { %struct.ssdm_int.14 }
%struct.ssdm_int.14 = type { i3 }

; Function Attrs: noinline
define void @apatb_packet_handler_ir(%"class.hls::stream.15"* %dataIn, %"class.hls::stream.15"* %dataOut) local_unnamed_addr #0 {
entry:
  %dataIn_copy.data = alloca i512
  %dataIn_copy.keep = alloca i64
  %dataIn_copy.strb = alloca i64
  %dataIn_copy.last = alloca i1
  %dataIn_copy.dest = alloca i3
  %dataOut_copy.data = alloca i512
  %dataOut_copy.keep = alloca i64
  %dataOut_copy.strb = alloca i64
  %dataOut_copy.last = alloca i1
  %dataOut_copy.dest = alloca i3
  call fastcc void @copy_in(%"class.hls::stream.15"* %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, i3* %dataIn_copy.dest, %"class.hls::stream.15"* %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, i3* %dataOut_copy.dest)
  call void @apatb_packet_handler_hw(i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, i3* %dataIn_copy.dest, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, i3* %dataOut_copy.dest)
  call fastcc void @copy_out(%"class.hls::stream.15"* %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, i3* %dataIn_copy.dest, %"class.hls::stream.15"* %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last, i3* %dataOut_copy.dest)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream.15"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V, %"class.hls::stream.15"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_dest_V5) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15.34"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i3* %_V_dest_V, %"class.hls::stream.15"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15.34"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i3* %_V_dest_V5, %"class.hls::stream.15"* %1)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream.15"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V, %"class.hls::stream.15"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.4" %_V_dest_V5) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i3* %_V_dest_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* %1, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, i3* %_V_dest_V5)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.15"(%"class.hls::stream.15"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream.15"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.15.28"(%"class.hls::stream.15"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i3* %_V_dest_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.15.28"(%"class.hls::stream.15"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.4" %_V_dest_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream.15"
  %2 = alloca i512
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i1
  %6 = alloca i3
  br label %empty

empty:                                            ; preds = %push, %entry
  %7 = bitcast i512* %_V_data_V to i8*
  %8 = call i1 @fpga_fifo_not_empty_64(i8* %7)
  br i1 %8, label %push, label %ret

push:                                             ; preds = %empty
  %9 = bitcast i512* %2 to i8*
  %10 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_pop_64(i8* %9, i8* %10)
  %11 = load volatile i512, i512* %2
  %12 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0
  %13 = bitcast %struct.ap_uint.3* %12 to i512*
  store i512 %11, i512* %13
  %14 = bitcast i64* %4 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_pop_8(i8* %14, i8* %15)
  %16 = load volatile i64, i64* %4
  %17 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1
  %18 = bitcast %struct.ap_uint.6* %17 to i64*
  store i64 %16, i64* %18
  %19 = bitcast i64* %3 to i8*
  %20 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_pop_8(i8* %19, i8* %20)
  %21 = load volatile i64, i64* %3
  %22 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2
  %23 = bitcast %struct.ap_uint.6* %22 to i64*
  store i64 %21, i64* %23
  %24 = bitcast i1* %5 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %5 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 4
  %30 = bitcast %struct.ap_uint.9* %29 to i1*
  store i1 %28, i1* %30
  %31 = bitcast i3* %6 to i8*
  %32 = bitcast i3* %_V_dest_V to i8*
  call void @fpga_fifo_pop_1(i8* %31, i8* %32)
  %33 = bitcast i3* %6 to i8*
  %34 = load i8, i8* %33
  %35 = trunc i8 %34 to i3
  %36 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 6
  %37 = bitcast %struct.ap_uint.12* %36 to i3*
  store i3 %35, i3* %37
  %38 = bitcast %"class.hls::stream.15"* %1 to i8*
  %39 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @fpga_fifo_push_128(i8* %38, i8* %39)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.15.34"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i3* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream.15"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream.15"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream.15.37"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, i3* %_V_dest_V, %"class.hls::stream.15"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.15.37"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, i3* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.4" %_V_dest_V, %"class.hls::stream.15"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream.15"
  %2 = alloca %"class.hls::stream.15"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.15"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_128(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.15"* %2 to i8*
  %6 = bitcast %"class.hls::stream.15"* %0 to i8*
  call void @fpga_fifo_pop_128(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.15", %"class.hls::stream.15"* %2
  store %"class.hls::stream.15" %7, %"class.hls::stream.15"* %1
  %8 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %struct.ap_uint.3* %8 to i512*
  %10 = bitcast i512* %9 to i8*
  %11 = bitcast i512* %_V_data_V to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %struct.ap_uint.6* %12 to i64*
  %14 = bitcast i64* %13 to i8*
  %15 = bitcast i64* %_V_keep_V to i8*
  call void @fpga_fifo_push_8(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %struct.ap_uint.6* %16 to i64*
  %18 = bitcast i64* %17 to i8*
  %19 = bitcast i64* %_V_strb_V to i8*
  call void @fpga_fifo_push_8(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %struct.ap_uint.9* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  %24 = getelementptr inbounds %"class.hls::stream.15", %"class.hls::stream.15"* %1, i32 0, i32 0, i32 6
  %25 = bitcast %struct.ap_uint.12* %24 to i3*
  %26 = bitcast i3* %25 to i8*
  %27 = bitcast i3* %_V_dest_V to i8*
  call void @fpga_fifo_push_1(i8* %26, i8* %27)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_packet_handler_hw(i512*, i64*, i64*, i1*, i3*, i512*, i64*, i64*, i1*, i3*)

define void @packet_handler_hw_stub_wrapper(i512*, i64*, i64*, i1*, i3*, i512*, i64*, i64*, i1*, i3*) #5 {
entry:
  %10 = alloca %"class.hls::stream.15"
  %11 = alloca %"class.hls::stream.15"
  call void @copy_out(%"class.hls::stream.15"* %10, i512* %0, i64* %1, i64* %2, i1* %3, i3* %4, %"class.hls::stream.15"* %11, i512* %5, i64* %6, i64* %7, i1* %8, i3* %9)
  call void @packet_handler_hw_stub(%"class.hls::stream.15"* %10, %"class.hls::stream.15"* %11)
  call void @copy_in(%"class.hls::stream.15"* %10, i512* %0, i64* %1, i64* %2, i1* %3, i3* %4, %"class.hls::stream.15"* %11, i512* %5, i64* %6, i64* %7, i1* %8, i3* %9)
  ret void
}

declare void @packet_handler_hw_stub(%"class.hls::stream.15"*, %"class.hls::stream.15"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

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
