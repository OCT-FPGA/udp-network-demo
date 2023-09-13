; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/ICMP_hls_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<32>" = type { %"struct.ap_int_base<32, false>" }
%"struct.ap_int_base<32, false>" = type { %"struct.ssdm_int<32, false>" }
%"struct.ssdm_int<32, false>" = type { i32 }
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

; Function Attrs: noinline
define void @apatb_icmp_server_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %dataIn, %"struct.ap_uint<32>"* noalias nocapture nonnull readonly dereferenceable(4) %myIpAddress, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(128) %dataOut) local_unnamed_addr #0 {
entry:
  %dataIn_copy.data = alloca i512
  %dataIn_copy.keep = alloca i64
  %dataIn_copy.strb = alloca i64
  %dataIn_copy.last = alloca i1
  %myIpAddress_copy = alloca i32, align 512
  %dataOut_copy.data = alloca i512
  %dataOut_copy.keep = alloca i64
  %dataOut_copy.strb = alloca i64
  %dataOut_copy.last = alloca i1
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, %"struct.ap_uint<32>"* nonnull %myIpAddress, i32* nonnull align 512 %myIpAddress_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last)
  call void @apatb_icmp_server_hw(i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, i32* %myIpAddress_copy, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dataIn, i512* %dataIn_copy.data, i64* %dataIn_copy.keep, i64* %dataIn_copy.strb, i1* %dataIn_copy.last, %"struct.ap_uint<32>"* %myIpAddress, i32* %myIpAddress_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dataOut, i512* %dataOut_copy.data, i64* %dataOut_copy.keep, i64* %dataOut_copy.strb, i1* %dataOut_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i512* noalias "unpacked"="1.0" %_V_data_V, i64* noalias "unpacked"="1.1" %_V_keep_V, i64* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"struct.ap_uint<32>"* noalias readonly "unpacked"="2", i32* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="4", i512* noalias "unpacked"="5.0" %_V_data_V1, i64* noalias "unpacked"="5.1" %_V_keep_V2, i64* noalias "unpacked"="5.2" %_V_strb_V3, i1* noalias "unpacked"="5.3" %_V_last_V4) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* align 512 %2, %"struct.ap_uint<32>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_uint<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i512* noalias "unpacked"="1.0" %_V_data_V, i64* noalias "unpacked"="1.1" %_V_keep_V, i64* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"struct.ap_uint<32>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="4", i512* noalias "unpacked"="5.0" %_V_data_V1, i64* noalias "unpacked"="5.1" %_V_keep_V2, i64* noalias "unpacked"="5.2" %_V_strb_V3, i1* noalias "unpacked"="5.3" %_V_last_V4) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.31"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.16"(%"struct.ap_uint<32>"* %1, i32* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.31"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.16"(%"struct.ap_uint<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* noalias "unpacked"="0.0" %dst_V_data_V, i64* noalias "unpacked"="0.1" %dst_V_keep_V, i64* noalias "unpacked"="0.2" %dst_V_strb_V, i1* noalias "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias %src) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %src, null
  %1 = or i1 false, %0
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.26"(i512* %dst_V_data_V, i64* %dst_V_keep_V, i64* %dst_V_strb_V, i1* %dst_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.26"(i512* noalias nocapture "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.31"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 %dst, i512* noalias "unpacked"="1.0" %src_V_data_V, i64* noalias "unpacked"="1.1" %src_V_keep_V, i64* noalias "unpacked"="1.2" %src_V_strb_V, i1* noalias "unpacked"="1.3" %src_V_last_V) unnamed_addr #4 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %dst, null
  %1 = or i1 %0, false
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.34"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %dst, i512* %src_V_data_V, i64* %src_V_keep_V, i64* %src_V_strb_V, i1* %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.34"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512, i512* noalias nocapture "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "unpacked"="1.3" %_V_last_V) unnamed_addr #5 {
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

declare void @apatb_icmp_server_hw(i512*, i64*, i64*, i1*, i32*, i512*, i64*, i64*, i1*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="0", i512* noalias "unpacked"="1.0" %_V_data_V, i64* noalias "unpacked"="1.1" %_V_keep_V, i64* noalias "unpacked"="1.2" %_V_strb_V, i1* noalias "unpacked"="1.3" %_V_last_V, %"struct.ap_uint<32>"* noalias "unpacked"="2", i32* noalias nocapture readonly align 512 "unpacked"="3.0", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "unpacked"="4", i512* noalias "unpacked"="5.0" %_V_data_V1, i64* noalias "unpacked"="5.1" %_V_keep_V2, i64* noalias "unpacked"="5.2" %_V_strb_V3, i1* noalias "unpacked"="5.3" %_V_last_V4) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.31"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.31"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  ret void
}

define void @icmp_server_hw_stub_wrapper(i512*, i64*, i64*, i1*, i32*, i512*, i64*, i64*, i1*) #6 {
entry:
  %9 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %10 = alloca %"struct.ap_uint<32>"
  %11 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %9, i512* %0, i64* %1, i64* %2, i1* %3, %"struct.ap_uint<32>"* %10, i32* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %11, i512* %5, i64* %6, i64* %7, i1* %8)
  call void @icmp_server_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %9, %"struct.ap_uint<32>"* %10, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %11)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %9, i512* %0, i64* %1, i64* %2, i1* %3, %"struct.ap_uint<32>"* %10, i32* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %11, i512* %5, i64* %6, i64* %7, i1* %8)
  ret void
}

declare void @icmp_server_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"struct.ap_uint<32>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*)

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
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
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
