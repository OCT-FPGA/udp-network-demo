set moduleName genARPDiscovery
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
set C_modelName {genARPDiscovery}
set C_modelType { void 0 }
set C_modelArgList {
	{ macIpEncodeIn_V_V int 32 regular {axi_s 0 volatile  { macIpEncodeIn_V_V Data } }  }
	{ macIpEncode_rsp_o_V int 56 regular {axi_s 1 volatile  { macIpEncode_rsp_o_V Data } }  }
	{ arp_scan_V int 1 regular {pointer 2}  }
	{ myIpAddress_V int 32 regular {fifo 0}  }
	{ macIpEncode_i_V_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ macIpEncode_rsp_i_V int 49 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "macIpEncodeIn_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "macIpEncode_rsp_o_V", "interface" : "axis", "bitwidth" : 56, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arp_scan_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "myIpAddress_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "macIpEncode_i_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "macIpEncode_rsp_i_V", "interface" : "fifo", "bitwidth" : 49, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ macIpEncodeIn_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ macIpEncode_rsp_i_V_dout sc_in sc_lv 49 signal 5 } 
	{ macIpEncode_rsp_i_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ macIpEncode_rsp_i_V_read sc_out sc_logic 1 signal 5 } 
	{ myIpAddress_V_dout sc_in sc_lv 32 signal 3 } 
	{ myIpAddress_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ myIpAddress_V_read sc_out sc_logic 1 signal 3 } 
	{ macIpEncode_i_V_V_din sc_out sc_lv 32 signal 4 } 
	{ macIpEncode_i_V_V_full_n sc_in sc_logic 1 signal 4 } 
	{ macIpEncode_i_V_V_write sc_out sc_logic 1 signal 4 } 
	{ macIpEncode_rsp_o_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ macIpEncodeIn_V_V_TDATA sc_in sc_lv 32 signal 0 } 
	{ macIpEncodeIn_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ macIpEncode_rsp_o_V_TDATA sc_out sc_lv 56 signal 1 } 
	{ macIpEncode_rsp_o_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ arp_scan_V_i sc_in sc_lv 1 signal 2 } 
	{ arp_scan_V_o sc_out sc_lv 1 signal 2 } 
	{ arp_scan_V_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "macIpEncodeIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "macIpEncodeIn_V_V", "role": "TVALID" }} , 
 	{ "name": "macIpEncode_rsp_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i_V", "role": "dout" }} , 
 	{ "name": "macIpEncode_rsp_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i_V", "role": "empty_n" }} , 
 	{ "name": "macIpEncode_rsp_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_rsp_i_V", "role": "read" }} , 
 	{ "name": "myIpAddress_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "dout" }} , 
 	{ "name": "myIpAddress_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "read" }} , 
 	{ "name": "macIpEncode_i_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "macIpEncode_i_V_V", "role": "din" }} , 
 	{ "name": "macIpEncode_i_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_i_V_V", "role": "full_n" }} , 
 	{ "name": "macIpEncode_i_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "macIpEncode_i_V_V", "role": "write" }} , 
 	{ "name": "macIpEncode_rsp_o_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "macIpEncode_rsp_o_V", "role": "TREADY" }} , 
 	{ "name": "macIpEncodeIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "macIpEncodeIn_V_V", "role": "TDATA" }} , 
 	{ "name": "macIpEncodeIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "macIpEncodeIn_V_V", "role": "TREADY" }} , 
 	{ "name": "macIpEncode_rsp_o_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":56, "type": "signal", "bundle":{"name": "macIpEncode_rsp_o_V", "role": "TDATA" }} , 
 	{ "name": "macIpEncode_rsp_o_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "macIpEncode_rsp_o_V", "role": "TVALID" }} , 
 	{ "name": "arp_scan_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arp_scan_V", "role": "i" }} , 
 	{ "name": "arp_scan_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arp_scan_V", "role": "o" }} , 
 	{ "name": "arp_scan_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arp_scan_V", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "genARPDiscovery",
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
			{"Name" : "macIpEncodeIn_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "macIpEncodeIn_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_o_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_o_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arp_scan_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gia_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_lsb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_counter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "macIpEncode_i_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arp_scan_1d_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_macIpEncode_rsp_o_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	genARPDiscovery {
		macIpEncodeIn_V_V {Type I LastRead 0 FirstWrite -1}
		macIpEncode_rsp_o_V {Type O LastRead -1 FirstWrite 1}
		arp_scan_V {Type IO LastRead 0 FirstWrite 0}
		myIpAddress_V {Type I LastRead 1 FirstWrite -1}
		gia_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_lsb_V {Type IO LastRead -1 FirstWrite -1}
		time_counter_V {Type IO LastRead -1 FirstWrite -1}
		macIpEncode_i_V_V {Type O LastRead -1 FirstWrite 1}
		macIpEncode_rsp_i_V {Type I LastRead 0 FirstWrite -1}
		arp_scan_1d_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	macIpEncodeIn_V_V { axis {  { macIpEncodeIn_V_V_TVALID in_vld 0 1 }  { macIpEncodeIn_V_V_TDATA in_data 0 32 }  { macIpEncodeIn_V_V_TREADY in_acc 1 1 } } }
	macIpEncode_rsp_o_V { axis {  { macIpEncode_rsp_o_V_TREADY out_acc 0 1 }  { macIpEncode_rsp_o_V_TDATA out_data 1 56 }  { macIpEncode_rsp_o_V_TVALID out_vld 1 1 } } }
	arp_scan_V { ap_ovld {  { arp_scan_V_i in_data 0 1 }  { arp_scan_V_o out_data 1 1 }  { arp_scan_V_o_ap_vld out_vld 1 1 } } }
	myIpAddress_V { ap_fifo {  { myIpAddress_V_dout fifo_data 0 32 }  { myIpAddress_V_empty_n fifo_status 0 1 }  { myIpAddress_V_read fifo_update 1 1 } } }
	macIpEncode_i_V_V { ap_fifo {  { macIpEncode_i_V_V_din fifo_data 1 32 }  { macIpEncode_i_V_V_full_n fifo_status 0 1 }  { macIpEncode_i_V_V_write fifo_update 1 1 } } }
	macIpEncode_rsp_i_V { ap_fifo {  { macIpEncode_rsp_i_V_dout fifo_data 0 49 }  { macIpEncode_rsp_i_V_empty_n fifo_status 0 1 }  { macIpEncode_rsp_i_V_read fifo_update 1 1 } } }
}
