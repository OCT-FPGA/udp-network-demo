set moduleName udp
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
set C_modelName {udp}
set C_modelType { void 0 }
set C_modelArgList {
	{ rxUdpDataIn_V_data_V int 512 regular {axi_s 0 volatile  { rxUdpDataIn Data } }  }
	{ rxUdpDataIn_V_keep_V int 64 regular {axi_s 0 volatile  { rxUdpDataIn Keep } }  }
	{ rxUdpDataIn_V_strb_V int 64 regular {axi_s 0 volatile  { rxUdpDataIn Strb } }  }
	{ rxUdpDataIn_V_last_V int 1 regular {axi_s 0 volatile  { rxUdpDataIn Last } }  }
	{ txUdpDataOut_V_data_V int 512 regular {axi_s 1 volatile  { txUdpDataOut Data } }  }
	{ txUdpDataOut_V_keep_V int 64 regular {axi_s 1 volatile  { txUdpDataOut Keep } }  }
	{ txUdpDataOut_V_strb_V int 64 regular {axi_s 1 volatile  { txUdpDataOut Strb } }  }
	{ txUdpDataOut_V_last_V int 1 regular {axi_s 1 volatile  { txUdpDataOut Last } }  }
	{ DataOutApp_V_data_V int 512 regular {axi_s 1 volatile  { DataOutApp Data } }  }
	{ DataOutApp_V_keep_V int 64 regular {axi_s 1 volatile  { DataOutApp Keep } }  }
	{ DataOutApp_V_strb_V int 64 regular {axi_s 1 volatile  { DataOutApp Strb } }  }
	{ DataOutApp_V_user_V int 96 regular {axi_s 1 volatile  { DataOutApp User } }  }
	{ DataOutApp_V_last_V int 1 regular {axi_s 1 volatile  { DataOutApp Last } }  }
	{ DataOutApp_V_dest_V int 16 regular {axi_s 1 volatile  { DataOutApp Dest } }  }
	{ DataInApp_V_data_V int 512 regular {axi_s 0 volatile  { DataInApp Data } }  }
	{ DataInApp_V_keep_V int 64 regular {axi_s 0 volatile  { DataInApp Keep } }  }
	{ DataInApp_V_strb_V int 64 regular {axi_s 0 volatile  { DataInApp Strb } }  }
	{ DataInApp_V_user_V int 96 regular {axi_s 0 volatile  { DataInApp User } }  }
	{ DataInApp_V_last_V int 1 regular {axi_s 0 volatile  { DataInApp Last } }  }
	{ DataInApp_V_dest_V int 16 regular {axi_s 0 volatile  { DataInApp Dest } }  }
	{ myIpAddress int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_0 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_1 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_2 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_3 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_4 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_5 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_6 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_7 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_8 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_9 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_10 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_11 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_12 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_13 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_14 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirIP_15 int 32 regular {axi_slave 0}  }
	{ SocketTable_theirPort_0 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_1 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_2 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_3 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_4 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_5 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_6 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_7 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_8 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_9 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_10 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_11 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_12 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_13 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_14 int 16 regular {axi_slave 0}  }
	{ SocketTable_theirPort_15 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_0 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_1 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_2 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_3 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_4 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_5 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_6 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_7 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_8 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_9 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_10 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_11 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_12 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_13 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_14 int 16 regular {axi_slave 0}  }
	{ SocketTable_myPort_15 int 16 regular {axi_slave 0}  }
	{ SocketTable_valid_0 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_1 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_2 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_3 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_4 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_5 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_6 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_7 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_8 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_9 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_10 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_11 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_12 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_13 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_14 int 1 regular {axi_slave 0}  }
	{ SocketTable_valid_15 int 1 regular {axi_slave 0}  }
	{ numberSockets int 16 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rxUdpDataIn_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "rxUdpDataIn_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rxUdpDataIn_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "rxUdpDataIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "txUdpDataOut_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txUdpDataOut_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txUdpDataOut_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "txUdpDataOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_user_V", "interface" : "axis", "bitwidth" : 96, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataOutApp_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "DataInApp_V_data_V", "interface" : "axis", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_keep_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_strb_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_user_V", "interface" : "axis", "bitwidth" : 96, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "DataInApp_V_dest_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_0", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "SocketTable_theirIP_1", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "SocketTable_theirIP_2", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "SocketTable_theirIP_3", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "SocketTable_theirIP_4", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "SocketTable_theirIP_5", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "SocketTable_theirIP_6", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "SocketTable_theirIP_7", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "SocketTable_theirIP_8", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "SocketTable_theirIP_9", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "SocketTable_theirIP_10", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "SocketTable_theirIP_11", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "SocketTable_theirIP_12", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "SocketTable_theirIP_13", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "SocketTable_theirIP_14", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "SocketTable_theirIP_15", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "SocketTable_theirPort_0", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "SocketTable_theirPort_1", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "SocketTable_theirPort_2", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "SocketTable_theirPort_3", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "SocketTable_theirPort_4", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "SocketTable_theirPort_5", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "SocketTable_theirPort_6", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "SocketTable_theirPort_7", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "SocketTable_theirPort_8", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} , 
 	{ "Name" : "SocketTable_theirPort_9", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":216}, "offset_end" : {"in":223}} , 
 	{ "Name" : "SocketTable_theirPort_10", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":224}, "offset_end" : {"in":231}} , 
 	{ "Name" : "SocketTable_theirPort_11", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":239}} , 
 	{ "Name" : "SocketTable_theirPort_12", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":240}, "offset_end" : {"in":247}} , 
 	{ "Name" : "SocketTable_theirPort_13", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":248}, "offset_end" : {"in":255}} , 
 	{ "Name" : "SocketTable_theirPort_14", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":263}} , 
 	{ "Name" : "SocketTable_theirPort_15", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":264}, "offset_end" : {"in":271}} , 
 	{ "Name" : "SocketTable_myPort_0", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":272}, "offset_end" : {"in":279}} , 
 	{ "Name" : "SocketTable_myPort_1", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":287}} , 
 	{ "Name" : "SocketTable_myPort_2", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":288}, "offset_end" : {"in":295}} , 
 	{ "Name" : "SocketTable_myPort_3", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":296}, "offset_end" : {"in":303}} , 
 	{ "Name" : "SocketTable_myPort_4", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":304}, "offset_end" : {"in":311}} , 
 	{ "Name" : "SocketTable_myPort_5", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":312}, "offset_end" : {"in":319}} , 
 	{ "Name" : "SocketTable_myPort_6", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":320}, "offset_end" : {"in":327}} , 
 	{ "Name" : "SocketTable_myPort_7", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":328}, "offset_end" : {"in":335}} , 
 	{ "Name" : "SocketTable_myPort_8", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":336}, "offset_end" : {"in":343}} , 
 	{ "Name" : "SocketTable_myPort_9", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":344}, "offset_end" : {"in":351}} , 
 	{ "Name" : "SocketTable_myPort_10", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":352}, "offset_end" : {"in":359}} , 
 	{ "Name" : "SocketTable_myPort_11", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":360}, "offset_end" : {"in":367}} , 
 	{ "Name" : "SocketTable_myPort_12", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":368}, "offset_end" : {"in":375}} , 
 	{ "Name" : "SocketTable_myPort_13", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":376}, "offset_end" : {"in":383}} , 
 	{ "Name" : "SocketTable_myPort_14", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":384}, "offset_end" : {"in":391}} , 
 	{ "Name" : "SocketTable_myPort_15", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":392}, "offset_end" : {"in":399}} , 
 	{ "Name" : "SocketTable_valid_0", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":400}, "offset_end" : {"in":407}} , 
 	{ "Name" : "SocketTable_valid_1", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":408}, "offset_end" : {"in":415}} , 
 	{ "Name" : "SocketTable_valid_2", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":416}, "offset_end" : {"in":423}} , 
 	{ "Name" : "SocketTable_valid_3", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":424}, "offset_end" : {"in":431}} , 
 	{ "Name" : "SocketTable_valid_4", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":432}, "offset_end" : {"in":439}} , 
 	{ "Name" : "SocketTable_valid_5", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":440}, "offset_end" : {"in":447}} , 
 	{ "Name" : "SocketTable_valid_6", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":448}, "offset_end" : {"in":455}} , 
 	{ "Name" : "SocketTable_valid_7", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":456}, "offset_end" : {"in":463}} , 
 	{ "Name" : "SocketTable_valid_8", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":464}, "offset_end" : {"in":471}} , 
 	{ "Name" : "SocketTable_valid_9", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":472}, "offset_end" : {"in":479}} , 
 	{ "Name" : "SocketTable_valid_10", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":480}, "offset_end" : {"in":487}} , 
 	{ "Name" : "SocketTable_valid_11", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":488}, "offset_end" : {"in":495}} , 
 	{ "Name" : "SocketTable_valid_12", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":496}, "offset_end" : {"in":503}} , 
 	{ "Name" : "SocketTable_valid_13", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":504}, "offset_end" : {"in":511}} , 
 	{ "Name" : "SocketTable_valid_14", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":512}, "offset_end" : {"in":519}} , 
 	{ "Name" : "SocketTable_valid_15", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":520}, "offset_end" : {"in":527}} , 
 	{ "Name" : "numberSockets", "interface" : "axi_slave", "bundle":"s_axilite","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "offset" : {"out":528}, "offset_end" : {"out":535}} ]}
# RTL Port declarations: 
set portNum 48
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
	{ rxUdpDataIn_TSTRB sc_in sc_lv 64 signal 2 } 
	{ rxUdpDataIn_TLAST sc_in sc_lv 1 signal 3 } 
	{ txUdpDataOut_TDATA sc_out sc_lv 512 signal 4 } 
	{ txUdpDataOut_TKEEP sc_out sc_lv 64 signal 5 } 
	{ txUdpDataOut_TSTRB sc_out sc_lv 64 signal 6 } 
	{ txUdpDataOut_TLAST sc_out sc_lv 1 signal 7 } 
	{ DataOutApp_TDATA sc_out sc_lv 512 signal 8 } 
	{ DataOutApp_TKEEP sc_out sc_lv 64 signal 9 } 
	{ DataOutApp_TSTRB sc_out sc_lv 64 signal 10 } 
	{ DataOutApp_TUSER sc_out sc_lv 96 signal 11 } 
	{ DataOutApp_TLAST sc_out sc_lv 1 signal 12 } 
	{ DataOutApp_TDEST sc_out sc_lv 16 signal 13 } 
	{ DataInApp_TDATA sc_in sc_lv 512 signal 14 } 
	{ DataInApp_TKEEP sc_in sc_lv 64 signal 15 } 
	{ DataInApp_TSTRB sc_in sc_lv 64 signal 16 } 
	{ DataInApp_TUSER sc_in sc_lv 96 signal 17 } 
	{ DataInApp_TLAST sc_in sc_lv 1 signal 18 } 
	{ DataInApp_TDEST sc_in sc_lv 16 signal 19 } 
	{ myIpAddress sc_in sc_lv 32 signal 20 } 
	{ rxUdpDataIn_TVALID sc_in sc_logic 1 invld 3 } 
	{ rxUdpDataIn_TREADY sc_out sc_logic 1 inacc 3 } 
	{ DataOutApp_TVALID sc_out sc_logic 1 outvld 13 } 
	{ DataOutApp_TREADY sc_in sc_logic 1 outacc 13 } 
	{ DataInApp_TVALID sc_in sc_logic 1 invld 19 } 
	{ DataInApp_TREADY sc_out sc_logic 1 inacc 19 } 
	{ txUdpDataOut_TVALID sc_out sc_logic 1 outvld 7 } 
	{ txUdpDataOut_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "s_axi_s_axilite_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWADDR" },"address":[{"name":"SocketTable_theirIP_0","role":"data","value":"16"},{"name":"SocketTable_theirIP_1","role":"data","value":"24"},{"name":"SocketTable_theirIP_2","role":"data","value":"32"},{"name":"SocketTable_theirIP_3","role":"data","value":"40"},{"name":"SocketTable_theirIP_4","role":"data","value":"48"},{"name":"SocketTable_theirIP_5","role":"data","value":"56"},{"name":"SocketTable_theirIP_6","role":"data","value":"64"},{"name":"SocketTable_theirIP_7","role":"data","value":"72"},{"name":"SocketTable_theirIP_8","role":"data","value":"80"},{"name":"SocketTable_theirIP_9","role":"data","value":"88"},{"name":"SocketTable_theirIP_10","role":"data","value":"96"},{"name":"SocketTable_theirIP_11","role":"data","value":"104"},{"name":"SocketTable_theirIP_12","role":"data","value":"112"},{"name":"SocketTable_theirIP_13","role":"data","value":"120"},{"name":"SocketTable_theirIP_14","role":"data","value":"128"},{"name":"SocketTable_theirIP_15","role":"data","value":"136"},{"name":"SocketTable_theirPort_0","role":"data","value":"144"},{"name":"SocketTable_theirPort_1","role":"data","value":"152"},{"name":"SocketTable_theirPort_2","role":"data","value":"160"},{"name":"SocketTable_theirPort_3","role":"data","value":"168"},{"name":"SocketTable_theirPort_4","role":"data","value":"176"},{"name":"SocketTable_theirPort_5","role":"data","value":"184"},{"name":"SocketTable_theirPort_6","role":"data","value":"192"},{"name":"SocketTable_theirPort_7","role":"data","value":"200"},{"name":"SocketTable_theirPort_8","role":"data","value":"208"},{"name":"SocketTable_theirPort_9","role":"data","value":"216"},{"name":"SocketTable_theirPort_10","role":"data","value":"224"},{"name":"SocketTable_theirPort_11","role":"data","value":"232"},{"name":"SocketTable_theirPort_12","role":"data","value":"240"},{"name":"SocketTable_theirPort_13","role":"data","value":"248"},{"name":"SocketTable_theirPort_14","role":"data","value":"256"},{"name":"SocketTable_theirPort_15","role":"data","value":"264"},{"name":"SocketTable_myPort_0","role":"data","value":"272"},{"name":"SocketTable_myPort_1","role":"data","value":"280"},{"name":"SocketTable_myPort_2","role":"data","value":"288"},{"name":"SocketTable_myPort_3","role":"data","value":"296"},{"name":"SocketTable_myPort_4","role":"data","value":"304"},{"name":"SocketTable_myPort_5","role":"data","value":"312"},{"name":"SocketTable_myPort_6","role":"data","value":"320"},{"name":"SocketTable_myPort_7","role":"data","value":"328"},{"name":"SocketTable_myPort_8","role":"data","value":"336"},{"name":"SocketTable_myPort_9","role":"data","value":"344"},{"name":"SocketTable_myPort_10","role":"data","value":"352"},{"name":"SocketTable_myPort_11","role":"data","value":"360"},{"name":"SocketTable_myPort_12","role":"data","value":"368"},{"name":"SocketTable_myPort_13","role":"data","value":"376"},{"name":"SocketTable_myPort_14","role":"data","value":"384"},{"name":"SocketTable_myPort_15","role":"data","value":"392"},{"name":"SocketTable_valid_0","role":"data","value":"400"},{"name":"SocketTable_valid_1","role":"data","value":"408"},{"name":"SocketTable_valid_2","role":"data","value":"416"},{"name":"SocketTable_valid_3","role":"data","value":"424"},{"name":"SocketTable_valid_4","role":"data","value":"432"},{"name":"SocketTable_valid_5","role":"data","value":"440"},{"name":"SocketTable_valid_6","role":"data","value":"448"},{"name":"SocketTable_valid_7","role":"data","value":"456"},{"name":"SocketTable_valid_8","role":"data","value":"464"},{"name":"SocketTable_valid_9","role":"data","value":"472"},{"name":"SocketTable_valid_10","role":"data","value":"480"},{"name":"SocketTable_valid_11","role":"data","value":"488"},{"name":"SocketTable_valid_12","role":"data","value":"496"},{"name":"SocketTable_valid_13","role":"data","value":"504"},{"name":"SocketTable_valid_14","role":"data","value":"512"},{"name":"SocketTable_valid_15","role":"data","value":"520"}] },
	{ "name": "s_axi_s_axilite_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWVALID" } },
	{ "name": "s_axi_s_axilite_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "AWREADY" } },
	{ "name": "s_axi_s_axilite_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WVALID" } },
	{ "name": "s_axi_s_axilite_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axilite", "role": "WREADY" } },
	{ "name": "s_axi_s_axilite_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axilite", "role": "WDATA" } },
	{ "name": "s_axi_s_axilite_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axilite", "role": "WSTRB" } },
	{ "name": "s_axi_s_axilite_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_axilite", "role": "ARADDR" },"address":[{"name":"numberSockets","role":"data","value":"528"}, {"name":"numberSockets","role":"valid","value":"532","valid_bit":"0"}] },
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
 	{ "name": "rxUdpDataIn_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rxUdpDataIn_V_strb_V", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rxUdpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "txUdpDataOut_V_data_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txUdpDataOut_V_keep_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "txUdpDataOut_V_strb_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataOutApp_V_data_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataOutApp_V_keep_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataOutApp_V_strb_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataOutApp_V_user_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataOutApp_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataInApp_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "DataInApp_V_data_V", "role": "default" }} , 
 	{ "name": "DataInApp_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataInApp_V_keep_V", "role": "default" }} , 
 	{ "name": "DataInApp_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "DataInApp_V_strb_V", "role": "default" }} , 
 	{ "name": "DataInApp_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":96, "type": "signal", "bundle":{"name": "DataInApp_V_user_V", "role": "default" }} , 
 	{ "name": "DataInApp_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "DataInApp_V_last_V", "role": "default" }} , 
 	{ "name": "DataInApp_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rxUdpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "rxUdpDataIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rxUdpDataIn_V_last_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataOutApp_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "DataOutApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataInApp_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }} , 
 	{ "name": "DataInApp_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "DataInApp_V_dest_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }} , 
 	{ "name": "txUdpDataOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "txUdpDataOut_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "8", "9", "16", "24", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "udp",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
			{"ID" : "2", "Name" : "entry_proc_U0"},
			{"ID" : "3", "Name" : "udpRxEngine_U0"},
			{"ID" : "16", "Name" : "appGetMetaData_U0"}],
		"OutputProcess" : [
			{"ID" : "8", "Name" : "TableHandler_U0"},
			{"ID" : "9", "Name" : "rxEngPacketDropper_U0"},
			{"ID" : "24", "Name" : "udpTxEngine_U0"}],
		"Port" : [
			{"Name" : "rxUdpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "rxUdpDataIn_V_data_V"}]},
			{"Name" : "rxUdpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "rxUdpDataIn_V_keep_V"}]},
			{"Name" : "rxUdpDataIn_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "rxUdpDataIn_V_strb_V"}]},
			{"Name" : "rxUdpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "rxUdpDataIn_V_last_V"}]},
			{"Name" : "txUdpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "txUdpDataOut_V_data_V"}]},
			{"Name" : "txUdpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "txUdpDataOut_V_keep_V"}]},
			{"Name" : "txUdpDataOut_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "txUdpDataOut_V_strb_V"}]},
			{"Name" : "txUdpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "txUdpDataOut_V_last_V"}]},
			{"Name" : "DataOutApp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "DataOutApp_V_data_V"}]},
			{"Name" : "DataOutApp_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "DataOutApp_V_keep_V"}]},
			{"Name" : "DataOutApp_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "DataOutApp_V_strb_V"}]},
			{"Name" : "DataOutApp_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "DataOutApp_V_user_V"}]},
			{"Name" : "DataOutApp_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "DataOutApp_V_last_V"}]},
			{"Name" : "DataOutApp_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "DataOutApp_V_dest_V"}]},
			{"Name" : "DataInApp_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "DataInApp_V_data_V"}]},
			{"Name" : "DataInApp_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "DataInApp_V_keep_V"}]},
			{"Name" : "DataInApp_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "DataInApp_V_strb_V"}]},
			{"Name" : "DataInApp_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "DataInApp_V_user_V"}]},
			{"Name" : "DataInApp_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "DataInApp_V_last_V"}]},
			{"Name" : "DataInApp_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "DataInApp_V_dest_V"}]},
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "myIpAddress"}]},
			{"Name" : "SocketTable_theirIP_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_0"}]},
			{"Name" : "SocketTable_theirIP_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_1"}]},
			{"Name" : "SocketTable_theirIP_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_2"}]},
			{"Name" : "SocketTable_theirIP_3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_3"}]},
			{"Name" : "SocketTable_theirIP_4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_4"}]},
			{"Name" : "SocketTable_theirIP_5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_5"}]},
			{"Name" : "SocketTable_theirIP_6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_6"}]},
			{"Name" : "SocketTable_theirIP_7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_7"}]},
			{"Name" : "SocketTable_theirIP_8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_8"}]},
			{"Name" : "SocketTable_theirIP_9", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_9"}]},
			{"Name" : "SocketTable_theirIP_10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_10"}]},
			{"Name" : "SocketTable_theirIP_11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_11"}]},
			{"Name" : "SocketTable_theirIP_12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_12"}]},
			{"Name" : "SocketTable_theirIP_13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_13"}]},
			{"Name" : "SocketTable_theirIP_14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_14"}]},
			{"Name" : "SocketTable_theirIP_15", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirIP_15"}]},
			{"Name" : "SocketTable_theirPort_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_0"}]},
			{"Name" : "SocketTable_theirPort_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_1"}]},
			{"Name" : "SocketTable_theirPort_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_2"}]},
			{"Name" : "SocketTable_theirPort_3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_3"}]},
			{"Name" : "SocketTable_theirPort_4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_4"}]},
			{"Name" : "SocketTable_theirPort_5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_5"}]},
			{"Name" : "SocketTable_theirPort_6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_6"}]},
			{"Name" : "SocketTable_theirPort_7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_7"}]},
			{"Name" : "SocketTable_theirPort_8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_8"}]},
			{"Name" : "SocketTable_theirPort_9", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_9"}]},
			{"Name" : "SocketTable_theirPort_10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_10"}]},
			{"Name" : "SocketTable_theirPort_11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_11"}]},
			{"Name" : "SocketTable_theirPort_12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_12"}]},
			{"Name" : "SocketTable_theirPort_13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_13"}]},
			{"Name" : "SocketTable_theirPort_14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_14"}]},
			{"Name" : "SocketTable_theirPort_15", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_theirPort_15"}]},
			{"Name" : "SocketTable_myPort_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_0"}]},
			{"Name" : "SocketTable_myPort_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_1"}]},
			{"Name" : "SocketTable_myPort_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_2"}]},
			{"Name" : "SocketTable_myPort_3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_3"}]},
			{"Name" : "SocketTable_myPort_4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_4"}]},
			{"Name" : "SocketTable_myPort_5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_5"}]},
			{"Name" : "SocketTable_myPort_6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_6"}]},
			{"Name" : "SocketTable_myPort_7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_7"}]},
			{"Name" : "SocketTable_myPort_8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_8"}]},
			{"Name" : "SocketTable_myPort_9", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_9"}]},
			{"Name" : "SocketTable_myPort_10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_10"}]},
			{"Name" : "SocketTable_myPort_11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_11"}]},
			{"Name" : "SocketTable_myPort_12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_12"}]},
			{"Name" : "SocketTable_myPort_13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_13"}]},
			{"Name" : "SocketTable_myPort_14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_14"}]},
			{"Name" : "SocketTable_myPort_15", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_myPort_15"}]},
			{"Name" : "SocketTable_valid_0", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_0"}]},
			{"Name" : "SocketTable_valid_1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_1"}]},
			{"Name" : "SocketTable_valid_2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_2"}]},
			{"Name" : "SocketTable_valid_3", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_3"}]},
			{"Name" : "SocketTable_valid_4", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_4"}]},
			{"Name" : "SocketTable_valid_5", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_5"}]},
			{"Name" : "SocketTable_valid_6", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_6"}]},
			{"Name" : "SocketTable_valid_7", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_7"}]},
			{"Name" : "SocketTable_valid_8", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_8"}]},
			{"Name" : "SocketTable_valid_9", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_9"}]},
			{"Name" : "SocketTable_valid_10", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_10"}]},
			{"Name" : "SocketTable_valid_11", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_11"}]},
			{"Name" : "SocketTable_valid_12", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_12"}]},
			{"Name" : "SocketTable_valid_13", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_13"}]},
			{"Name" : "SocketTable_valid_14", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_14"}]},
			{"Name" : "SocketTable_valid_15", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "entry_proc_U0", "Port" : "SocketTable_valid_15"}]},
			{"Name" : "numberSockets", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "TableHandler_U0", "Port" : "numberSockets"}]},
			{"Name" : "ure_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "ure_state"}]},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "prevWord_data_V_1"}]},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "prevWord_keep_V_1"}]},
			{"Name" : "ureMetaData", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "ureMetaData"},
					{"ID" : "8", "SubInstance" : "TableHandler_U0", "Port" : "ureMetaData"}]},
			{"Name" : "ureDataPayload", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "udpRxEngine_U0", "Port" : "ureDataPayload"},
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "ureDataPayload"}]},
			{"Name" : "rthDropFifo", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "rthDropFifo"},
					{"ID" : "8", "SubInstance" : "TableHandler_U0", "Port" : "rthDropFifo"}]},
			{"Name" : "agmdIdOut", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "agmdIdOut"},
					{"ID" : "8", "SubInstance" : "TableHandler_U0", "Port" : "agmdIdOut"}]},
			{"Name" : "txthMetaData", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "TableHandler_U0", "Port" : "txthMetaData"},
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "txthMetaData"}]},
			{"Name" : "repd_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "repd_state"}]},
			{"Name" : "response_drop_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_drop_V"}]},
			{"Name" : "response_id_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_id_V"}]},
			{"Name" : "response_user_myIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_myIP_V"}]},
			{"Name" : "response_user_theirIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_theirIP_V"}]},
			{"Name" : "response_user_myPort_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_myPort_V"}]},
			{"Name" : "response_user_theirPort_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "rxEngPacketDropper_U0", "Port" : "response_user_theirPort_V"}]},
			{"Name" : "agmd_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "agmd_state"}]},
			{"Name" : "lenCount_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "lenCount_V"}]},
			{"Name" : "agmdDataOut", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "agmdDataOut"},
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "agmdDataOut"}]},
			{"Name" : "agmdpayloadLenOut", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "appGetMetaData_U0", "Port" : "agmdpayloadLenOut"},
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "agmdpayloadLenOut"}]},
			{"Name" : "ute_state", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "ute_state"}]},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "prevWord_data_V"}]},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "prevWord_keep_V"}]},
			{"Name" : "currMetaData_theirIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_theirIP_V"}]},
			{"Name" : "currMetaData_myIP_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_myIP_V"}]},
			{"Name" : "currMetaData_theirPort_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_theirPort_V"}]},
			{"Name" : "currMetaData_myPort_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "currMetaData_myPort_V"}]},
			{"Name" : "ip_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "ip_len_V"}]},
			{"Name" : "udp_len_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "udpTxEngine_U0", "Port" : "udp_len_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_axilite_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_15", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpRxEngine_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "udpRxEngine",
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
		"Port" : [
			{"Name" : "rxUdpDataIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rxUdpDataIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rxUdpDataIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rxUdpDataIn_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rxUdpDataIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "ure_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureMetaData", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "94", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ureMetaData_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ureDataPayload", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "95", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpRxEngine_U0.regslice_both_rxUdpDataIn_V_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpRxEngine_U0.regslice_both_rxUdpDataIn_V_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpRxEngine_U0.regslice_both_rxUdpDataIn_V_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpRxEngine_U0.regslice_both_rxUdpDataIn_V_last_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.TableHandler_U0", "Parent" : "0",
		"CDFG" : "TableHandler",
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
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "48", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "49", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "50", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "51", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "52", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "53", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "54", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "55", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "56", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "57", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "58", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "59", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "60", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "61", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "62", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "63", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "64", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "65", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "66", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "67", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "84", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "85", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "88", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "numberSockets", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "ureMetaData", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "94", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ureMetaData_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rthDropFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "96", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdIdOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "97", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txthMetaData", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "98", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txthMetaData_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15"],
		"CDFG" : "rxEngPacketDropper",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_rxEngPacketDropper_U0_U",
		"Port" : [
			{"Name" : "DataOutApp_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "DataOutApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataOutApp_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "DataOutApp_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "repd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_drop_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "rthDropFifo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "96", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "response_id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_myPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "response_user_theirPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ureDataPayload", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "95", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ureDataPayload_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_DataOutApp_V_data_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_DataOutApp_V_keep_V_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_DataOutApp_V_strb_V_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_DataOutApp_V_user_V_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_DataOutApp_V_last_V_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rxEngPacketDropper_U0.regslice_both_DataOutApp_V_dest_V_U", "Parent" : "9"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "appGetMetaData",
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
		"Port" : [
			{"Name" : "DataInApp_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "DataInApp_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "DataInApp_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "DataInApp_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "agmd_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lenCount_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdDataOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "99", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdIdOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "97", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "24", "DependentChan" : "100", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.grp_keep2len_fu_121", "Parent" : "16",
		"CDFG" : "keep2len",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
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
			{"Name" : "keepValue", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.regslice_both_DataInApp_V_data_V_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.regslice_both_DataInApp_V_keep_V_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.regslice_both_DataInApp_V_strb_V_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.regslice_both_DataInApp_V_user_V_U", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.regslice_both_DataInApp_V_last_V_U", "Parent" : "16"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.appGetMetaData_U0.regslice_both_DataInApp_V_dest_V_U", "Parent" : "16"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0", "Parent" : "0", "Child" : ["25", "26", "27", "28"],
		"CDFG" : "udpTxEngine",
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
		"StartSource" : "16",
		"StartFifo" : "start_for_udpTxEngine_U0_U",
		"Port" : [
			{"Name" : "txUdpDataOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "txUdpDataOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txUdpDataOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "txUdpDataOut_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "txUdpDataOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "ute_state", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "prevWord_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "txthMetaData", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "98", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txthMetaData_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdpayloadLenOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "100", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdpayloadLenOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "currMetaData_theirIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myIP_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_theirPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "currMetaData_myPort_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ip_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "udp_len_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "agmdDataOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "99", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdDataOut_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_txUdpDataOut_V_data_V_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_txUdpDataOut_V_keep_V_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_txUdpDataOut_V_strb_V_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.udpTxEngine_U0.regslice_both_txUdpDataOut_V_last_V_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.myIpAddress_c_channel_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_0_c_channel_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_1_c_channel_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_2_c_channel_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_3_c_channel_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_4_c_channel_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_5_c_channel_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_6_c_channel_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_7_c_channel_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_8_c_channel_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_9_c_channel_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_10_c_channel_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_11_c_channel_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_12_c_channel_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_13_c_channel_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_14_c_channel_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirIP_15_c_channel_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_0_c_channel_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_1_c_channel_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_2_c_channel_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_3_c_channel_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_4_c_channel_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_5_c_channel_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_6_c_channel_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_7_c_channel_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_8_c_channel_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_9_c_channel_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_10_c_channel_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_11_c_channel_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_12_c_channel_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_13_c_channel_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_14_c_channel_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_theirPort_15_c_channel_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_0_c_channel_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_1_c_channel_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_2_c_channel_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_3_c_channel_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_4_c_channel_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_5_c_channel_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_6_c_channel_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_7_c_channel_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_8_c_channel_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_9_c_channel_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_10_c_channel_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_11_c_channel_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_12_c_channel_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_13_c_channel_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_14_c_channel_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_myPort_15_c_channel_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_0_c_channel_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_1_c_channel_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_2_c_channel_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_3_c_channel_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_4_c_channel_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_5_c_channel_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_6_c_channel_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_7_c_channel_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_8_c_channel_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_9_c_channel_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_10_c_channel_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_11_c_channel_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_12_c_channel_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_13_c_channel_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_14_c_channel_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SocketTable_valid_15_c_channel_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ureMetaData_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ureDataPayload_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rthDropFifo_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.agmdIdOut_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.txthMetaData_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.agmdDataOut_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.agmdpayloadLenOut_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_rxEngPacketDropper_U0_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_udpTxEngine_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	udp {
		rxUdpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		txUdpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_data_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_user_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_last_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_dest_V {Type O LastRead -1 FirstWrite 1}
		DataInApp_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_strb_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_user_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_last_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_dest_V {Type I LastRead 0 FirstWrite -1}
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_15 {Type I LastRead 0 FirstWrite -1}
		numberSockets {Type O LastRead -1 FirstWrite 2}
		ure_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		ureMetaData {Type IO LastRead -1 FirstWrite -1}
		ureDataPayload {Type IO LastRead -1 FirstWrite -1}
		rthDropFifo {Type IO LastRead -1 FirstWrite -1}
		agmdIdOut {Type IO LastRead -1 FirstWrite -1}
		txthMetaData {Type IO LastRead -1 FirstWrite -1}
		repd_state {Type IO LastRead -1 FirstWrite -1}
		response_drop_V {Type IO LastRead -1 FirstWrite -1}
		response_id_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myPort_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		agmd_state {Type IO LastRead -1 FirstWrite -1}
		lenCount_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut {Type IO LastRead -1 FirstWrite -1}
		agmdpayloadLenOut {Type IO LastRead -1 FirstWrite -1}
		ute_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myPort_V {Type IO LastRead -1 FirstWrite -1}
		ip_len_V {Type IO LastRead -1 FirstWrite -1}
		udp_len_V {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_15 {Type I LastRead 0 FirstWrite -1}}
	udpRxEngine {
		rxUdpDataIn_V_data_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rxUdpDataIn_V_last_V {Type I LastRead 0 FirstWrite -1}
		ure_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V_1 {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V_1 {Type IO LastRead -1 FirstWrite -1}
		ureMetaData {Type O LastRead -1 FirstWrite 1}
		ureDataPayload {Type O LastRead -1 FirstWrite 1}}
	TableHandler {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		numberSockets {Type O LastRead -1 FirstWrite 2}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		ureMetaData {Type I LastRead 0 FirstWrite -1}
		rthDropFifo {Type O LastRead -1 FirstWrite 2}
		agmdIdOut {Type I LastRead 0 FirstWrite -1}
		txthMetaData {Type O LastRead -1 FirstWrite 1}}
	rxEngPacketDropper {
		DataOutApp_V_data_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_keep_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_strb_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_user_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_last_V {Type O LastRead -1 FirstWrite 1}
		DataOutApp_V_dest_V {Type O LastRead -1 FirstWrite 1}
		repd_state {Type IO LastRead -1 FirstWrite -1}
		response_drop_V {Type IO LastRead -1 FirstWrite -1}
		rthDropFifo {Type I LastRead 0 FirstWrite -1}
		response_id_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirIP_V {Type IO LastRead -1 FirstWrite -1}
		response_user_myPort_V {Type IO LastRead -1 FirstWrite -1}
		response_user_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		ureDataPayload {Type I LastRead 0 FirstWrite -1}}
	appGetMetaData {
		DataInApp_V_data_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_keep_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_strb_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_user_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_last_V {Type I LastRead 0 FirstWrite -1}
		DataInApp_V_dest_V {Type I LastRead 0 FirstWrite -1}
		agmd_state {Type IO LastRead -1 FirstWrite -1}
		lenCount_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut {Type O LastRead 0 FirstWrite 0}
		agmdIdOut {Type O LastRead -1 FirstWrite 1}
		agmdpayloadLenOut {Type O LastRead -1 FirstWrite 1}}
	keep2len {
		keepValue {Type I LastRead 0 FirstWrite -1}}
	udpTxEngine {
		txUdpDataOut_V_data_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_keep_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_strb_V {Type O LastRead -1 FirstWrite 1}
		txUdpDataOut_V_last_V {Type O LastRead -1 FirstWrite 1}
		ute_state {Type IO LastRead -1 FirstWrite -1}
		prevWord_data_V {Type IO LastRead -1 FirstWrite -1}
		prevWord_keep_V {Type IO LastRead -1 FirstWrite -1}
		txthMetaData {Type I LastRead 0 FirstWrite -1}
		agmdpayloadLenOut {Type I LastRead 0 FirstWrite -1}
		currMetaData_theirIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myIP_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_theirPort_V {Type IO LastRead -1 FirstWrite -1}
		currMetaData_myPort_V {Type IO LastRead -1 FirstWrite -1}
		ip_len_V {Type IO LastRead -1 FirstWrite -1}
		udp_len_V {Type IO LastRead -1 FirstWrite -1}
		agmdDataOut {Type I LastRead 0 FirstWrite -1}}}

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
	rxUdpDataIn_V_strb_V { axis {  { rxUdpDataIn_TSTRB in_data 0 64 } } }
	rxUdpDataIn_V_last_V { axis {  { rxUdpDataIn_TLAST in_data 0 1 }  { rxUdpDataIn_TVALID in_vld 0 1 }  { rxUdpDataIn_TREADY in_acc 1 1 } } }
	txUdpDataOut_V_data_V { axis {  { txUdpDataOut_TDATA out_data 1 512 } } }
	txUdpDataOut_V_keep_V { axis {  { txUdpDataOut_TKEEP out_data 1 64 } } }
	txUdpDataOut_V_strb_V { axis {  { txUdpDataOut_TSTRB out_data 1 64 } } }
	txUdpDataOut_V_last_V { axis {  { txUdpDataOut_TLAST out_data 1 1 }  { txUdpDataOut_TVALID out_vld 1 1 }  { txUdpDataOut_TREADY out_acc 0 1 } } }
	DataOutApp_V_data_V { axis {  { DataOutApp_TDATA out_data 1 512 } } }
	DataOutApp_V_keep_V { axis {  { DataOutApp_TKEEP out_data 1 64 } } }
	DataOutApp_V_strb_V { axis {  { DataOutApp_TSTRB out_data 1 64 } } }
	DataOutApp_V_user_V { axis {  { DataOutApp_TUSER out_data 1 96 } } }
	DataOutApp_V_last_V { axis {  { DataOutApp_TLAST out_data 1 1 } } }
	DataOutApp_V_dest_V { axis {  { DataOutApp_TDEST out_data 1 16 }  { DataOutApp_TVALID out_vld 1 1 }  { DataOutApp_TREADY out_acc 0 1 } } }
	DataInApp_V_data_V { axis {  { DataInApp_TDATA in_data 0 512 } } }
	DataInApp_V_keep_V { axis {  { DataInApp_TKEEP in_data 0 64 } } }
	DataInApp_V_strb_V { axis {  { DataInApp_TSTRB in_data 0 64 } } }
	DataInApp_V_user_V { axis {  { DataInApp_TUSER in_data 0 96 } } }
	DataInApp_V_last_V { axis {  { DataInApp_TLAST in_data 0 1 } } }
	DataInApp_V_dest_V { axis {  { DataInApp_TDEST in_data 0 16 }  { DataInApp_TVALID in_vld 0 1 }  { DataInApp_TREADY in_acc 1 1 } } }
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
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
