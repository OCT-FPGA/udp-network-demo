set moduleName arp_server
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
set C_modelName {arp_server}
set C_modelType { void 0 }
set C_modelArgList {
	{ arpDataIn_V_data_V int 512 regular {axi_s 0 volatile  { arpDataIn Data } }  }
	{ arpDataIn_V_keep_V int 64 regular {axi_s 0 volatile  { arpDataIn Keep } }  }
	{ arpDataIn_V_last_V int 1 regular {axi_s 0 volatile  { arpDataIn Last } }  }
	{ macIpEncode_req_V_V int 32 regular {axi_s 0 volatile  { macIpEncode_req_V_V Data } }  }
	{ arpDataOut_V_data_V int 512 regular {axi_s 1 volatile  { arpDataOut Data } }  }
	{ arpDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { arpDataOut Keep } }  }
	{ arpDataOut_V_last_V int 1 regular {axi_s 1 volatile  { arpDataOut Last } }  }
	{ macIpEncode_rsp_V int 56 regular {axi_s 1 volatile  { macIpEncode_rsp_V Data } }  }
	{ arpTable_macAddress_V int 48 regular {axi_slave 2}  }
	{ arpTable_ipAddress_V int 32 regular {axi_slave 1}  }
	{ arpTable_valid_V int 1 regular {axi_slave 2}  }
	{ arp_scan_V int 1 regular {axi_slave 2}  }
	{ myMacAddress_V int 48 regular {pointer 0}  }
	{ myIpAddress_V int 32 regular {pointer 0}  }
	{ gatewayIP_V int 32 regular {pointer 0}  }
	{ networkMask_V int 32 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "arpDataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "arpDataIn.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpDataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "arpDataIn.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpDataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arpDataIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "macIpEncode_req_V_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "macIpEncode_req.V.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "arpDataOut.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "arpDataOut.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arpDataOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "macIpEncode_rsp_V", "interface" : "axis", "bitwidth" : 56, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "macIpEncode_rsp.V.macAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":48,"up":48,"cElement": [{"cName": "macIpEncode_rsp.V.hit","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "arpTable_macAddress_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_memory","bitwidth" : 48, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "arpTable.macAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "offset" : {"in":2048, "out":2048}, "offset_end" : {"in":4095, "out":4095}} , 
 	{ "Name" : "arpTable_ipAddress_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "arpTable.ipAddress.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "offset" : {"out":4096}, "offset_end" : {"out":5119}} , 
 	{ "Name" : "arpTable_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_memory","bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arpTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "offset" : {"in":5120, "out":5120}, "offset_end" : {"in":5375, "out":5375}} , 
 	{ "Name" : "arp_scan_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_ovld","bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "arp_scan.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":5376, "out":5384}, "offset_end" : {"in":5383, "out":5391}} , 
 	{ "Name" : "myMacAddress_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "myMacAddress.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "myIpAddress_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "myIpAddress.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "gatewayIP_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "gatewayIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "networkMask_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "networkMask.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ s_axi_s_axilite_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWADDR sc_in sc_lv 13 signal -1 } 
	{ s_axi_s_axilite_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_s_axilite_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_s_axilite_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_ARADDR sc_in sc_lv 13 signal -1 } 
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
	{ arpDataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ macIpEncode_req_V_V_TDATA sc_in sc_lv 32 signal 3 } 
	{ arpDataOut_TDATA sc_out sc_lv 512 signal 4 } 
	{ arpDataOut_TKEEP sc_out sc_lv 64 signal 5 } 
	{ arpDataOut_TLAST sc_out sc_lv 1 signal 6 } 
	{ macIpEncode_rsp_V_TDATA sc_out sc_lv 56 signal 7 } 
	{ myMacAddress_V sc_in sc_lv 48 signal 12 } 
	{ myIpAddress_V sc_in sc_lv 32 signal 13 } 
	{ gatewayIP_V sc_in sc_lv 32 signal 14 } 
	{ networkMask_V sc_in sc_lv 32 signal 15 } 
	{ macIpEncode_req_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ macIpEncode_req_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
	{ macIpEncode_rsp_V_TVALID sc_out sc_logic 1 outvld 7 } 
	{ macIpEncode_rsp_V_TREADY sc_in sc_logic 1 outacc 7 } 
	{ arpDataIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ arpDataIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ arpDataOut_TVALID sc_out sc_logic 1 outvld 6 } 
	{ arpDataOut_TREADY sc_in sc_logic 1 outacc 6 } 
}
set NewPortList {[ 
	{ "name": "s_axi_s_axilite_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWADDR" },"address":[{"name":"arpTable_macAddress_V","role":"data","value":"2048"},{"name":"arpTable_valid_V","role":"data","value":"5120"},{"name":"arp_scan_V","role":"data","value":"5376"}] },
	{ "name": "s_axi_s_axilite_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWVALID" } },
	{ "name": "s_axi_s_axilite_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWREADY" } },
	{ "name": "s_axi_s_axilite_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WVALID" } },
	{ "name": "s_axi_s_axilite_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WREADY" } },
	{ "name": "s_axi_s_axilite_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axilite", "role": "WDATA" } },
	{ "name": "s_axi_s_axilite_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axilite", "role": "WSTRB" } },
	{ "name": "s_axi_s_axilite_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARADDR" },"address":[{"name":"arpTable_macAddress_V","role":"data","value":"2048"},{"name":"arpTable_ipAddress_V","role":"data","value":"4096"},{"name":"arpTable_valid_V","role":"data","value":"5120"},{"name":"arp_scan_V","role":"data","value":"5384"}, {"name":"arp_scan_V","role":"valid","value":"5388","valid_bit":"0"}] },
	{ "name": "s_axi_s_axilite_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARVALID" } },
	{ "name": "s_axi_s_axilite_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARREADY" } },
	{ "name": "s_axi_s_axilite_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "RVALID" } },
	{ "name": "s_axi_s_axilite_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "RREADY" } },
	{ "name": "s_axi_s_axilite_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axilite", "role": "RDATA" } },
	{ "name": "s_axi_s_axilite_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axilite", "role": "RRESP" } },
	{ "name": "s_axi_s_axilite_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "BVALID" } },
	{ "name": "s_axi_s_axilite_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "BREADY" } },
	{ "name": "s_axi_s_axilite_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "s_axilite", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "arpDataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataIn_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "macIpEncode_req_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "macIpEncode_req_V_V", "role": "TDATA" }} , 
 	{ "name": "arpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "arpDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "arpDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "macIpEncode_rsp_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":56, "type": "signal", "bundle":{"name": "macIpEncode_rsp_V", "role": "TDATA" }} , 
 	{ "name": "myMacAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "myMacAddress_V", "role": "default" }} , 
 	{ "name": "myIpAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "default" }} , 
 	{ "name": "gatewayIP_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gatewayIP_V", "role": "default" }} , 
 	{ "name": "networkMask_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "networkMask_V", "role": "default" }} , 
 	{ "name": "macIpEncode_req_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "macIpEncode_req_V_V", "role": "TVALID" }} , 
 	{ "name": "macIpEncode_req_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "macIpEncode_req_V_V", "role": "TREADY" }} , 
 	{ "name": "macIpEncode_rsp_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "macIpEncode_rsp_V", "role": "TVALID" }} , 
 	{ "name": "macIpEncode_rsp_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "macIpEncode_rsp_V", "role": "TREADY" }} , 
 	{ "name": "arpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "arpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "arpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "arpDataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "arp_server",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "arp_server_entry174_U0"},
			{"ID" : "3", "Name" : "genARPDiscovery_U0"},
			{"ID" : "5", "Name" : "arp_pkg_receiver_U0"},
			{"ID" : "10", "Name" : "arp_table_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "genARPDiscovery_U0"},
			{"ID" : "6", "Name" : "arp_pkg_sender_U0"},
			{"ID" : "10", "Name" : "arp_table_U0"}],
		"Port" : [
			{"Name" : "arpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_data_V"}]},
			{"Name" : "arpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_keep_V"}]},
			{"Name" : "arpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpDataIn_V_last_V"}]},
			{"Name" : "macIpEncode_req_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncodeIn_V_V"}]},
			{"Name" : "arpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_data_V"}]},
			{"Name" : "arpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_keep_V"}]},
			{"Name" : "arpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpDataOut_V_last_V"}]},
			{"Name" : "macIpEncode_rsp_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_rsp_o_V"}]},
			{"Name" : "arpTable_macAddress_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "arpTable_macAddress_V"}]},
			{"Name" : "arpTable_ipAddress_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "arpTable_ipAddress_V"}]},
			{"Name" : "arpTable_valid_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "arpTable_valid_V"}]},
			{"Name" : "arp_scan_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "arp_scan_V"}]},
			{"Name" : "myMacAddress_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "arp_server_entry174_U0", "Port" : "myMacAddress_V"}]},
			{"Name" : "myIpAddress_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "arp_server_entry174_U0", "Port" : "myIpAddress_V"}]},
			{"Name" : "gatewayIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "arp_server_entry174_U0", "Port" : "gatewayIP_V"}]},
			{"Name" : "networkMask_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "arp_server_entry174_U0", "Port" : "networkMask_V"}]},
			{"Name" : "gia_fsm_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "gia_fsm_state"}]},
			{"Name" : "ip_lsb_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "ip_lsb_V"}]},
			{"Name" : "time_counter_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "time_counter_V"}]},
			{"Name" : "macIpEncode_i_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "macIpEncode_i_V_V"},
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_i_V_V"}]},
			{"Name" : "macIpEncode_rsp_i_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "macIpEncode_rsp_i_V"},
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "macIpEncode_rsp_i_V"}]},
			{"Name" : "arp_scan_1d_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "genARPDiscovery_U0", "Port" : "arp_scan_1d_V"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "wordCount_V"}]},
			{"Name" : "arpReplyFifo_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpReplyFifo_V"},
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpReplyFifo_V"}]},
			{"Name" : "arpTableInsertFifo_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "arpTableInsertFifo_V"},
					{"ID" : "5", "SubInstance" : "arp_pkg_receiver_U0", "Port" : "arpTableInsertFifo_V"}]},
			{"Name" : "aps_fsmState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "aps_fsmState"}]},
			{"Name" : "inputIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "inputIP_V"}]},
			{"Name" : "replyMeta_srcMac_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_srcMac_V"}]},
			{"Name" : "replyMeta_ethType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_ethType_V"}]},
			{"Name" : "replyMeta_hwType_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_hwType_V"}]},
			{"Name" : "replyMeta_protoType_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_protoType_s"}]},
			{"Name" : "replyMeta_hwLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_hwLen_V"}]},
			{"Name" : "replyMeta_protoLen_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_protoLen_V"}]},
			{"Name" : "replyMeta_hwAddrSrc_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_hwAddrSrc_s"}]},
			{"Name" : "replyMeta_protoAddrS", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "replyMeta_protoAddrS"}]},
			{"Name" : "arpRequestFifo_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "arp_table_U0", "Port" : "arpRequestFifo_V_V"},
					{"ID" : "6", "SubInstance" : "arp_pkg_sender_U0", "Port" : "arpRequestFifo_V_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_s_axilite_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_server_entry174_U0", "Parent" : "0",
		"CDFG" : "arp_server_entry174",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "myMacAddress_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "gatewayIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "networkMask_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "myMacAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "myMacAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "gatewayIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "networkMask_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.genARPDiscovery_U0", "Parent" : "0", "Child" : ["4"],
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
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gia_fsm_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_lsb_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "time_counter_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "macIpEncode_i_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arp_scan_1d_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.genARPDiscovery_U0.regslice_both_macIpEncode_rsp_o_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_pkg_receiver_U0", "Parent" : "0",
		"CDFG" : "arp_pkg_receiver",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "arpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "arpDataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "arpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wordCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0", "Parent" : "0", "Child" : ["7", "8", "9"],
		"CDFG" : "arp_pkg_sender",
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
			{"Name" : "arpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "arpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "arpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "myMacAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "myMacAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "gatewayIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "networkMask_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "gatewayIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "networkMask_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "aps_fsmState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpReplyFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "arpReplyFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "replyMeta_srcMac_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_ethType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwType_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoType_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoLen_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_hwAddrSrc_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "replyMeta_protoAddrS", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "arpRequestFifo_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_keep_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.arp_pkg_sender_U0.regslice_both_arpDataOut_V_last_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arp_table_U0", "Parent" : "0",
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
			{"Name" : "myIpAddress_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "myIpAddress_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gatewayIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "gatewayIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "networkMask_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "networkMask_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpTableInsertFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "arpTableInsertFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_i_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "macIpEncode_i_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arpRequestFifo_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "arpRequestFifo_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "macIpEncode_rsp_i_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "macIpEncode_rsp_i_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myMacAddress_V_c_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_V_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_V_c40_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gatewayIP_V_c_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.networkMask_V_c_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.macIpEncode_i_V_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.macIpEncode_rsp_i_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_V_c41_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpReplyFifo_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpTableInsertFifo_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_V_c42_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gatewayIP_V_c43_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.networkMask_V_c44_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.arpRequestFifo_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	arp_server {
		arpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		macIpEncode_req_V_V {Type I LastRead 0 FirstWrite -1}
		arpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		macIpEncode_rsp_V {Type O LastRead -1 FirstWrite 1}
		arpTable_macAddress_V {Type IO LastRead 0 FirstWrite 0}
		arpTable_ipAddress_V {Type O LastRead -1 FirstWrite 2}
		arpTable_valid_V {Type IO LastRead 0 FirstWrite 0}
		arp_scan_V {Type IO LastRead 0 FirstWrite 0}
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		gatewayIP_V {Type I LastRead 0 FirstWrite -1}
		networkMask_V {Type I LastRead 0 FirstWrite -1}
		gia_fsm_state {Type IO LastRead -1 FirstWrite -1}
		ip_lsb_V {Type IO LastRead -1 FirstWrite -1}
		time_counter_V {Type IO LastRead -1 FirstWrite -1}
		macIpEncode_i_V_V {Type IO LastRead -1 FirstWrite -1}
		macIpEncode_rsp_i_V {Type IO LastRead -1 FirstWrite -1}
		arp_scan_1d_V {Type IO LastRead -1 FirstWrite -1}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo_V {Type IO LastRead -1 FirstWrite -1}
		arpTableInsertFifo_V {Type IO LastRead -1 FirstWrite -1}
		aps_fsmState {Type IO LastRead -1 FirstWrite -1}
		inputIP_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_srcMac_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_ethType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoType_s {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwAddrSrc_s {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoAddrS {Type IO LastRead -1 FirstWrite -1}
		arpRequestFifo_V_V {Type IO LastRead -1 FirstWrite -1}}
	arp_server_entry174 {
		myMacAddress_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		gatewayIP_V {Type I LastRead 0 FirstWrite -1}
		networkMask_V {Type I LastRead 0 FirstWrite -1}
		myMacAddress_V_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_V_out {Type O LastRead -1 FirstWrite 0}
		myIpAddress_V_out1 {Type O LastRead -1 FirstWrite 0}
		gatewayIP_V_out {Type O LastRead -1 FirstWrite 0}
		networkMask_V_out {Type O LastRead -1 FirstWrite 0}}
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
		arp_scan_1d_V {Type IO LastRead -1 FirstWrite -1}}
	arp_pkg_receiver {
		arpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		arpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V_out {Type O LastRead -1 FirstWrite 0}
		wordCount_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo_V {Type O LastRead -1 FirstWrite 1}
		arpTableInsertFifo_V {Type O LastRead -1 FirstWrite 1}}
	arp_pkg_sender {
		arpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		arpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		myMacAddress_V {Type I LastRead 1 FirstWrite -1}
		myIpAddress_V {Type I LastRead 1 FirstWrite -1}
		gatewayIP_V {Type I LastRead 1 FirstWrite -1}
		networkMask_V {Type I LastRead 1 FirstWrite -1}
		myIpAddress_V_out {Type O LastRead -1 FirstWrite 1}
		gatewayIP_V_out {Type O LastRead -1 FirstWrite 1}
		networkMask_V_out {Type O LastRead -1 FirstWrite 1}
		aps_fsmState {Type IO LastRead -1 FirstWrite -1}
		inputIP_V {Type IO LastRead -1 FirstWrite -1}
		arpReplyFifo_V {Type I LastRead 0 FirstWrite -1}
		replyMeta_srcMac_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_ethType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwType_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoType_s {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoLen_V {Type IO LastRead -1 FirstWrite -1}
		replyMeta_hwAddrSrc_s {Type IO LastRead -1 FirstWrite -1}
		replyMeta_protoAddrS {Type IO LastRead -1 FirstWrite -1}
		arpRequestFifo_V_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arpDataIn_V_data_V { axis {  { arpDataIn_TDATA in_data 0 512 } } }
	arpDataIn_V_keep_V { axis {  { arpDataIn_TKEEP in_data 0 64 } } }
	arpDataIn_V_last_V { axis {  { arpDataIn_TLAST in_data 0 1 }  { arpDataIn_TVALID in_vld 0 1 }  { arpDataIn_TREADY in_acc 1 1 } } }
	macIpEncode_req_V_V { axis {  { macIpEncode_req_V_V_TDATA in_data 0 32 }  { macIpEncode_req_V_V_TVALID in_vld 0 1 }  { macIpEncode_req_V_V_TREADY in_acc 1 1 } } }
	arpDataOut_V_data_V { axis {  { arpDataOut_TDATA out_data 1 512 } } }
	arpDataOut_V_keep_V { axis {  { arpDataOut_TKEEP out_data 1 64 } } }
	arpDataOut_V_last_V { axis {  { arpDataOut_TLAST out_data 1 1 }  { arpDataOut_TVALID out_vld 1 1 }  { arpDataOut_TREADY out_acc 0 1 } } }
	macIpEncode_rsp_V { axis {  { macIpEncode_rsp_V_TDATA out_data 1 56 }  { macIpEncode_rsp_V_TVALID out_vld 1 1 }  { macIpEncode_rsp_V_TREADY out_acc 0 1 } } }
	myMacAddress_V { ap_none {  { myMacAddress_V in_data 0 48 } } }
	myIpAddress_V { ap_none {  { myIpAddress_V in_data 0 32 } } }
	gatewayIP_V { ap_none {  { gatewayIP_V in_data 0 32 } } }
	networkMask_V { ap_none {  { networkMask_V in_data 0 32 } } }
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
