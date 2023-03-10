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
	{ arpTable_macAddress int 48 regular {array 256 { 2 } 1 1 }  }
	{ arpTable_ipAddress int 32 regular {array 256 { 2 } 1 1 }  }
	{ arpTable_valid int 1 regular {array 256 { 2 } 1 1 }  }
	{ myIpAddress int 32 regular {fifo 0}  }
	{ gatewayIP int 32 regular {fifo 0}  }
	{ networkMask int 32 regular {fifo 0}  }
	{ arpTableInsertFifo int 128 regular {fifo 0 volatile } {global 0}  }
	{ macIpEncode_i int 32 regular {fifo 0 volatile } {global 0}  }
	{ arpRequestFifo int 32 regular {fifo 1 volatile } {global 1}  }
	{ macIpEncode_rsp_i int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpTable_macAddress", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "arpTable_ipAddress", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "arpTable_valid", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gatewayIP", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "networkMask", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arpTableInsertFifo", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_i", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "arpRequestFifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_rsp_i", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ networkMask_dout sc_in sc_lv 32 signal 5 } 
	{ networkMask_empty_n sc_in sc_logic 1 signal 5 } 
	{ networkMask_read sc_out sc_logic 1 signal 5 } 
	{ gatewayIP_dout sc_in sc_lv 32 signal 4 } 
	{ gatewayIP_empty_n sc_in sc_logic 1 signal 4 } 
	{ gatewayIP_read sc_out sc_logic 1 signal 4 } 
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
	{ arpTable_macAddress_address0 sc_out sc_lv 8 signal 0 } 
	{ arpTable_macAddress_ce0 sc_out sc_logic 1 signal 0 } 
	{ arpTable_macAddress_we0 sc_out sc_logic 1 signal 0 } 
	{ arpTable_macAddress_d0 sc_out sc_lv 48 signal 0 } 
	{ arpTable_macAddress_q0 sc_in sc_lv 48 signal 0 } 
	{ arpTable_ipAddress_address0 sc_out sc_lv 8 signal 1 } 
	{ arpTable_ipAddress_ce0 sc_out sc_logic 1 signal 1 } 
	{ arpTable_ipAddress_we0 sc_out sc_logic 1 signal 1 } 
	{ arpTable_ipAddress_d0 sc_out sc_lv 32 signal 1 } 
	{ arpTable_ipAddress_q0 sc_in sc_lv 32 signal 1 } 
	{ arpTable_valid_address0 sc_out sc_lv 8 signal 2 } 
	{ arpTable_valid_ce0 sc_out sc_logic 1 signal 2 } 
	{ arpTable_valid_we0 sc_out sc_logic 1 signal 2 } 
	{ arpTable_valid_d0 sc_out sc_lv 1 signal 2 } 
	{ arpTable_valid_q0 sc_in sc_lv 1 signal 2 } 
	{ arpRequestFifo_din sc_out sc_lv 32 signal 8 } 
	{ arpRequestFifo_full_n sc_in sc_logic 1 signal 8 } 
	{ arpRequestFifo_write sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "networkMask_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask", "role": "dout" }} , 
 	{ "name": "networkMask_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask", "role": "empty_n" }} , 
 	{ "name": "networkMask_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "networkMask", "role": "read" }} , 
 	{ "name": "gatewayIP_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP", "role": "dout" }} , 
 	{ "name": "gatewayIP_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP", "role": "empty_n" }} , 
 	{ "name": "gatewayIP_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gatewayIP", "role": "read" }} , 
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
 	{ "name": "arpTable_macAddress_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "address0" }} , 
 	{ "name": "arpTable_macAddress_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "ce0" }} , 
 	{ "name": "arpTable_macAddress_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "we0" }} , 
 	{ "name": "arpTable_macAddress_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "d0" }} , 
 	{ "name": "arpTable_macAddress_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arpTable_macAddress", "role": "q0" }} , 
 	{ "name": "arpTable_ipAddress_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "address0" }} , 
 	{ "name": "arpTable_ipAddress_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "ce0" }} , 
 	{ "name": "arpTable_ipAddress_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "we0" }} , 
 	{ "name": "arpTable_ipAddress_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "d0" }} , 
 	{ "name": "arpTable_ipAddress_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTable_ipAddress", "role": "q0" }} , 
 	{ "name": "arpTable_valid_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "address0" }} , 
 	{ "name": "arpTable_valid_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "ce0" }} , 
 	{ "name": "arpTable_valid_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "we0" }} , 
 	{ "name": "arpTable_valid_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "d0" }} , 
 	{ "name": "arpTable_valid_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpTable_valid", "role": "q0" }} , 
 	{ "name": "arpRequestFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "din" }} , 
 	{ "name": "arpRequestFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "full_n" }} , 
 	{ "name": "arpRequestFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arpRequestFifo", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "arp_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "1", "FromAddress" : "arpTable_macAddress_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_61", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_66", "ToFinalSV" : "3", "ToAddress" : "arpTable_macAddress_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "1", "FromAddress" : "arpTable_ipAddress_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_63", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_67", "ToFinalSV" : "3", "ToAddress" : "arpTable_ipAddress_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter0_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "1", "FromAddress" : "arpTable_valid_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_65", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_68", "ToFinalSV" : "3", "ToAddress" : "arpTable_valid_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_61", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_66", "FromFinalSV" : "3", "FromAddress" : "arpTable_macAddress_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "1", "ToAddress" : "arpTable_macAddress_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state4_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_63", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_67", "FromFinalSV" : "3", "FromAddress" : "arpTable_ipAddress_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "1", "ToAddress" : "arpTable_ipAddress_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state4_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_65", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_68", "FromFinalSV" : "3", "FromAddress" : "arpTable_valid_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "1", "ToAddress" : "arpTable_valid_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "2", "Pragma" : "(/home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HBM/..//hls/arp_server/arp_server.cpp:212:34)", "Type" : "WAR", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state4_pp0_iter1_stage1"]}],
		"Port" : [
			{"Name" : "arpTable_macAddress", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_ipAddress", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gatewayIP_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "networkMask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	arp_table {
		arpTable_macAddress {Type IO LastRead 2 FirstWrite 1}
		arpTable_ipAddress {Type IO LastRead 2 FirstWrite 1}
		arpTable_valid {Type IO LastRead 2 FirstWrite 1}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		gatewayIP {Type I LastRead 1 FirstWrite -1}
		networkMask {Type I LastRead 1 FirstWrite -1}
		arpTableInsertFifo {Type I LastRead 1 FirstWrite -1}
		macIpEncode_i {Type I LastRead 1 FirstWrite -1}
		arpRequestFifo {Type O LastRead -1 FirstWrite 4}
		macIpEncode_rsp_i {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	arpTable_macAddress { ap_memory {  { arpTable_macAddress_address0 mem_address 1 8 }  { arpTable_macAddress_ce0 mem_ce 1 1 }  { arpTable_macAddress_we0 mem_we 1 1 }  { arpTable_macAddress_d0 mem_din 1 48 }  { arpTable_macAddress_q0 in_data 0 48 } } }
	arpTable_ipAddress { ap_memory {  { arpTable_ipAddress_address0 mem_address 1 8 }  { arpTable_ipAddress_ce0 mem_ce 1 1 }  { arpTable_ipAddress_we0 mem_we 1 1 }  { arpTable_ipAddress_d0 mem_din 1 32 }  { arpTable_ipAddress_q0 in_data 0 32 } } }
	arpTable_valid { ap_memory {  { arpTable_valid_address0 mem_address 1 8 }  { arpTable_valid_ce0 mem_ce 1 1 }  { arpTable_valid_we0 mem_we 1 1 }  { arpTable_valid_d0 mem_din 1 1 }  { arpTable_valid_q0 in_data 0 1 } } }
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	gatewayIP { ap_fifo {  { gatewayIP_dout fifo_data 0 32 }  { gatewayIP_empty_n fifo_status 0 1 }  { gatewayIP_read fifo_update 1 1 } } }
	networkMask { ap_fifo {  { networkMask_dout fifo_data 0 32 }  { networkMask_empty_n fifo_status 0 1 }  { networkMask_read fifo_update 1 1 } } }
	arpTableInsertFifo { ap_fifo {  { arpTableInsertFifo_dout fifo_data 0 128 }  { arpTableInsertFifo_empty_n fifo_status 0 1 }  { arpTableInsertFifo_read fifo_update 1 1 } } }
	macIpEncode_i { ap_fifo {  { macIpEncode_i_dout fifo_data 0 32 }  { macIpEncode_i_empty_n fifo_status 0 1 }  { macIpEncode_i_read fifo_update 1 1 } } }
	arpRequestFifo { ap_fifo {  { arpRequestFifo_din fifo_data 1 32 }  { arpRequestFifo_full_n fifo_status 0 1 }  { arpRequestFifo_write fifo_update 1 1 } } }
	macIpEncode_rsp_i { ap_fifo {  { macIpEncode_rsp_i_din fifo_data 1 128 }  { macIpEncode_rsp_i_full_n fifo_status 0 1 }  { macIpEncode_rsp_i_write fifo_update 1 1 } } }
}
