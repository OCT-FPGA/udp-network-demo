set moduleName rxEngPacketDropper
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
set C_modelName {rxEngPacketDropper}
set C_modelType { void 0 }
set C_modelArgList {
	{ repdDataOut_V_data_V int 512 regular {axi_s 1 volatile  { DataOutApp Data } }  }
	{ repdDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { DataOutApp Keep } }  }
	{ repdDataOut_V_dest_V int 16 regular {axi_s 1 volatile  { DataOutApp Dest } }  }
	{ repdDataOut_V_last_V int 1 regular {axi_s 1 volatile  { DataOutApp Last } }  }
	{ repdDataOut_V_user int 96 regular {axi_s 1 volatile  { DataOutApp User } }  }
	{ rthDropFifo_V int 113 regular {fifo 0 volatile } {global 0}  }
	{ ureDataPayload_V int 577 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "repdDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "repdDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "repdDataOut_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "repdDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "repdDataOut_V_user", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rthDropFifo_V", "interface" : "fifo", "bitwidth" : 113, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ureDataPayload_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rthDropFifo_V_dout sc_in sc_lv 113 signal 5 } 
	{ rthDropFifo_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ rthDropFifo_V_read sc_out sc_logic 1 signal 5 } 
	{ ureDataPayload_V_dout sc_in sc_lv 577 signal 6 } 
	{ ureDataPayload_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ ureDataPayload_V_read sc_out sc_logic 1 signal 6 } 
	{ DataOutApp_TREADY sc_in sc_logic 1 outacc 4 } 
	{ DataOutApp_TDATA sc_out sc_lv 512 signal 0 } 
	{ DataOutApp_TVALID sc_out sc_logic 1 outvld 4 } 
	{ DataOutApp_TKEEP sc_out sc_lv 64 signal 1 } 
	{ DataOutApp_TDEST sc_out sc_lv 16 signal 2 } 
	{ DataOutApp_TLAST sc_out sc_lv 1 signal 3 } 
	{ DataOutApp_TUSER sc_out sc_lv 96 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rthDropFifo_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":113, "type": "signal", "bundle":{"name": "rthDropFifo_V", "role": "dout" }} , 
 	{ "name": "rthDropFifo_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rthDropFifo_V", "role": "empty_n" }} , 
 	{ "name": "rthDropFifo_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rthDropFifo_V", "role": "read" }} , 
 	{ "name": "ureDataPayload_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "ureDataPayload_V", "role": "dout" }} , 
 	{ "name": "ureDataPayload_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureDataPayload_V", "role": "empty_n" }} , 
 	{ "name": "ureDataPayload_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureDataPayload_V", "role": "read" }} , 
 	{ "name": "DataOutApp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "repdDataOut_V_user", "role": "default" }} , 
 	{ "name": "DataOutApp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "repdDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "repdDataOut_V_user", "role": "default" }} , 
 	{ "name": "DataOutApp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "repdDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "repdDataOut_V_dest_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "repdDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "repdDataOut_V_user", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "rxEngPacketDropper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
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
			{"Name" : "repdDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DataOutApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "repdDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repdDataOut_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repdDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repdDataOut_V_user", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_drop_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rthDropFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "response_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirI", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myPort", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirP", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureDataPayload_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_repdDataOut_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_repdDataOut_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_repdDataOut_V_dest_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_repdDataOut_V_last_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_repdDataOut_V_user_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rxEngPacketDropper {
		repdDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_dest_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_user {Type O LastRead -1 FirstWrite 1}
		repd_state {Type IO LastRead -1 FirstWrite -1}
		response_drop_V {Type IO LastRead -1 FirstWrite -1}
		rthDropFifo_V {Type I LastRead 0 FirstWrite -1}
		response_id_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirI {Type IO LastRead -1 FirstWrite -1}
		response_user_myPort {Type IO LastRead -1 FirstWrite -1}
		response_user_theirP {Type IO LastRead -1 FirstWrite -1}
		ureDataPayload_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	repdDataOut_V_data_V { axis {  { DataOutApp_TDATA out_data 1 512 } } }
	repdDataOut_V_keep_V { axis {  { DataOutApp_TKEEP out_data 1 64 } } }
	repdDataOut_V_dest_V { axis {  { DataOutApp_TDEST out_data 1 16 } } }
	repdDataOut_V_last_V { axis {  { DataOutApp_TLAST out_data 1 1 } } }
	repdDataOut_V_user { axis {  { DataOutApp_TREADY out_acc 0 1 }  { DataOutApp_TVALID out_vld 1 1 }  { DataOutApp_TUSER out_data 1 96 } } }
	rthDropFifo_V { ap_fifo {  { rthDropFifo_V_dout fifo_data 0 113 }  { rthDropFifo_V_empty_n fifo_status 0 1 }  { rthDropFifo_V_read fifo_update 1 1 } } }
	ureDataPayload_V { ap_fifo {  { ureDataPayload_V_dout fifo_data 0 577 }  { ureDataPayload_V_empty_n fifo_status 0 1 }  { ureDataPayload_V_read fifo_update 1 1 } } }
}
