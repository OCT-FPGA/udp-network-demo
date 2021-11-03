set moduleName arp_table
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
set C_modelName {arp_table}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpTable_macAddress int 64 regular {array 256 { 2 } 1 1 }  }
	{ arpTable_ipAddress int 32 regular {array 256 { 0 } 0 1 }  }
	{ arpTable_valid int 8 regular {array 256 { 2 } 1 1 }  }
	{ myIpAddress int 32 regular {fifo 0}  }
	{ p_read int 32 regular  }
	{ p_read1 int 32 regular  }
	{ arpTableInsertFifo int 128 regular {fifo 0 volatile } {global 0}  }
	{ macIpEncode_i int 32 regular {fifo 0 volatile } {global 0}  }
	{ arpRequestFifo int 32 regular {fifo 1 volatile } {global 1}  }
	{ macIpEncode_rsp_i int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpTable_macAddress", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "arpTable_ipAddress", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpTable_valid", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arpTableInsertFifo", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_i", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "arpRequestFifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_rsp_i", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ myIpAddress_dout sc_in sc_lv 32 signal 3 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 3 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 3 } 
	{ macIpEncode_i_dout sc_in sc_lv 32 signal 7 } 
	{ macIpEncode_i_empty_n sc_in sc_logic 1 signal 7 } 
	{ macIpEncode_i_read sc_out sc_logic 1 signal 7 } 
	{ arpTableInsertFifo_dout sc_in sc_lv 128 signal 6 } 
	{ arpTableInsertFifo_empty_n sc_in sc_logic 1 signal 6 } 
	{ arpTableInsertFifo_read sc_out sc_logic 1 signal 6 } 
	{ macIpEncode_rsp_i_din sc_out sc_lv 128 signal 9 } 
	{ macIpEncode_rsp_i_full_n sc_in sc_logic 1 signal 9 } 
	{ macIpEncode_rsp_i_write sc_out sc_logic 1 signal 9 } 
	{ arpRequestFifo_din sc_out sc_lv 32 signal 8 } 
	{ arpRequestFifo_full_n sc_in sc_logic 1 signal 8 } 
	{ arpRequestFifo_write sc_out sc_logic 1 signal 8 } 
	{ arpTable_macAddress_address0 sc_out sc_lv 8 signal 0 } 
	{ arpTable_macAddress_ce0 sc_out sc_logic 1 signal 0 } 
	{ arpTable_macAddress_we0 sc_out sc_lv 8 signal 0 } 
	{ arpTable_macAddress_d0 sc_out sc_lv 64 signal 0 } 
	{ arpTable_macAddress_q0 sc_in sc_lv 64 signal 0 } 
	{ arpTable_ipAddress_address0 sc_out sc_lv 8 signal 1 } 
	{ arpTable_ipAddress_ce0 sc_out sc_logic 1 signal 1 } 
	{ arpTable_ipAddress_we0 sc_out sc_logic 1 signal 1 } 
	{ arpTable_ipAddress_d0 sc_out sc_lv 32 signal 1 } 
	{ arpTable_valid_address0 sc_out sc_lv 8 signal 2 } 
	{ arpTable_valid_ce0 sc_out sc_logic 1 signal 2 } 
	{ arpTable_valid_we0 sc_out sc_logic 1 signal 2 } 
	{ arpTable_valid_d0 sc_out sc_lv 8 signal 2 } 
	{ arpTable_valid_q0 sc_in sc_lv 8 signal 2 } 
	{ p_read sc_in sc_lv 32 signal 4 } 
	{ p_read1 sc_in sc_lv 32 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "macIpEncode_i_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "macIpEncode_i", "role": "dout" }} , 
 	{ "name": "macIpEncode_i_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_i", "role": "empty_n" }} , 
 	{ "name": "macIpEncode_i_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_i", "role": "read" }} , 
 	{ "name": "arpTableInsertFifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "arpTableInsertFifo", "role": "dout" }} , 
 	{ "name": "arpTableInsertFifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo", "role": "empty_n" }} , 
 	{ "name": "arpTableInsertFifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo", "role": "read" }} , 
 	{ "name": "macIpEncode_rsp_i_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i", "role": "din" }} , 
 	{ "name": "macIpEncode_rsp_i_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i", "role": "full_n" }} , 
 	{ "name": "macIpEncode_rsp_i_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i", "role": "write" }} , 
 	{ "name": "arpRequestFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "din" }} , 
 	{ "name": "arpRequestFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "full_n" }} , 
 	{ "name": "arpRequestFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "write" }} , 
 	{ "name": "arpTable_macAddress_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "address0" }} , 
 	{ "name": "arpTable_macAddress_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "ce0" }} , 
 	{ "name": "arpTable_macAddress_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "we0" }} , 
 	{ "name": "arpTable_macAddress_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "d0" }} , 
 	{ "name": "arpTable_macAddress_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "q0" }} , 
 	{ "name": "arpTable_ipAddress_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "address0" }} , 
 	{ "name": "arpTable_ipAddress_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "ce0" }} , 
 	{ "name": "arpTable_ipAddress_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "we0" }} , 
 	{ "name": "arpTable_ipAddress_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "d0" }} , 
 	{ "name": "arpTable_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "address0" }} , 
 	{ "name": "arpTable_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "ce0" }} , 
 	{ "name": "arpTable_valid_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "we0" }} , 
 	{ "name": "arpTable_valid_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "d0" }} , 
 	{ "name": "arpTable_valid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "arp_table",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_60", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_63", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_58", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_70", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_63", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_60", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_58", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_70", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "arpTable_macAddress", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_ipAddress", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	arp_table {
		arpTable_macAddress {Type IO LastRead 0 FirstWrite 0}
		arpTable_ipAddress {Type O LastRead -1 FirstWrite 2}
		arpTable_valid {Type IO LastRead 0 FirstWrite 0}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		arpTableInsertFifo {Type I LastRead 0 FirstWrite -1}
		macIpEncode_i {Type I LastRead 0 FirstWrite -1}
		arpRequestFifo {Type O LastRead -1 FirstWrite 2}
		macIpEncode_rsp_i {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpTable_macAddress { ap_memory {  { arpTable_macAddress_address0 mem_address 1 8 }  { arpTable_macAddress_ce0 mem_ce 1 1 }  { arpTable_macAddress_we0 mem_we 1 8 }  { arpTable_macAddress_d0 mem_din 1 64 }  { arpTable_macAddress_q0 mem_dout 0 64 } } }
	arpTable_ipAddress { ap_memory {  { arpTable_ipAddress_address0 mem_address 1 8 }  { arpTable_ipAddress_ce0 mem_ce 1 1 }  { arpTable_ipAddress_we0 mem_we 1 1 }  { arpTable_ipAddress_d0 mem_din 1 32 } } }
	arpTable_valid { ap_memory {  { arpTable_valid_address0 mem_address 1 8 }  { arpTable_valid_ce0 mem_ce 1 1 }  { arpTable_valid_we0 mem_we 1 1 }  { arpTable_valid_d0 mem_din 1 8 }  { arpTable_valid_q0 mem_dout 0 8 } } }
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 32 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 32 } } }
	arpTableInsertFifo { ap_fifo {  { arpTableInsertFifo_dout fifo_data 0 128 }  { arpTableInsertFifo_empty_n fifo_status 0 1 }  { arpTableInsertFifo_read fifo_update 1 1 } } }
	macIpEncode_i { ap_fifo {  { macIpEncode_i_dout fifo_data 0 32 }  { macIpEncode_i_empty_n fifo_status 0 1 }  { macIpEncode_i_read fifo_update 1 1 } } }
	arpRequestFifo { ap_fifo {  { arpRequestFifo_din fifo_data 1 32 }  { arpRequestFifo_full_n fifo_status 0 1 }  { arpRequestFifo_write fifo_update 1 1 } } }
	macIpEncode_rsp_i { ap_fifo {  { macIpEncode_rsp_i_din fifo_data 1 128 }  { macIpEncode_rsp_i_full_n fifo_status 0 1 }  { macIpEncode_rsp_i_write fifo_update 1 1 } } }
}
