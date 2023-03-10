set moduleName ethernet_header_inserter
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
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
	{ dataIn_V_strb_V int 64 regular {axi_s 0 volatile  { dataIn Strb } }  }
	{ dataIn_V_last_V int 1 regular {axi_s 0 volatile  { dataIn Last } }  }
	{ dataOut_V_data_V int 512 regular {axi_s 1 volatile  { dataOut Data } }  }
	{ dataOut_V_keep_V int 64 regular {axi_s 1 volatile  { dataOut Keep } }  }
	{ dataOut_V_strb_V int 64 regular {axi_s 1 volatile  { dataOut Strb } }  }
	{ dataOut_V_last_V int 1 regular {axi_s 1 volatile  { dataOut Last } }  }
	{ arpTableReplay int 128 regular {axi_s 0 volatile  { arpTableReplay Data } }  }
	{ arpTableRequest int 32 regular {axi_s 1 volatile  { arpTableRequest Data } }  }
	{ myMacAddress int 48 regular {pointer 0}  }
	{ regSubNetMask int 32 regular {pointer 0}  }
	{ regDefaultGateway int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpTableReplay", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "arpTableRequest", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "regSubNetMask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "regDefaultGateway", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ dataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ dataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ dataIn_TSTRB sc_in sc_lv 64 signal 2 } 
	{ dataIn_TLAST sc_in sc_lv 1 signal 3 } 
	{ dataOut_TDATA sc_out sc_lv 512 signal 4 } 
	{ dataOut_TKEEP sc_out sc_lv 64 signal 5 } 
	{ dataOut_TSTRB sc_out sc_lv 64 signal 6 } 
	{ dataOut_TLAST sc_out sc_lv 1 signal 7 } 
	{ arpTableReplay_TDATA sc_in sc_lv 128 signal 8 } 
	{ arpTableRequest_TDATA sc_out sc_lv 32 signal 9 } 
	{ myMacAddress sc_in sc_lv 48 signal 10 } 
	{ regSubNetMask sc_in sc_lv 32 signal 11 } 
	{ regDefaultGateway sc_in sc_lv 32 signal 12 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ dataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ arpTableRequest_TVALID sc_out sc_logic 1 outvld 9 } 
	{ arpTableRequest_TREADY sc_in sc_logic 1 outacc 9 } 
	{ arpTableReplay_TVALID sc_in sc_logic 1 invld 8 } 
	{ arpTableReplay_TREADY sc_out sc_logic 1 inacc 8 } 
	{ dataOut_TVALID sc_out sc_logic 1 outvld 7 } 
	{ dataOut_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "dataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataIn_V_data_V", "role": "default" }} , 
 	{ "name": "dataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "dataIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn_V_strb_V", "role": "default" }} , 
 	{ "name": "dataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "dataOut_V_data_V", "role": "default" }} , 
 	{ "name": "dataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "dataOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataOut_V_strb_V", "role": "default" }} , 
 	{ "name": "dataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableReplay_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "arpTableReplay", "role": "TDATA" }} , 
 	{ "name": "arpTableRequest_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "arpTableRequest", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "regSubNetMask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regSubNetMask", "role": "default" }} , 
 	{ "name": "regDefaultGateway", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "regDefaultGateway", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "dataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpTableRequest_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arpTableRequest", "role": "TVALID" }} , 
 	{ "name": "arpTableRequest_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arpTableRequest", "role": "TREADY" }} , 
 	{ "name": "arpTableReplay_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpTableReplay", "role": "TVALID" }} , 
 	{ "name": "arpTableReplay_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpTableReplay", "role": "TREADY" }} , 
 	{ "name": "dataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dataOut_V_last_V", "role": "default" }} , 
 	{ "name": "dataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "8", "9", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "ethernet_header_inserter",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "broadcaster_and_mac_request_U0"}],
		"OutputProcess" : [
			{"ID" : "9", "Name" : "handle_output_U0"}],
		"Port" : [
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "dataIn_V_data_V"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "dataIn_V_keep_V"}]},
			{"Name" : "dataIn_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "dataIn_V_strb_V"}]},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "dataIn_V_last_V"}]},
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_data_V"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_keep_V"}]},
			{"Name" : "dataOut_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_strb_V"}]},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "dataOut_V_last_V"}]},
			{"Name" : "arpTableReplay", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "arpTableReplay"}]},
			{"Name" : "arpTableRequest", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "arpTableRequest"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "entry_proc_U0", "Port" : "myMacAddress"}]},
			{"Name" : "regSubNetMask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "regSubNetMask"}]},
			{"Name" : "regDefaultGateway", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "regDefaultGateway"}]},
			{"Name" : "bmr_fsm_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "bmr_fsm_state"}]},
			{"Name" : "ip_header_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "compute_and_insert_ip_checksum_U0", "Port" : "ip_header_out"},
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "ip_header_out"}]},
			{"Name" : "no_ip_header_out", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "broadcaster_and_mac_request_U0", "Port" : "no_ip_header_out"},
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "no_ip_header_out"}]},
			{"Name" : "ip_header_checksum", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "compute_and_insert_ip_checksum_U0", "Port" : "ip_header_checksum"},
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "ip_header_checksum"}]},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "mw_state"}]},
			{"Name" : "previous_word_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "previous_word_data_V"}]},
			{"Name" : "previous_word_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "handle_output_U0", "Port" : "previous_word_keep_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "15", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_request_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7"],
		"CDFG" : "broadcaster_and_mac_request",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "dataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "dataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpTableRequest", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arpTableRequest_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "regSubNetMask", "Type" : "None", "Direction" : "I"},
			{"Name" : "regDefaultGateway", "Type" : "None", "Direction" : "I"},
			{"Name" : "bmr_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_header_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["8"], "DependentChan" : "16", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "no_ip_header_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "17", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "no_ip_header_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_request_U0.regslice_both_dataIn_V_data_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_request_U0.regslice_both_dataIn_V_keep_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_request_U0.regslice_both_dataIn_V_strb_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_request_U0.regslice_both_dataIn_V_last_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.broadcaster_and_mac_request_U0.regslice_both_arpTableRequest_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_and_insert_ip_checksum_U0", "Parent" : "0",
		"CDFG" : "compute_and_insert_ip_checksum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_compute_and_insert_ip_checksum_U0_U",
		"Port" : [
			{"Name" : "ip_header_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "16", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ip_header_checksum", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "18", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_checksum_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.handle_output_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14"],
		"CDFG" : "handle_output",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_handle_output_U0_U",
		"Port" : [
			{"Name" : "arpTableReplay", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arpTableReplay_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "15", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "mw_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "previous_word_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "previous_word_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_header_checksum", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "18", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ip_header_checksum_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "no_ip_header_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "17", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "no_ip_header_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_arpTableReplay_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_data_V_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_keep_V_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_strb_V_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.handle_output_U0.regslice_both_dataOut_V_last_V_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_header_out_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.no_ip_header_out_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ip_header_checksum_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_handle_output_U0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_compute_and_insert_ip_checksum_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ethernet_header_inserter {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		arpTableReplay {Type I LastRead 0 FirstWrite -1}
		arpTableRequest {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		regSubNetMask {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway {Type I LastRead 0 FirstWrite -1}
		bmr_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_header_out {Type IO LastRead -1 FirstWrite -1}
		no_ip_header_out {Type IO LastRead -1 FirstWrite -1}
		ip_header_checksum {Type IO LastRead -1 FirstWrite -1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		previous_word_data_V {Type IO LastRead -1 FirstWrite -1}
		previous_word_keep_V {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_c {Type O LastRead -1 FirstWrite 0}}
	broadcaster_and_mac_request {
		dataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		dataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		arpTableRequest {Type O LastRead -1 FirstWrite 1}
		regSubNetMask {Type I LastRead 0 FirstWrite -1}
		regDefaultGateway {Type I LastRead 0 FirstWrite -1}
		bmr_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_header_out {Type O LastRead -1 FirstWrite 1}
		no_ip_header_out {Type O LastRead -1 FirstWrite 1}}
	compute_and_insert_ip_checksum {
		ip_header_out {Type I LastRead 0 FirstWrite -1}
		ip_header_checksum {Type O LastRead -1 FirstWrite 4}}
	handle_output {
		arpTableReplay {Type I LastRead 0 FirstWrite -1}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		dataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		dataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		mw_state {Type IO LastRead -1 FirstWrite -1}
		previous_word_data_V {Type IO LastRead -1 FirstWrite -1}
		previous_word_keep_V {Type IO LastRead -1 FirstWrite -1}
		ip_header_checksum {Type I LastRead 0 FirstWrite -1}
		no_ip_header_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataIn_V_data_V { axis {  { dataIn_TDATA in_data 0 512 } } }
	dataIn_V_keep_V { axis {  { dataIn_TKEEP in_data 0 64 } } }
	dataIn_V_strb_V { axis {  { dataIn_TSTRB in_data 0 64 } } }
	dataIn_V_last_V { axis {  { dataIn_TLAST in_data 0 1 }  { dataIn_TVALID in_vld 0 1 }  { dataIn_TREADY in_acc 1 1 } } }
	dataOut_V_data_V { axis {  { dataOut_TDATA out_data 1 512 } } }
	dataOut_V_keep_V { axis {  { dataOut_TKEEP out_data 1 64 } } }
	dataOut_V_strb_V { axis {  { dataOut_TSTRB out_data 1 64 } } }
	dataOut_V_last_V { axis {  { dataOut_TLAST out_data 1 1 }  { dataOut_TVALID out_vld 1 1 }  { dataOut_TREADY out_acc 0 1 } } }
	arpTableReplay { axis {  { arpTableReplay_TDATA in_data 0 128 }  { arpTableReplay_TVALID in_vld 0 1 }  { arpTableReplay_TREADY in_acc 1 1 } } }
	arpTableRequest { axis {  { arpTableRequest_TDATA out_data 1 32 }  { arpTableRequest_TVALID out_vld 1 1 }  { arpTableRequest_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	regSubNetMask { ap_none {  { regSubNetMask in_data 0 32 } } }
	regDefaultGateway { ap_none {  { regDefaultGateway in_data 0 32 } } }
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
