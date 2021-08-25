set moduleName arp_table
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
set C_modelName {arp_table}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpTable_macAddress_V int 48 regular {array 256 { 2 } 1 1 }  }
	{ arpTable_ipAddress_V int 32 regular {array 256 { 0 } 0 1 }  }
	{ arpTable_valid_V int 1 regular {array 256 { 2 } 1 1 }  }
	{ myIpAddress_V int 32 regular {fifo 0}  }
	{ gatewayIP_V int 32 regular {fifo 0}  }
	{ networkMask_V int 32 regular {fifo 0}  }
	{ arpTableInsertFifo_V int 81 regular {fifo 0 volatile } {global 0}  }
	{ macIpEncode_i_V_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ arpRequestFifo_V_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ macIpEncode_rsp_i_V int 49 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpTable_macAddress_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "arpTable_ipAddress_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpTable_valid_V", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "myIpAddress_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gatewayIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "networkMask_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arpTableInsertFifo_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_i_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "arpRequestFifo_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_rsp_i_V", "interface" : "fifo", "bitwidth" : 49, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 42
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
	{ gatewayIP_V_dout sc_in sc_lv 32 signal 4 } 
	{ gatewayIP_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ gatewayIP_V_read sc_out sc_logic 1 signal 4 } 
	{ networkMask_V_dout sc_in sc_lv 32 signal 5 } 
	{ networkMask_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ networkMask_V_read sc_out sc_logic 1 signal 5 } 
	{ macIpEncode_i_V_V_dout sc_in sc_lv 32 signal 7 } 
	{ macIpEncode_i_V_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ macIpEncode_i_V_V_read sc_out sc_logic 1 signal 7 } 
	{ arpTableInsertFifo_V_dout sc_in sc_lv 81 signal 6 } 
	{ arpTableInsertFifo_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ arpTableInsertFifo_V_read sc_out sc_logic 1 signal 6 } 
	{ macIpEncode_rsp_i_V_din sc_out sc_lv 49 signal 9 } 
	{ macIpEncode_rsp_i_V_full_n sc_in sc_logic 1 signal 9 } 
	{ macIpEncode_rsp_i_V_write sc_out sc_logic 1 signal 9 } 
	{ arpRequestFifo_V_V_din sc_out sc_lv 32 signal 8 } 
	{ arpRequestFifo_V_V_full_n sc_in sc_logic 1 signal 8 } 
	{ arpRequestFifo_V_V_write sc_out sc_logic 1 signal 8 } 
	{ arpTable_macAddress_V_address0 sc_out sc_lv 8 signal 0 } 
	{ arpTable_macAddress_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ arpTable_macAddress_V_we0 sc_out sc_logic 1 signal 0 } 
	{ arpTable_macAddress_V_d0 sc_out sc_lv 48 signal 0 } 
	{ arpTable_macAddress_V_q0 sc_in sc_lv 48 signal 0 } 
	{ arpTable_ipAddress_V_address0 sc_out sc_lv 8 signal 1 } 
	{ arpTable_ipAddress_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ arpTable_ipAddress_V_we0 sc_out sc_logic 1 signal 1 } 
	{ arpTable_ipAddress_V_d0 sc_out sc_lv 32 signal 1 } 
	{ arpTable_valid_V_address0 sc_out sc_lv 8 signal 2 } 
	{ arpTable_valid_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ arpTable_valid_V_we0 sc_out sc_logic 1 signal 2 } 
	{ arpTable_valid_V_d0 sc_out sc_lv 1 signal 2 } 
	{ arpTable_valid_V_q0 sc_in sc_lv 1 signal 2 } 
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
 	{ "name": "gatewayIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP_V", "role": "dout" }} , 
 	{ "name": "gatewayIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP_V", "role": "empty_n" }} , 
 	{ "name": "gatewayIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP_V", "role": "read" }} , 
 	{ "name": "networkMask_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask_V", "role": "dout" }} , 
 	{ "name": "networkMask_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask_V", "role": "empty_n" }} , 
 	{ "name": "networkMask_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask_V", "role": "read" }} , 
 	{ "name": "macIpEncode_i_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "macIpEncode_i_V_V", "role": "dout" }} , 
 	{ "name": "macIpEncode_i_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_i_V_V", "role": "empty_n" }} , 
 	{ "name": "macIpEncode_i_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_i_V_V", "role": "read" }} , 
 	{ "name": "arpTableInsertFifo_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "arpTableInsertFifo_V", "role": "dout" }} , 
 	{ "name": "arpTableInsertFifo_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo_V", "role": "empty_n" }} , 
 	{ "name": "arpTableInsertFifo_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTableInsertFifo_V", "role": "read" }} , 
 	{ "name": "macIpEncode_rsp_i_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i_V", "role": "din" }} , 
 	{ "name": "macIpEncode_rsp_i_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i_V", "role": "full_n" }} , 
 	{ "name": "macIpEncode_rsp_i_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i_V", "role": "write" }} , 
 	{ "name": "arpRequestFifo_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpRequestFifo_V_V", "role": "din" }} , 
 	{ "name": "arpRequestFifo_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo_V_V", "role": "full_n" }} , 
 	{ "name": "arpRequestFifo_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo_V_V", "role": "write" }} , 
 	{ "name": "arpTable_macAddress_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_macAddress_V", "role": "address0" }} , 
 	{ "name": "arpTable_macAddress_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_macAddress_V", "role": "ce0" }} , 
 	{ "name": "arpTable_macAddress_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_macAddress_V", "role": "we0" }} , 
 	{ "name": "arpTable_macAddress_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arpTable_macAddress_V", "role": "d0" }} , 
 	{ "name": "arpTable_macAddress_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arpTable_macAddress_V", "role": "q0" }} , 
 	{ "name": "arpTable_ipAddress_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_ipAddress_V", "role": "address0" }} , 
 	{ "name": "arpTable_ipAddress_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_ipAddress_V", "role": "ce0" }} , 
 	{ "name": "arpTable_ipAddress_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_ipAddress_V", "role": "we0" }} , 
 	{ "name": "arpTable_ipAddress_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTable_ipAddress_V", "role": "d0" }} , 
 	{ "name": "arpTable_valid_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_valid_V", "role": "address0" }} , 
 	{ "name": "arpTable_valid_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid_V", "role": "ce0" }} , 
 	{ "name": "arpTable_valid_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid_V", "role": "we0" }} , 
 	{ "name": "arpTable_valid_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid_V", "role": "d0" }} , 
 	{ "name": "arpTable_valid_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "arp_table",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_30", "FromFinalSV" : "0", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_20", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_33", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:217:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_32", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_32", "FromFinalSV" : "0", "FromAddress" : "arpTable_valid_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_34", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:217:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_20", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_33", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_30", "ToFinalSV" : "0", "ToAddress" : "arpTable_macAddress_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:217:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_34", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_32", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_32", "ToFinalSV" : "0", "ToAddress" : "arpTable_valid_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/..//hls/arp_server/arp_server.cpp:217:1)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_ipAddress_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "arpTable_valid_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gatewayIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "networkMask_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_i_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestFifo_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	arp_table {
		arpTable_macAddress_V {Type IO LastRead 0 FirstWrite 0}
		arpTable_ipAddress_V {Type O LastRead -1 FirstWrite 2}
		arpTable_valid_V {Type IO LastRead 0 FirstWrite 0}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		gatewayIP_V {Type I LastRead 0 FirstWrite -1}
		networkMask_V {Type I LastRead 0 FirstWrite -1}
		arpTableInsertFifo_V {Type I LastRead 0 FirstWrite -1}
		macIpEncode_i_V_V {Type I LastRead 0 FirstWrite -1}
		arpRequestFifo_V_V {Type O LastRead -1 FirstWrite 2}
		macIpEncode_rsp_i_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpTable_macAddress_V { ap_memory {  { arpTable_macAddress_V_address0 mem_address 1 8 }  { arpTable_macAddress_V_ce0 mem_ce 1 1 }  { arpTable_macAddress_V_we0 mem_we 1 1 }  { arpTable_macAddress_V_d0 mem_din 1 48 }  { arpTable_macAddress_V_q0 mem_dout 0 48 } } }
	arpTable_ipAddress_V { ap_memory {  { arpTable_ipAddress_V_address0 mem_address 1 8 }  { arpTable_ipAddress_V_ce0 mem_ce 1 1 }  { arpTable_ipAddress_V_we0 mem_we 1 1 }  { arpTable_ipAddress_V_d0 mem_din 1 32 } } }
	arpTable_valid_V { ap_memory {  { arpTable_valid_V_address0 mem_address 1 8 }  { arpTable_valid_V_ce0 mem_ce 1 1 }  { arpTable_valid_V_we0 mem_we 1 1 }  { arpTable_valid_V_d0 mem_din 1 1 }  { arpTable_valid_V_q0 mem_dout 0 1 } } }
	myIpAddress_V { ap_fifo {  { myIpAddress_V_dout fifo_data 0 32 }  { myIpAddress_V_empty_n fifo_status 0 1 }  { myIpAddress_V_read fifo_update 1 1 } } }
	gatewayIP_V { ap_fifo {  { gatewayIP_V_dout fifo_data 0 32 }  { gatewayIP_V_empty_n fifo_status 0 1 }  { gatewayIP_V_read fifo_update 1 1 } } }
	networkMask_V { ap_fifo {  { networkMask_V_dout fifo_data 0 32 }  { networkMask_V_empty_n fifo_status 0 1 }  { networkMask_V_read fifo_update 1 1 } } }
	arpTableInsertFifo_V { ap_fifo {  { arpTableInsertFifo_V_dout fifo_data 0 81 }  { arpTableInsertFifo_V_empty_n fifo_status 0 1 }  { arpTableInsertFifo_V_read fifo_update 1 1 } } }
	macIpEncode_i_V_V { ap_fifo {  { macIpEncode_i_V_V_dout fifo_data 0 32 }  { macIpEncode_i_V_V_empty_n fifo_status 0 1 }  { macIpEncode_i_V_V_read fifo_update 1 1 } } }
	arpRequestFifo_V_V { ap_fifo {  { arpRequestFifo_V_V_din fifo_data 1 32 }  { arpRequestFifo_V_V_full_n fifo_status 0 1 }  { arpRequestFifo_V_V_write fifo_update 1 1 } } }
	macIpEncode_rsp_i_V { ap_fifo {  { macIpEncode_rsp_i_V_din fifo_data 1 49 }  { macIpEncode_rsp_i_V_full_n fifo_status 0 1 }  { macIpEncode_rsp_i_V_write fifo_update 1 1 } } }
}
