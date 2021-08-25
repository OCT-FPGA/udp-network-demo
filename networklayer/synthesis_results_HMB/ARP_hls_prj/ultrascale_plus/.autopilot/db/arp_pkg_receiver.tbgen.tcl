set moduleName arp_pkg_receiver
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
set C_modelName {arp_pkg_receiver}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpDataIn_V_data_V int 512 regular {axi_s 0 volatile  { arpDataIn Data } }  }
	{ arpDataIn_V_keep_V int 64 regular {axi_s 0 volatile  { arpDataIn Keep } }  }
	{ arpDataIn_V_last_V int 1 regular {axi_s 0 volatile  { arpDataIn Last } }  }
	{ myIpAddress_V int 32 regular {fifo 0}  }
	{ myIpAddress_V_out int 32 regular {fifo 1}  }
	{ arpReplyFifo_V int 192 regular {fifo 1 volatile } {global 1}  }
	{ arpTableInsertFifo_V int 81 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpDataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpReplyFifo_V", "interface" : "fifo", "bitwidth" : 192, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "arpTableInsertFifo_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ myIpAddress_V_dout sc_in sc_lv 32 signal 3 } 
	{ myIpAddress_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ myIpAddress_V_read sc_out sc_logic 1 signal 3 } 
	{ myIpAddress_V_out_din sc_out sc_lv 32 signal 4 } 
	{ myIpAddress_V_out_full_n sc_in sc_logic 1 signal 4 } 
	{ myIpAddress_V_out_write sc_out sc_logic 1 signal 4 } 
	{ arpDataIn_TVALID sc_in sc_logic 1 invld 0 } 
	{ arpTableInsertFifo_V_din sc_out sc_lv 81 signal 6 } 
	{ arpTableInsertFifo_V_full_n sc_in sc_logic 1 signal 6 } 
	{ arpTableInsertFifo_V_write sc_out sc_logic 1 signal 6 } 
	{ arpReplyFifo_V_din sc_out sc_lv 192 signal 5 } 
	{ arpReplyFifo_V_full_n sc_in sc_logic 1 signal 5 } 
	{ arpReplyFifo_V_write sc_out sc_logic 1 signal 5 } 
	{ arpDataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ arpDataIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ arpDataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ arpDataIn_TLAST sc_in sc_lv 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myIpAddress_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "dout" }} , 
 	{ "name": "myIpAddress_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "read" }} , 
 	{ "name": "myIpAddress_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V_out", "role": "din" }} , 
 	{ "name": "myIpAddress_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V_out", "role": "full_n" }} , 
 	{ "name": "myIpAddress_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V_out", "role": "write" }} , 
 	{ "name": "arpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpDataIn_V_data_V", "role": "default" }} , 
 	{ "name": "arpTableInsertFifo_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "arpTableInsertFifo_V", "role": "din" }} , 
 	{ "name": "arpTableInsertFifo_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo_V", "role": "full_n" }} , 
 	{ "name": "arpTableInsertFifo_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo_V", "role": "write" }} , 
 	{ "name": "arpReplyFifo_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":192, "type": "signal", "bundle":{"name": "arpReplyFifo_V", "role": "din" }} , 
 	{ "name": "arpReplyFifo_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpReplyFifo_V", "role": "full_n" }} , 
 	{ "name": "arpReplyFifo_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpReplyFifo_V", "role": "write" }} , 
 	{ "name": "arpDataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataIn_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "arp_pkg_receiver",
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
			{"Name" : "arpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arpDataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	arp_pkg_receiver {
		arpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V_out {Type O LastRead -1 FirstWrite 0}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo_V {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpDataIn_V_data_V { axis {  { arpDataIn_TVALID in_vld 0 1 }  { arpDataIn_TDATA in_data 0 512 } } }
	arpDataIn_V_keep_V { axis {  { arpDataIn_TKEEP in_data 0 64 } } }
	arpDataIn_V_last_V { axis {  { arpDataIn_TREADY in_acc 1 1 }  { arpDataIn_TLAST in_data 0 1 } } }
	myIpAddress_V { ap_fifo {  { myIpAddress_V_dout fifo_data 0 32 }  { myIpAddress_V_empty_n fifo_status 0 1 }  { myIpAddress_V_read fifo_update 1 1 } } }
	myIpAddress_V_out { ap_fifo {  { myIpAddress_V_out_din fifo_data 1 32 }  { myIpAddress_V_out_full_n fifo_status 0 1 }  { myIpAddress_V_out_write fifo_update 1 1 } } }
	arpReplyFifo_V { ap_fifo {  { arpReplyFifo_V_din fifo_data 1 192 }  { arpReplyFifo_V_full_n fifo_status 0 1 }  { arpReplyFifo_V_write fifo_update 1 1 } } }
	arpTableInsertFifo_V { ap_fifo {  { arpTableInsertFifo_V_din fifo_data 1 81 }  { arpTableInsertFifo_V_full_n fifo_status 0 1 }  { arpTableInsertFifo_V_write fifo_update 1 1 } } }
}
