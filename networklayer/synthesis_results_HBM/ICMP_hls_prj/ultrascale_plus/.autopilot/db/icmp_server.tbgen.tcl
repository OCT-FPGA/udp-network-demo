set moduleName icmp_server
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {icmp_server}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_icmp_V_data_V int 512 regular {axi_s 0 volatile  { s_axis_icmp Data } }  }
	{ s_axis_icmp_V_keep_V int 64 regular {axi_s 0 volatile  { s_axis_icmp Keep } }  }
	{ s_axis_icmp_V_strb_V int 64 regular {axi_s 0 volatile  { s_axis_icmp Strb } }  }
	{ s_axis_icmp_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_icmp Last } }  }
	{ myIpAddress int 32 regular {pointer 0}  }
	{ m_axis_icmp_V_data_V int 512 regular {axi_s 1 volatile  { m_axis_icmp Data } }  }
	{ m_axis_icmp_V_keep_V int 64 regular {axi_s 1 volatile  { m_axis_icmp Keep } }  }
	{ m_axis_icmp_V_strb_V int 64 regular {axi_s 1 volatile  { m_axis_icmp Strb } }  }
	{ m_axis_icmp_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_icmp Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_icmp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_icmp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_icmp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_icmp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_icmp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_icmp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ ap_local_deadlock sc_out sc_logic 1 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_icmp_TDATA sc_in sc_lv 512 signal 0 } 
	{ s_axis_icmp_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_icmp_TREADY sc_out sc_logic 1 inacc 3 } 
	{ s_axis_icmp_TKEEP sc_in sc_lv 64 signal 1 } 
	{ s_axis_icmp_TSTRB sc_in sc_lv 64 signal 2 } 
	{ s_axis_icmp_TLAST sc_in sc_lv 1 signal 3 } 
	{ myIpAddress sc_in sc_lv 32 signal 4 } 
	{ m_axis_icmp_TDATA sc_out sc_lv 512 signal 5 } 
	{ m_axis_icmp_TVALID sc_out sc_logic 1 outvld 8 } 
	{ m_axis_icmp_TREADY sc_in sc_logic 1 outacc 8 } 
	{ m_axis_icmp_TKEEP sc_out sc_lv 64 signal 6 } 
	{ m_axis_icmp_TSTRB sc_out sc_lv 64 signal 7 } 
	{ m_axis_icmp_TLAST sc_out sc_lv 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_local_deadlock", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_deadlock", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_icmp_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "s_axis_icmp_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_icmp_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_icmp_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_icmp_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_icmp_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_icmp_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_icmp_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_icmp_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "m_axis_icmp_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_icmp_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_icmp_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_icmp_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_icmp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_icmp_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "icmp_server",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_icmp_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_axis_icmp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_icmp_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_icmp_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "s_axis_icmp_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "myIpAddress", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "m_axis_icmp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "m_axis_icmp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_icmp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "m_axis_icmp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "aiFSMState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ipDestination_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpCode_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "auxInchecksum_r_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "icmpChecksum_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_strb_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_icmp_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_icmp_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_icmp_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_icmp_V_last_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_icmp_V_data_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_icmp_V_keep_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_icmp_V_strb_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_icmp_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	icmp_server {
		s_axis_icmp_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_icmp_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_icmp_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_icmp_V_last_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		m_axis_icmp_V_data_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		m_axis_icmp_V_last_V {Type O LastRead -1 FirstWrite 1}
		aiFSMState {Type IO LastRead -1 FirstWrite -1}
		ipDestination_V {Type IO LastRead -1 FirstWrite -1}
		icmpType_V {Type IO LastRead -1 FirstWrite -1}
		icmpCode_V {Type IO LastRead -1 FirstWrite -1}
		auxInchecksum_r_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_last_V {Type IO LastRead -1 FirstWrite -1}
		icmpChecksum_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_strb_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_icmp_V_data_V { axis {  { s_axis_icmp_TDATA in_data 0 512 } } }
	s_axis_icmp_V_keep_V { axis {  { s_axis_icmp_TKEEP in_data 0 64 } } }
	s_axis_icmp_V_strb_V { axis {  { s_axis_icmp_TSTRB in_data 0 64 } } }
	s_axis_icmp_V_last_V { axis {  { s_axis_icmp_TVALID in_vld 0 1 }  { s_axis_icmp_TREADY in_acc 1 1 }  { s_axis_icmp_TLAST in_data 0 1 } } }
	myIpAddress { ap_stable {  { myIpAddress in_data 0 32 } } }
	m_axis_icmp_V_data_V { axis {  { m_axis_icmp_TDATA out_data 1 512 } } }
	m_axis_icmp_V_keep_V { axis {  { m_axis_icmp_TKEEP out_data 1 64 } } }
	m_axis_icmp_V_strb_V { axis {  { m_axis_icmp_TSTRB out_data 1 64 } } }
	m_axis_icmp_V_last_V { axis {  { m_axis_icmp_TVALID out_vld 1 1 }  { m_axis_icmp_TREADY out_acc 0 1 }  { m_axis_icmp_TLAST out_data 1 1 } } }
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
