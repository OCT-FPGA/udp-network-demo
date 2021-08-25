set moduleName ethernet_header_inserter
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ethernet_header_inserter}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataIn_V_data_V int 512 regular {axi_s 0 volatile  { dataIn Data } }  }
	{ dataIn_V_keep_V int 64 regular {axi_s 0 volatile  { dataIn Keep } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataOut_V_data_V int 512 regular {axi_s 1 volatile  { dataOut Data } }  }
	{ dataOut_V_keep_V int 64 regular {axi_s 1 volatile  { dataOut Keep } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { dataOut Last } }  }
	{ arpTableReplay_V int 56 regular {axi_s 0 volatile  { arpTableReplay_V Data } }  }
	{ arpTableRequest_V_V int 32 regular {axi_s 1 volatile  { arpTableRequest_V_V Data } }  }
	{ myMacAddress_V int 48 regular {pointer 0}  }
	{ regSubNetMask_V int 32 regular {pointer 0}  }
	{ regDefaultGateway_V int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dataIn.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataIn.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "dataOut.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dataOut.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dataOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpTableReplay_V", "interface" : "axis", "bitwidth" : 56, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "arpTableReplay.V.macAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":48,"cElement": [{"cName": "arpTableReplay.V.hit","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpTableRequest_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arpTableRequest.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "myMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "myMacAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "regSubNetMask_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "regSubNetMask.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "regDefaultGateway_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "regDefaultGateway.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ dataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ dataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ dataOut_TDATA sc_out sc_lv 512 signal 3 } 
	{ dataOut_TKEEP sc_out sc_lv 64 signal 4 } 
	{ dataOut_TLAST sc_out sc_lv 1 signal 5 } 
	{ arpTableReplay_V_TDATA sc_in sc_lv 56 signal 6 } 
	{ arpTableRequest_V_V_TDATA sc_out sc_lv 32 signal 7 } 
	{ myMacAddress_V sc_in sc_lv 48 signal 8 } 
	{ regSubNetMask_V sc_in sc_lv 32 signal 9 } 
	{ regDefaultGateway_V sc_in sc_lv 32 signal 10 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ arpTableRequest_V_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ arpTableRequest_V_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ arpTableReplay_V_TVALID sc_in sc_logic 1 invld 6 } 
	{ arpTableReplay_V_TREADY sc_out sc_logic 1 inacc 6 } 
	{ dataOut_TVALID sc_out sc_logic 1 outvld 5 } 
	{ dataOut_TREADY sc_in sc_logic 1 outacc 5 } 
}
set NewPortList {[ 
	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "dataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "dataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableReplay_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":56, "type": "signal", "bundle":{"name": "arpTableReplay_V", "role": "TDATA" }} , 
 	{ "name": "arpTableRequest_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTableRequest_V_V", "role": "TDATA" }} , 
 	{ "name": "myMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V", "role": "default" }} , 
 	{ "name": "regSubNetMask_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regSubNetMask_V", "role": "default" }} , 
 	{ "name": "regDefaultGateway_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regDefaultGateway_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableRequest_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arpTableRequest_V_V", "role": "TVALID" }} , 
 	{ "name": "arpTableRequest_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arpTableRequest_V_V", "role": "TREADY" }} , 
 	{ "name": "arpTableReplay_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpTableReplay_V", "role": "TVALID" }} , 
 	{ "name": "arpTableReplay_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpTableReplay_V", "role": "TREADY" }} , 
 	{ "name": "dataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "8", "9", "10", "11"],
		"CDFG" : "ethernet_header_inserter",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "broadcaster_and_mac_U0"},
			{"ID" : "4", "Name" : "handle_output_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "broadcaster_and_mac_U0"},
			{"ID" : "4", "Name" : "handle_output_U0"}],
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "dataIn_V_data_V"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "dataIn_V_keep_V"}]},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "dataIn_V_last_V"}]},
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_data_V"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_keep_V"}]},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_last_V"}]},
			{"Name" : "arpTableReplay_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "arpTableReplay_V"}]},
			{"Name" : "arpTableRequest_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "arpTableRequest_V_V"}]},
			{"Name" : "myMacAddress_V", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "myMacAddress_V"}]},
			{"Name" : "regSubNetMask_V", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "regSubNetMask_V"}]},
			{"Name" : "regDefaultGateway_V", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "regDefaultGateway_V"}]},
			{"Name" : "bmr_fsm_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "bmr_fsm_state"}]},
			{"Name" : "ip_header_out_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "ip_header_out_V"},
					{"ID" : "3", "SubInstance" : "compute_and_insert_i_U0", "Port" : "ip_header_out_V"}]},
			{"Name" : "no_ip_header_out_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "broadcaster_and_mac_U0", "Port" : "no_ip_header_out_V"},
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "no_ip_header_out_V"}]},
			{"Name" : "ip_header_checksum_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "compute_and_insert_i_U0", "Port" : "ip_header_checksum_V"},
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "ip_header_checksum_V"}]},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "mw_state"}]},
			{"Name" : "previous_word_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "previous_word_data_V"}]},
			{"Name" : "previous_word_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "handle_output_U0", "Port" : "previous_word_keep_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "broadcaster_and_mac_s",
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
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpTableRequest_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arpTableRequest_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSubNetMask_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "regDefaultGateway_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "bmr_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_header_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "ip_header_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "no_ip_header_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "no_ip_header_out_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_U0.regslice_both_arpTableRequest_V_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_and_insert_i_U0", "Parent" : "0",
		"CDFG" : "compute_and_insert_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_computebkb_U",
		"Port" : [
			{"Name" : "ip_header_out_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8",
				"BlockSignal" : [
					{"Name" : "ip_header_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip_header_checksum_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "ip_header_checksum_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.handle_output_U0", "Parent" : "0", "Child" : ["5", "6", "7"],
		"CDFG" : "handle_output",
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
			{"Name" : "arpTableReplay_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arpTableReplay_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "previous_word_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "previous_word_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_header_checksum_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "ip_header_checksum_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "no_ip_header_out_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9",
				"BlockSignal" : [
					{"Name" : "no_ip_header_out_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_data_V_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_keep_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_last_V_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_header_out_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.no_ip_header_out_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_header_checksum_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_computebkb_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ethernet_header_inserter {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		arpTableReplay_V {Type I LastRead 0 FirstWrite -1}
		arpTableRequest_V_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		regSubNetMask_V {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway_V {Type I LastRead 0 FirstWrite -1}
		bmr_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_header_out_V {Type IO LastRead -1 FirstWrite -1}
		no_ip_header_out_V {Type IO LastRead -1 FirstWrite -1}
		ip_header_checksum_V {Type IO LastRead -1 FirstWrite -1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		previous_word_data_V {Type IO LastRead -1 FirstWrite -1}
		previous_word_keep_V {Type IO LastRead -1 FirstWrite -1}}
	broadcaster_and_mac_s {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpTableRequest_V_V {Type O LastRead -1 FirstWrite 1}
		regSubNetMask_V {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway_V {Type I LastRead 0 FirstWrite -1}
		bmr_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_header_out_V {Type O LastRead -1 FirstWrite 1}
		no_ip_header_out_V {Type O LastRead -1 FirstWrite 1}}
	compute_and_insert_i {
		ip_header_out_V {Type I LastRead 0 FirstWrite -1}
		ip_header_checksum_V {Type O LastRead -1 FirstWrite 3}}
	handle_output {
		arpTableReplay_V {Type I LastRead 0 FirstWrite -1}
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		previous_word_data_V {Type IO LastRead -1 FirstWrite -1}
		previous_word_keep_V {Type IO LastRead -1 FirstWrite -1}
		ip_header_checksum_V {Type I LastRead 0 FirstWrite -1}
		no_ip_header_out_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 512 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 64 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 }  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 } } }
	dataOut_V_data_V { axis {  { dataOut_TDATA out_data 1 512 } } }
	dataOut_V_keep_V { axis {  { dataOut_TKEEP out_data 1 64 } } }
	dataOut_V_last_V { axis {  { dataOut_TLAST out_data 1 1 }  { dataOut_TVALID out_vld 1 1 }  { dataOut_TREADY out_acc 0 1 } } }
	arpTableReplay_V { axis {  { arpTableReplay_V_TDATA in_data 0 56 }  { arpTableReplay_V_TVALID in_vld 0 1 }  { arpTableReplay_V_TREADY in_acc 1 1 } } }
	arpTableRequest_V_V { axis {  { arpTableRequest_V_V_TDATA out_data 1 32 }  { arpTableRequest_V_V_TVALID out_vld 1 1 }  { arpTableRequest_V_V_TREADY out_acc 0 1 } } }
	myMacAddress_V { ap_stable {  { myMacAddress_V in_data 0 48 } } }
	regSubNetMask_V { ap_stable {  { regSubNetMask_V in_data 0 32 } } }
	regDefaultGateway_V { ap_stable {  { regDefaultGateway_V in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
