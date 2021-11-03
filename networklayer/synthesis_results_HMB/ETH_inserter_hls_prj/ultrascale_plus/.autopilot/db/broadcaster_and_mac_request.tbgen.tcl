set moduleName broadcaster_and_mac_request
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
set C_modelName {broadcaster_and_mac_request}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 512 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 64 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_strb_V int 64 regular {axi_s 0 volatile  { dataIn Strb } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ arpTableRequest_V int 32 regular {axi_s 1 volatile  { arpTableRequest_V Data } }  }
	{ regSubNetMask int 32 regular {pointer 0}  }
	{ regDefaultGateway int 32 regular {pointer 0}  }
	{ ip_header_out int 1024 regular {fifo 1 volatile } {global 1}  }
	{ no_ip_header_out int 1024 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "arpTableRequest_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "regSubNetMask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regDefaultGateway", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ip_header_out", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "no_ip_header_out", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ arpTableRequest_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ ip_header_out_din sc_out sc_lv 1024 signal 7 } 
	{ ip_header_out_full_n sc_in sc_logic 1 signal 7 } 
	{ ip_header_out_write sc_out sc_logic 1 signal 7 } 
	{ no_ip_header_out_din sc_out sc_lv 1024 signal 8 } 
	{ no_ip_header_out_full_n sc_in sc_logic 1 signal 8 } 
	{ no_ip_header_out_write sc_out sc_logic 1 signal 8 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ dataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ dataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ dataIn_TSTRB sc_in sc_lv 64 signal 2 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 3 } 
	{ arpTableRequest_V_TDATA sc_out sc_lv 32 signal 4 } 
	{ arpTableRequest_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ regSubNetMask sc_in sc_lv 32 signal 5 } 
	{ regDefaultGateway sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableRequest_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arpTableRequest_V", "role": "TREADY" }} , 
 	{ "name": "ip_header_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ip_header_out", "role": "din" }} , 
 	{ "name": "ip_header_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_out", "role": "full_n" }} , 
 	{ "name": "ip_header_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_out", "role": "write" }} , 
 	{ "name": "no_ip_header_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "no_ip_header_out", "role": "din" }} , 
 	{ "name": "no_ip_header_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "no_ip_header_out", "role": "full_n" }} , 
 	{ "name": "no_ip_header_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "no_ip_header_out", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_strb_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableRequest_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTableRequest_V", "role": "TDATA" }} , 
 	{ "name": "arpTableRequest_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arpTableRequest_V", "role": "TVALID" }} , 
 	{ "name": "regSubNetMask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regSubNetMask", "role": "default" }} , 
 	{ "name": "regDefaultGateway", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regDefaultGateway", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "broadcaster_and_mac_request",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpTableRequest_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arpTableRequest_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSubNetMask", "Type" : "None", "Direction" : "I"},
			{"Name" : "regDefaultGateway", "Type" : "None", "Direction" : "I"},
			{"Name" : "bmr_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_header_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "no_ip_header_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "no_ip_header_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataIn_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataIn_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataIn_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dataIn_V_last_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpTableRequest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	broadcaster_and_mac_request {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpTableRequest_V {Type O LastRead -1 FirstWrite 1}
		regSubNetMask {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway {Type I LastRead 0 FirstWrite -1}
		bmr_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_header_out {Type O LastRead -1 FirstWrite 1}
		no_ip_header_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 512 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 64 } } }
	dataIn_V_strb_V { axis {  { dataIn_TSTRB in_data 0 64 } } }
	dataIn_V_last_V { axis {  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 }  { dataIn_TLAST in_data 0 1 } } }
	arpTableRequest_V { axis {  { arpTableRequest_V_TREADY out_acc 0 1 }  { arpTableRequest_V_TDATA out_data 1 32 }  { arpTableRequest_V_TVALID out_vld 1 1 } } }
	regSubNetMask { ap_none {  { regSubNetMask in_data 0 32 } } }
	regDefaultGateway { ap_none {  { regDefaultGateway in_data 0 32 } } }
	ip_header_out { ap_fifo {  { ip_header_out_din fifo_data 1 1024 }  { ip_header_out_full_n fifo_status 0 1 }  { ip_header_out_write fifo_update 1 1 } } }
	no_ip_header_out { ap_fifo {  { no_ip_header_out_din fifo_data 1 1024 }  { no_ip_header_out_full_n fifo_status 0 1 }  { no_ip_header_out_write fifo_update 1 1 } } }
}
