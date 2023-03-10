set moduleName handle_output
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
set C_modelName {handle_output}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpTableReplay int 128 regular {axi_s 0 volatile  { arpTableReplay Data } }  }
	{ myMacAddress int 48 regular {fifo 0}  }
	{ dataOut_V_data_V int 512 regular {axi_s 1 volatile  { dataOut Data } }  }
	{ dataOut_V_keep_V int 64 regular {axi_s 1 volatile  { dataOut Keep } }  }
	{ dataOut_V_strb_V int 64 regular {axi_s 1 volatile  { dataOut Strb } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { dataOut Last } }  }
	{ ip_header_checksum int 1024 regular {fifo 0 volatile } {global 0}  }
	{ no_ip_header_out int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpTableReplay", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ip_header_checksum", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "no_ip_header_out", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ myMacAddress_dout sc_in sc_lv 48 signal 1 } 
	{ myMacAddress_empty_n sc_in sc_logic 1 signal 1 } 
	{ myMacAddress_read sc_out sc_logic 1 signal 1 } 
	{ no_ip_header_out_dout sc_in sc_lv 1024 signal 7 } 
	{ no_ip_header_out_empty_n sc_in sc_logic 1 signal 7 } 
	{ no_ip_header_out_read sc_out sc_logic 1 signal 7 } 
	{ ip_header_checksum_dout sc_in sc_lv 1024 signal 6 } 
	{ ip_header_checksum_empty_n sc_in sc_logic 1 signal 6 } 
	{ ip_header_checksum_read sc_out sc_logic 1 signal 6 } 
	{ arpTableReplay_TVALID sc_in sc_logic 1 invld 0 } 
	{ dataOut_TREADY sc_in sc_logic 1 outacc 5 } 
	{ arpTableReplay_TDATA sc_in sc_lv 128 signal 0 } 
	{ arpTableReplay_TREADY sc_out sc_logic 1 inacc 0 } 
	{ dataOut_TDATA sc_out sc_lv 512 signal 2 } 
	{ dataOut_TVALID sc_out sc_logic 1 outvld 5 } 
	{ dataOut_TKEEP sc_out sc_lv 64 signal 3 } 
	{ dataOut_TSTRB sc_out sc_lv 64 signal 4 } 
	{ dataOut_TLAST sc_out sc_lv 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myMacAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "dout" }} , 
 	{ "name": "myMacAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "empty_n" }} , 
 	{ "name": "myMacAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress", "role": "read" }} , 
 	{ "name": "no_ip_header_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "no_ip_header_out", "role": "dout" }} , 
 	{ "name": "no_ip_header_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "no_ip_header_out", "role": "empty_n" }} , 
 	{ "name": "no_ip_header_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "no_ip_header_out", "role": "read" }} , 
 	{ "name": "ip_header_checksum_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ip_header_checksum", "role": "dout" }} , 
 	{ "name": "ip_header_checksum_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_checksum", "role": "empty_n" }} , 
 	{ "name": "ip_header_checksum_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_checksum", "role": "read" }} , 
 	{ "name": "arpTableReplay_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpTableReplay", "role": "TVALID" }} , 
 	{ "name": "dataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableReplay_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "arpTableReplay", "role": "TDATA" }} , 
 	{ "name": "arpTableReplay_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpTableReplay", "role": "TREADY" }} , 
 	{ "name": "dataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "dataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "dataOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_strb_V", "role": "default" }} , 
 	{ "name": "dataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "handle_output",
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
			{"Name" : "arpTableReplay", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arpTableReplay_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "previous_word_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "previous_word_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_header_checksum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_checksum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "no_ip_header_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "no_ip_header_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpTableReplay_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataOut_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataOut_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataOut_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataOut_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	handle_output {
		arpTableReplay {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		previous_word_data_V {Type IO LastRead -1 FirstWrite -1}
		previous_word_keep_V {Type IO LastRead -1 FirstWrite -1}
		ip_header_checksum {Type I LastRead 0 FirstWrite -1}
		no_ip_header_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpTableReplay { axis {  { arpTableReplay_TVALID in_vld 0 1 }  { arpTableReplay_TDATA in_data 0 128 }  { arpTableReplay_TREADY in_acc 1 1 } } }
	myMacAddress { ap_fifo {  { myMacAddress_dout fifo_data 0 48 }  { myMacAddress_empty_n fifo_status 0 1 }  { myMacAddress_read fifo_update 1 1 } } }
	dataOut_V_data_V { axis {  { dataOut_TDATA out_data 1 512 } } }
	dataOut_V_keep_V { axis {  { dataOut_TKEEP out_data 1 64 } } }
	dataOut_V_strb_V { axis {  { dataOut_TSTRB out_data 1 64 } } }
	dataOut_V_last_V { axis {  { dataOut_TREADY out_acc 0 1 }  { dataOut_TVALID out_vld 1 1 }  { dataOut_TLAST out_data 1 1 } } }
	ip_header_checksum { ap_fifo {  { ip_header_checksum_dout fifo_data 0 1024 }  { ip_header_checksum_empty_n fifo_status 0 1 }  { ip_header_checksum_read fifo_update 1 1 } } }
	no_ip_header_out { ap_fifo {  { no_ip_header_out_dout fifo_data 0 1024 }  { no_ip_header_out_empty_n fifo_status 0 1 }  { no_ip_header_out_read fifo_update 1 1 } } }
}
