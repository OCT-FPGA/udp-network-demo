set moduleName udpTxEngine
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
set C_modelName {udpTxEngine}
set C_modelType { void 0 }
set C_modelArgList {
	{ DataOut_V_data_V int 512 regular {axi_s 1 volatile  { txUdpDataOut Data } }  }
	{ DataOut_V_keep_V int 64 regular {axi_s 1 volatile  { txUdpDataOut Keep } }  }
	{ DataOut_V_last_V int 1 regular {axi_s 1 volatile  { txUdpDataOut Last } }  }
	{ txthMetaData_V int 97 regular {fifo 0 volatile } {global 0}  }
	{ agmdpayloadLenOut_V_s int 16 regular {fifo 0 volatile } {global 0}  }
	{ agmdDataOut_V int 577 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txthMetaData_V", "interface" : "fifo", "bitwidth" : 97, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "agmdpayloadLenOut_V_s", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "agmdDataOut_V", "interface" : "fifo", "bitwidth" : 577, "direction" : "READONLY", "extern" : 0} ]}
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
	{ agmdDataOut_V_dout sc_in sc_lv 577 signal 5 } 
	{ agmdDataOut_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ agmdDataOut_V_read sc_out sc_logic 1 signal 5 } 
	{ txthMetaData_V_dout sc_in sc_lv 97 signal 3 } 
	{ txthMetaData_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ txthMetaData_V_read sc_out sc_logic 1 signal 3 } 
	{ agmdpayloadLenOut_V_s_dout sc_in sc_lv 16 signal 4 } 
	{ agmdpayloadLenOut_V_s_empty_n sc_in sc_logic 1 signal 4 } 
	{ agmdpayloadLenOut_V_s_read sc_out sc_logic 1 signal 4 } 
	{ txUdpDataOut_TREADY sc_in sc_logic 1 outacc 2 } 
	{ txUdpDataOut_TDATA sc_out sc_lv 512 signal 0 } 
	{ txUdpDataOut_TVALID sc_out sc_logic 1 outvld 2 } 
	{ txUdpDataOut_TKEEP sc_out sc_lv 64 signal 1 } 
	{ txUdpDataOut_TLAST sc_out sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agmdDataOut_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":577, "type": "signal", "bundle":{"name": "agmdDataOut_V", "role": "dout" }} , 
 	{ "name": "agmdDataOut_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut_V", "role": "empty_n" }} , 
 	{ "name": "agmdDataOut_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut_V", "role": "read" }} , 
 	{ "name": "txthMetaData_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "txthMetaData_V", "role": "dout" }} , 
 	{ "name": "txthMetaData_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData_V", "role": "empty_n" }} , 
 	{ "name": "txthMetaData_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData_V", "role": "read" }} , 
 	{ "name": "agmdpayloadLenOut_V_s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdpayloadLenOut_V_s", "role": "dout" }} , 
 	{ "name": "agmdpayloadLenOut_V_s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut_V_s", "role": "empty_n" }} , 
 	{ "name": "agmdpayloadLenOut_V_s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut_V_s", "role": "read" }} , 
 	{ "name": "txUdpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "DataOut_V_last_V", "role": "DY" }} , 
 	{ "name": "txUdpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataOut_V_data_V", "role": "A" }} , 
 	{ "name": "txUdpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DataOut_V_last_V", "role": "ID" }} , 
 	{ "name": "txUdpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataOut_V_keep_V", "role": "P" }} , 
 	{ "name": "txUdpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataOut_V_last_V", "role": "T" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "udpTxEngine",
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
			{"Name" : "DataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "txUdpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ute_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txthMetaData_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "txthMetaData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut_V_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "currMetaData_theirIP", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_theirPo", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myPort_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udp_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdDataOut_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOut_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOut_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_DataOut_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udpTxEngine {
		DataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		DataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		DataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		ute_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		txthMetaData_V {Type I LastRead 0 FirstWrite -1}
		agmdpayloadLenOut_V_s {Type I LastRead 0 FirstWrite -1}
		currMetaData_theirIP {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirPo {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myPort_s {Type IO LastRead -1 FirstWrite -1}
		ip_len_V {Type IO LastRead -1 FirstWrite -1}
		udp_len_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	DataOut_V_data_V { axis {  { txUdpDataOut_TDATA out_data 1 512 } } }
	DataOut_V_keep_V { axis {  { txUdpDataOut_TKEEP out_data 1 64 } } }
	DataOut_V_last_V { axis {  { txUdpDataOut_TREADY out_acc 0 1 }  { txUdpDataOut_TVALID out_vld 1 1 }  { txUdpDataOut_TLAST out_data 1 1 } } }
	txthMetaData_V { ap_fifo {  { txthMetaData_V_dout fifo_data 0 97 }  { txthMetaData_V_empty_n fifo_status 0 1 }  { txthMetaData_V_read fifo_update 1 1 } } }
	agmdpayloadLenOut_V_s { ap_fifo {  { agmdpayloadLenOut_V_s_dout fifo_data 0 16 }  { agmdpayloadLenOut_V_s_empty_n fifo_status 0 1 }  { agmdpayloadLenOut_V_s_read fifo_update 1 1 } } }
	agmdDataOut_V { ap_fifo {  { agmdDataOut_V_dout fifo_data 0 577 }  { agmdDataOut_V_empty_n fifo_status 0 1 }  { agmdDataOut_V_read fifo_update 1 1 } } }
}
