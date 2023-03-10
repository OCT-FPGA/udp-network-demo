set moduleName arp_pkg_receiver
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
set C_modelName {arp_pkg_receiver}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpDataIn_V_data_V int 512 regular {axi_s 0 volatile  { arpDataIn Data } }  }
	{ arpDataIn_V_keep_V int 64 regular {axi_s 0 volatile  { arpDataIn Keep } }  }
	{ arpDataIn_V_strb_V int 64 regular {axi_s 0 volatile  { arpDataIn Strb } }  }
	{ arpDataIn_V_last_V int 1 regular {axi_s 0 volatile  { arpDataIn Last } }  }
	{ myIpAddress int 32 regular {pointer 0}  }
	{ myIpAddress_c int 32 regular {fifo 1}  }
	{ myIpAddress_c11 int 32 regular {fifo 1}  }
	{ arpReplyFifo int 256 regular {fifo 1 volatile } {global 1}  }
	{ arpTableInsertFifo int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpDataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress_c11", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpReplyFifo", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "arpTableInsertFifo", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ myIpAddress_c11_din sc_out sc_lv 32 signal 6 } 
	{ myIpAddress_c11_full_n sc_in sc_logic 1 signal 6 } 
	{ myIpAddress_c11_write sc_out sc_logic 1 signal 6 } 
	{ myIpAddress_c_din sc_out sc_lv 32 signal 5 } 
	{ myIpAddress_c_full_n sc_in sc_logic 1 signal 5 } 
	{ myIpAddress_c_write sc_out sc_logic 1 signal 5 } 
	{ arpDataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ arpTableInsertFifo_din sc_out sc_lv 128 signal 8 } 
	{ arpTableInsertFifo_full_n sc_in sc_logic 1 signal 8 } 
	{ arpTableInsertFifo_write sc_out sc_logic 1 signal 8 } 
	{ arpReplyFifo_din sc_out sc_lv 256 signal 7 } 
	{ arpReplyFifo_full_n sc_in sc_logic 1 signal 7 } 
	{ arpReplyFifo_write sc_out sc_logic 1 signal 7 } 
	{ arpDataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ arpDataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ arpDataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ arpDataIn_TSTRB sc_in sc_lv 64 signal 2 } 
	{ arpDataIn_TLAST sc_in sc_lv 1 signal 3 } 
	{ myIpAddress sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myIpAddress_c11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_c11", "role": "din" }} , 
 	{ "name": "myIpAddress_c11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c11", "role": "full_n" }} , 
 	{ "name": "myIpAddress_c11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c11", "role": "write" }} , 
 	{ "name": "myIpAddress_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "din" }} , 
 	{ "name": "myIpAddress_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "full_n" }} , 
 	{ "name": "myIpAddress_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "write" }} , 
 	{ "name": "arpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableInsertFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "arpTableInsertFifo", "role": "din" }} , 
 	{ "name": "arpTableInsertFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo", "role": "full_n" }} , 
 	{ "name": "arpTableInsertFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo", "role": "write" }} , 
 	{ "name": "arpReplyFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "arpReplyFifo", "role": "din" }} , 
 	{ "name": "arpReplyFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpReplyFifo", "role": "full_n" }} , 
 	{ "name": "arpReplyFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpReplyFifo", "role": "write" }} , 
 	{ "name": "arpDataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataIn_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataIn_V_strb_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "arp_pkg_receiver",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arpDataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_c11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataIn_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataIn_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataIn_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_arpDataIn_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_pkg_receiver {
		arpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress_c {Type O LastRead -1 FirstWrite 0}
		myIpAddress_c11 {Type O LastRead -1 FirstWrite 0}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpDataIn_V_data_V { axis {  { arpDataIn_TDATA in_data 0 512 } } }
	arpDataIn_V_keep_V { axis {  { arpDataIn_TKEEP in_data 0 64 } } }
	arpDataIn_V_strb_V { axis {  { arpDataIn_TSTRB in_data 0 64 } } }
	arpDataIn_V_last_V { axis {  { arpDataIn_TVALID in_vld 0 1 }  { arpDataIn_TREADY in_acc 1 1 }  { arpDataIn_TLAST in_data 0 1 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	myIpAddress_c { ap_fifo {  { myIpAddress_c_din fifo_data 1 32 }  { myIpAddress_c_full_n fifo_status 0 1 }  { myIpAddress_c_write fifo_update 1 1 } } }
	myIpAddress_c11 { ap_fifo {  { myIpAddress_c11_din fifo_data 1 32 }  { myIpAddress_c11_full_n fifo_status 0 1 }  { myIpAddress_c11_write fifo_update 1 1 } } }
	arpReplyFifo { ap_fifo {  { arpReplyFifo_din fifo_data 1 256 }  { arpReplyFifo_full_n fifo_status 0 1 }  { arpReplyFifo_write fifo_update 1 1 } } }
	arpTableInsertFifo { ap_fifo {  { arpTableInsertFifo_din fifo_data 1 128 }  { arpTableInsertFifo_full_n fifo_status 0 1 }  { arpTableInsertFifo_write fifo_update 1 1 } } }
}
