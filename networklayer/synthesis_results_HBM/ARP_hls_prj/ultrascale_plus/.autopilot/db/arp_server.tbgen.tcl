set moduleName arp_server
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
set C_modelName {arp_server}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpDataIn_V_data_V int 512 regular {axi_s 0 volatile  { arpDataIn Data } }  }
	{ arpDataIn_V_keep_V int 64 regular {axi_s 0 volatile  { arpDataIn Keep } }  }
	{ arpDataIn_V_strb_V int 64 regular {axi_s 0 volatile  { arpDataIn Strb } }  }
	{ arpDataIn_V_last_V int 1 regular {axi_s 0 volatile  { arpDataIn Last } }  }
	{ macIpEncode_req int 32 regular {axi_s 0 volatile  { macIpEncode_req Data } }  }
	{ arpDataOut_V_data_V int 512 regular {axi_s 1 volatile  { arpDataOut Data } }  }
	{ arpDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { arpDataOut Keep } }  }
	{ arpDataOut_V_strb_V int 64 regular {axi_s 1 volatile  { arpDataOut Strb } }  }
	{ arpDataOut_V_last_V int 1 regular {axi_s 1 volatile  { arpDataOut Last } }  }
	{ macIpEncode_rsp int 128 regular {axi_s 1 volatile  { macIpEncode_rsp Data } }  }
	{ arpTable_macAddress int 48 regular {axi_slave 2}  }
	{ arpTable_ipAddress int 32 regular {axi_slave 2}  }
	{ arpTable_valid int 1 regular {axi_slave 2}  }
	{ arp_scan int 1 regular {axi_slave 2}  }
	{ myMacAddress int 48 regular {pointer 0}  }
	{ myIpAddress int 32 regular {pointer 0}  }
	{ gatewayIP int 32 regular {pointer 0}  }
	{ networkMask int 32 regular {pointer 0}  }
	{ ap_local_deadlock int 1 unused {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpDataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "macIpEncode_req", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "arpDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpDataOut_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "macIpEncode_rsp", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "arpTable_macAddress", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_memory","bitwidth" : 48, "direction" : "READWRITE", "offset" : {"in":2048, "out":2048}, "offset_end" : {"in":4095, "out":4095}} , 
 	{ "Name" : "arpTable_ipAddress", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_memory","bitwidth" : 32, "direction" : "READWRITE", "offset" : {"in":1024, "out":1024}, "offset_end" : {"in":2047, "out":2047}} , 
 	{ "Name" : "arpTable_valid", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_memory","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":256, "out":256}, "offset_end" : {"in":511, "out":511}} , 
 	{ "Name" : "arp_scan", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "offset" : {"in":16, "out":24}, "offset_end" : {"in":23, "out":31}} , 
 	{ "Name" : "myMacAddress", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gatewayIP", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "networkMask", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_local_deadlock", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "WRITEONLY", "offset" : {"out":0}, "offset_end" : {"out":4294967295}} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_local_block sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_s_axilite_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_s_axilite_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_s_axilite_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_ARADDR sc_in sc_lv 12 signal -1 } 
	{ s_axi_s_axilite_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_s_axilite_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_s_axilite_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ arpDataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ arpDataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ arpDataIn_TSTRB sc_in sc_lv 64 signal 2 } 
	{ arpDataIn_TLAST sc_in sc_lv 1 signal 3 } 
	{ macIpEncode_req_TDATA sc_in sc_lv 32 signal 4 } 
	{ arpDataOut_TDATA sc_out sc_lv 512 signal 5 } 
	{ arpDataOut_TKEEP sc_out sc_lv 64 signal 6 } 
	{ arpDataOut_TSTRB sc_out sc_lv 64 signal 7 } 
	{ arpDataOut_TLAST sc_out sc_lv 1 signal 8 } 
	{ macIpEncode_rsp_TDATA sc_out sc_lv 128 signal 9 } 
	{ myMacAddress sc_in sc_lv 48 signal 14 } 
	{ myIpAddress sc_in sc_lv 32 signal 15 } 
	{ gatewayIP sc_in sc_lv 32 signal 16 } 
	{ networkMask sc_in sc_lv 32 signal 17 } 
	{ macIpEncode_req_TVALID sc_in sc_logic 1 invld 4 } 
	{ macIpEncode_req_TREADY sc_out sc_logic 1 inacc 4 } 
	{ macIpEncode_rsp_TVALID sc_out sc_logic 1 outvld 9 } 
	{ macIpEncode_rsp_TREADY sc_in sc_logic 1 outacc 9 } 
	{ arpDataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ arpDataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ arpDataOut_TVALID sc_out sc_logic 1 outvld 8 } 
	{ arpDataOut_TREADY sc_in sc_logic 1 outacc 8 } 
}
set NewPortList {[ 
	{ "name": "s_axi_s_axilite_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWADDR" },"address":[{"name":"arp_scan","role":"data","value":"16"},{"name":"arpTable_valid","role":"data","value":"256"},{"name":"arpTable_ipAddress","role":"data","value":"1024"},{"name":"arpTable_macAddress","role":"data","value":"2048"}] },
	{ "name": "s_axi_s_axilite_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWVALID" } },
	{ "name": "s_axi_s_axilite_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWREADY" } },
	{ "name": "s_axi_s_axilite_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WVALID" } },
	{ "name": "s_axi_s_axilite_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WREADY" } },
	{ "name": "s_axi_s_axilite_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axilite", "role": "WDATA" } },
	{ "name": "s_axi_s_axilite_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axilite", "role": "WSTRB" } },
	{ "name": "s_axi_s_axilite_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARADDR" },"address":[{"name":"arp_scan","role":"data","value":"24"}, {"name":"arp_scan","role":"valid","value":"28","valid_bit":"0"},{"name":"arpTable_valid","role":"data","value":"256"},{"name":"arpTable_ipAddress","role":"data","value":"1024"},{"name":"arpTable_macAddress","role":"data","value":"2048"},{"name":"ap_local_deadlock","role":"data","value":"0"}] },
	{ "name": "s_axi_s_axilite_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARVALID" } },
	{ "name": "s_axi_s_axilite_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARREADY" } },
	{ "name": "s_axi_s_axilite_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "RVALID" } },
	{ "name": "s_axi_s_axilite_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "RREADY" } },
	{ "name": "s_axi_s_axilite_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axilite", "role": "RDATA" } },
	{ "name": "s_axi_s_axilite_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axilite", "role": "RRESP" } },
	{ "name": "s_axi_s_axilite_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "BVALID" } },
	{ "name": "s_axi_s_axilite_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "BREADY" } },
	{ "name": "s_axi_s_axilite_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axilite", "role": "BRESP" } }, 
 	{ "name": "ap_local_block", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_local_block", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "arpDataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataIn_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataIn_V_strb_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "macIpEncode_req_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "macIpEncode_req", "role": "TDATA" }} , 
 	{ "name": "arpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataOut_V_strb_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "macIpEncode_rsp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "macIpEncode_rsp", "role": "TDATA" }} , 
 	{ "name": "myMacAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "gatewayIP", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP", "role": "default" }} , 
 	{ "name": "networkMask", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask", "role": "default" }} , 
 	{ "name": "macIpEncode_req_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "macIpEncode_req", "role": "TVALID" }} , 
 	{ "name": "macIpEncode_req_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "macIpEncode_req", "role": "TREADY" }} , 
 	{ "name": "macIpEncode_rsp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "macIpEncode_rsp", "role": "TVALID" }} , 
 	{ "name": "macIpEncode_rsp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "macIpEncode_rsp", "role": "TREADY" }} , 
 	{ "name": "arpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "11", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "arp_server",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "entry_proc_U0"},
			{"ID" : "3", "Name" : "genARPDiscovery_U0"},
			{"ID" : "6", "Name" : "arp_pkg_receiver_U0"},
			{"ID" : "16", "Name" : "arp_table_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "genARPDiscovery_U0"},
			{"ID" : "11", "Name" : "arp_pkg_sender_U0"},
			{"ID" : "16", "Name" : "arp_table_U0"}],
		"Port" : [
			{"Name" : "arpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_data_V"}]},
			{"Name" : "arpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_keep_V"}]},
			{"Name" : "arpDataIn_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_strb_V"}]},
			{"Name" : "arpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_last_V"}]},
			{"Name" : "macIpEncode_req", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_req"}]},
			{"Name" : "arpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_data_V"}]},
			{"Name" : "arpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_keep_V"}]},
			{"Name" : "arpDataOut_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_strb_V"}]},
			{"Name" : "arpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_last_V"}]},
			{"Name" : "macIpEncode_rsp", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_rsp"}]},
			{"Name" : "arpTable_macAddress", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_macAddress"}]},
			{"Name" : "arpTable_ipAddress", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_ipAddress"}]},
			{"Name" : "arpTable_valid", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTable_valid"}]},
			{"Name" : "arp_scan", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "arp_scan"}]},
			{"Name" : "myMacAddress", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "myMacAddress"}]},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "myIpAddress"},
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "myIpAddress"}]},
			{"Name" : "gatewayIP", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "gatewayIP"}]},
			{"Name" : "networkMask", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "networkMask"}]},
			{"Name" : "gia_fsm_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "gia_fsm_state"}]},
			{"Name" : "ip_lsb_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "ip_lsb_V"}]},
			{"Name" : "time_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "time_counter"}]},
			{"Name" : "macIpEncode_i", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "macIpEncode_i"},
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_i"}]},
			{"Name" : "macIpEncode_rsp_i", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "macIpEncode_rsp_i"},
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_rsp_i"}]},
			{"Name" : "arp_scan_1d_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "arp_scan_1d_V"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "wordCount_V"}]},
			{"Name" : "arpReplyFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpReplyFifo"},
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpReplyFifo"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpTableInsertFifo"},
					{"ID" : "6", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpTableInsertFifo"}]},
			{"Name" : "aps_fsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "aps_fsmState"}]},
			{"Name" : "replyMeta_srcMac_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_srcMac_V"}]},
			{"Name" : "replyMeta_ethType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_ethType_V"}]},
			{"Name" : "replyMeta_hwType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_hwType_V"}]},
			{"Name" : "replyMeta_protoType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_protoType_V"}]},
			{"Name" : "replyMeta_hwLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_hwLen_V"}]},
			{"Name" : "replyMeta_protoLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_protoLen_V"}]},
			{"Name" : "replyMeta_hwAddrSrc_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_hwAddrSrc_V"}]},
			{"Name" : "replyMeta_protoAddrSrc_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_protoAddrSrc_V"}]},
			{"Name" : "arpRequestFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "arp_table_U0", "Port" : "arpRequestFifo"},
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpRequestFifo"}]},
			{"Name" : "inputIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "arp_pkg_sender_U0", "Port" : "inputIP_V"}]},
			{"Name" : "ap_local_deadlock", "Type" : "None", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axilite_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
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
			{"Name" : "myMacAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "17", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP", "Type" : "None", "Direction" : "I"},
			{"Name" : "gatewayIP_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "18", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gatewayIP_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_c12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "19", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gatewayIP_c12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask", "Type" : "None", "Direction" : "I"},
			{"Name" : "networkMask_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "networkMask_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_c13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "networkMask_c13_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.genARPDiscovery_U0", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "genARPDiscovery",
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
		"Port" : [
			{"Name" : "macIpEncode_req", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "macIpEncode_req_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arp_scan", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "gia_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_lsb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "macIpEncode_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "22", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "23", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arp_scan_1d_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.genARPDiscovery_U0.regslice_both_macIpEncode_req_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.genARPDiscovery_U0.regslice_both_macIpEncode_rsp_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_pkg_receiver_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
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
			{"Name" : "myIpAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_c11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "26", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "27", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_receiver_U0.regslice_both_arpDataIn_V_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_receiver_U0.regslice_both_arpDataIn_V_keep_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_receiver_U0.regslice_both_arpDataIn_V_strb_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_receiver_U0.regslice_both_arpDataIn_V_last_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "arp_pkg_sender",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_arp_pkg_sender_U0_U",
		"Port" : [
			{"Name" : "arpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "myMacAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "17", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myMacAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "19", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gatewayIP_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "networkMask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aps_fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "26", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "replyMeta_srcMac_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_ethType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwAddrSrc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoAddrSrc_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpRequestFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inputIP_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_data_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_keep_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_strb_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_last_V_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_table_U0", "Parent" : "0",
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
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "18", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "gatewayIP_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "networkMask_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "27", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_i", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "22", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["11"], "DependentChan" : "28", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["3"], "DependentChan" : "23", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_c_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gatewayIP_c_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gatewayIP_c12_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.networkMask_c_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.networkMask_c13_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.macIpEncode_i_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.macIpEncode_rsp_i_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c11_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpReplyFifo_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpTableInsertFifo_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpRequestFifo_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_arp_pkg_sender_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_server {
		arpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		macIpEncode_req {Type I LastRead 0 FirstWrite -1}
		arpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		macIpEncode_rsp {Type O LastRead -1 FirstWrite 1}
		arpTable_macAddress {Type IO LastRead 2 FirstWrite 1}
		arpTable_ipAddress {Type IO LastRead 2 FirstWrite 1}
		arpTable_valid {Type IO LastRead 2 FirstWrite 1}
		arp_scan {Type IO LastRead 0 FirstWrite 0}
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		gatewayIP {Type I LastRead 0 FirstWrite -1}
		networkMask {Type I LastRead 0 FirstWrite -1}
		gia_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_lsb_V {Type IO LastRead -1 FirstWrite -1}
		time_counter {Type IO LastRead -1 FirstWrite -1}
		macIpEncode_i {Type IO LastRead -1 FirstWrite -1}
		macIpEncode_rsp_i {Type IO LastRead -1 FirstWrite -1}
		arp_scan_1d_V {Type IO LastRead -1 FirstWrite -1}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo {Type IO LastRead -1 FirstWrite -1}
		aps_fsmState {Type IO LastRead -1 FirstWrite -1}
		replyMeta_srcMac_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_ethType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwAddrSrc_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoAddrSrc_V {Type IO LastRead -1 FirstWrite -1}
		arpRequestFifo {Type IO LastRead -1 FirstWrite -1}
		inputIP_V {Type IO LastRead -1 FirstWrite -1}
		ap_local_deadlock {Type O LastRead -1 FirstWrite -1}}
	entry_proc {
		myMacAddress {Type I LastRead 0 FirstWrite -1}
		myMacAddress_c {Type O LastRead -1 FirstWrite 0}
		gatewayIP {Type I LastRead 0 FirstWrite -1}
		gatewayIP_c {Type O LastRead -1 FirstWrite 0}
		gatewayIP_c12 {Type O LastRead -1 FirstWrite 0}
		networkMask {Type I LastRead 0 FirstWrite -1}
		networkMask_c {Type O LastRead -1 FirstWrite 0}
		networkMask_c13 {Type O LastRead -1 FirstWrite 0}}
	genARPDiscovery {
		macIpEncode_req {Type I LastRead 0 FirstWrite -1}
		macIpEncode_rsp {Type O LastRead -1 FirstWrite 1}
		arp_scan {Type IO LastRead 0 FirstWrite 0}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		gia_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_lsb_V {Type IO LastRead -1 FirstWrite -1}
		time_counter {Type IO LastRead -1 FirstWrite -1}
		macIpEncode_i {Type O LastRead -1 FirstWrite 1}
		macIpEncode_rsp_i {Type I LastRead 0 FirstWrite -1}
		arp_scan_1d_V {Type IO LastRead -1 FirstWrite -1}}
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
		arpTableInsertFifo {Type O LastRead -1 FirstWrite 1}}
	arp_pkg_sender {
		arpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress {Type I LastRead 1 FirstWrite -1}
		myIpAddress {Type I LastRead 1 FirstWrite -1}
		gatewayIP {Type I LastRead 1 FirstWrite -1}
		networkMask {Type I LastRead 1 FirstWrite -1}
		aps_fsmState {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo {Type I LastRead 0 FirstWrite -1}
		replyMeta_srcMac_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_ethType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwAddrSrc_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoAddrSrc_V {Type IO LastRead -1 FirstWrite -1}
		arpRequestFifo {Type I LastRead 0 FirstWrite -1}
		inputIP_V {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arpDataIn_V_data_V { axis {  { arpDataIn_TDATA in_data 0 512 } } }
	arpDataIn_V_keep_V { axis {  { arpDataIn_TKEEP in_data 0 64 } } }
	arpDataIn_V_strb_V { axis {  { arpDataIn_TSTRB in_data 0 64 } } }
	arpDataIn_V_last_V { axis {  { arpDataIn_TLAST in_data 0 1 }  { arpDataIn_TVALID in_vld 0 1 }  { arpDataIn_TREADY in_acc 1 1 } } }
	macIpEncode_req { axis {  { macIpEncode_req_TDATA in_data 0 32 }  { macIpEncode_req_TVALID in_vld 0 1 }  { macIpEncode_req_TREADY in_acc 1 1 } } }
	arpDataOut_V_data_V { axis {  { arpDataOut_TDATA out_data 1 512 } } }
	arpDataOut_V_keep_V { axis {  { arpDataOut_TKEEP out_data 1 64 } } }
	arpDataOut_V_strb_V { axis {  { arpDataOut_TSTRB out_data 1 64 } } }
	arpDataOut_V_last_V { axis {  { arpDataOut_TLAST out_data 1 1 }  { arpDataOut_TVALID out_vld 1 1 }  { arpDataOut_TREADY out_acc 0 1 } } }
	macIpEncode_rsp { axis {  { macIpEncode_rsp_TDATA out_data 1 128 }  { macIpEncode_rsp_TVALID out_vld 1 1 }  { macIpEncode_rsp_TREADY out_acc 0 1 } } }
	myMacAddress { ap_none {  { myMacAddress in_data 0 48 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	gatewayIP { ap_none {  { gatewayIP in_data 0 32 } } }
	networkMask { ap_none {  { networkMask in_data 0 32 } } }
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
