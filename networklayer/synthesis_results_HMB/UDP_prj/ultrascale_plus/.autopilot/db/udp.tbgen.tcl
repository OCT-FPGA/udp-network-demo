set moduleName udp
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
set C_modelName {udp}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxUdpDataIn_V_data_V int 512 regular {axi_s 0 volatile  { rxUdpDataIn Data } }  }
	{ rxUdpDataIn_V_keep_V int 64 regular {axi_s 0 volatile  { rxUdpDataIn Keep } }  }
	{ rxUdpDataIn_V_last_V int 1 regular {axi_s 0 volatile  { rxUdpDataIn Last } }  }
	{ txUdpDataOut_V_data_V int 512 regular {axi_s 1 volatile  { txUdpDataOut Data } }  }
	{ txUdpDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { txUdpDataOut Keep } }  }
	{ txUdpDataOut_V_last_V int 1 regular {axi_s 1 volatile  { txUdpDataOut Last } }  }
	{ DataOutApp_V_data_V int 512 regular {axi_s 1 volatile  { DataOutApp Data } }  }
	{ DataOutApp_V_keep_V int 64 regular {axi_s 1 volatile  { DataOutApp Keep } }  }
	{ DataOutApp_V_dest_V int 16 regular {axi_s 1 volatile  { DataOutApp Dest } }  }
	{ DataOutApp_V_last_V int 1 regular {axi_s 1 volatile  { DataOutApp Last } }  }
	{ DataOutApp_V_user int 96 regular {axi_s 1 volatile  { DataOutApp User } }  }
	{ DataInApp_V_data_V int 512 regular {axi_s 0 volatile  { DataInApp Data } }  }
	{ DataInApp_V_keep_V int 64 regular {axi_s 0 volatile  { DataInApp Keep } }  }
	{ DataInApp_V_dest_V int 16 regular {axi_s 0 volatile  { DataInApp Dest } }  }
	{ DataInApp_V_last_V int 1 regular {axi_s 0 volatile  { DataInApp Last } }  }
	{ DataInApp_V_user int 96 regular {axi_s 0 volatile  { DataInApp User } }  }
	{ myIpAddress_V int 32 regular {pointer 0}  }
	{ SocketTable_0_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_1_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_2_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_3_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_4_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_5_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_6_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_7_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_8_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_9_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_10_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_11_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_12_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_13_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_14_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_15_theirIP_V int 32 regular {axi_slave 0}  }
	{ SocketTable_0_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_1_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_2_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_3_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_4_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_5_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_6_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_7_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_8_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_9_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_10_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_11_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_12_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_13_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_14_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_15_theirPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_0_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_1_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_2_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_3_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_4_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_5_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_6_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_7_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_8_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_9_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_10_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_11_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_12_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_13_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_14_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_15_myPort_V int 16 regular {axi_slave 0}  }
	{ SocketTable_0_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_1_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_2_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_3_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_4_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_5_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_6_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_7_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_8_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_9_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_10_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_11_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_12_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_13_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_14_valid_V int 1 regular {axi_slave 0}  }
	{ SocketTable_15_valid_V int 1 regular {axi_slave 0}  }
	{ numberSockets_V int 16 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxUdpDataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "rxUdpDataIn.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rxUdpDataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "rxUdpDataIn.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rxUdpDataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rxUdpDataIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "txUdpDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "txUdpDataOut.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "txUdpDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "txUdpDataOut.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "txUdpDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "txUdpDataOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataOutApp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "DataOutApp.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataOutApp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "DataOutApp.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataOutApp_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "DataOutApp.V.dest.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataOutApp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "DataOutApp.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataOutApp_V_user", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "DataOutApp.V.user.myIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "DataOutApp.V.user.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":79,"cElement": [{"cName": "DataOutApp.V.user.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":80,"up":95,"cElement": [{"cName": "DataOutApp.V.user.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataInApp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[{"low":0,"up":511,"cElement": [{"cName": "DataInApp.V.data.V","cData": "uint512","bit_use": { "low": 0,"up": 511},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataInApp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "DataInApp.V.keep.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataInApp_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "DataInApp.V.dest.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataInApp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "DataInApp.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "DataInApp_V_user", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "DataInApp.V.user.myIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":63,"cElement": [{"cName": "DataInApp.V.user.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":79,"cElement": [{"cName": "DataInApp.V.user.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":80,"up":95,"cElement": [{"cName": "DataInApp.V.user.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "myIpAddress_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "myIpAddress.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "SocketTable_0_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "SocketTable_1_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "SocketTable_2_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "SocketTable_3_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "SocketTable_4_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "SocketTable_5_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "SocketTable_6_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "SocketTable_7_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "SocketTable_8_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "SocketTable_9_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "SocketTable_10_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "SocketTable_11_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "SocketTable_12_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "SocketTable_13_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "SocketTable_14_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "SocketTable_15_theirIP_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "SocketTable.theirIP.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "SocketTable_0_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "SocketTable_1_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "SocketTable_2_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "SocketTable_3_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "SocketTable_4_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "SocketTable_5_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "SocketTable_6_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "SocketTable_7_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "SocketTable_8_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "SocketTable_9_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "SocketTable_10_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "SocketTable_11_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "SocketTable_12_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "SocketTable_13_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "SocketTable_14_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "SocketTable_15_theirPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.theirPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "SocketTable_0_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "offset" : {"in":272}, "offset_end" : {"in":279}} , 
 	{ "Name" : "SocketTable_1_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "offset" : {"in":280}, "offset_end" : {"in":287}} , 
 	{ "Name" : "SocketTable_2_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "offset" : {"in":288}, "offset_end" : {"in":295}} , 
 	{ "Name" : "SocketTable_3_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "offset" : {"in":296}, "offset_end" : {"in":303}} , 
 	{ "Name" : "SocketTable_4_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "offset" : {"in":304}, "offset_end" : {"in":311}} , 
 	{ "Name" : "SocketTable_5_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "offset" : {"in":312}, "offset_end" : {"in":319}} , 
 	{ "Name" : "SocketTable_6_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "offset" : {"in":320}, "offset_end" : {"in":327}} , 
 	{ "Name" : "SocketTable_7_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "offset" : {"in":328}, "offset_end" : {"in":335}} , 
 	{ "Name" : "SocketTable_8_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "offset" : {"in":336}, "offset_end" : {"in":343}} , 
 	{ "Name" : "SocketTable_9_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "offset" : {"in":344}, "offset_end" : {"in":351}} , 
 	{ "Name" : "SocketTable_10_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "offset" : {"in":352}, "offset_end" : {"in":359}} , 
 	{ "Name" : "SocketTable_11_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "offset" : {"in":360}, "offset_end" : {"in":367}} , 
 	{ "Name" : "SocketTable_12_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "offset" : {"in":368}, "offset_end" : {"in":375}} , 
 	{ "Name" : "SocketTable_13_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "offset" : {"in":376}, "offset_end" : {"in":383}} , 
 	{ "Name" : "SocketTable_14_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "offset" : {"in":384}, "offset_end" : {"in":391}} , 
 	{ "Name" : "SocketTable_15_myPort_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "SocketTable.myPort.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "offset" : {"in":392}, "offset_end" : {"in":399}} , 
 	{ "Name" : "SocketTable_0_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "offset" : {"in":400}, "offset_end" : {"in":407}} , 
 	{ "Name" : "SocketTable_1_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "offset" : {"in":408}, "offset_end" : {"in":415}} , 
 	{ "Name" : "SocketTable_2_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]}], "offset" : {"in":416}, "offset_end" : {"in":423}} , 
 	{ "Name" : "SocketTable_3_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]}], "offset" : {"in":424}, "offset_end" : {"in":431}} , 
 	{ "Name" : "SocketTable_4_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]}], "offset" : {"in":432}, "offset_end" : {"in":439}} , 
 	{ "Name" : "SocketTable_5_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]}], "offset" : {"in":440}, "offset_end" : {"in":447}} , 
 	{ "Name" : "SocketTable_6_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]}], "offset" : {"in":448}, "offset_end" : {"in":455}} , 
 	{ "Name" : "SocketTable_7_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]}], "offset" : {"in":456}, "offset_end" : {"in":463}} , 
 	{ "Name" : "SocketTable_8_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]}], "offset" : {"in":464}, "offset_end" : {"in":471}} , 
 	{ "Name" : "SocketTable_9_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]}], "offset" : {"in":472}, "offset_end" : {"in":479}} , 
 	{ "Name" : "SocketTable_10_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]}], "offset" : {"in":480}, "offset_end" : {"in":487}} , 
 	{ "Name" : "SocketTable_11_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]}], "offset" : {"in":488}, "offset_end" : {"in":495}} , 
 	{ "Name" : "SocketTable_12_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]}], "offset" : {"in":496}, "offset_end" : {"in":503}} , 
 	{ "Name" : "SocketTable_13_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]}], "offset" : {"in":504}, "offset_end" : {"in":511}} , 
 	{ "Name" : "SocketTable_14_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]}], "offset" : {"in":512}, "offset_end" : {"in":519}} , 
 	{ "Name" : "SocketTable_15_valid_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "SocketTable.valid.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}], "offset" : {"in":520}, "offset_end" : {"in":527}} , 
 	{ "Name" : "numberSockets_V", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "numberSockets.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":528}, "offset_end" : {"out":535}} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ s_axi_s_axilite_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_s_axilite_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_s_axilite_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_s_axilite_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_s_axilite_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_s_axilite_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_s_axilite_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_s_axilite_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ rxUdpDataIn_TDATA sc_in sc_lv 512 signal 0 } 
	{ rxUdpDataIn_TKEEP sc_in sc_lv 64 signal 1 } 
	{ rxUdpDataIn_TLAST sc_in sc_lv 1 signal 2 } 
	{ txUdpDataOut_TDATA sc_out sc_lv 512 signal 3 } 
	{ txUdpDataOut_TKEEP sc_out sc_lv 64 signal 4 } 
	{ txUdpDataOut_TLAST sc_out sc_lv 1 signal 5 } 
	{ DataOutApp_TDATA sc_out sc_lv 512 signal 6 } 
	{ DataOutApp_TKEEP sc_out sc_lv 64 signal 7 } 
	{ DataOutApp_TDEST sc_out sc_lv 16 signal 8 } 
	{ DataOutApp_TLAST sc_out sc_lv 1 signal 9 } 
	{ DataOutApp_TUSER sc_out sc_lv 96 signal 10 } 
	{ DataInApp_TDATA sc_in sc_lv 512 signal 11 } 
	{ DataInApp_TKEEP sc_in sc_lv 64 signal 12 } 
	{ DataInApp_TDEST sc_in sc_lv 16 signal 13 } 
	{ DataInApp_TLAST sc_in sc_lv 1 signal 14 } 
	{ DataInApp_TUSER sc_in sc_lv 96 signal 15 } 
	{ myIpAddress_V sc_in sc_lv 32 signal 16 } 
	{ rxUdpDataIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ rxUdpDataIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ DataOutApp_TVALID sc_out sc_logic 1 outvld 10 } 
	{ DataOutApp_TREADY sc_in sc_logic 1 outacc 10 } 
	{ DataInApp_TVALID sc_in sc_logic 1 invld 15 } 
	{ DataInApp_TREADY sc_out sc_logic 1 inacc 15 } 
	{ txUdpDataOut_TVALID sc_out sc_logic 1 outvld 5 } 
	{ txUdpDataOut_TREADY sc_in sc_logic 1 outacc 5 } 
}
set NewPortList {[ 
	{ "name": "s_axi_s_axilite_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWADDR" },"address":[{"name":"SocketTable_0_theirIP_V","role":"data","value":"16"},{"name":"SocketTable_1_theirIP_V","role":"data","value":"24"},{"name":"SocketTable_2_theirIP_V","role":"data","value":"32"},{"name":"SocketTable_3_theirIP_V","role":"data","value":"40"},{"name":"SocketTable_4_theirIP_V","role":"data","value":"48"},{"name":"SocketTable_5_theirIP_V","role":"data","value":"56"},{"name":"SocketTable_6_theirIP_V","role":"data","value":"64"},{"name":"SocketTable_7_theirIP_V","role":"data","value":"72"},{"name":"SocketTable_8_theirIP_V","role":"data","value":"80"},{"name":"SocketTable_9_theirIP_V","role":"data","value":"88"},{"name":"SocketTable_10_theirIP_V","role":"data","value":"96"},{"name":"SocketTable_11_theirIP_V","role":"data","value":"104"},{"name":"SocketTable_12_theirIP_V","role":"data","value":"112"},{"name":"SocketTable_13_theirIP_V","role":"data","value":"120"},{"name":"SocketTable_14_theirIP_V","role":"data","value":"128"},{"name":"SocketTable_15_theirIP_V","role":"data","value":"136"},{"name":"SocketTable_0_theirPort_V","role":"data","value":"144"},{"name":"SocketTable_1_theirPort_V","role":"data","value":"152"},{"name":"SocketTable_2_theirPort_V","role":"data","value":"160"},{"name":"SocketTable_3_theirPort_V","role":"data","value":"168"},{"name":"SocketTable_4_theirPort_V","role":"data","value":"176"},{"name":"SocketTable_5_theirPort_V","role":"data","value":"184"},{"name":"SocketTable_6_theirPort_V","role":"data","value":"192"},{"name":"SocketTable_7_theirPort_V","role":"data","value":"200"},{"name":"SocketTable_8_theirPort_V","role":"data","value":"208"},{"name":"SocketTable_9_theirPort_V","role":"data","value":"216"},{"name":"SocketTable_10_theirPort_V","role":"data","value":"224"},{"name":"SocketTable_11_theirPort_V","role":"data","value":"232"},{"name":"SocketTable_12_theirPort_V","role":"data","value":"240"},{"name":"SocketTable_13_theirPort_V","role":"data","value":"248"},{"name":"SocketTable_14_theirPort_V","role":"data","value":"256"},{"name":"SocketTable_15_theirPort_V","role":"data","value":"264"},{"name":"SocketTable_0_myPort_V","role":"data","value":"272"},{"name":"SocketTable_1_myPort_V","role":"data","value":"280"},{"name":"SocketTable_2_myPort_V","role":"data","value":"288"},{"name":"SocketTable_3_myPort_V","role":"data","value":"296"},{"name":"SocketTable_4_myPort_V","role":"data","value":"304"},{"name":"SocketTable_5_myPort_V","role":"data","value":"312"},{"name":"SocketTable_6_myPort_V","role":"data","value":"320"},{"name":"SocketTable_7_myPort_V","role":"data","value":"328"},{"name":"SocketTable_8_myPort_V","role":"data","value":"336"},{"name":"SocketTable_9_myPort_V","role":"data","value":"344"},{"name":"SocketTable_10_myPort_V","role":"data","value":"352"},{"name":"SocketTable_11_myPort_V","role":"data","value":"360"},{"name":"SocketTable_12_myPort_V","role":"data","value":"368"},{"name":"SocketTable_13_myPort_V","role":"data","value":"376"},{"name":"SocketTable_14_myPort_V","role":"data","value":"384"},{"name":"SocketTable_15_myPort_V","role":"data","value":"392"},{"name":"SocketTable_0_valid_V","role":"data","value":"400"},{"name":"SocketTable_1_valid_V","role":"data","value":"408"},{"name":"SocketTable_2_valid_V","role":"data","value":"416"},{"name":"SocketTable_3_valid_V","role":"data","value":"424"},{"name":"SocketTable_4_valid_V","role":"data","value":"432"},{"name":"SocketTable_5_valid_V","role":"data","value":"440"},{"name":"SocketTable_6_valid_V","role":"data","value":"448"},{"name":"SocketTable_7_valid_V","role":"data","value":"456"},{"name":"SocketTable_8_valid_V","role":"data","value":"464"},{"name":"SocketTable_9_valid_V","role":"data","value":"472"},{"name":"SocketTable_10_valid_V","role":"data","value":"480"},{"name":"SocketTable_11_valid_V","role":"data","value":"488"},{"name":"SocketTable_12_valid_V","role":"data","value":"496"},{"name":"SocketTable_13_valid_V","role":"data","value":"504"},{"name":"SocketTable_14_valid_V","role":"data","value":"512"},{"name":"SocketTable_15_valid_V","role":"data","value":"520"}] },
	{ "name": "s_axi_s_axilite_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWVALID" } },
	{ "name": "s_axi_s_axilite_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWREADY" } },
	{ "name": "s_axi_s_axilite_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WVALID" } },
	{ "name": "s_axi_s_axilite_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WREADY" } },
	{ "name": "s_axi_s_axilite_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axilite", "role": "WDATA" } },
	{ "name": "s_axi_s_axilite_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axilite", "role": "WSTRB" } },
	{ "name": "s_axi_s_axilite_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARADDR" },"address":[{"name":"numberSockets_V","role":"data","value":"528"}, {"name":"numberSockets_V","role":"valid","value":"532","valid_bit":"0"}] },
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
 	{ "name": "rxUdpDataIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "rxUdpDataIn_V_data_V", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rxUdpDataIn_V_keep_V", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxUdpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "txUdpDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txUdpDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataOutApp_V_data_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataOutApp_V_keep_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataOutApp_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataOutApp_V_user", "role": "default" }} , 
 	{ "name": "DataInApp_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataInApp_V_data_V", "role": "default" }} , 
 	{ "name": "DataInApp_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataInApp_V_keep_V", "role": "default" }} , 
 	{ "name": "DataInApp_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataInApp_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataInApp_V_last_V", "role": "default" }} , 
 	{ "name": "DataInApp_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataInApp_V_user", "role": "default" }} , 
 	{ "name": "myIpAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rxUdpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rxUdpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DataOutApp_V_user", "role": "default" }} , 
 	{ "name": "DataOutApp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "DataOutApp_V_user", "role": "default" }} , 
 	{ "name": "DataInApp_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "DataInApp_V_user", "role": "default" }} , 
 	{ "name": "DataInApp_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "DataInApp_V_user", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "12", "14", "19", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205"],
		"CDFG" : "udp",
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
			{"ID" : "2", "Name" : "udp_entry3_U0"},
			{"ID" : "4", "Name" : "udpRxEngine_U0"},
			{"ID" : "12", "Name" : "appGetMetaData_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "rxTableHandler_U0"},
			{"ID" : "6", "Name" : "rxEngPacketDropper_U0"},
			{"ID" : "19", "Name" : "udpTxEngine_U0"}],
		"Port" : [
			{"Name" : "rxUdpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "DataIn_V_data_V"}]},
			{"Name" : "rxUdpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "DataIn_V_keep_V"}]},
			{"Name" : "rxUdpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "DataIn_V_last_V"}]},
			{"Name" : "txUdpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "DataOut_V_data_V"}]},
			{"Name" : "txUdpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "DataOut_V_keep_V"}]},
			{"Name" : "txUdpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "DataOut_V_last_V"}]},
			{"Name" : "DataOutApp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repdDataOut_V_data_V"}]},
			{"Name" : "DataOutApp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repdDataOut_V_keep_V"}]},
			{"Name" : "DataOutApp_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repdDataOut_V_dest_V"}]},
			{"Name" : "DataOutApp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repdDataOut_V_last_V"}]},
			{"Name" : "DataOutApp_V_user", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repdDataOut_V_user"}]},
			{"Name" : "DataInApp_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "DataIn_V_data_V"}]},
			{"Name" : "DataInApp_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "DataIn_V_keep_V"}]},
			{"Name" : "DataInApp_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "DataIn_V_dest_V"}]},
			{"Name" : "DataInApp_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "DataIn_V_last_V"}]},
			{"Name" : "DataInApp_V_user", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "DataIn_V_user"}]},
			{"Name" : "myIpAddress_V", "Type" : "Stable", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "rxTableHandler_U0", "Port" : "myIpAddress_V"},
					{"ID" : "14", "SubInstance" : "txTableHandler_U0", "Port" : "myIpAddress_V"}]},
			{"Name" : "SocketTable_0_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_0_theirIP_V"}]},
			{"Name" : "SocketTable_1_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_1_theirIP_V"}]},
			{"Name" : "SocketTable_2_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_2_theirIP_V"}]},
			{"Name" : "SocketTable_3_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_3_theirIP_V"}]},
			{"Name" : "SocketTable_4_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_4_theirIP_V"}]},
			{"Name" : "SocketTable_5_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_5_theirIP_V"}]},
			{"Name" : "SocketTable_6_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_6_theirIP_V"}]},
			{"Name" : "SocketTable_7_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_7_theirIP_V"}]},
			{"Name" : "SocketTable_8_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_8_theirIP_V"}]},
			{"Name" : "SocketTable_9_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_9_theirIP_V"}]},
			{"Name" : "SocketTable_10_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_10_theirIP_V"}]},
			{"Name" : "SocketTable_11_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_11_theirIP_V"}]},
			{"Name" : "SocketTable_12_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_12_theirIP_V"}]},
			{"Name" : "SocketTable_13_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_13_theirIP_V"}]},
			{"Name" : "SocketTable_14_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_14_theirIP_V"}]},
			{"Name" : "SocketTable_15_theirIP_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_15_theirIP_V"}]},
			{"Name" : "SocketTable_0_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_0_theirPort_V"}]},
			{"Name" : "SocketTable_1_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_1_theirPort_V"}]},
			{"Name" : "SocketTable_2_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_2_theirPort_V"}]},
			{"Name" : "SocketTable_3_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_3_theirPort_V"}]},
			{"Name" : "SocketTable_4_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_4_theirPort_V"}]},
			{"Name" : "SocketTable_5_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_5_theirPort_V"}]},
			{"Name" : "SocketTable_6_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_6_theirPort_V"}]},
			{"Name" : "SocketTable_7_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_7_theirPort_V"}]},
			{"Name" : "SocketTable_8_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_8_theirPort_V"}]},
			{"Name" : "SocketTable_9_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_9_theirPort_V"}]},
			{"Name" : "SocketTable_10_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_10_theirPort_V"}]},
			{"Name" : "SocketTable_11_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_11_theirPort_V"}]},
			{"Name" : "SocketTable_12_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_12_theirPort_V"}]},
			{"Name" : "SocketTable_13_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_13_theirPort_V"}]},
			{"Name" : "SocketTable_14_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_14_theirPort_V"}]},
			{"Name" : "SocketTable_15_theirPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_15_theirPort_V"}]},
			{"Name" : "SocketTable_0_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_0_myPort_V"}]},
			{"Name" : "SocketTable_1_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_1_myPort_V"}]},
			{"Name" : "SocketTable_2_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_2_myPort_V"}]},
			{"Name" : "SocketTable_3_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_3_myPort_V"}]},
			{"Name" : "SocketTable_4_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_4_myPort_V"}]},
			{"Name" : "SocketTable_5_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_5_myPort_V"}]},
			{"Name" : "SocketTable_6_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_6_myPort_V"}]},
			{"Name" : "SocketTable_7_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_7_myPort_V"}]},
			{"Name" : "SocketTable_8_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_8_myPort_V"}]},
			{"Name" : "SocketTable_9_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_9_myPort_V"}]},
			{"Name" : "SocketTable_10_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_10_myPort_V"}]},
			{"Name" : "SocketTable_11_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_11_myPort_V"}]},
			{"Name" : "SocketTable_12_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_12_myPort_V"}]},
			{"Name" : "SocketTable_13_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_13_myPort_V"}]},
			{"Name" : "SocketTable_14_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_14_myPort_V"}]},
			{"Name" : "SocketTable_15_myPort_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_15_myPort_V"}]},
			{"Name" : "SocketTable_0_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_0_valid_V"}]},
			{"Name" : "SocketTable_1_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_1_valid_V"}]},
			{"Name" : "SocketTable_2_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_2_valid_V"}]},
			{"Name" : "SocketTable_3_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_3_valid_V"}]},
			{"Name" : "SocketTable_4_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_4_valid_V"}]},
			{"Name" : "SocketTable_5_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_5_valid_V"}]},
			{"Name" : "SocketTable_6_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_6_valid_V"}]},
			{"Name" : "SocketTable_7_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_7_valid_V"}]},
			{"Name" : "SocketTable_8_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_8_valid_V"}]},
			{"Name" : "SocketTable_9_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_9_valid_V"}]},
			{"Name" : "SocketTable_10_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_10_valid_V"}]},
			{"Name" : "SocketTable_11_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_11_valid_V"}]},
			{"Name" : "SocketTable_12_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_12_valid_V"}]},
			{"Name" : "SocketTable_13_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_13_valid_V"}]},
			{"Name" : "SocketTable_14_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_14_valid_V"}]},
			{"Name" : "SocketTable_15_valid_V", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "udp_entry3_U0", "Port" : "SocketTable_15_valid_V"}]},
			{"Name" : "numberSockets_V", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "rxTableHandler_U0", "Port" : "numberSockets_V"}]},
			{"Name" : "ure_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "ure_state"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "prevWord_keep_V_1"}]},
			{"Name" : "ureMetaData_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "rxTableHandler_U0", "Port" : "ureMetaData_V"},
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "ureMetaData_V"}]},
			{"Name" : "ureDataPayload_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "ureDataPayload_V"},
					{"ID" : "4", "SubInstance" : "udpRxEngine_U0", "Port" : "ureDataPayload_V"}]},
			{"Name" : "rthDropFifo_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "rxTableHandler_U0", "Port" : "rthDropFifo_V"},
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "rthDropFifo_V"}]},
			{"Name" : "repd_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repd_state"}]},
			{"Name" : "response_drop_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_drop_V"}]},
			{"Name" : "response_id_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_id_V"}]},
			{"Name" : "response_user_myIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_myIP_V"}]},
			{"Name" : "response_user_theirI", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_theirI"}]},
			{"Name" : "response_user_myPort", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_myPort"}]},
			{"Name" : "response_user_theirP", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_theirP"}]},
			{"Name" : "agmd_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "agmd_state"}]},
			{"Name" : "lenCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "lenCount_V"}]},
			{"Name" : "agmdIdOut_V_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "agmdIdOut_V_V"},
					{"ID" : "14", "SubInstance" : "txTableHandler_U0", "Port" : "agmdIdOut_V_V"}]},
			{"Name" : "agmdDataOut_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "agmdDataOut_V"},
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "agmdDataOut_V"}]},
			{"Name" : "agmdpayloadLenOut_V_s", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "appGetMetaData_U0", "Port" : "agmdpayloadLenOut_V_s"},
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "agmdpayloadLenOut_V_s"}]},
			{"Name" : "txthMetaData_V", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "txTableHandler_U0", "Port" : "txthMetaData_V"},
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "txthMetaData_V"}]},
			{"Name" : "ute_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "ute_state"}]},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "prevWord_data_V_1"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "currMetaData_theirIP", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_theirIP"}]},
			{"Name" : "currMetaData_myIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_myIP_V"}]},
			{"Name" : "currMetaData_theirPo", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_theirPo"}]},
			{"Name" : "currMetaData_myPort_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_myPort_s"}]},
			{"Name" : "ip_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "ip_len_V"}]},
			{"Name" : "udp_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "udpTxEngine_U0", "Port" : "udp_len_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_s_axilite_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_entry3_U0", "Parent" : "0",
		"CDFG" : "udp_entry3",
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
			{"Name" : "SocketTable_0_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_1_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_2_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_3_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_4_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_5_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_6_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_7_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_8_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_9_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_10_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_11_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_12_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_13_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_14_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_15_theirIP_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_0_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_1_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_2_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_3_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_4_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_5_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_6_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_7_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_8_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_9_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_10_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_11_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_12_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_13_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_14_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_15_theirPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_0_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_1_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_2_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_3_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_4_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_5_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_6_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_7_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_8_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_9_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_10_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_11_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_12_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_13_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_14_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_15_myPort_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_0_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_1_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_2_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_3_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_4_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_5_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_6_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_7_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_8_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_9_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_10_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_11_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_12_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_13_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_14_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_15_valid_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_0_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_valid_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_entry266_U0", "Parent" : "0",
		"CDFG" : "udp_entry266",
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
			{"Name" : "SocketTable_0_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "50",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "51",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "52",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "53",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "54",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "55",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "56",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "57",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "58",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "59",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "60",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "61",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "62",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "63",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "64",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "65",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "66",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "67",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "68",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "69",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "70",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "71",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "72",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "73",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "74",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "75",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "76",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "77",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "78",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "79",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "80",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "81",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "82",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "83",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "84",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "85",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "86",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_theirIP_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirIP_V_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirIP_V_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirIP_V_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirIP_V_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirIP_V_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirIP_V_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirIP_V_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirIP_V_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirIP_V_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirIP_V_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirIP_V_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirIP_V_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirIP_V_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirIP_V_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirIP_V_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirIP_V_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirIP_V_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirIP_V_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirIP_V_out10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirIP_V_out11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirIP_V_out11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirIP_V_out12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirIP_V_out12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirIP_V_out13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirIP_V_out13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirIP_V_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirIP_V_out14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirIP_V_out15", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirIP_V_out15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirIP_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirIP_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirIP_V_out16", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirIP_V_out16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_theirPort_V_out17", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_theirPort_V_out17_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_theirPort_V_out18", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_theirPort_V_out18_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_theirPort_V_out19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_theirPort_V_out19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_theirPort_V_out20", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_theirPort_V_out20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_theirPort_V_out21", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_theirPort_V_out21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_theirPort_V_out22", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_theirPort_V_out22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_theirPort_V_out23", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_theirPort_V_out23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_theirPort_V_out24", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_theirPort_V_out24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "135",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_theirPort_V_out25", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "136",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_theirPort_V_out25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "137",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_theirPort_V_out26", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "138",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_theirPort_V_out26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "139",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_theirPort_V_out27", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "140",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_theirPort_V_out27_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "141",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_theirPort_V_out28", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "142",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_theirPort_V_out28_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "143",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_theirPort_V_out29", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_theirPort_V_out29_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_theirPort_V_out30", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_theirPort_V_out30_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_theirPort_V_out31", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "148",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_theirPort_V_out31_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "149",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_theirPort_V_out32", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "150",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_theirPort_V_out32_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "151",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_myPort_V_out33", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "152",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_myPort_V_out33_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "153",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_myPort_V_out34", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "154",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_myPort_V_out34_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "155",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_myPort_V_out35", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "156",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_myPort_V_out35_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "157",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_myPort_V_out36", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "158",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_myPort_V_out36_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "159",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_myPort_V_out37", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "160",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_myPort_V_out37_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_myPort_V_out38", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_myPort_V_out38_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_myPort_V_out39", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "164",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_myPort_V_out39_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_myPort_V_out40", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_myPort_V_out40_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "167",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_myPort_V_out41", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "168",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_myPort_V_out41_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "169",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_myPort_V_out42", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "170",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_myPort_V_out42_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "171",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_myPort_V_out43", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "172",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_myPort_V_out43_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_myPort_V_out44", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_myPort_V_out44_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_myPort_V_out45", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_myPort_V_out45_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_myPort_V_out46", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_myPort_V_out46_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_myPort_V_out47", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_myPort_V_out47_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_myPort_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_myPort_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_myPort_V_out48", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_myPort_V_out48_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_0_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "SocketTable_0_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_1_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "SocketTable_1_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_2_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "SocketTable_2_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_3_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "SocketTable_3_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_4_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "SocketTable_4_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_5_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "SocketTable_5_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_6_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "SocketTable_6_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_7_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "SocketTable_7_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_8_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "SocketTable_8_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_9_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "SocketTable_9_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_10_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "SocketTable_10_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_11_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "SocketTable_11_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_12_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "SocketTable_12_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_13_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "SocketTable_13_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_14_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "SocketTable_14_valid_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_15_valid_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "SocketTable_15_valid_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpRxEngine_U0", "Parent" : "0",
		"CDFG" : "udpRxEngine",
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
			{"Name" : "DataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rxUdpDataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ure_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureMetaData_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "ureMetaData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ureDataPayload_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rxTableHandler_U0", "Parent" : "0",
		"CDFG" : "rxTableHandler",
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
			{"Name" : "SocketTableRx_0_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "87",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_0_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_1_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "89",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_1_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_2_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_2_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_3_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_3_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_4_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "95",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_4_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_5_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "97",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_5_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_6_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "99",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_6_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_7_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "101",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_7_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_8_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "103",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_8_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_9_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "105",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_9_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_10_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "107",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_10_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_11_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "109",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_11_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_12_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "111",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_12_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_13_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "113",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_13_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_14_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "115",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_14_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_15_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "117",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_15_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_0_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "119",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_0_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_1_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "121",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_1_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_2_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "123",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_2_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_3_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "125",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_3_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_4_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "127",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_4_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_5_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "129",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_5_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_6_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "131",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_6_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_7_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_7_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_8_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "135",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_8_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_9_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "137",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_9_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_10_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "139",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_10_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_11_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "141",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_11_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_12_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "143",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_12_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_13_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_13_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_14_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_14_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_15_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "149",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_15_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_0_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "151",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_0_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_1_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "153",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_1_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_2_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "155",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_2_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_3_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "157",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_3_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_4_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "159",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_4_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_5_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "161",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_5_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_6_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "163",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_6_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_7_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "165",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_7_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_8_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "167",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_8_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_9_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "169",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_9_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_10_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "171",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_10_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_11_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_11_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_12_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_12_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_13_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_13_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_14_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_14_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableRx_15_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "SocketTableRx_15_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numberSockets_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "myIpAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "ureMetaData_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "ureMetaData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rthDropFifo_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11"],
		"CDFG" : "rxEngPacketDropper",
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
			{"Name" : "repdDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DataOutApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "repdDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repdDataOut_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repdDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repdDataOut_V_user", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_drop_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rthDropFifo_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "response_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirI", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myPort", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirP", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureDataPayload_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_repdDataOut_V_data_V_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_repdDataOut_V_keep_V_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_repdDataOut_V_dest_V_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_repdDataOut_V_last_V_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_repdDataOut_V_user_U", "Parent" : "6"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "appGetMetaData",
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
			{"Name" : "DataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DataInApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataIn_V_user", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "agmd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lenCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdIdOut_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdDataOut_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut_V_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_V_s_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.grp_keep2len_fu_113", "Parent" : "12",
		"CDFG" : "keep2len",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "keepValue_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txTableHandler_U0", "Parent" : "0", "Child" : ["15", "16", "17", "18"],
		"CDFG" : "txTableHandler",
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
			{"Name" : "SocketTableTx_0_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "88",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "90",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "96",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "98",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "100",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "102",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "104",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "106",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "108",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "110",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "112",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "114",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "116",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "118",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_0_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "120",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "122",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "124",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "126",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "128",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "130",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "132",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "134",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "136",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "138",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "140",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "142",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "148",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "150",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_0_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "152",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "154",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "156",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "158",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "160",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "162",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "164",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "166",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "168",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "170",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "172",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_0_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "agmdIdOut_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txthMetaData_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "txthMetaData_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txTableHandler_U0.udp_mux_164_32_1_1_U379", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txTableHandler_U0.udp_mux_164_16_1_1_U380", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txTableHandler_U0.udp_mux_164_16_1_1_U381", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.txTableHandler_U0.udp_mux_164_1_1_1_U382", "Parent" : "14"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0", "Parent" : "0", "Child" : ["20", "21", "22"],
		"CDFG" : "udpTxEngine",
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
			{"Name" : "DataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "txUdpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ute_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txthMetaData_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "txthMetaData_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut_V_s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_V_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "currMetaData_theirIP", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_theirPo", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myPort_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udp_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdDataOut_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "12", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_DataOut_V_data_V_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_DataOut_V_keep_V_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_DataOut_V_last_V_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_their_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_their_6_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_their_6_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_their_6_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_their_6_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_their_6_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_their_6_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_their_6_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_their_6_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_their_6_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_thei_6_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_thei_6_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_thei_6_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_thei_6_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_thei_6_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_thei_6_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_their_5_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_their_5_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_their_5_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_their_5_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_their_5_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_their_5_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_their_5_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_their_5_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_their_5_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_their_5_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_thei_5_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_thei_5_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_thei_5_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_thei_5_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_thei_5_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_thei_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_myPor_2_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_myPor_2_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_myPor_2_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_myPor_2_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_myPor_2_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_myPor_2_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_myPor_2_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_myPor_2_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_myPor_2_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_myPor_2_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_myPo_2_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_myPo_2_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_myPo_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_myPo_2_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_myPo_2_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_myPo_2_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_valid_1_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_valid_1_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_valid_1_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_valid_1_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_valid_1_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_valid_1_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_valid_1_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_valid_1_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_valid_1_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_valid_1_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_vali_1_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_vali_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_vali_1_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_vali_1_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_vali_1_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_vali_1_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_their_4_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_their_3_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_their_4_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_their_3_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_their_4_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_their_3_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_their_4_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_their_3_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_their_4_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_their_3_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_their_4_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_their_3_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_their_4_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_their_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_their_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_their_3_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_their_4_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_their_3_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_their_4_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_their_3_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_thei_4_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_thei_3_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_thei_4_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_thei_3_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_thei_4_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_thei_3_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_thei_4_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_thei_3_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_thei_4_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_thei_3_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_thei_4_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_thei_3_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_their_2_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_their_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_their_2_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_their_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_their_2_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_their_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_their_2_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_their_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_their_2_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_their_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_their_2_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_their_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_their_2_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_their_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_their_2_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_their_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_their_2_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_their_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_their_2_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_their_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_thei_2_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_thei_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_thei_2_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_thei_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_thei_2_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_thei_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_thei_2_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_thei_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_thei_2_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_thei_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_thei_2_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_thei_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_myPor_1_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_myPor_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_myPor_1_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_myPor_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_myPor_1_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_myPor_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_myPor_1_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_myPor_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_myPor_1_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_myPor_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_myPor_1_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_myPor_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_myPor_1_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_myPor_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_myPor_1_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_myPor_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_myPor_1_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_myPor_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_myPor_1_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_myPor_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_myPo_1_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_myPo_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_myPo_1_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_myPo_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_myPo_1_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_myPo_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_myPo_1_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_myPo_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_myPo_1_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_myPo_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_myPo_1_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_myPo_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_0_valid_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_1_valid_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_2_valid_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_3_valid_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_4_valid_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_5_valid_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_6_valid_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_7_valid_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_8_valid_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_9_valid_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_10_vali_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_11_vali_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_12_vali_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_13_vali_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_14_vali_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_15_vali_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ureMetaData_V_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ureDataPayload_V_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rthDropFifo_V_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.agmdIdOut_V_V_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.agmdDataOut_V_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.agmdpayloadLenOut_V_s_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txthMetaData_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udp {
		rxUdpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		txUdpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_data_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_dest_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_last_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_user {Type O LastRead -1 FirstWrite 1}
		DataInApp_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_dest_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_last_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_user {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_valid_V {Type I LastRead 0 FirstWrite -1}
		numberSockets_V {Type O LastRead -1 FirstWrite 2}
		ure_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		ureMetaData_V {Type IO LastRead -1 FirstWrite -1}
		ureDataPayload_V {Type IO LastRead -1 FirstWrite -1}
		rthDropFifo_V {Type IO LastRead -1 FirstWrite -1}
		repd_state {Type IO LastRead -1 FirstWrite -1}
		response_drop_V {Type IO LastRead -1 FirstWrite -1}
		response_id_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirI {Type IO LastRead -1 FirstWrite -1}
		response_user_myPort {Type IO LastRead -1 FirstWrite -1}
		response_user_theirP {Type IO LastRead -1 FirstWrite -1}
		agmd_state {Type IO LastRead -1 FirstWrite -1}
		lenCount_V {Type IO LastRead -1 FirstWrite -1}
		agmdIdOut_V_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut_V {Type IO LastRead -1 FirstWrite -1}
		agmdpayloadLenOut_V_s {Type IO LastRead -1 FirstWrite -1}
		txthMetaData_V {Type IO LastRead -1 FirstWrite -1}
		ute_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirIP {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirPo {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myPort_s {Type IO LastRead -1 FirstWrite -1}
		ip_len_V {Type IO LastRead -1 FirstWrite -1}
		udp_len_V {Type IO LastRead -1 FirstWrite -1}}
	udp_entry3 {
		SocketTable_0_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_valid_V_out {Type O LastRead -1 FirstWrite 0}}
	udp_entry266 {
		SocketTable_0_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_1_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_2_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_3_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_4_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_5_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_6_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_7_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_8_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_9_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_10_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_11_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_12_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_13_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_14_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_15_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTable_0_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_theirIP_V_out1 {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_theirIP_V_out2 {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_theirIP_V_out3 {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_theirIP_V_out4 {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_theirIP_V_out5 {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_theirIP_V_out6 {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_theirIP_V_out7 {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_theirIP_V_out8 {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_theirIP_V_out9 {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_theirIP_V_out10 {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_theirIP_V_out11 {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_theirIP_V_out12 {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_theirIP_V_out13 {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_theirIP_V_out14 {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_theirIP_V_out15 {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_theirIP_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_theirIP_V_out16 {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_theirPort_V_out17 {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_theirPort_V_out18 {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_theirPort_V_out19 {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_theirPort_V_out20 {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_theirPort_V_out21 {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_theirPort_V_out22 {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_theirPort_V_out23 {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_theirPort_V_out24 {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_theirPort_V_out25 {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_theirPort_V_out26 {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_theirPort_V_out27 {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_theirPort_V_out28 {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_theirPort_V_out29 {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_theirPort_V_out30 {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_theirPort_V_out31 {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_theirPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_theirPort_V_out32 {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_myPort_V_out33 {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_myPort_V_out34 {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_myPort_V_out35 {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_myPort_V_out36 {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_myPort_V_out37 {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_myPort_V_out38 {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_myPort_V_out39 {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_myPort_V_out40 {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_myPort_V_out41 {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_myPort_V_out42 {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_myPort_V_out43 {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_myPort_V_out44 {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_myPort_V_out45 {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_myPort_V_out46 {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_myPort_V_out47 {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_myPort_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_myPort_V_out48 {Type O LastRead -1 FirstWrite 0}
		SocketTable_0_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_1_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_2_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_3_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_4_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_5_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_6_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_7_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_8_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_9_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_10_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_11_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_12_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_13_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_14_valid_V_out {Type O LastRead -1 FirstWrite 0}
		SocketTable_15_valid_V_out {Type O LastRead -1 FirstWrite 0}}
	udpRxEngine {
		DataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		ure_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		ureMetaData_V {Type O LastRead -1 FirstWrite 1}
		ureDataPayload_V {Type O LastRead -1 FirstWrite 1}}
	rxTableHandler {
		SocketTableRx_0_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_1_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_2_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_3_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_4_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_5_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_6_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_7_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_8_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_9_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_10_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_11_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_12_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_13_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_14_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_15_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_0_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_1_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_2_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_3_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_4_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_5_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_6_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_7_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_8_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_9_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_10_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_11_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_12_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_13_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_14_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_15_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_0_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_1_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_2_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_3_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_4_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_5_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_6_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_7_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_8_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_9_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_10_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_11_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_12_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_13_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_14_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableRx_15_myPort_V {Type I LastRead 0 FirstWrite -1}
		numberSockets_V {Type O LastRead -1 FirstWrite 2}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		ureMetaData_V {Type I LastRead 0 FirstWrite -1}
		rthDropFifo_V {Type O LastRead -1 FirstWrite 2}}
	rxEngPacketDropper {
		repdDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_dest_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		repdDataOut_V_user {Type O LastRead -1 FirstWrite 1}
		repd_state {Type IO LastRead -1 FirstWrite -1}
		response_drop_V {Type IO LastRead -1 FirstWrite -1}
		rthDropFifo_V {Type I LastRead 0 FirstWrite -1}
		response_id_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirI {Type IO LastRead -1 FirstWrite -1}
		response_user_myPort {Type IO LastRead -1 FirstWrite -1}
		response_user_theirP {Type IO LastRead -1 FirstWrite -1}
		ureDataPayload_V {Type I LastRead 0 FirstWrite -1}}
	appGetMetaData {
		DataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_dest_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		DataIn_V_user {Type I LastRead 0 FirstWrite -1}
		agmd_state {Type IO LastRead -1 FirstWrite -1}
		lenCount_V {Type IO LastRead -1 FirstWrite -1}
		agmdIdOut_V_V {Type O LastRead -1 FirstWrite 1}
		agmdDataOut_V {Type O LastRead -1 FirstWrite 1}
		agmdpayloadLenOut_V_s {Type O LastRead -1 FirstWrite 1}}
	keep2len {
		keepValue_V {Type I LastRead 0 FirstWrite -1}}
	txTableHandler {
		SocketTableTx_0_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_1_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_2_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_3_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_4_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_5_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_6_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_7_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_8_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_9_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_10_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_11_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_12_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_13_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_14_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_15_theirIP_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_0_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_1_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_2_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_3_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_4_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_5_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_6_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_7_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_8_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_9_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_10_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_11_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_12_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_13_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_14_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_15_theirPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_0_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_1_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_2_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_3_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_4_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_5_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_6_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_7_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_8_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_9_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_10_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_11_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_12_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_13_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_14_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_15_myPort_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_0_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_1_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_2_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_3_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_4_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_5_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_6_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_7_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_8_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_9_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_10_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_11_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_12_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_13_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_14_valid_V {Type I LastRead 0 FirstWrite -1}
		SocketTableTx_15_valid_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress_V {Type I LastRead 0 FirstWrite -1}
		agmdIdOut_V_V {Type I LastRead 0 FirstWrite -1}
		txthMetaData_V {Type O LastRead -1 FirstWrite 1}}
	udpTxEngine {
		DataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		DataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		DataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		ute_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		txthMetaData_V {Type I LastRead 0 FirstWrite -1}
		agmdpayloadLenOut_V_s {Type I LastRead 0 FirstWrite -1}
		currMetaData_theirIP {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirPo {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myPort_s {Type IO LastRead -1 FirstWrite -1}
		ip_len_V {Type IO LastRead -1 FirstWrite -1}
		udp_len_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7", "Max" : "7"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rxUdpDataIn_V_data_V { axis {  { rxUdpDataIn_TDATA in_data 0 512 } } }
	rxUdpDataIn_V_keep_V { axis {  { rxUdpDataIn_TKEEP in_data 0 64 } } }
	rxUdpDataIn_V_last_V { axis {  { rxUdpDataIn_TLAST in_data 0 1 }  { rxUdpDataIn_TVALID in_vld 0 1 }  { rxUdpDataIn_TREADY in_acc 1 1 } } }
	txUdpDataOut_V_data_V { axis {  { txUdpDataOut_TDATA out_data 1 512 } } }
	txUdpDataOut_V_keep_V { axis {  { txUdpDataOut_TKEEP out_data 1 64 } } }
	txUdpDataOut_V_last_V { axis {  { txUdpDataOut_TLAST out_data 1 1 }  { txUdpDataOut_TVALID out_vld 1 1 }  { txUdpDataOut_TREADY out_acc 0 1 } } }
	DataOutApp_V_data_V { axis {  { DataOutApp_TDATA out_data 1 512 } } }
	DataOutApp_V_keep_V { axis {  { DataOutApp_TKEEP out_data 1 64 } } }
	DataOutApp_V_dest_V { axis {  { DataOutApp_TDEST out_data 1 16 } } }
	DataOutApp_V_last_V { axis {  { DataOutApp_TLAST out_data 1 1 } } }
	DataOutApp_V_user { axis {  { DataOutApp_TUSER out_data 1 96 }  { DataOutApp_TVALID out_vld 1 1 }  { DataOutApp_TREADY out_acc 0 1 } } }
	DataInApp_V_data_V { axis {  { DataInApp_TDATA in_data 0 512 } } }
	DataInApp_V_keep_V { axis {  { DataInApp_TKEEP in_data 0 64 } } }
	DataInApp_V_dest_V { axis {  { DataInApp_TDEST in_data 0 16 } } }
	DataInApp_V_last_V { axis {  { DataInApp_TLAST in_data 0 1 } } }
	DataInApp_V_user { axis {  { DataInApp_TUSER in_data 0 96 }  { DataInApp_TVALID in_vld 0 1 }  { DataInApp_TREADY in_acc 1 1 } } }
	myIpAddress_V { ap_stable {  { myIpAddress_V in_data 0 32 } } }
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
