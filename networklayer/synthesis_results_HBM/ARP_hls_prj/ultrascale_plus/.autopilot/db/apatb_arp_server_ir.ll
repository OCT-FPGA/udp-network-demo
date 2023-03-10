; ModuleID = '/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/ARP_hls_prj/ultrascale_plus/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<32>, 0>" = type { %"struct.ap_uint<32>" }
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
%"class.hls::stream<arpTableReply, 0>" = type { %struct.arpTableReply }
%struct.arpTableReply = type { %"struct.ap_uint<48>", i1 }
%"struct.ap_uint<48>" = type { %"struct.ap_int_base<48, false>" }
%"struct.ap_int_base<48, false>" = type { %"struct.ssdm_int<48, false>" }
%"struct.ssdm_int<48, false>" = type { i48 }
%struct.arpTableEntry = type { %"struct.ap_uint<48>", %"struct.ap_uint<32>", %"struct.ap_uint<1>" }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_arp_server_ir(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %arpDataIn, %"class.hls::stream<ap_uint<32>, 0>"* %macIpEncode_req, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %arpDataOut, %"class.hls::stream<arpTableReply, 0>"* %macIpEncode_rsp, %struct.arpTableEntry* %arpTable, %"struct.ap_uint<1>"* %arp_scan, %"struct.ap_uint<48>"* %myMacAddress, %"struct.ap_uint<32>"* %myIpAddress, %"struct.ap_uint<32>"* %gatewayIP, %"struct.ap_uint<32>"* %networkMask) local_unnamed_addr #1 {
entry:
  %arpDataIn_copy.data = alloca i512
  %arpDataIn_copy.keep = alloca i64
  %arpDataIn_copy.strb = alloca i64
  %arpDataIn_copy.last = alloca i1
  %macIpEncode_req_copy = alloca %"class.hls::stream<ap_uint<32>, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<ap_uint<32>, 0>"* %macIpEncode_req_copy) ]
  %arpDataOut_copy.data = alloca i512
  %arpDataOut_copy.keep = alloca i64
  %arpDataOut_copy.strb = alloca i64
  %arpDataOut_copy.last = alloca i1
  %macIpEncode_rsp_copy = alloca %"class.hls::stream<arpTableReply, 0>", align 512
  call void @llvm.sideeffect() #0 [ "stream_interface"(%"class.hls::stream<arpTableReply, 0>"* %macIpEncode_rsp_copy) ]
  %malloccall.0 = call i8* @malloc(i64 2048)
  %arpTable_copy.0 = bitcast i8* %malloccall.0 to [256 x %"struct.ap_uint<48>"]*
  %malloccall.1 = call i8* @malloc(i64 1024)
  %arpTable_copy.1 = bitcast i8* %malloccall.1 to [256 x %"struct.ap_uint<32>"]*
  %malloccall.2 = call i8* @malloc(i64 256)
  %arpTable_copy.2 = bitcast i8* %malloccall.2 to [256 x %"struct.ap_uint<1>"]*
  %arp_scan_copy = alloca %"struct.ap_uint<1>", align 512
  %myMacAddress_copy = alloca i48, align 512
  %myIpAddress_copy = alloca i32, align 512
  %gatewayIP_copy = alloca i32, align 512
  %networkMask_copy = alloca i32, align 512
  %0 = bitcast %struct.arpTableEntry* %arpTable to [256 x %struct.arpTableEntry]*
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %arpDataIn, i512* %arpDataIn_copy.data, i64* %arpDataIn_copy.keep, i64* %arpDataIn_copy.strb, i1* %arpDataIn_copy.last, %"class.hls::stream<ap_uint<32>, 0>"* %macIpEncode_req, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %macIpEncode_req_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %arpDataOut, i512* %arpDataOut_copy.data, i64* %arpDataOut_copy.keep, i64* %arpDataOut_copy.strb, i1* %arpDataOut_copy.last, %"class.hls::stream<arpTableReply, 0>"* %macIpEncode_rsp, %"class.hls::stream<arpTableReply, 0>"* nonnull align 512 %macIpEncode_rsp_copy, [256 x %struct.arpTableEntry]* %0, [256 x %"struct.ap_uint<48>"]* %arpTable_copy.0, [256 x %"struct.ap_uint<32>"]* %arpTable_copy.1, [256 x %"struct.ap_uint<1>"]* %arpTable_copy.2, %"struct.ap_uint<1>"* %arp_scan, %"struct.ap_uint<1>"* nonnull align 512 %arp_scan_copy, %"struct.ap_uint<48>"* %myMacAddress, i48* nonnull align 512 %myMacAddress_copy, %"struct.ap_uint<32>"* %myIpAddress, i32* nonnull align 512 %myIpAddress_copy, %"struct.ap_uint<32>"* %gatewayIP, i32* nonnull align 512 %gatewayIP_copy, %"struct.ap_uint<32>"* %networkMask, i32* nonnull align 512 %networkMask_copy)
  %.0 = getelementptr [256 x %"struct.ap_uint<48>"], [256 x %"struct.ap_uint<48>"]* %arpTable_copy.0, i32 0, i32 0
  %.1 = getelementptr [256 x %"struct.ap_uint<32>"], [256 x %"struct.ap_uint<32>"]* %arpTable_copy.1, i32 0, i32 0
  %.2 = getelementptr [256 x %"struct.ap_uint<1>"], [256 x %"struct.ap_uint<1>"]* %arpTable_copy.2, i32 0, i32 0
  call void @apatb_arp_server_hw(i512* %arpDataIn_copy.data, i64* %arpDataIn_copy.keep, i64* %arpDataIn_copy.strb, i1* %arpDataIn_copy.last, %"class.hls::stream<ap_uint<32>, 0>"* %macIpEncode_req_copy, i512* %arpDataOut_copy.data, i64* %arpDataOut_copy.keep, i64* %arpDataOut_copy.strb, i1* %arpDataOut_copy.last, %"class.hls::stream<arpTableReply, 0>"* %macIpEncode_rsp_copy, %"struct.ap_uint<48>"* %.0, %"struct.ap_uint<32>"* %.1, %"struct.ap_uint<1>"* %.2, %"struct.ap_uint<1>"* %arp_scan_copy, i48* %myMacAddress_copy, i32* %myIpAddress_copy, i32* %gatewayIP_copy, i32* %networkMask_copy)
  call fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %arpDataIn, i512* %arpDataIn_copy.data, i64* %arpDataIn_copy.keep, i64* %arpDataIn_copy.strb, i1* %arpDataIn_copy.last, %"class.hls::stream<ap_uint<32>, 0>"* %macIpEncode_req, %"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %macIpEncode_req_copy, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %arpDataOut, i512* %arpDataOut_copy.data, i64* %arpDataOut_copy.keep, i64* %arpDataOut_copy.strb, i1* %arpDataOut_copy.last, %"class.hls::stream<arpTableReply, 0>"* %macIpEncode_rsp, %"class.hls::stream<arpTableReply, 0>"* nonnull align 512 %macIpEncode_rsp_copy, [256 x %struct.arpTableEntry]* %0, [256 x %"struct.ap_uint<48>"]* %arpTable_copy.0, [256 x %"struct.ap_uint<32>"]* %arpTable_copy.1, [256 x %"struct.ap_uint<1>"]* %arpTable_copy.2, %"struct.ap_uint<1>"* %arp_scan, %"struct.ap_uint<1>"* nonnull align 512 %arp_scan_copy, %"struct.ap_uint<48>"* %myMacAddress, i48* nonnull align 512 %myMacAddress_copy, %"struct.ap_uint<32>"* %myIpAddress, i32* nonnull align 512 %myIpAddress_copy, %"struct.ap_uint<32>"* %gatewayIP, i32* nonnull align 512 %gatewayIP_copy, %"struct.ap_uint<32>"* %networkMask, i32* nonnull align 512 %networkMask_copy)
  call void @free(i8* %malloccall.0)
  call void @free(i8* %malloccall.1)
  call void @free(i8* %malloccall.2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.3" %_V_last_V4, %"class.hls::stream<arpTableReply, 0>"*, %"class.hls::stream<arpTableReply, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [256 x %struct.arpTableEntry]* readonly, [256 x %"struct.ap_uint<48>"]* noalias nocapture "unpacked"="9.0" %.0, [256 x %"struct.ap_uint<32>"]* noalias nocapture "unpacked"="9.1" %.1, [256 x %"struct.ap_uint<1>"]* noalias nocapture "unpacked"="9.2" %.2, %"struct.ap_uint<1>"* readonly, %"struct.ap_uint<1>"* noalias align 512, %"struct.ap_uint<48>"* readonly, i48* noalias align 512, %"struct.ap_uint<32>"* readonly, i32* noalias align 512, %"struct.ap_uint<32>"* readonly, i32* noalias align 512, %"struct.ap_uint<32>"* readonly, i32* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* align 512 %2, %"class.hls::stream<ap_uint<32>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* align 512 %5, %"class.hls::stream<arpTableReply, 0>"* %4)
  call fastcc void @onebyonecpy_hls.p0a256struct.arpTableEntry([256 x %"struct.ap_uint<48>"]* %.0, [256 x %"struct.ap_uint<32>"]* %.1, [256 x %"struct.ap_uint<1>"]* %.2, [256 x %struct.arpTableEntry]* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* align 512 %8, %"struct.ap_uint<1>"* %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>"(i48* align 512 %10, %"struct.ap_uint<48>"* %9)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.96"(i32* align 512 %12, %"struct.ap_uint<32>"* %11)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.96"(i32* align 512 %14, %"struct.ap_uint<32>"* %13)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.96"(i32* align 512 %16, %"struct.ap_uint<32>"* %15)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<32>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<32>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<32>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<32>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<32>, 0>", %"class.hls::stream<ap_uint<32>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<32>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<arpTableReply, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<arpTableReply, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<arpTableReply, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* nonnull align 512 %0, %"class.hls::stream<arpTableReply, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<arpTableReply, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a256struct.arpTableEntry([256 x %"struct.ap_uint<48>"]* noalias nocapture "unpacked"="0.0" %.0, [256 x %"struct.ap_uint<32>"]* noalias nocapture "unpacked"="0.1" %.1, [256 x %"struct.ap_uint<1>"]* noalias nocapture "unpacked"="0.2" %.2, [256 x %struct.arpTableEntry]* noalias readonly) unnamed_addr #5 {
entry:
  %1 = icmp eq [256 x %struct.arpTableEntry]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [256 x %struct.arpTableEntry], [256 x %struct.arpTableEntry]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [256 x %"struct.ap_uint<48>"], [256 x %"struct.ap_uint<48>"]* %.0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %2 = load i48, i48* %src.addr.0.0.0.07, align 8
  store i48 %2, i48* %dst.addr.0.0.0.08, align 8
  %src.addr.1.0.0.015 = getelementptr [256 x %struct.arpTableEntry], [256 x %struct.arpTableEntry]* %0, i64 0, i64 %for.loop.idx1, i32 1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [256 x %"struct.ap_uint<32>"], [256 x %"struct.ap_uint<32>"]* %.1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.1.0.0.015, align 4
  store i32 %3, i32* %dst.addr.1.0.0.016, align 4
  %src.addr.2.0.0.023 = getelementptr [256 x %struct.arpTableEntry], [256 x %struct.arpTableEntry]* %0, i64 0, i64 %for.loop.idx1, i32 2, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [256 x %"struct.ap_uint<1>"], [256 x %"struct.ap_uint<1>"]* %.2, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %4 = bitcast i1* %src.addr.2.0.0.023 to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i1
  store i1 %6, i1* %dst.addr.2.0.0.024, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* noalias align 512, %"struct.ap_uint<1>"* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq %"struct.ap_uint<1>"* %0, null
  %3 = icmp eq %"struct.ap_uint<1>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"struct.ap_uint<1>", %"struct.ap_uint<1>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i1* %.0.0.04 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i8 %6 to i1
  store i1 %7, i1* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>"(i48* noalias align 512, %"struct.ap_uint<48>"* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i48* %0, null
  %3 = icmp eq %"struct.ap_uint<48>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<48>", %"struct.ap_uint<48>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = load i48, i48* %.0.0.04, align 8
  store i48 %5, i48* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.0" %_V_data_V1, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.1" %_V_keep_V2, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="8.3" %_V_last_V4, %"class.hls::stream<arpTableReply, 0>"*, %"class.hls::stream<arpTableReply, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", [256 x %struct.arpTableEntry]*, [256 x %"struct.ap_uint<48>"]* noalias nocapture readonly "unpacked"="9.0" %.0, [256 x %"struct.ap_uint<32>"]* noalias nocapture readonly "unpacked"="9.1" %.1, [256 x %"struct.ap_uint<1>"]* noalias nocapture readonly "unpacked"="9.2" %.2, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"* noalias readonly align 512, %"struct.ap_uint<48>"*, i48* noalias readonly align 512, %"struct.ap_uint<32>"*, i32* noalias readonly align 512, %"struct.ap_uint<32>"*, i32* noalias readonly align 512, %"struct.ap_uint<32>"*, i32* noalias readonly align 512) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.135"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<32>, 0>"(%"class.hls::stream<ap_uint<32>, 0>"* %1, %"class.hls::stream<ap_uint<32>, 0>"* align 512 %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.135"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %3, i512* %_V_data_V1, i64* %_V_keep_V2, i64* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<arpTableReply, 0>"(%"class.hls::stream<arpTableReply, 0>"* %4, %"class.hls::stream<arpTableReply, 0>"* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a256struct.arpTableEntry.90([256 x %struct.arpTableEntry]* %6, [256 x %"struct.ap_uint<48>"]* %.0, [256 x %"struct.ap_uint<32>"]* %.1, [256 x %"struct.ap_uint<1>"]* %.2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<1>"(%"struct.ap_uint<1>"* %7, %"struct.ap_uint<1>"* align 512 %8)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>.122"(%"struct.ap_uint<48>"* %9, i48* align 512 %10)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %11, i32* align 512 %12)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %13, i32* align 512 %14)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* %15, i32* align 512 %16)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a256struct.arpTableEntry.90([256 x %struct.arpTableEntry]* noalias, [256 x %"struct.ap_uint<48>"]* noalias nocapture readonly "unpacked"="1.0" %.0, [256 x %"struct.ap_uint<32>"]* noalias nocapture readonly "unpacked"="1.1" %.1, [256 x %"struct.ap_uint<1>"]* noalias nocapture readonly "unpacked"="1.2" %.2) unnamed_addr #5 {
entry:
  %1 = icmp eq [256 x %struct.arpTableEntry]* %0, null
  br i1 %1, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.0.07 = getelementptr [256 x %"struct.ap_uint<48>"], [256 x %"struct.ap_uint<48>"]* %.0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.0.08 = getelementptr [256 x %struct.arpTableEntry], [256 x %struct.arpTableEntry]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0, i32 0
  %2 = load i48, i48* %src.addr.0.0.0.07, align 8
  store i48 %2, i48* %dst.addr.0.0.0.08, align 8
  %src.addr.1.0.0.015 = getelementptr [256 x %"struct.ap_uint<32>"], [256 x %"struct.ap_uint<32>"]* %.1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.1.0.0.016 = getelementptr [256 x %struct.arpTableEntry], [256 x %struct.arpTableEntry]* %0, i64 0, i64 %for.loop.idx1, i32 1, i32 0, i32 0, i32 0
  %3 = load i32, i32* %src.addr.1.0.0.015, align 4
  store i32 %3, i32* %dst.addr.1.0.0.016, align 4
  %src.addr.2.0.0.023 = getelementptr [256 x %"struct.ap_uint<1>"], [256 x %"struct.ap_uint<1>"]* %.2, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.2.0.0.024 = getelementptr [256 x %struct.arpTableEntry], [256 x %struct.arpTableEntry]* %0, i64 0, i64 %for.loop.idx1, i32 2, i32 0, i32 0, i32 0
  %4 = bitcast i1* %src.addr.2.0.0.023 to i8*
  %5 = load i8, i8* %4
  %6 = trunc i8 %5 to i1
  store i1 %6, i1* %dst.addr.2.0.0.024, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>.96"(i32* noalias align 512, %"struct.ap_uint<32>"* noalias readonly) unnamed_addr #5 {
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
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<32>"(%"struct.ap_uint<32>"* noalias, i32* noalias readonly align 512) unnamed_addr #5 {
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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<48>.122"(%"struct.ap_uint<48>"* noalias, i48* noalias readonly align 512) unnamed_addr #5 {
entry:
  %2 = icmp eq %"struct.ap_uint<48>"* %0, null
  %3 = icmp eq i48* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<48>", %"struct.ap_uint<48>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = load i48, i48* %1, align 512
  store i48 %5, i48* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"(i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.131"(i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.131"(i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
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
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.135"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.138"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* nonnull align 512 %0, i512* %_V_data_V, i64* %_V_keep_V, i64* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>.138"(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i64* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
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
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_arp_server_hw(i512*, i64*, i64*, i1*, %"class.hls::stream<ap_uint<32>, 0>"*, i512*, i64*, i64*, i1*, %"class.hls::stream<arpTableReply, 0>"*, %"struct.ap_uint<48>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, i48*, i32*, i32*, i32*)

define void @arp_server_hw_stub_wrapper(i512*, i64*, i64*, i1*, %"class.hls::stream<ap_uint<32>, 0>"*, i512*, i64*, i64*, i1*, %"class.hls::stream<arpTableReply, 0>"*, %"struct.ap_uint<48>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<1>"*, %"struct.ap_uint<1>"*, i48*, i32*, i32*, i32*) #7 {
entry:
  %18 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %19 = alloca %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"
  %malloccall = tail call i8* @malloc(i64 4096)
  %20 = bitcast i8* %malloccall to [256 x %struct.arpTableEntry]*
  %21 = alloca %"struct.ap_uint<48>"
  %22 = alloca %"struct.ap_uint<32>"
  %23 = alloca %"struct.ap_uint<32>"
  %24 = alloca %"struct.ap_uint<32>"
  %25 = bitcast %"struct.ap_uint<48>"* %10 to [256 x %"struct.ap_uint<48>"]*
  %26 = bitcast %"struct.ap_uint<32>"* %11 to [256 x %"struct.ap_uint<32>"]*
  %27 = bitcast %"struct.ap_uint<1>"* %12 to [256 x %"struct.ap_uint<1>"]*
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %18, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<arpTableReply, 0>"* null, %"class.hls::stream<arpTableReply, 0>"* %9, [256 x %struct.arpTableEntry]* %20, [256 x %"struct.ap_uint<48>"]* %25, [256 x %"struct.ap_uint<32>"]* %26, [256 x %"struct.ap_uint<1>"]* %27, %"struct.ap_uint<1>"* null, %"struct.ap_uint<1>"* %13, %"struct.ap_uint<48>"* %21, i48* %14, %"struct.ap_uint<32>"* %22, i32* %15, %"struct.ap_uint<32>"* %23, i32* %16, %"struct.ap_uint<32>"* %24, i32* %17)
  %28 = bitcast [256 x %struct.arpTableEntry]* %20 to %struct.arpTableEntry*
  call void @arp_server_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %18, %"class.hls::stream<ap_uint<32>, 0>"* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, %"class.hls::stream<arpTableReply, 0>"* %9, %struct.arpTableEntry* %28, %"struct.ap_uint<1>"* %13, %"struct.ap_uint<48>"* %21, %"struct.ap_uint<32>"* %22, %"struct.ap_uint<32>"* %23, %"struct.ap_uint<32>"* %24)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %18, i512* %0, i64* %1, i64* %2, i1* %3, %"class.hls::stream<ap_uint<32>, 0>"* null, %"class.hls::stream<ap_uint<32>, 0>"* %4, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"* %19, i512* %5, i64* %6, i64* %7, i1* %8, %"class.hls::stream<arpTableReply, 0>"* null, %"class.hls::stream<arpTableReply, 0>"* %9, [256 x %struct.arpTableEntry]* %20, [256 x %"struct.ap_uint<48>"]* %25, [256 x %"struct.ap_uint<32>"]* %26, [256 x %"struct.ap_uint<1>"]* %27, %"struct.ap_uint<1>"* null, %"struct.ap_uint<1>"* %13, %"struct.ap_uint<48>"* %21, i48* %14, %"struct.ap_uint<32>"* %22, i32* %15, %"struct.ap_uint<32>"* %23, i32* %16, %"struct.ap_uint<32>"* %24, i32* %17)
  ret void
}

declare void @arp_server_hw_stub(%"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<ap_uint<32>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<512>, 0, 0, 0>, 0>"*, %"class.hls::stream<arpTableReply, 0>"*, %struct.arpTableEntry*, %"struct.ap_uint<1>"*, %"struct.ap_uint<48>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*, %"struct.ap_uint<32>"*)

declare i1 @fpga_fifo_not_empty_128(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_128(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_128(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

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
