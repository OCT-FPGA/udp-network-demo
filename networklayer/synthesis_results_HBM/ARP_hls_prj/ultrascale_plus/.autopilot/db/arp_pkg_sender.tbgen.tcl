set moduleName arp_pkg_sender
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {arp_pkg_sender}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpDataOut_V_data_V int 512 regular {axi_s 1 volatile  { arpDataOut Data } }  }
	{ arpDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { arpDataOut Keep } }  }
	{ arpDataOut_V_strb_V int 64 regular {axi_s 1 volatile  { arpDataOut Strb } }  }
	{ arpDataOut_V_last_V int 1 regular {axi_s 1 volatile  { arpDataOut Last } }  }
	{ myMacAddress int 48 regular {fifo 0}  }
	{ myIpAddress int 32 regular {fifo 0}  }
	{ gatewayIP int 32 regular {fifo 0}  }
	{ networkMask int 32 regular {fifo 0}  }
	{ arpReplyFifo int 256 regular {fifo 0 volatile } {global 0}  }
	{ arpRequestFifo int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpDataOut_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gatewayIP", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "networkMask", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arpReplyFifo", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "arpRequestFifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arpRequestFifo_dout sc_in sc_lv 32 signal 9 } 
	{ arpRequestFifo_empty_n sc_in sc_logic 1 signal 9 } 
	{ arpRequestFifo_read sc_out sc_logic 1 signal 9 } 
	{ arpReplyFifo_dout sc_in sc_lv 256 signal 8 } 
	{ arpReplyFifo_empty_n sc_in sc_logic 1 signal 8 } 
	{ arpReplyFifo_read sc_out sc_logic 1 signal 8 } 
	{ networkMask_dout sc_in sc_lv 32 signal 7 } 
	{ networkMask_empty_n sc_in sc_logic 1 signal 7 } 
	{ networkMask_read sc_out sc_logic 1 signal 7 } 
	{ gatewayIP_dout sc_in sc_lv 32 signal 6 } 
	{ gatewayIP_empty_n sc_in sc_logic 1 signal 6 } 
	{ gatewayIP_read sc_out sc_logic 1 signal 6 } 
	{ myIpAddress_dout sc_in sc_lv 32 signal 5 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 5 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 5 } 
	{ myMacAddress_dout sc_in sc_lv 48 signal 4 } 
	{ myMacAddress_empty_n sc_in sc_logic 1 signal 4 } 
	{ myMacAddress_read sc_out sc_logic 1 signal 4 } 
	{ arpDataOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ arpDataOut_TDATA sc_out sc_lv 512 signal 0 } 
	{ arpDataOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ arpDataOut_TKEEP sc_out sc_lv 64 signal 1 } 
	{ arpDataOut_TSTRB sc_out sc_lv 64 signal 2 } 
	{ arpDataOut_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arpRequestFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "dout" }} , 
 	{ "name": "arpRequestFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "empty_n" }} , 
 	{ "name": "arpRequestFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "read" }} , 
 	{ "name": "arpReplyFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arpReplyFifo", "role": "dout" }} , 
 	{ "name": "arpReplyFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpReplyFifo", "role": "empty_n" }} , 
 	{ "name": "arpReplyFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpReplyFifo", "role": "read" }} , 
 	{ "name": "networkMask_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask", "role": "dout" }} , 
 	{ "name": "networkMask_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask", "role": "empty_n" }} , 
 	{ "name": "networkMask_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask", "role": "read" }} , 
 	{ "name": "gatewayIP_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP", "role": "dout" }} , 
 	{ "name": "gatewayIP_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP", "role": "empty_n" }} , 
 	{ "name": "gatewayIP_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP", "role": "read" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "myMacAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "dout" }} , 
 	{ "name": "myMacAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "empty_n" }} , 
 	{ "name": "myMacAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "read" }} , 
 	{ "name": "arpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataOut_V_strb_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "arp_pkg_sender",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gatewayIP_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "networkMask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aps_fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "replyMeta_srcMac_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_ethType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwAddrSrc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoAddrSrc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpRequestFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIP_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataOut_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataOut_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataOut_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataOut_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_pkg_sender {
		arpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 1 FirstWrite -1}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		gatewayIP {Type I LastRead 1 FirstWrite -1}
		networkMask {Type I LastRead 1 FirstWrite -1}
		aps_fsmState {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo {Type I LastRead 0 FirstWrite -1}
		replyMeta_srcMac_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_ethType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwAddrSrc_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoAddrSrc_V {Type IO LastRead -1 FirstWrite -1}
		arpRequestFifo {Type I LastRead 0 FirstWrite -1}
		inputIP_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpDataOut_V_data_V { axis {  { arpDataOut_TDATA out_data 1 512 } } }
	arpDataOut_V_keep_V { axis {  { arpDataOut_TKEEP out_data 1 64 } } }
	arpDataOut_V_strb_V { axis {  { arpDataOut_TSTRB out_data 1 64 } } }
	arpDataOut_V_last_V { axis {  { arpDataOut_TREADY out_acc 0 1 }  { arpDataOut_TVALID out_vld 1 1 }  { arpDataOut_TLAST out_data 1 1 } } }
	myMacAddress { ap_fifo {  { myMacAddress_dout fifo_data 0 48 }  { myMacAddress_empty_n fifo_status 0 1 }  { myMacAddress_read fifo_update 1 1 } } }
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	gatewayIP { ap_fifo {  { gatewayIP_dout fifo_data 0 32 }  { gatewayIP_empty_n fifo_status 0 1 }  { gatewayIP_read fifo_update 1 1 } } }
	networkMask { ap_fifo {  { networkMask_dout fifo_data 0 32 }  { networkMask_empty_n fifo_status 0 1 }  { networkMask_read fifo_update 1 1 } } }
	arpReplyFifo { ap_fifo {  { arpReplyFifo_dout fifo_data 0 256 }  { arpReplyFifo_empty_n fifo_status 0 1 }  { arpReplyFifo_read fifo_update 1 1 } } }
	arpRequestFifo { ap_fifo {  { arpRequestFifo_dout fifo_data 0 32 }  { arpRequestFifo_empty_n fifo_status 0 1 }  { arpRequestFifo_read fifo_update 1 1 } } }
}
