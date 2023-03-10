set moduleName packet_handler
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
set C_modelName {packet_handler}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_V_data_V int 512 regular {axi_s 0 volatile  { s_axis Data } }  }
	{ s_axis_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis Keep } }  }
	{ s_axis_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis Strb } }  }
	{ s_axis_V_last_V int 1 regular {axi_s 0 volatile  { s_axis Last } }  }
	{ s_axis_V_dest_V int 3 regular {axi_s 0 volatile  { s_axis Dest } }  }
	{ m_axis_V_data_V int 512 regular {axi_s 1 volatile  { m_axis Data } }  }
	{ m_axis_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis Keep } }  }
	{ m_axis_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis Strb } }  }
	{ m_axis_V_last_V int 1 regular {axi_s 1 volatile  { m_axis Last } }  }
	{ m_axis_V_dest_V int 3 regular {axi_s 1 volatile  { m_axis Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_V_dest_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_V_dest_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ s_axis_TDATA sc_in sc_lv 512 signal 0 } 
	{ s_axis_TKEEP sc_in sc_lv 64 signal 1 } 
	{ s_axis_TSTRB sc_in sc_lv 64 signal 2 } 
	{ s_axis_TLAST sc_in sc_lv 1 signal 3 } 
	{ s_axis_TDEST sc_in sc_lv 3 signal 4 } 
	{ m_axis_TDATA sc_out sc_lv 512 signal 5 } 
	{ m_axis_TKEEP sc_out sc_lv 64 signal 6 } 
	{ m_axis_TSTRB sc_out sc_lv 64 signal 7 } 
	{ m_axis_TLAST sc_out sc_lv 1 signal 8 } 
	{ m_axis_TDEST sc_out sc_lv 3 signal 9 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_TVALID sc_in sc_logic 1 invld 4 } 
	{ s_axis_TREADY sc_out sc_logic 1 inacc 4 } 
	{ m_axis_TVALID sc_out sc_logic 1 outvld 9 } 
	{ m_axis_TREADY sc_in sc_logic 1 outacc 9 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "s_axis_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "s_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "m_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "s_axis_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_V_dest_V", "role": "default" }} , 
 	{ "name": "m_axis_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "13", "14"],
		"CDFG" : "packet_handler",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "packet_identification_U0"}],
		"OutputProcess" : [
			{"ID" : "7", "Name" : "ethernet_remover_U0"}],
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "s_axis_V_data_V"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "s_axis_V_keep_V"}]},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "s_axis_V_strb_V"}]},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "s_axis_V_last_V"}]},
			{"Name" : "s_axis_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "s_axis_V_dest_V"}]},
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "m_axis_V_data_V"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "m_axis_V_keep_V"}]},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "m_axis_V_strb_V"}]},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "m_axis_V_last_V"}]},
			{"Name" : "m_axis_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "m_axis_V_dest_V"}]},
			{"Name" : "pi_fsm_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "pi_fsm_state"}]},
			{"Name" : "tdest_r_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "tdest_r_V"}]},
			{"Name" : "eth_level_pkt", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "eth_level_pkt"},
					{"ID" : "1", "SubInstance" : "packet_identification_U0", "Port" : "eth_level_pkt"}]},
			{"Name" : "er_fsm_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "er_fsm_state"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "prevWord_dest_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "ethernet_remover_U0", "Port" : "prevWord_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packet_identification_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "packet_identification",
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
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "pi_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "tdest_r_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "eth_level_pkt", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["7"], "DependentChan" : "13", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eth_level_pkt_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packet_identification_U0.regslice_both_s_axis_V_data_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packet_identification_U0.regslice_both_s_axis_V_keep_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packet_identification_U0.regslice_both_s_axis_V_strb_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packet_identification_U0.regslice_both_s_axis_V_last_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packet_identification_U0.regslice_both_s_axis_V_dest_V_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ethernet_remover_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12"],
		"CDFG" : "ethernet_remover",
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
		"StartFifo" : "start_for_ethernet_remover_U0_U",
		"Port" : [
			{"Name" : "m_axis_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "er_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "eth_level_pkt", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "13", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "eth_level_pkt_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ethernet_remover_U0.regslice_both_m_axis_V_data_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ethernet_remover_U0.regslice_both_m_axis_V_keep_V_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ethernet_remover_U0.regslice_both_m_axis_V_strb_V_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ethernet_remover_U0.regslice_both_m_axis_V_last_V_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.ethernet_remover_U0.regslice_both_m_axis_V_dest_V_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eth_level_pkt_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ethernet_remover_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	packet_handler {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_dest_V {Type I LastRead 0 FirstWrite -1}
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_dest_V {Type O LastRead -1 FirstWrite 1}
		pi_fsm_state {Type IO LastRead -1 FirstWrite -1}
		tdest_r_V {Type IO LastRead -1 FirstWrite -1}
		eth_level_pkt {Type IO LastRead -1 FirstWrite -1}
		er_fsm_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_dest_V {Type IO LastRead -1 FirstWrite -1}}
	packet_identification {
		s_axis_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_last_V {Type I LastRead 0 FirstWrite -1}
		s_axis_V_dest_V {Type I LastRead 0 FirstWrite -1}
		pi_fsm_state {Type IO LastRead -1 FirstWrite -1}
		tdest_r_V {Type IO LastRead -1 FirstWrite -1}
		eth_level_pkt {Type O LastRead -1 FirstWrite 1}}
	ethernet_remover {
		m_axis_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_last_V {Type O LastRead -1 FirstWrite 1}
		m_axis_V_dest_V {Type O LastRead -1 FirstWrite 1}
		er_fsm_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_dest_V {Type IO LastRead -1 FirstWrite -1}
		eth_level_pkt {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_V_data_V { axis {  { s_axis_TDATA in_data 0 512 } } }
	s_axis_V_keep_V { axis {  { s_axis_TKEEP in_data 0 64 } } }
	s_axis_V_strb_V { axis {  { s_axis_TSTRB in_data 0 64 } } }
	s_axis_V_last_V { axis {  { s_axis_TLAST in_data 0 1 } } }
	s_axis_V_dest_V { axis {  { s_axis_TDEST in_data 0 3 }  { s_axis_TVALID in_vld 0 1 }  { s_axis_TREADY in_acc 1 1 } } }
	m_axis_V_data_V { axis {  { m_axis_TDATA out_data 1 512 } } }
	m_axis_V_keep_V { axis {  { m_axis_TKEEP out_data 1 64 } } }
	m_axis_V_strb_V { axis {  { m_axis_TSTRB out_data 1 64 } } }
	m_axis_V_last_V { axis {  { m_axis_TLAST out_data 1 1 } } }
	m_axis_V_dest_V { axis {  { m_axis_TDEST out_data 1 3 }  { m_axis_TVALID out_vld 1 1 }  { m_axis_TREADY out_acc 0 1 } } }
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
