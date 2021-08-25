set moduleName appGetMetaData
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
set C_modelName {appGetMetaData}
set C_modelType { void 0 }
set C_modelArgList {
	{ DataIn_V_data_V int 512 regular {axi_s 0 volatile  { DataInApp Data } }  }
	{ DataIn_V_keep_V int 64 regular {axi_s 0 volatile  { DataInApp Keep } }  }
	{ DataIn_V_dest_V int 16 regular {axi_s 0 volatile  { DataInApp Dest } }  }
	{ DataIn_V_last_V int 1 regular {axi_s 0 volatile  { DataInApp Last } }  }
	{ DataIn_V_user int 96 regular {axi_s 0 volatile  { DataInApp User } }  }
	{ agmdIdOut_V_V int 16 regular {fifo 1 volatile } {global 1}  }
	{ agmdDataOut_V int 577 regular {fifo 1 volatile } {global 1}  }
	{ agmdpayloadLenOut_V_s int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "DataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "DataIn_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "DataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "DataIn_V_user", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "agmdIdOut_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "agmdDataOut_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "agmdpayloadLenOut_V_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ DataInApp_TVALID sc_in sc_logic 1 invld 0 } 
	{ agmdIdOut_V_V_din sc_out sc_lv 16 signal 5 } 
	{ agmdIdOut_V_V_full_n sc_in sc_logic 1 signal 5 } 
	{ agmdIdOut_V_V_write sc_out sc_logic 1 signal 5 } 
	{ agmdDataOut_V_din sc_out sc_lv 577 signal 6 } 
	{ agmdDataOut_V_full_n sc_in sc_logic 1 signal 6 } 
	{ agmdDataOut_V_write sc_out sc_logic 1 signal 6 } 
	{ agmdpayloadLenOut_V_s_din sc_out sc_lv 16 signal 7 } 
	{ agmdpayloadLenOut_V_s_full_n sc_in sc_logic 1 signal 7 } 
	{ agmdpayloadLenOut_V_s_write sc_out sc_logic 1 signal 7 } 
	{ DataInApp_TDATA sc_in sc_lv 512 signal 0 } 
	{ DataInApp_TREADY sc_out sc_logic 1 inacc 4 } 
	{ DataInApp_TKEEP sc_in sc_lv 64 signal 1 } 
	{ DataInApp_TDEST sc_in sc_lv 16 signal 2 } 
	{ DataInApp_TLAST sc_in sc_lv 1 signal 3 } 
	{ DataInApp_TUSER sc_in sc_lv 96 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "DataInApp_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "DataIn_V_data_V", "role": "" }} , 
 	{ "name": "agmdIdOut_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdIdOut_V_V", "role": "din" }} , 
 	{ "name": "agmdIdOut_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut_V_V", "role": "full_n" }} , 
 	{ "name": "agmdIdOut_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut_V_V", "role": "write" }} , 
 	{ "name": "agmdDataOut_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "agmdDataOut_V", "role": "din" }} , 
 	{ "name": "agmdDataOut_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut_V", "role": "full_n" }} , 
 	{ "name": "agmdDataOut_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut_V", "role": "write" }} , 
 	{ "name": "agmdpayloadLenOut_V_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdpayloadLenOut_V_s", "role": "din" }} , 
 	{ "name": "agmdpayloadLenOut_V_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut_V_s", "role": "full_n" }} , 
 	{ "name": "agmdpayloadLenOut_V_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut_V_s", "role": "write" }} , 
 	{ "name": "DataInApp_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataIn_V_data_V", "role": "default" }} , 
 	{ "name": "DataInApp_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "DataIn_V_user", "role": "DY" }} , 
 	{ "name": "DataInApp_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "DataInApp_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataIn_V_dest_V", "role": "default" }} , 
 	{ "name": "DataInApp_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataIn_V_last_V", "role": "default" }} , 
 	{ "name": "DataInApp_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataIn_V_user", "role": "R" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "appGetMetaData",
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
					{"Name" : "DataInApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_user", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "agmd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lenCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdIdOut_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdDataOut_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_V_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keep2len_fu_113", "Parent" : "0",
		"CDFG" : "keep2len",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "keepValue_V", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	appGetMetaData {
		DataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_dest_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_user {Type I LastRead 0 FirstWrite -1}
		agmd_state {Type IO LastRead -1 FirstWrite -1}
		lenCount_V {Type IO LastRead -1 FirstWrite -1}
		agmdIdOut_V_V {Type O LastRead -1 FirstWrite 1}
		agmdDataOut_V {Type O LastRead -1 FirstWrite 1}
		agmdpayloadLenOut_V_s {Type O LastRead -1 FirstWrite 1}}
	keep2len {
		keepValue_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	DataIn_V_data_V { axis {  { DataInApp_TVALID in_vld 0 1 }  { DataInApp_TDATA in_data 0 512 } } }
	DataIn_V_keep_V { axis {  { DataInApp_TKEEP in_data 0 64 } } }
	DataIn_V_dest_V { axis {  { DataInApp_TDEST in_data 0 16 } } }
	DataIn_V_last_V { axis {  { DataInApp_TLAST in_data 0 1 } } }
	DataIn_V_user { axis {  { DataInApp_TREADY in_acc 1 1 }  { DataInApp_TUSER in_data 0 96 } } }
	agmdIdOut_V_V { ap_fifo {  { agmdIdOut_V_V_din fifo_data 1 16 }  { agmdIdOut_V_V_full_n fifo_status 0 1 }  { agmdIdOut_V_V_write fifo_update 1 1 } } }
	agmdDataOut_V { ap_fifo {  { agmdDataOut_V_din fifo_data 1 577 }  { agmdDataOut_V_full_n fifo_status 0 1 }  { agmdDataOut_V_write fifo_update 1 1 } } }
	agmdpayloadLenOut_V_s { ap_fifo {  { agmdpayloadLenOut_V_s_din fifo_data 1 16 }  { agmdpayloadLenOut_V_s_full_n fifo_status 0 1 }  { agmdpayloadLenOut_V_s_write fifo_update 1 1 } } }
}
