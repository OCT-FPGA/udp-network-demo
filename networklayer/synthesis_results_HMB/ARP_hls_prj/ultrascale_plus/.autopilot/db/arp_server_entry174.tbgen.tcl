set moduleName arp_server_entry174
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {arp_server.entry174}
set C_modelType { void 0 }
set C_modelArgList {
	{ myMacAddress_V int 48 regular {pointer 0}  }
	{ myIpAddress_V int 32 regular {pointer 0}  }
	{ gatewayIP_V int 32 regular {pointer 0}  }
	{ networkMask_V int 32 regular {pointer 0}  }
	{ myMacAddress_V_out int 48 regular {fifo 1}  }
	{ myIpAddress_V_out int 32 regular {fifo 1}  }
	{ myIpAddress_V_out1 int 32 regular {fifo 1}  }
	{ gatewayIP_V_out int 32 regular {fifo 1}  }
	{ networkMask_V_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "myMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gatewayIP_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "networkMask_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "myMacAddress_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress_V_out1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gatewayIP_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "networkMask_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ myMacAddress_V sc_in sc_lv 48 signal 0 } 
	{ myIpAddress_V sc_in sc_lv 32 signal 1 } 
	{ gatewayIP_V sc_in sc_lv 32 signal 2 } 
	{ networkMask_V sc_in sc_lv 32 signal 3 } 
	{ myMacAddress_V_out_din sc_out sc_lv 48 signal 4 } 
	{ myMacAddress_V_out_full_n sc_in sc_logic 1 signal 4 } 
	{ myMacAddress_V_out_write sc_out sc_logic 1 signal 4 } 
	{ myIpAddress_V_out_din sc_out sc_lv 32 signal 5 } 
	{ myIpAddress_V_out_full_n sc_in sc_logic 1 signal 5 } 
	{ myIpAddress_V_out_write sc_out sc_logic 1 signal 5 } 
	{ myIpAddress_V_out1_din sc_out sc_lv 32 signal 6 } 
	{ myIpAddress_V_out1_full_n sc_in sc_logic 1 signal 6 } 
	{ myIpAddress_V_out1_write sc_out sc_logic 1 signal 6 } 
	{ gatewayIP_V_out_din sc_out sc_lv 32 signal 7 } 
	{ gatewayIP_V_out_full_n sc_in sc_logic 1 signal 7 } 
	{ gatewayIP_V_out_write sc_out sc_logic 1 signal 7 } 
	{ networkMask_V_out_din sc_out sc_lv 32 signal 8 } 
	{ networkMask_V_out_full_n sc_in sc_logic 1 signal 8 } 
	{ networkMask_V_out_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V", "role": "default" }} , 
 	{ "name": "myIpAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "default" }} , 
 	{ "name": "gatewayIP_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP_V", "role": "default" }} , 
 	{ "name": "networkMask_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask_V", "role": "default" }} , 
 	{ "name": "myMacAddress_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V_out", "role": "din" }} , 
 	{ "name": "myMacAddress_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress_V_out", "role": "full_n" }} , 
 	{ "name": "myMacAddress_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myMacAddress_V_out", "role": "write" }} , 
 	{ "name": "myIpAddress_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V_out", "role": "din" }} , 
 	{ "name": "myIpAddress_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V_out", "role": "full_n" }} , 
 	{ "name": "myIpAddress_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V_out", "role": "write" }} , 
 	{ "name": "myIpAddress_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V_out1", "role": "din" }} , 
 	{ "name": "myIpAddress_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V_out1", "role": "full_n" }} , 
 	{ "name": "myIpAddress_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V_out1", "role": "write" }} , 
 	{ "name": "gatewayIP_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP_V_out", "role": "din" }} , 
 	{ "name": "gatewayIP_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP_V_out", "role": "full_n" }} , 
 	{ "name": "gatewayIP_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP_V_out", "role": "write" }} , 
 	{ "name": "networkMask_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask_V_out", "role": "din" }} , 
 	{ "name": "networkMask_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask_V_out", "role": "full_n" }} , 
 	{ "name": "networkMask_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask_V_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "arp_server_entry174",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "gatewayIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "networkMask_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myMacAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gatewayIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "networkMask_V_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	arp_server_entry174 {
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		gatewayIP_V {Type I LastRead 0 FirstWrite -1}
		networkMask_V {Type I LastRead 0 FirstWrite -1}
		myMacAddress_V_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_V_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_V_out1 {Type O LastRead -1 FirstWrite 0}
		gatewayIP_V_out {Type O LastRead -1 FirstWrite 0}
		networkMask_V_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	myMacAddress_V { ap_none {  { myMacAddress_V in_data 0 48 } } }
	myIpAddress_V { ap_none {  { myIpAddress_V in_data 0 32 } } }
	gatewayIP_V { ap_none {  { gatewayIP_V in_data 0 32 } } }
	networkMask_V { ap_none {  { networkMask_V in_data 0 32 } } }
	myMacAddress_V_out { ap_fifo {  { myMacAddress_V_out_din fifo_data 1 48 }  { myMacAddress_V_out_full_n fifo_status 0 1 }  { myMacAddress_V_out_write fifo_update 1 1 } } }
	myIpAddress_V_out { ap_fifo {  { myIpAddress_V_out_din fifo_data 1 32 }  { myIpAddress_V_out_full_n fifo_status 0 1 }  { myIpAddress_V_out_write fifo_update 1 1 } } }
	myIpAddress_V_out1 { ap_fifo {  { myIpAddress_V_out1_din fifo_data 1 32 }  { myIpAddress_V_out1_full_n fifo_status 0 1 }  { myIpAddress_V_out1_write fifo_update 1 1 } } }
	gatewayIP_V_out { ap_fifo {  { gatewayIP_V_out_din fifo_data 1 32 }  { gatewayIP_V_out_full_n fifo_status 0 1 }  { gatewayIP_V_out_write fifo_update 1 1 } } }
	networkMask_V_out { ap_fifo {  { networkMask_V_out_din fifo_data 1 32 }  { networkMask_V_out_full_n fifo_status 0 1 }  { networkMask_V_out_write fifo_update 1 1 } } }
}
