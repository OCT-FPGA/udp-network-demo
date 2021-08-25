set moduleName udpRxEngine
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
set C_modelName {udpRxEngine}
set C_modelType { void 0 }
set C_modelArgList {
	{ DataIn_V_data_V int 512 regular {axi_s 0 volatile  { rxUdpDataIn Data } }  }
	{ DataIn_V_keep_V int 64 regular {axi_s 0 volatile  { rxUdpDataIn Keep } }  }
	{ DataIn_V_last_V int 1 regular {axi_s 0 volatile  { rxUdpDataIn Last } }  }
	{ ureMetaData_V int 97 regular {fifo 1 volatile } {global 1}  }
	{ ureDataPayload_V int 577 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "DataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "DataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ureMetaData_V", "interface" : "fifo", "bitwidth" : 97, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "ureDataPayload_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rxUdpDataIn_TVALID sc_in sc_logic 1 invld 0 } 
	{ ureDataPayload_V_din sc_out sc_lv 577 signal 4 } 
	{ ureDataPayload_V_full_n sc_in sc_logic 1 signal 4 } 
	{ ureDataPayload_V_write sc_out sc_logic 1 signal 4 } 
	{ ureMetaData_V_din sc_out sc_lv 97 signal 3 } 
	{ ureMetaData_V_full_n sc_in sc_logic 1 signal 3 } 
	{ ureMetaData_V_write sc_out sc_logic 1 signal 3 } 
	{ rxUdpDataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ rxUdpDataIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ rxUdpDataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ rxUdpDataIn_TLAST sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "DataIn_V_data_V", "role": "ID" }} , 
 	{ "name": "ureDataPayload_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ureDataPayload_V", "role": "din" }} , 
 	{ "name": "ureDataPayload_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureDataPayload_V", "role": "full_n" }} , 
 	{ "name": "ureDataPayload_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureDataPayload_V", "role": "write" }} , 
 	{ "name": "ureMetaData_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "ureMetaData_V", "role": "din" }} , 
 	{ "name": "ureMetaData_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureMetaData_V", "role": "full_n" }} , 
 	{ "name": "ureMetaData_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureMetaData_V", "role": "write" }} , 
 	{ "name": "rxUdpDataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataIn_V_data_V", "role": "A" }} , 
 	{ "name": "rxUdpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "DataIn_V_last_V", "role": "DY" }} , 
 	{ "name": "rxUdpDataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataIn_V_keep_V", "role": "P" }} , 
 	{ "name": "rxUdpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataIn_V_last_V", "role": "T" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "udpRxEngine",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "DataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rxUdpDataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ure_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureMetaData_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ureMetaData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ureDataPayload_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	udpRxEngine {
		DataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		ure_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		ureMetaData_V {Type O LastRead -1 FirstWrite 1}
		ureDataPayload_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	DataIn_V_data_V { axis {  { rxUdpDataIn_TVALID in_vld 0 1 }  { rxUdpDataIn_TDATA in_data 0 512 } } }
	DataIn_V_keep_V { axis {  { rxUdpDataIn_TKEEP in_data 0 64 } } }
	DataIn_V_last_V { axis {  { rxUdpDataIn_TREADY in_acc 1 1 }  { rxUdpDataIn_TLAST in_data 0 1 } } }
	ureMetaData_V { ap_fifo {  { ureMetaData_V_din fifo_data 1 97 }  { ureMetaData_V_full_n fifo_status 0 1 }  { ureMetaData_V_write fifo_update 1 1 } } }
	ureDataPayload_V { ap_fifo {  { ureDataPayload_V_din fifo_data 1 577 }  { ureDataPayload_V_full_n fifo_status 0 1 }  { ureDataPayload_V_write fifo_update 1 1 } } }
}
