set moduleName udpTxEngine
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
set C_modelName {udpTxEngine}
set C_modelType { void 0 }
set C_modelArgList {
	{ txUdpDataOut_V_data_V int 512 regular {axi_s 1 volatile  { txUdpDataOut Data } }  }
	{ txUdpDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { txUdpDataOut Keep } }  }
	{ txUdpDataOut_V_strb_V int 64 regular {axi_s 1 volatile  { txUdpDataOut Strb } }  }
	{ txUdpDataOut_V_last_V int 1 regular {axi_s 1 volatile  { txUdpDataOut Last } }  }
	{ txthMetaData int 128 regular {fifo 0 volatile } {global 0}  }
	{ agmdpayloadLenOut int 16 regular {fifo 0 volatile } {global 0}  }
	{ agmdDataOut int 1024 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "txUdpDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txUdpDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txUdpDataOut_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txUdpDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txthMetaData", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "agmdpayloadLenOut", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "agmdDataOut", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agmdDataOut_dout sc_in sc_lv 1024 signal 6 } 
	{ agmdDataOut_empty_n sc_in sc_logic 1 signal 6 } 
	{ agmdDataOut_read sc_out sc_logic 1 signal 6 } 
	{ txthMetaData_dout sc_in sc_lv 128 signal 4 } 
	{ txthMetaData_empty_n sc_in sc_logic 1 signal 4 } 
	{ txthMetaData_read sc_out sc_logic 1 signal 4 } 
	{ agmdpayloadLenOut_dout sc_in sc_lv 16 signal 5 } 
	{ agmdpayloadLenOut_empty_n sc_in sc_logic 1 signal 5 } 
	{ agmdpayloadLenOut_read sc_out sc_logic 1 signal 5 } 
	{ txUdpDataOut_TREADY sc_in sc_logic 1 outacc 3 } 
	{ txUdpDataOut_TDATA sc_out sc_lv 512 signal 0 } 
	{ txUdpDataOut_TVALID sc_out sc_logic 1 outvld 3 } 
	{ txUdpDataOut_TKEEP sc_out sc_lv 64 signal 1 } 
	{ txUdpDataOut_TSTRB sc_out sc_lv 64 signal 2 } 
	{ txUdpDataOut_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agmdDataOut_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "agmdDataOut", "role": "dout" }} , 
 	{ "name": "agmdDataOut_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut", "role": "empty_n" }} , 
 	{ "name": "agmdDataOut_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdDataOut", "role": "read" }} , 
 	{ "name": "txthMetaData_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "txthMetaData", "role": "dout" }} , 
 	{ "name": "txthMetaData_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData", "role": "empty_n" }} , 
 	{ "name": "txthMetaData_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData", "role": "read" }} , 
 	{ "name": "agmdpayloadLenOut_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdpayloadLenOut", "role": "dout" }} , 
 	{ "name": "agmdpayloadLenOut_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut", "role": "empty_n" }} , 
 	{ "name": "agmdpayloadLenOut_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdpayloadLenOut", "role": "read" }} , 
 	{ "name": "txUdpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "txUdpDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txUdpDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txUdpDataOut_V_strb_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "udpTxEngine",
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
			{"Name" : "txUdpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "txUdpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txUdpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "txUdpDataOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "txUdpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ute_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txthMetaData", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txthMetaData_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "currMetaData_theirIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_theirPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udp_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdDataOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_txUdpDataOut_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_txUdpDataOut_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_txUdpDataOut_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_txUdpDataOut_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udpTxEngine {
		txUdpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		ute_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		txthMetaData {Type I LastRead 0 FirstWrite -1}
		agmdpayloadLenOut {Type I LastRead 0 FirstWrite -1}
		currMetaData_theirIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myPort_V {Type IO LastRead -1 FirstWrite -1}
		ip_len_V {Type IO LastRead -1 FirstWrite -1}
		udp_len_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	txUdpDataOut_V_data_V { axis {  { txUdpDataOut_TDATA out_data 1 512 } } }
	txUdpDataOut_V_keep_V { axis {  { txUdpDataOut_TKEEP out_data 1 64 } } }
	txUdpDataOut_V_strb_V { axis {  { txUdpDataOut_TSTRB out_data 1 64 } } }
	txUdpDataOut_V_last_V { axis {  { txUdpDataOut_TREADY out_acc 0 1 }  { txUdpDataOut_TVALID out_vld 1 1 }  { txUdpDataOut_TLAST out_data 1 1 } } }
	txthMetaData { ap_fifo {  { txthMetaData_dout fifo_data 0 128 }  { txthMetaData_empty_n fifo_status 0 1 }  { txthMetaData_read fifo_update 1 1 } } }
	agmdpayloadLenOut { ap_fifo {  { agmdpayloadLenOut_dout fifo_data 0 16 }  { agmdpayloadLenOut_empty_n fifo_status 0 1 }  { agmdpayloadLenOut_read fifo_update 1 1 } } }
	agmdDataOut { ap_fifo {  { agmdDataOut_dout fifo_data 0 1024 }  { agmdDataOut_empty_n fifo_status 0 1 }  { agmdDataOut_read fifo_update 1 1 } } }
}
