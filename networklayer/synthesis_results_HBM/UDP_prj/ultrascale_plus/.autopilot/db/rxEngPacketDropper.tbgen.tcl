set moduleName rxEngPacketDropper
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
set C_modelName {rxEngPacketDropper}
set C_modelType { void 0 }
set C_modelArgList {
	{ DataOutApp_V_data_V int 512 regular {axi_s 1 volatile  { DataOutApp Data } }  }
	{ DataOutApp_V_keep_V int 64 regular {axi_s 1 volatile  { DataOutApp Keep } }  }
	{ DataOutApp_V_strb_V int 64 regular {axi_s 1 volatile  { DataOutApp Strb } }  }
	{ DataOutApp_V_user_V int 96 regular {axi_s 1 volatile  { DataOutApp User } }  }
	{ DataOutApp_V_last_V int 1 regular {axi_s 1 volatile  { DataOutApp Last } }  }
	{ DataOutApp_V_dest_V int 16 regular {axi_s 1 volatile  { DataOutApp Dest } }  }
	{ rthDropFifo int 160 regular {fifo 0 volatile } {global 0}  }
	{ ureDataPayload int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DataOutApp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_user_V", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rthDropFifo", "interface" : "fifo", "bitwidth" : 160, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ureDataPayload", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rthDropFifo_dout sc_in sc_lv 160 signal 6 } 
	{ rthDropFifo_empty_n sc_in sc_logic 1 signal 6 } 
	{ rthDropFifo_read sc_out sc_logic 1 signal 6 } 
	{ ureDataPayload_dout sc_in sc_lv 1024 signal 7 } 
	{ ureDataPayload_empty_n sc_in sc_logic 1 signal 7 } 
	{ ureDataPayload_read sc_out sc_logic 1 signal 7 } 
	{ DataOutApp_TREADY sc_in sc_logic 1 outacc 5 } 
	{ DataOutApp_TDATA sc_out sc_lv 512 signal 0 } 
	{ DataOutApp_TVALID sc_out sc_logic 1 outvld 5 } 
	{ DataOutApp_TKEEP sc_out sc_lv 64 signal 1 } 
	{ DataOutApp_TSTRB sc_out sc_lv 64 signal 2 } 
	{ DataOutApp_TUSER sc_out sc_lv 96 signal 3 } 
	{ DataOutApp_TLAST sc_out sc_lv 1 signal 4 } 
	{ DataOutApp_TDEST sc_out sc_lv 16 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rthDropFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "rthDropFifo", "role": "dout" }} , 
 	{ "name": "rthDropFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rthDropFifo", "role": "empty_n" }} , 
 	{ "name": "rthDropFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rthDropFifo", "role": "read" }} , 
 	{ "name": "ureDataPayload_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ureDataPayload", "role": "dout" }} , 
 	{ "name": "ureDataPayload_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureDataPayload", "role": "empty_n" }} , 
 	{ "name": "ureDataPayload_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureDataPayload", "role": "read" }} , 
 	{ "name": "DataOutApp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataOutApp_V_data_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataOutApp_V_keep_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataOutApp_V_strb_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataOutApp_V_user_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataOutApp_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "rxEngPacketDropper",
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
			{"Name" : "DataOutApp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DataOutApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataOutApp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_drop_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rthDropFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "response_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureDataPayload", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOutApp_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOutApp_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOutApp_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOutApp_V_user_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOutApp_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOutApp_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rxEngPacketDropper {
		DataOutApp_V_data_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_user_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_last_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_dest_V {Type O LastRead -1 FirstWrite 1}
		repd_state {Type IO LastRead -1 FirstWrite -1}
		response_drop_V {Type IO LastRead -1 FirstWrite -1}
		rthDropFifo {Type I LastRead 0 FirstWrite -1}
		response_id_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myPort_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		ureDataPayload {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	DataOutApp_V_data_V { axis {  { DataOutApp_TDATA out_data 1 512 } } }
	DataOutApp_V_keep_V { axis {  { DataOutApp_TKEEP out_data 1 64 } } }
	DataOutApp_V_strb_V { axis {  { DataOutApp_TSTRB out_data 1 64 } } }
	DataOutApp_V_user_V { axis {  { DataOutApp_TUSER out_data 1 96 } } }
	DataOutApp_V_last_V { axis {  { DataOutApp_TLAST out_data 1 1 } } }
	DataOutApp_V_dest_V { axis {  { DataOutApp_TREADY out_acc 0 1 }  { DataOutApp_TVALID out_vld 1 1 }  { DataOutApp_TDEST out_data 1 16 } } }
	rthDropFifo { ap_fifo {  { rthDropFifo_dout fifo_data 0 160 }  { rthDropFifo_empty_n fifo_status 0 1 }  { rthDropFifo_read fifo_update 1 1 } } }
	ureDataPayload { ap_fifo {  { ureDataPayload_dout fifo_data 0 1024 }  { ureDataPayload_empty_n fifo_status 0 1 }  { ureDataPayload_read fifo_update 1 1 } } }
}
