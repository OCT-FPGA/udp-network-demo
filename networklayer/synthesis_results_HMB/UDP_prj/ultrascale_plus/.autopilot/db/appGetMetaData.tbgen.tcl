set moduleName appGetMetaData
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
set C_modelName {appGetMetaData}
set C_modelType { void 0 }
set C_modelArgList {
	{ DataInApp_V_data_V int 512 regular {axi_s 0 volatile  { DataInApp Data } }  }
	{ DataInApp_V_keep_V int 64 regular {axi_s 0 volatile  { DataInApp Keep } }  }
	{ DataInApp_V_strb_V int 64 regular {axi_s 0 volatile  { DataInApp Strb } }  }
	{ DataInApp_V_user_V int 96 regular {axi_s 0 volatile  { DataInApp User } }  }
	{ DataInApp_V_last_V int 1 regular {axi_s 0 volatile  { DataInApp Last } }  }
	{ DataInApp_V_dest_V int 16 regular {axi_s 0 volatile  { DataInApp Dest } }  }
	{ agmdDataOut int 1024 regular {fifo 1 volatile } {global 1}  }
	{ agmdIdOut int 16 regular {fifo 1 volatile } {global 1}  }
	{ agmdpayloadLenOut int 16 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DataInApp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_user_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "agmdDataOut", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "agmdIdOut", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "agmdpayloadLenOut", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ DataInApp_TVALID sc_in sc_logic 1 invld 5 } 
	{ agmdDataOut_din sc_out sc_lv 1024 signal 6 } 
	{ agmdDataOut_full_n sc_in sc_logic 1 signal 6 } 
	{ agmdDataOut_write sc_out sc_logic 1 signal 6 } 
	{ agmdIdOut_din sc_out sc_lv 16 signal 7 } 
	{ agmdIdOut_full_n sc_in sc_logic 1 signal 7 } 
	{ agmdIdOut_write sc_out sc_logic 1 signal 7 } 
	{ agmdpayloadLenOut_din sc_out sc_lv 16 signal 8 } 
	{ agmdpayloadLenOut_full_n sc_in sc_logic 1 signal 8 } 
	{ agmdpayloadLenOut_write sc_out sc_logic 1 signal 8 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ DataInApp_TDATA sc_in sc_lv 512 signal 0 } 
	{ DataInApp_TREADY sc_out sc_logic 1 inacc 5 } 
	{ DataInApp_TKEEP sc_in sc_lv 64 signal 1 } 
	{ DataInApp_TSTRB sc_in sc_lv 64 signal 2 } 
	{ DataInApp_TUSER sc_in sc_lv 96 signal 3 } 
	{ DataInApp_TLAST sc_in sc_lv 1 signal 4 } 
	{ DataInApp_TDEST sc_in sc_lv 16 signal 5 } 
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
 	{ "name": "DataInApp_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }} , 
 	{ "name": "agmdDataOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "agmdDataOut", "role": "din" }} , 
 	{ "name": "agmdDataOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut", "role": "full_n" }} , 
 	{ "name": "agmdDataOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut", "role": "write" }} , 
 	{ "name": "agmdIdOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdIdOut", "role": "din" }} , 
 	{ "name": "agmdIdOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut", "role": "full_n" }} , 
 	{ "name": "agmdIdOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut", "role": "write" }} , 
 	{ "name": "agmdpayloadLenOut_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdpayloadLenOut", "role": "din" }} , 
 	{ "name": "agmdpayloadLenOut_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut", "role": "full_n" }} , 
 	{ "name": "agmdpayloadLenOut_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "DataInApp_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataInApp_V_data_V", "role": "default" }} , 
 	{ "name": "DataInApp_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataInApp_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataInApp_V_keep_V", "role": "default" }} , 
 	{ "name": "DataInApp_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataInApp_V_strb_V", "role": "default" }} , 
 	{ "name": "DataInApp_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataInApp_V_user_V", "role": "default" }} , 
 	{ "name": "DataInApp_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataInApp_V_last_V", "role": "default" }} , 
 	{ "name": "DataInApp_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "appGetMetaData",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "DataInApp_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DataInApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataInApp_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "agmd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lenCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdDataOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdIdOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keep2len_fu_121", "Parent" : "0",
		"CDFG" : "keep2len",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
			{"Name" : "keepValue", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataInApp_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataInApp_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataInApp_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataInApp_V_user_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataInApp_V_last_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataInApp_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	appGetMetaData {
		DataInApp_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_strb_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_user_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_last_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_dest_V {Type I LastRead 0 FirstWrite -1}
		agmd_state {Type IO LastRead -1 FirstWrite -1}
		lenCount_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut {Type O LastRead 0 FirstWrite 0}
		agmdIdOut {Type O LastRead -1 FirstWrite 1}
		agmdpayloadLenOut {Type O LastRead -1 FirstWrite 1}}
	keep2len {
		keepValue {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	DataInApp_V_data_V { axis {  { DataInApp_TDATA in_data 0 512 } } }
	DataInApp_V_keep_V { axis {  { DataInApp_TKEEP in_data 0 64 } } }
	DataInApp_V_strb_V { axis {  { DataInApp_TSTRB in_data 0 64 } } }
	DataInApp_V_user_V { axis {  { DataInApp_TUSER in_data 0 96 } } }
	DataInApp_V_last_V { axis {  { DataInApp_TLAST in_data 0 1 } } }
	DataInApp_V_dest_V { axis {  { DataInApp_TVALID in_vld 0 1 }  { DataInApp_TREADY in_acc 1 1 }  { DataInApp_TDEST in_data 0 16 } } }
	agmdDataOut { ap_fifo {  { agmdDataOut_din fifo_data 1 1024 }  { agmdDataOut_full_n fifo_status 0 1 }  { agmdDataOut_write fifo_update 1 1 } } }
	agmdIdOut { ap_fifo {  { agmdIdOut_din fifo_data 1 16 }  { agmdIdOut_full_n fifo_status 0 1 }  { agmdIdOut_write fifo_update 1 1 } } }
	agmdpayloadLenOut { ap_fifo {  { agmdpayloadLenOut_din fifo_data 1 16 }  { agmdpayloadLenOut_full_n fifo_status 0 1 }  { agmdpayloadLenOut_write fifo_update 1 1 } } }
}
