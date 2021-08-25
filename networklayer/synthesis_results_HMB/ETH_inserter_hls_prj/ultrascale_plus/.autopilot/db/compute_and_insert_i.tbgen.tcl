set moduleName compute_and_insert_i
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute_and_insert_i}
set C_modelType { void 0 }
set C_modelArgList {
	{ ip_header_out_V int 577 regular {fifo 0 volatile } {global 0}  }
	{ ip_header_checksum_V int 577 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ip_header_out_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ip_header_checksum_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ip_header_out_V_dout sc_in sc_lv 577 signal 0 } 
	{ ip_header_out_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ ip_header_out_V_read sc_out sc_logic 1 signal 0 } 
	{ ip_header_checksum_V_din sc_out sc_lv 577 signal 1 } 
	{ ip_header_checksum_V_full_n sc_in sc_logic 1 signal 1 } 
	{ ip_header_checksum_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ip_header_out_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ip_header_out_V", "role": "dout" }} , 
 	{ "name": "ip_header_out_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_out_V", "role": "empty_n" }} , 
 	{ "name": "ip_header_out_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_out_V", "role": "read" }} , 
 	{ "name": "ip_header_checksum_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ip_header_checksum_V", "role": "din" }} , 
 	{ "name": "ip_header_checksum_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_checksum_V", "role": "full_n" }} , 
 	{ "name": "ip_header_checksum_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip_header_checksum_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "compute_and_insert_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "ip_header_out_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip_header_checksum_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_checksum_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	compute_and_insert_i {
		ip_header_out_V {Type I LastRead 0 FirstWrite -1}
		ip_header_checksum_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ip_header_out_V { ap_fifo {  { ip_header_out_V_dout fifo_data 0 577 }  { ip_header_out_V_empty_n fifo_status 0 1 }  { ip_header_out_V_read fifo_update 1 1 } } }
	ip_header_checksum_V { ap_fifo {  { ip_header_checksum_V_din fifo_data 1 577 }  { ip_header_checksum_V_full_n fifo_status 0 1 }  { ip_header_checksum_V_write fifo_update 1 1 } } }
}
