set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {entry_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ myIpAddress int 32 regular {pointer 0}  }
	{ myIpAddress_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_0 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_0_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_1 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_1_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_2 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_2_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_3 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_3_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_4 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_4_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_5 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_5_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_6 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_6_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_7 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_7_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_8 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_8_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_9 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_9_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_10 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_10_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_11 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_11_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_12 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_12_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_13 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_13_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_14 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_14_c int 32 regular {fifo 1}  }
	{ SocketTable_theirIP_15 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_15_c int 32 regular {fifo 1}  }
	{ SocketTable_theirPort_0 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_0_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_1 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_1_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_2 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_2_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_3 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_3_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_4 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_4_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_5 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_5_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_6 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_6_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_7 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_7_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_8 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_8_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_9 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_9_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_10 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_10_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_11 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_11_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_12 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_12_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_13 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_13_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_14 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_14_c int 16 regular {fifo 1}  }
	{ SocketTable_theirPort_15 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_15_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_0 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_0_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_1 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_1_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_2 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_2_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_3 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_3_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_4 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_4_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_5 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_5_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_6 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_6_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_7 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_7_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_8 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_8_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_9 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_9_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_10 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_10_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_11 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_11_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_12 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_12_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_13 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_13_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_14 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_14_c int 16 regular {fifo 1}  }
	{ SocketTable_myPort_15 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_15_c int 16 regular {fifo 1}  }
	{ SocketTable_valid_0 int 1 regular {pointer 0}  }
	{ SocketTable_valid_0_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_1 int 1 regular {pointer 0}  }
	{ SocketTable_valid_1_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_2 int 1 regular {pointer 0}  }
	{ SocketTable_valid_2_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_3 int 1 regular {pointer 0}  }
	{ SocketTable_valid_3_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_4 int 1 regular {pointer 0}  }
	{ SocketTable_valid_4_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_5 int 1 regular {pointer 0}  }
	{ SocketTable_valid_5_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_6 int 1 regular {pointer 0}  }
	{ SocketTable_valid_6_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_7 int 1 regular {pointer 0}  }
	{ SocketTable_valid_7_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_8 int 1 regular {pointer 0}  }
	{ SocketTable_valid_8_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_9 int 1 regular {pointer 0}  }
	{ SocketTable_valid_9_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_10 int 1 regular {pointer 0}  }
	{ SocketTable_valid_10_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_11 int 1 regular {pointer 0}  }
	{ SocketTable_valid_11_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_12 int 1 regular {pointer 0}  }
	{ SocketTable_valid_12_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_13 int 1 regular {pointer 0}  }
	{ SocketTable_valid_13_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_14 int 1 regular {pointer 0}  }
	{ SocketTable_valid_14_c int 1 regular {fifo 1}  }
	{ SocketTable_valid_15 int 1 regular {pointer 0}  }
	{ SocketTable_valid_15_c int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_0_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_1_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_2_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_3_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_4_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_5_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_6_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_7_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_8_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_9_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_10_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_11_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_12_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_13_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_14_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirIP_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_15_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_0_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_1_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_2_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_3_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_4_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_5_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_6_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_7_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_8_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_9_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_10_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_11_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_12_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_13_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_14_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_theirPort_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_15_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_0_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_1_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_2_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_3_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_4_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_5_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_6_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_7_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_8_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_9_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_10_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_11_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_12_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_13_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_14_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_myPort_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_15_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_0_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_1_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_2_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_3_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_4_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_5_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_6_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_7_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_8_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_9", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_9_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_10_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_11", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_11_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_12_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_13", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_13_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_14", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_14_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "SocketTable_valid_15", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_15_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 270
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ myIpAddress sc_in sc_lv 32 signal 0 } 
	{ myIpAddress_c_din sc_out sc_lv 32 signal 1 } 
	{ myIpAddress_c_full_n sc_in sc_logic 1 signal 1 } 
	{ myIpAddress_c_write sc_out sc_logic 1 signal 1 } 
	{ SocketTable_theirIP_0 sc_in sc_lv 32 signal 2 } 
	{ SocketTable_theirIP_0_c_din sc_out sc_lv 32 signal 3 } 
	{ SocketTable_theirIP_0_c_full_n sc_in sc_logic 1 signal 3 } 
	{ SocketTable_theirIP_0_c_write sc_out sc_logic 1 signal 3 } 
	{ SocketTable_theirIP_1 sc_in sc_lv 32 signal 4 } 
	{ SocketTable_theirIP_1_c_din sc_out sc_lv 32 signal 5 } 
	{ SocketTable_theirIP_1_c_full_n sc_in sc_logic 1 signal 5 } 
	{ SocketTable_theirIP_1_c_write sc_out sc_logic 1 signal 5 } 
	{ SocketTable_theirIP_2 sc_in sc_lv 32 signal 6 } 
	{ SocketTable_theirIP_2_c_din sc_out sc_lv 32 signal 7 } 
	{ SocketTable_theirIP_2_c_full_n sc_in sc_logic 1 signal 7 } 
	{ SocketTable_theirIP_2_c_write sc_out sc_logic 1 signal 7 } 
	{ SocketTable_theirIP_3 sc_in sc_lv 32 signal 8 } 
	{ SocketTable_theirIP_3_c_din sc_out sc_lv 32 signal 9 } 
	{ SocketTable_theirIP_3_c_full_n sc_in sc_logic 1 signal 9 } 
	{ SocketTable_theirIP_3_c_write sc_out sc_logic 1 signal 9 } 
	{ SocketTable_theirIP_4 sc_in sc_lv 32 signal 10 } 
	{ SocketTable_theirIP_4_c_din sc_out sc_lv 32 signal 11 } 
	{ SocketTable_theirIP_4_c_full_n sc_in sc_logic 1 signal 11 } 
	{ SocketTable_theirIP_4_c_write sc_out sc_logic 1 signal 11 } 
	{ SocketTable_theirIP_5 sc_in sc_lv 32 signal 12 } 
	{ SocketTable_theirIP_5_c_din sc_out sc_lv 32 signal 13 } 
	{ SocketTable_theirIP_5_c_full_n sc_in sc_logic 1 signal 13 } 
	{ SocketTable_theirIP_5_c_write sc_out sc_logic 1 signal 13 } 
	{ SocketTable_theirIP_6 sc_in sc_lv 32 signal 14 } 
	{ SocketTable_theirIP_6_c_din sc_out sc_lv 32 signal 15 } 
	{ SocketTable_theirIP_6_c_full_n sc_in sc_logic 1 signal 15 } 
	{ SocketTable_theirIP_6_c_write sc_out sc_logic 1 signal 15 } 
	{ SocketTable_theirIP_7 sc_in sc_lv 32 signal 16 } 
	{ SocketTable_theirIP_7_c_din sc_out sc_lv 32 signal 17 } 
	{ SocketTable_theirIP_7_c_full_n sc_in sc_logic 1 signal 17 } 
	{ SocketTable_theirIP_7_c_write sc_out sc_logic 1 signal 17 } 
	{ SocketTable_theirIP_8 sc_in sc_lv 32 signal 18 } 
	{ SocketTable_theirIP_8_c_din sc_out sc_lv 32 signal 19 } 
	{ SocketTable_theirIP_8_c_full_n sc_in sc_logic 1 signal 19 } 
	{ SocketTable_theirIP_8_c_write sc_out sc_logic 1 signal 19 } 
	{ SocketTable_theirIP_9 sc_in sc_lv 32 signal 20 } 
	{ SocketTable_theirIP_9_c_din sc_out sc_lv 32 signal 21 } 
	{ SocketTable_theirIP_9_c_full_n sc_in sc_logic 1 signal 21 } 
	{ SocketTable_theirIP_9_c_write sc_out sc_logic 1 signal 21 } 
	{ SocketTable_theirIP_10 sc_in sc_lv 32 signal 22 } 
	{ SocketTable_theirIP_10_c_din sc_out sc_lv 32 signal 23 } 
	{ SocketTable_theirIP_10_c_full_n sc_in sc_logic 1 signal 23 } 
	{ SocketTable_theirIP_10_c_write sc_out sc_logic 1 signal 23 } 
	{ SocketTable_theirIP_11 sc_in sc_lv 32 signal 24 } 
	{ SocketTable_theirIP_11_c_din sc_out sc_lv 32 signal 25 } 
	{ SocketTable_theirIP_11_c_full_n sc_in sc_logic 1 signal 25 } 
	{ SocketTable_theirIP_11_c_write sc_out sc_logic 1 signal 25 } 
	{ SocketTable_theirIP_12 sc_in sc_lv 32 signal 26 } 
	{ SocketTable_theirIP_12_c_din sc_out sc_lv 32 signal 27 } 
	{ SocketTable_theirIP_12_c_full_n sc_in sc_logic 1 signal 27 } 
	{ SocketTable_theirIP_12_c_write sc_out sc_logic 1 signal 27 } 
	{ SocketTable_theirIP_13 sc_in sc_lv 32 signal 28 } 
	{ SocketTable_theirIP_13_c_din sc_out sc_lv 32 signal 29 } 
	{ SocketTable_theirIP_13_c_full_n sc_in sc_logic 1 signal 29 } 
	{ SocketTable_theirIP_13_c_write sc_out sc_logic 1 signal 29 } 
	{ SocketTable_theirIP_14 sc_in sc_lv 32 signal 30 } 
	{ SocketTable_theirIP_14_c_din sc_out sc_lv 32 signal 31 } 
	{ SocketTable_theirIP_14_c_full_n sc_in sc_logic 1 signal 31 } 
	{ SocketTable_theirIP_14_c_write sc_out sc_logic 1 signal 31 } 
	{ SocketTable_theirIP_15 sc_in sc_lv 32 signal 32 } 
	{ SocketTable_theirIP_15_c_din sc_out sc_lv 32 signal 33 } 
	{ SocketTable_theirIP_15_c_full_n sc_in sc_logic 1 signal 33 } 
	{ SocketTable_theirIP_15_c_write sc_out sc_logic 1 signal 33 } 
	{ SocketTable_theirPort_0 sc_in sc_lv 16 signal 34 } 
	{ SocketTable_theirPort_0_c_din sc_out sc_lv 16 signal 35 } 
	{ SocketTable_theirPort_0_c_full_n sc_in sc_logic 1 signal 35 } 
	{ SocketTable_theirPort_0_c_write sc_out sc_logic 1 signal 35 } 
	{ SocketTable_theirPort_1 sc_in sc_lv 16 signal 36 } 
	{ SocketTable_theirPort_1_c_din sc_out sc_lv 16 signal 37 } 
	{ SocketTable_theirPort_1_c_full_n sc_in sc_logic 1 signal 37 } 
	{ SocketTable_theirPort_1_c_write sc_out sc_logic 1 signal 37 } 
	{ SocketTable_theirPort_2 sc_in sc_lv 16 signal 38 } 
	{ SocketTable_theirPort_2_c_din sc_out sc_lv 16 signal 39 } 
	{ SocketTable_theirPort_2_c_full_n sc_in sc_logic 1 signal 39 } 
	{ SocketTable_theirPort_2_c_write sc_out sc_logic 1 signal 39 } 
	{ SocketTable_theirPort_3 sc_in sc_lv 16 signal 40 } 
	{ SocketTable_theirPort_3_c_din sc_out sc_lv 16 signal 41 } 
	{ SocketTable_theirPort_3_c_full_n sc_in sc_logic 1 signal 41 } 
	{ SocketTable_theirPort_3_c_write sc_out sc_logic 1 signal 41 } 
	{ SocketTable_theirPort_4 sc_in sc_lv 16 signal 42 } 
	{ SocketTable_theirPort_4_c_din sc_out sc_lv 16 signal 43 } 
	{ SocketTable_theirPort_4_c_full_n sc_in sc_logic 1 signal 43 } 
	{ SocketTable_theirPort_4_c_write sc_out sc_logic 1 signal 43 } 
	{ SocketTable_theirPort_5 sc_in sc_lv 16 signal 44 } 
	{ SocketTable_theirPort_5_c_din sc_out sc_lv 16 signal 45 } 
	{ SocketTable_theirPort_5_c_full_n sc_in sc_logic 1 signal 45 } 
	{ SocketTable_theirPort_5_c_write sc_out sc_logic 1 signal 45 } 
	{ SocketTable_theirPort_6 sc_in sc_lv 16 signal 46 } 
	{ SocketTable_theirPort_6_c_din sc_out sc_lv 16 signal 47 } 
	{ SocketTable_theirPort_6_c_full_n sc_in sc_logic 1 signal 47 } 
	{ SocketTable_theirPort_6_c_write sc_out sc_logic 1 signal 47 } 
	{ SocketTable_theirPort_7 sc_in sc_lv 16 signal 48 } 
	{ SocketTable_theirPort_7_c_din sc_out sc_lv 16 signal 49 } 
	{ SocketTable_theirPort_7_c_full_n sc_in sc_logic 1 signal 49 } 
	{ SocketTable_theirPort_7_c_write sc_out sc_logic 1 signal 49 } 
	{ SocketTable_theirPort_8 sc_in sc_lv 16 signal 50 } 
	{ SocketTable_theirPort_8_c_din sc_out sc_lv 16 signal 51 } 
	{ SocketTable_theirPort_8_c_full_n sc_in sc_logic 1 signal 51 } 
	{ SocketTable_theirPort_8_c_write sc_out sc_logic 1 signal 51 } 
	{ SocketTable_theirPort_9 sc_in sc_lv 16 signal 52 } 
	{ SocketTable_theirPort_9_c_din sc_out sc_lv 16 signal 53 } 
	{ SocketTable_theirPort_9_c_full_n sc_in sc_logic 1 signal 53 } 
	{ SocketTable_theirPort_9_c_write sc_out sc_logic 1 signal 53 } 
	{ SocketTable_theirPort_10 sc_in sc_lv 16 signal 54 } 
	{ SocketTable_theirPort_10_c_din sc_out sc_lv 16 signal 55 } 
	{ SocketTable_theirPort_10_c_full_n sc_in sc_logic 1 signal 55 } 
	{ SocketTable_theirPort_10_c_write sc_out sc_logic 1 signal 55 } 
	{ SocketTable_theirPort_11 sc_in sc_lv 16 signal 56 } 
	{ SocketTable_theirPort_11_c_din sc_out sc_lv 16 signal 57 } 
	{ SocketTable_theirPort_11_c_full_n sc_in sc_logic 1 signal 57 } 
	{ SocketTable_theirPort_11_c_write sc_out sc_logic 1 signal 57 } 
	{ SocketTable_theirPort_12 sc_in sc_lv 16 signal 58 } 
	{ SocketTable_theirPort_12_c_din sc_out sc_lv 16 signal 59 } 
	{ SocketTable_theirPort_12_c_full_n sc_in sc_logic 1 signal 59 } 
	{ SocketTable_theirPort_12_c_write sc_out sc_logic 1 signal 59 } 
	{ SocketTable_theirPort_13 sc_in sc_lv 16 signal 60 } 
	{ SocketTable_theirPort_13_c_din sc_out sc_lv 16 signal 61 } 
	{ SocketTable_theirPort_13_c_full_n sc_in sc_logic 1 signal 61 } 
	{ SocketTable_theirPort_13_c_write sc_out sc_logic 1 signal 61 } 
	{ SocketTable_theirPort_14 sc_in sc_lv 16 signal 62 } 
	{ SocketTable_theirPort_14_c_din sc_out sc_lv 16 signal 63 } 
	{ SocketTable_theirPort_14_c_full_n sc_in sc_logic 1 signal 63 } 
	{ SocketTable_theirPort_14_c_write sc_out sc_logic 1 signal 63 } 
	{ SocketTable_theirPort_15 sc_in sc_lv 16 signal 64 } 
	{ SocketTable_theirPort_15_c_din sc_out sc_lv 16 signal 65 } 
	{ SocketTable_theirPort_15_c_full_n sc_in sc_logic 1 signal 65 } 
	{ SocketTable_theirPort_15_c_write sc_out sc_logic 1 signal 65 } 
	{ SocketTable_myPort_0 sc_in sc_lv 16 signal 66 } 
	{ SocketTable_myPort_0_c_din sc_out sc_lv 16 signal 67 } 
	{ SocketTable_myPort_0_c_full_n sc_in sc_logic 1 signal 67 } 
	{ SocketTable_myPort_0_c_write sc_out sc_logic 1 signal 67 } 
	{ SocketTable_myPort_1 sc_in sc_lv 16 signal 68 } 
	{ SocketTable_myPort_1_c_din sc_out sc_lv 16 signal 69 } 
	{ SocketTable_myPort_1_c_full_n sc_in sc_logic 1 signal 69 } 
	{ SocketTable_myPort_1_c_write sc_out sc_logic 1 signal 69 } 
	{ SocketTable_myPort_2 sc_in sc_lv 16 signal 70 } 
	{ SocketTable_myPort_2_c_din sc_out sc_lv 16 signal 71 } 
	{ SocketTable_myPort_2_c_full_n sc_in sc_logic 1 signal 71 } 
	{ SocketTable_myPort_2_c_write sc_out sc_logic 1 signal 71 } 
	{ SocketTable_myPort_3 sc_in sc_lv 16 signal 72 } 
	{ SocketTable_myPort_3_c_din sc_out sc_lv 16 signal 73 } 
	{ SocketTable_myPort_3_c_full_n sc_in sc_logic 1 signal 73 } 
	{ SocketTable_myPort_3_c_write sc_out sc_logic 1 signal 73 } 
	{ SocketTable_myPort_4 sc_in sc_lv 16 signal 74 } 
	{ SocketTable_myPort_4_c_din sc_out sc_lv 16 signal 75 } 
	{ SocketTable_myPort_4_c_full_n sc_in sc_logic 1 signal 75 } 
	{ SocketTable_myPort_4_c_write sc_out sc_logic 1 signal 75 } 
	{ SocketTable_myPort_5 sc_in sc_lv 16 signal 76 } 
	{ SocketTable_myPort_5_c_din sc_out sc_lv 16 signal 77 } 
	{ SocketTable_myPort_5_c_full_n sc_in sc_logic 1 signal 77 } 
	{ SocketTable_myPort_5_c_write sc_out sc_logic 1 signal 77 } 
	{ SocketTable_myPort_6 sc_in sc_lv 16 signal 78 } 
	{ SocketTable_myPort_6_c_din sc_out sc_lv 16 signal 79 } 
	{ SocketTable_myPort_6_c_full_n sc_in sc_logic 1 signal 79 } 
	{ SocketTable_myPort_6_c_write sc_out sc_logic 1 signal 79 } 
	{ SocketTable_myPort_7 sc_in sc_lv 16 signal 80 } 
	{ SocketTable_myPort_7_c_din sc_out sc_lv 16 signal 81 } 
	{ SocketTable_myPort_7_c_full_n sc_in sc_logic 1 signal 81 } 
	{ SocketTable_myPort_7_c_write sc_out sc_logic 1 signal 81 } 
	{ SocketTable_myPort_8 sc_in sc_lv 16 signal 82 } 
	{ SocketTable_myPort_8_c_din sc_out sc_lv 16 signal 83 } 
	{ SocketTable_myPort_8_c_full_n sc_in sc_logic 1 signal 83 } 
	{ SocketTable_myPort_8_c_write sc_out sc_logic 1 signal 83 } 
	{ SocketTable_myPort_9 sc_in sc_lv 16 signal 84 } 
	{ SocketTable_myPort_9_c_din sc_out sc_lv 16 signal 85 } 
	{ SocketTable_myPort_9_c_full_n sc_in sc_logic 1 signal 85 } 
	{ SocketTable_myPort_9_c_write sc_out sc_logic 1 signal 85 } 
	{ SocketTable_myPort_10 sc_in sc_lv 16 signal 86 } 
	{ SocketTable_myPort_10_c_din sc_out sc_lv 16 signal 87 } 
	{ SocketTable_myPort_10_c_full_n sc_in sc_logic 1 signal 87 } 
	{ SocketTable_myPort_10_c_write sc_out sc_logic 1 signal 87 } 
	{ SocketTable_myPort_11 sc_in sc_lv 16 signal 88 } 
	{ SocketTable_myPort_11_c_din sc_out sc_lv 16 signal 89 } 
	{ SocketTable_myPort_11_c_full_n sc_in sc_logic 1 signal 89 } 
	{ SocketTable_myPort_11_c_write sc_out sc_logic 1 signal 89 } 
	{ SocketTable_myPort_12 sc_in sc_lv 16 signal 90 } 
	{ SocketTable_myPort_12_c_din sc_out sc_lv 16 signal 91 } 
	{ SocketTable_myPort_12_c_full_n sc_in sc_logic 1 signal 91 } 
	{ SocketTable_myPort_12_c_write sc_out sc_logic 1 signal 91 } 
	{ SocketTable_myPort_13 sc_in sc_lv 16 signal 92 } 
	{ SocketTable_myPort_13_c_din sc_out sc_lv 16 signal 93 } 
	{ SocketTable_myPort_13_c_full_n sc_in sc_logic 1 signal 93 } 
	{ SocketTable_myPort_13_c_write sc_out sc_logic 1 signal 93 } 
	{ SocketTable_myPort_14 sc_in sc_lv 16 signal 94 } 
	{ SocketTable_myPort_14_c_din sc_out sc_lv 16 signal 95 } 
	{ SocketTable_myPort_14_c_full_n sc_in sc_logic 1 signal 95 } 
	{ SocketTable_myPort_14_c_write sc_out sc_logic 1 signal 95 } 
	{ SocketTable_myPort_15 sc_in sc_lv 16 signal 96 } 
	{ SocketTable_myPort_15_c_din sc_out sc_lv 16 signal 97 } 
	{ SocketTable_myPort_15_c_full_n sc_in sc_logic 1 signal 97 } 
	{ SocketTable_myPort_15_c_write sc_out sc_logic 1 signal 97 } 
	{ SocketTable_valid_0 sc_in sc_lv 1 signal 98 } 
	{ SocketTable_valid_0_c_din sc_out sc_lv 1 signal 99 } 
	{ SocketTable_valid_0_c_full_n sc_in sc_logic 1 signal 99 } 
	{ SocketTable_valid_0_c_write sc_out sc_logic 1 signal 99 } 
	{ SocketTable_valid_1 sc_in sc_lv 1 signal 100 } 
	{ SocketTable_valid_1_c_din sc_out sc_lv 1 signal 101 } 
	{ SocketTable_valid_1_c_full_n sc_in sc_logic 1 signal 101 } 
	{ SocketTable_valid_1_c_write sc_out sc_logic 1 signal 101 } 
	{ SocketTable_valid_2 sc_in sc_lv 1 signal 102 } 
	{ SocketTable_valid_2_c_din sc_out sc_lv 1 signal 103 } 
	{ SocketTable_valid_2_c_full_n sc_in sc_logic 1 signal 103 } 
	{ SocketTable_valid_2_c_write sc_out sc_logic 1 signal 103 } 
	{ SocketTable_valid_3 sc_in sc_lv 1 signal 104 } 
	{ SocketTable_valid_3_c_din sc_out sc_lv 1 signal 105 } 
	{ SocketTable_valid_3_c_full_n sc_in sc_logic 1 signal 105 } 
	{ SocketTable_valid_3_c_write sc_out sc_logic 1 signal 105 } 
	{ SocketTable_valid_4 sc_in sc_lv 1 signal 106 } 
	{ SocketTable_valid_4_c_din sc_out sc_lv 1 signal 107 } 
	{ SocketTable_valid_4_c_full_n sc_in sc_logic 1 signal 107 } 
	{ SocketTable_valid_4_c_write sc_out sc_logic 1 signal 107 } 
	{ SocketTable_valid_5 sc_in sc_lv 1 signal 108 } 
	{ SocketTable_valid_5_c_din sc_out sc_lv 1 signal 109 } 
	{ SocketTable_valid_5_c_full_n sc_in sc_logic 1 signal 109 } 
	{ SocketTable_valid_5_c_write sc_out sc_logic 1 signal 109 } 
	{ SocketTable_valid_6 sc_in sc_lv 1 signal 110 } 
	{ SocketTable_valid_6_c_din sc_out sc_lv 1 signal 111 } 
	{ SocketTable_valid_6_c_full_n sc_in sc_logic 1 signal 111 } 
	{ SocketTable_valid_6_c_write sc_out sc_logic 1 signal 111 } 
	{ SocketTable_valid_7 sc_in sc_lv 1 signal 112 } 
	{ SocketTable_valid_7_c_din sc_out sc_lv 1 signal 113 } 
	{ SocketTable_valid_7_c_full_n sc_in sc_logic 1 signal 113 } 
	{ SocketTable_valid_7_c_write sc_out sc_logic 1 signal 113 } 
	{ SocketTable_valid_8 sc_in sc_lv 1 signal 114 } 
	{ SocketTable_valid_8_c_din sc_out sc_lv 1 signal 115 } 
	{ SocketTable_valid_8_c_full_n sc_in sc_logic 1 signal 115 } 
	{ SocketTable_valid_8_c_write sc_out sc_logic 1 signal 115 } 
	{ SocketTable_valid_9 sc_in sc_lv 1 signal 116 } 
	{ SocketTable_valid_9_c_din sc_out sc_lv 1 signal 117 } 
	{ SocketTable_valid_9_c_full_n sc_in sc_logic 1 signal 117 } 
	{ SocketTable_valid_9_c_write sc_out sc_logic 1 signal 117 } 
	{ SocketTable_valid_10 sc_in sc_lv 1 signal 118 } 
	{ SocketTable_valid_10_c_din sc_out sc_lv 1 signal 119 } 
	{ SocketTable_valid_10_c_full_n sc_in sc_logic 1 signal 119 } 
	{ SocketTable_valid_10_c_write sc_out sc_logic 1 signal 119 } 
	{ SocketTable_valid_11 sc_in sc_lv 1 signal 120 } 
	{ SocketTable_valid_11_c_din sc_out sc_lv 1 signal 121 } 
	{ SocketTable_valid_11_c_full_n sc_in sc_logic 1 signal 121 } 
	{ SocketTable_valid_11_c_write sc_out sc_logic 1 signal 121 } 
	{ SocketTable_valid_12 sc_in sc_lv 1 signal 122 } 
	{ SocketTable_valid_12_c_din sc_out sc_lv 1 signal 123 } 
	{ SocketTable_valid_12_c_full_n sc_in sc_logic 1 signal 123 } 
	{ SocketTable_valid_12_c_write sc_out sc_logic 1 signal 123 } 
	{ SocketTable_valid_13 sc_in sc_lv 1 signal 124 } 
	{ SocketTable_valid_13_c_din sc_out sc_lv 1 signal 125 } 
	{ SocketTable_valid_13_c_full_n sc_in sc_logic 1 signal 125 } 
	{ SocketTable_valid_13_c_write sc_out sc_logic 1 signal 125 } 
	{ SocketTable_valid_14 sc_in sc_lv 1 signal 126 } 
	{ SocketTable_valid_14_c_din sc_out sc_lv 1 signal 127 } 
	{ SocketTable_valid_14_c_full_n sc_in sc_logic 1 signal 127 } 
	{ SocketTable_valid_14_c_write sc_out sc_logic 1 signal 127 } 
	{ SocketTable_valid_15 sc_in sc_lv 1 signal 128 } 
	{ SocketTable_valid_15_c_din sc_out sc_lv 1 signal 129 } 
	{ SocketTable_valid_15_c_full_n sc_in sc_logic 1 signal 129 } 
	{ SocketTable_valid_15_c_write sc_out sc_logic 1 signal 129 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "myIpAddress_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "din" }} , 
 	{ "name": "myIpAddress_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "full_n" }} , 
 	{ "name": "myIpAddress_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_0_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_0_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_0_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_5_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_5_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_5_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_6_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_6_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_6_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_9_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_9_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_9_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_10_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_10_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_10_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_11_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_11_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_11_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_12_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_12_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_12_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_13_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_13_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_13_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_14_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_14_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_14_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirIP_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_15_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirIP_15_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirIP_15_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_0_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_0_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_0_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_5_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_5_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_5_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_6_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_6_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_6_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_9_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_9_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_9_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_10_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_10_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_10_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_11_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_11_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_11_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_12_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_12_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_12_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_13_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_13_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_13_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_14_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_14_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_14_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14_c", "role": "write" }} , 
 	{ "name": "SocketTable_theirPort_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_15_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15_c", "role": "din" }} , 
 	{ "name": "SocketTable_theirPort_15_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_theirPort_15_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_0", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_0_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_0_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_0_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_0_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_0_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_0_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_1", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_1_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_1_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_1_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_2", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_2_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_2_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_2_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_3", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_3_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_3_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_3_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_4", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_4_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_4_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_4_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_5", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_5_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_5_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_5_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_5_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_5_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_5_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_6", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_6_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_6_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_6_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_6_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_6_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_6_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_7", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_7_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_7_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_7_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_8", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_8_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_8_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_8_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_9", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_9_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_9_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_9_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_9_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_9_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_9_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_10", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_10_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_10_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_10_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_10_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_10_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_10_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_11", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_11_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_11_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_11_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_11_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_11_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_11_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_12", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_12_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_12_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_12_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_12_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_12_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_12_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_13", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_13_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_13_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_13_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_13_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_13_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_13_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_14", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_14_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_14_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_14_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_14_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_14_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_14_c", "role": "write" }} , 
 	{ "name": "SocketTable_myPort_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_15", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_15_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_15_c", "role": "din" }} , 
 	{ "name": "SocketTable_myPort_15_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_15_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_myPort_15_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_15_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0", "role": "default" }} , 
 	{ "name": "SocketTable_valid_0_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_0_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_0_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1", "role": "default" }} , 
 	{ "name": "SocketTable_valid_1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2", "role": "default" }} , 
 	{ "name": "SocketTable_valid_2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3", "role": "default" }} , 
 	{ "name": "SocketTable_valid_3_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_3_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_3_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4", "role": "default" }} , 
 	{ "name": "SocketTable_valid_4_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_4_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_4_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5", "role": "default" }} , 
 	{ "name": "SocketTable_valid_5_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_5_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_5_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6", "role": "default" }} , 
 	{ "name": "SocketTable_valid_6_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_6_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_6_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7", "role": "default" }} , 
 	{ "name": "SocketTable_valid_7_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_7_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_7_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_8", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8", "role": "default" }} , 
 	{ "name": "SocketTable_valid_8_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_8_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_8_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_9", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9", "role": "default" }} , 
 	{ "name": "SocketTable_valid_9_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_9_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_9_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_10", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10", "role": "default" }} , 
 	{ "name": "SocketTable_valid_10_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_10_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_10_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_11", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11", "role": "default" }} , 
 	{ "name": "SocketTable_valid_11_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_11_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_11_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12", "role": "default" }} , 
 	{ "name": "SocketTable_valid_12_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_12_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_12_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_13", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13", "role": "default" }} , 
 	{ "name": "SocketTable_valid_13_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_13_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_13_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_14", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14", "role": "default" }} , 
 	{ "name": "SocketTable_valid_14_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_14_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_14_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14_c", "role": "write" }} , 
 	{ "name": "SocketTable_valid_15", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15", "role": "default" }} , 
 	{ "name": "SocketTable_valid_15_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15_c", "role": "din" }} , 
 	{ "name": "SocketTable_valid_15_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15_c", "role": "full_n" }} , 
 	{ "name": "SocketTable_valid_15_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "myIpAddress", "Type" : "None", "Direction" : "I"},
			{"Name" : "myIpAddress_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_0_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_0_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_10_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_10_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_11_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_12_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_12_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_13_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_13_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_14_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_14_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirIP_15_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_15_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_0_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_0_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_10_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_10_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_11_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_12_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_12_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_13_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_13_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_14_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_14_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_theirPort_15_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_15_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_0_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_0_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_10_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_10_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_11_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_12_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_12_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_13_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_13_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_14_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_14_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_myPort_15_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_15_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_0_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_0_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_7_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_8_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_8_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_9_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_9_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_10_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_10_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_11_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_11_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_12_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_12_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_13_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_13_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_14_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_14_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "SocketTable_valid_15_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_15_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		myIpAddress_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_0_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_1_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_2_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_3_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_4_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_5_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_6_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_7_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_8_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_9_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_10_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_11_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_12_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_13_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_14_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirIP_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirIP_15_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_0_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_1_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_2_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_3_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_4_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_5_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_6_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_7_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_8_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_9_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_10_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_11_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_12_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_13_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_14_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_theirPort_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_theirPort_15_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_0_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_1_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_2_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_3_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_4_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_5_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_6_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_7_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_8_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_9_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_10_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_11_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_12_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_13_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_14_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_myPort_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_myPort_15_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_0 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_0_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_1 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_1_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_2 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_2_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_3 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_3_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_4 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_4_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_5 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_5_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_6 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_6_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_7 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_7_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_8 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_8_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_9 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_9_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_10 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_10_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_11 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_11_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_12 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_12_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_13 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_13_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_14 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_14_c {Type O LastRead -1 FirstWrite 0}
		SocketTable_valid_15 {Type I LastRead 0 FirstWrite -1}
		SocketTable_valid_15_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	myIpAddress_c { ap_fifo {  { myIpAddress_c_din fifo_data 1 32 }  { myIpAddress_c_full_n fifo_status 0 1 }  { myIpAddress_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_0 { ap_none {  { SocketTable_theirIP_0 in_data 0 32 } } }
	SocketTable_theirIP_0_c { ap_fifo {  { SocketTable_theirIP_0_c_din fifo_data 1 32 }  { SocketTable_theirIP_0_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_0_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_1 { ap_none {  { SocketTable_theirIP_1 in_data 0 32 } } }
	SocketTable_theirIP_1_c { ap_fifo {  { SocketTable_theirIP_1_c_din fifo_data 1 32 }  { SocketTable_theirIP_1_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_1_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_2 { ap_none {  { SocketTable_theirIP_2 in_data 0 32 } } }
	SocketTable_theirIP_2_c { ap_fifo {  { SocketTable_theirIP_2_c_din fifo_data 1 32 }  { SocketTable_theirIP_2_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_2_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_3 { ap_none {  { SocketTable_theirIP_3 in_data 0 32 } } }
	SocketTable_theirIP_3_c { ap_fifo {  { SocketTable_theirIP_3_c_din fifo_data 1 32 }  { SocketTable_theirIP_3_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_3_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_4 { ap_none {  { SocketTable_theirIP_4 in_data 0 32 } } }
	SocketTable_theirIP_4_c { ap_fifo {  { SocketTable_theirIP_4_c_din fifo_data 1 32 }  { SocketTable_theirIP_4_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_4_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_5 { ap_none {  { SocketTable_theirIP_5 in_data 0 32 } } }
	SocketTable_theirIP_5_c { ap_fifo {  { SocketTable_theirIP_5_c_din fifo_data 1 32 }  { SocketTable_theirIP_5_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_5_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_6 { ap_none {  { SocketTable_theirIP_6 in_data 0 32 } } }
	SocketTable_theirIP_6_c { ap_fifo {  { SocketTable_theirIP_6_c_din fifo_data 1 32 }  { SocketTable_theirIP_6_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_6_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_7 { ap_none {  { SocketTable_theirIP_7 in_data 0 32 } } }
	SocketTable_theirIP_7_c { ap_fifo {  { SocketTable_theirIP_7_c_din fifo_data 1 32 }  { SocketTable_theirIP_7_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_7_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_8 { ap_none {  { SocketTable_theirIP_8 in_data 0 32 } } }
	SocketTable_theirIP_8_c { ap_fifo {  { SocketTable_theirIP_8_c_din fifo_data 1 32 }  { SocketTable_theirIP_8_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_8_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_9 { ap_none {  { SocketTable_theirIP_9 in_data 0 32 } } }
	SocketTable_theirIP_9_c { ap_fifo {  { SocketTable_theirIP_9_c_din fifo_data 1 32 }  { SocketTable_theirIP_9_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_9_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_10 { ap_none {  { SocketTable_theirIP_10 in_data 0 32 } } }
	SocketTable_theirIP_10_c { ap_fifo {  { SocketTable_theirIP_10_c_din fifo_data 1 32 }  { SocketTable_theirIP_10_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_10_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_11 { ap_none {  { SocketTable_theirIP_11 in_data 0 32 } } }
	SocketTable_theirIP_11_c { ap_fifo {  { SocketTable_theirIP_11_c_din fifo_data 1 32 }  { SocketTable_theirIP_11_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_11_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_12 { ap_none {  { SocketTable_theirIP_12 in_data 0 32 } } }
	SocketTable_theirIP_12_c { ap_fifo {  { SocketTable_theirIP_12_c_din fifo_data 1 32 }  { SocketTable_theirIP_12_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_12_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_13 { ap_none {  { SocketTable_theirIP_13 in_data 0 32 } } }
	SocketTable_theirIP_13_c { ap_fifo {  { SocketTable_theirIP_13_c_din fifo_data 1 32 }  { SocketTable_theirIP_13_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_13_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_14 { ap_none {  { SocketTable_theirIP_14 in_data 0 32 } } }
	SocketTable_theirIP_14_c { ap_fifo {  { SocketTable_theirIP_14_c_din fifo_data 1 32 }  { SocketTable_theirIP_14_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_14_c_write fifo_update 1 1 } } }
	SocketTable_theirIP_15 { ap_none {  { SocketTable_theirIP_15 in_data 0 32 } } }
	SocketTable_theirIP_15_c { ap_fifo {  { SocketTable_theirIP_15_c_din fifo_data 1 32 }  { SocketTable_theirIP_15_c_full_n fifo_status 0 1 }  { SocketTable_theirIP_15_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_0 { ap_none {  { SocketTable_theirPort_0 in_data 0 16 } } }
	SocketTable_theirPort_0_c { ap_fifo {  { SocketTable_theirPort_0_c_din fifo_data 1 16 }  { SocketTable_theirPort_0_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_0_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_1 { ap_none {  { SocketTable_theirPort_1 in_data 0 16 } } }
	SocketTable_theirPort_1_c { ap_fifo {  { SocketTable_theirPort_1_c_din fifo_data 1 16 }  { SocketTable_theirPort_1_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_1_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_2 { ap_none {  { SocketTable_theirPort_2 in_data 0 16 } } }
	SocketTable_theirPort_2_c { ap_fifo {  { SocketTable_theirPort_2_c_din fifo_data 1 16 }  { SocketTable_theirPort_2_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_2_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_3 { ap_none {  { SocketTable_theirPort_3 in_data 0 16 } } }
	SocketTable_theirPort_3_c { ap_fifo {  { SocketTable_theirPort_3_c_din fifo_data 1 16 }  { SocketTable_theirPort_3_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_3_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_4 { ap_none {  { SocketTable_theirPort_4 in_data 0 16 } } }
	SocketTable_theirPort_4_c { ap_fifo {  { SocketTable_theirPort_4_c_din fifo_data 1 16 }  { SocketTable_theirPort_4_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_4_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_5 { ap_none {  { SocketTable_theirPort_5 in_data 0 16 } } }
	SocketTable_theirPort_5_c { ap_fifo {  { SocketTable_theirPort_5_c_din fifo_data 1 16 }  { SocketTable_theirPort_5_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_5_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_6 { ap_none {  { SocketTable_theirPort_6 in_data 0 16 } } }
	SocketTable_theirPort_6_c { ap_fifo {  { SocketTable_theirPort_6_c_din fifo_data 1 16 }  { SocketTable_theirPort_6_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_6_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_7 { ap_none {  { SocketTable_theirPort_7 in_data 0 16 } } }
	SocketTable_theirPort_7_c { ap_fifo {  { SocketTable_theirPort_7_c_din fifo_data 1 16 }  { SocketTable_theirPort_7_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_7_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_8 { ap_none {  { SocketTable_theirPort_8 in_data 0 16 } } }
	SocketTable_theirPort_8_c { ap_fifo {  { SocketTable_theirPort_8_c_din fifo_data 1 16 }  { SocketTable_theirPort_8_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_8_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_9 { ap_none {  { SocketTable_theirPort_9 in_data 0 16 } } }
	SocketTable_theirPort_9_c { ap_fifo {  { SocketTable_theirPort_9_c_din fifo_data 1 16 }  { SocketTable_theirPort_9_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_9_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_10 { ap_none {  { SocketTable_theirPort_10 in_data 0 16 } } }
	SocketTable_theirPort_10_c { ap_fifo {  { SocketTable_theirPort_10_c_din fifo_data 1 16 }  { SocketTable_theirPort_10_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_10_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_11 { ap_none {  { SocketTable_theirPort_11 in_data 0 16 } } }
	SocketTable_theirPort_11_c { ap_fifo {  { SocketTable_theirPort_11_c_din fifo_data 1 16 }  { SocketTable_theirPort_11_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_11_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_12 { ap_none {  { SocketTable_theirPort_12 in_data 0 16 } } }
	SocketTable_theirPort_12_c { ap_fifo {  { SocketTable_theirPort_12_c_din fifo_data 1 16 }  { SocketTable_theirPort_12_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_12_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_13 { ap_none {  { SocketTable_theirPort_13 in_data 0 16 } } }
	SocketTable_theirPort_13_c { ap_fifo {  { SocketTable_theirPort_13_c_din fifo_data 1 16 }  { SocketTable_theirPort_13_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_13_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_14 { ap_none {  { SocketTable_theirPort_14 in_data 0 16 } } }
	SocketTable_theirPort_14_c { ap_fifo {  { SocketTable_theirPort_14_c_din fifo_data 1 16 }  { SocketTable_theirPort_14_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_14_c_write fifo_update 1 1 } } }
	SocketTable_theirPort_15 { ap_none {  { SocketTable_theirPort_15 in_data 0 16 } } }
	SocketTable_theirPort_15_c { ap_fifo {  { SocketTable_theirPort_15_c_din fifo_data 1 16 }  { SocketTable_theirPort_15_c_full_n fifo_status 0 1 }  { SocketTable_theirPort_15_c_write fifo_update 1 1 } } }
	SocketTable_myPort_0 { ap_none {  { SocketTable_myPort_0 in_data 0 16 } } }
	SocketTable_myPort_0_c { ap_fifo {  { SocketTable_myPort_0_c_din fifo_data 1 16 }  { SocketTable_myPort_0_c_full_n fifo_status 0 1 }  { SocketTable_myPort_0_c_write fifo_update 1 1 } } }
	SocketTable_myPort_1 { ap_none {  { SocketTable_myPort_1 in_data 0 16 } } }
	SocketTable_myPort_1_c { ap_fifo {  { SocketTable_myPort_1_c_din fifo_data 1 16 }  { SocketTable_myPort_1_c_full_n fifo_status 0 1 }  { SocketTable_myPort_1_c_write fifo_update 1 1 } } }
	SocketTable_myPort_2 { ap_none {  { SocketTable_myPort_2 in_data 0 16 } } }
	SocketTable_myPort_2_c { ap_fifo {  { SocketTable_myPort_2_c_din fifo_data 1 16 }  { SocketTable_myPort_2_c_full_n fifo_status 0 1 }  { SocketTable_myPort_2_c_write fifo_update 1 1 } } }
	SocketTable_myPort_3 { ap_none {  { SocketTable_myPort_3 in_data 0 16 } } }
	SocketTable_myPort_3_c { ap_fifo {  { SocketTable_myPort_3_c_din fifo_data 1 16 }  { SocketTable_myPort_3_c_full_n fifo_status 0 1 }  { SocketTable_myPort_3_c_write fifo_update 1 1 } } }
	SocketTable_myPort_4 { ap_none {  { SocketTable_myPort_4 in_data 0 16 } } }
	SocketTable_myPort_4_c { ap_fifo {  { SocketTable_myPort_4_c_din fifo_data 1 16 }  { SocketTable_myPort_4_c_full_n fifo_status 0 1 }  { SocketTable_myPort_4_c_write fifo_update 1 1 } } }
	SocketTable_myPort_5 { ap_none {  { SocketTable_myPort_5 in_data 0 16 } } }
	SocketTable_myPort_5_c { ap_fifo {  { SocketTable_myPort_5_c_din fifo_data 1 16 }  { SocketTable_myPort_5_c_full_n fifo_status 0 1 }  { SocketTable_myPort_5_c_write fifo_update 1 1 } } }
	SocketTable_myPort_6 { ap_none {  { SocketTable_myPort_6 in_data 0 16 } } }
	SocketTable_myPort_6_c { ap_fifo {  { SocketTable_myPort_6_c_din fifo_data 1 16 }  { SocketTable_myPort_6_c_full_n fifo_status 0 1 }  { SocketTable_myPort_6_c_write fifo_update 1 1 } } }
	SocketTable_myPort_7 { ap_none {  { SocketTable_myPort_7 in_data 0 16 } } }
	SocketTable_myPort_7_c { ap_fifo {  { SocketTable_myPort_7_c_din fifo_data 1 16 }  { SocketTable_myPort_7_c_full_n fifo_status 0 1 }  { SocketTable_myPort_7_c_write fifo_update 1 1 } } }
	SocketTable_myPort_8 { ap_none {  { SocketTable_myPort_8 in_data 0 16 } } }
	SocketTable_myPort_8_c { ap_fifo {  { SocketTable_myPort_8_c_din fifo_data 1 16 }  { SocketTable_myPort_8_c_full_n fifo_status 0 1 }  { SocketTable_myPort_8_c_write fifo_update 1 1 } } }
	SocketTable_myPort_9 { ap_none {  { SocketTable_myPort_9 in_data 0 16 } } }
	SocketTable_myPort_9_c { ap_fifo {  { SocketTable_myPort_9_c_din fifo_data 1 16 }  { SocketTable_myPort_9_c_full_n fifo_status 0 1 }  { SocketTable_myPort_9_c_write fifo_update 1 1 } } }
	SocketTable_myPort_10 { ap_none {  { SocketTable_myPort_10 in_data 0 16 } } }
	SocketTable_myPort_10_c { ap_fifo {  { SocketTable_myPort_10_c_din fifo_data 1 16 }  { SocketTable_myPort_10_c_full_n fifo_status 0 1 }  { SocketTable_myPort_10_c_write fifo_update 1 1 } } }
	SocketTable_myPort_11 { ap_none {  { SocketTable_myPort_11 in_data 0 16 } } }
	SocketTable_myPort_11_c { ap_fifo {  { SocketTable_myPort_11_c_din fifo_data 1 16 }  { SocketTable_myPort_11_c_full_n fifo_status 0 1 }  { SocketTable_myPort_11_c_write fifo_update 1 1 } } }
	SocketTable_myPort_12 { ap_none {  { SocketTable_myPort_12 in_data 0 16 } } }
	SocketTable_myPort_12_c { ap_fifo {  { SocketTable_myPort_12_c_din fifo_data 1 16 }  { SocketTable_myPort_12_c_full_n fifo_status 0 1 }  { SocketTable_myPort_12_c_write fifo_update 1 1 } } }
	SocketTable_myPort_13 { ap_none {  { SocketTable_myPort_13 in_data 0 16 } } }
	SocketTable_myPort_13_c { ap_fifo {  { SocketTable_myPort_13_c_din fifo_data 1 16 }  { SocketTable_myPort_13_c_full_n fifo_status 0 1 }  { SocketTable_myPort_13_c_write fifo_update 1 1 } } }
	SocketTable_myPort_14 { ap_none {  { SocketTable_myPort_14 in_data 0 16 } } }
	SocketTable_myPort_14_c { ap_fifo {  { SocketTable_myPort_14_c_din fifo_data 1 16 }  { SocketTable_myPort_14_c_full_n fifo_status 0 1 }  { SocketTable_myPort_14_c_write fifo_update 1 1 } } }
	SocketTable_myPort_15 { ap_none {  { SocketTable_myPort_15 in_data 0 16 } } }
	SocketTable_myPort_15_c { ap_fifo {  { SocketTable_myPort_15_c_din fifo_data 1 16 }  { SocketTable_myPort_15_c_full_n fifo_status 0 1 }  { SocketTable_myPort_15_c_write fifo_update 1 1 } } }
	SocketTable_valid_0 { ap_none {  { SocketTable_valid_0 in_data 0 1 } } }
	SocketTable_valid_0_c { ap_fifo {  { SocketTable_valid_0_c_din fifo_data 1 1 }  { SocketTable_valid_0_c_full_n fifo_status 0 1 }  { SocketTable_valid_0_c_write fifo_update 1 1 } } }
	SocketTable_valid_1 { ap_none {  { SocketTable_valid_1 in_data 0 1 } } }
	SocketTable_valid_1_c { ap_fifo {  { SocketTable_valid_1_c_din fifo_data 1 1 }  { SocketTable_valid_1_c_full_n fifo_status 0 1 }  { SocketTable_valid_1_c_write fifo_update 1 1 } } }
	SocketTable_valid_2 { ap_none {  { SocketTable_valid_2 in_data 0 1 } } }
	SocketTable_valid_2_c { ap_fifo {  { SocketTable_valid_2_c_din fifo_data 1 1 }  { SocketTable_valid_2_c_full_n fifo_status 0 1 }  { SocketTable_valid_2_c_write fifo_update 1 1 } } }
	SocketTable_valid_3 { ap_none {  { SocketTable_valid_3 in_data 0 1 } } }
	SocketTable_valid_3_c { ap_fifo {  { SocketTable_valid_3_c_din fifo_data 1 1 }  { SocketTable_valid_3_c_full_n fifo_status 0 1 }  { SocketTable_valid_3_c_write fifo_update 1 1 } } }
	SocketTable_valid_4 { ap_none {  { SocketTable_valid_4 in_data 0 1 } } }
	SocketTable_valid_4_c { ap_fifo {  { SocketTable_valid_4_c_din fifo_data 1 1 }  { SocketTable_valid_4_c_full_n fifo_status 0 1 }  { SocketTable_valid_4_c_write fifo_update 1 1 } } }
	SocketTable_valid_5 { ap_none {  { SocketTable_valid_5 in_data 0 1 } } }
	SocketTable_valid_5_c { ap_fifo {  { SocketTable_valid_5_c_din fifo_data 1 1 }  { SocketTable_valid_5_c_full_n fifo_status 0 1 }  { SocketTable_valid_5_c_write fifo_update 1 1 } } }
	SocketTable_valid_6 { ap_none {  { SocketTable_valid_6 in_data 0 1 } } }
	SocketTable_valid_6_c { ap_fifo {  { SocketTable_valid_6_c_din fifo_data 1 1 }  { SocketTable_valid_6_c_full_n fifo_status 0 1 }  { SocketTable_valid_6_c_write fifo_update 1 1 } } }
	SocketTable_valid_7 { ap_none {  { SocketTable_valid_7 in_data 0 1 } } }
	SocketTable_valid_7_c { ap_fifo {  { SocketTable_valid_7_c_din fifo_data 1 1 }  { SocketTable_valid_7_c_full_n fifo_status 0 1 }  { SocketTable_valid_7_c_write fifo_update 1 1 } } }
	SocketTable_valid_8 { ap_none {  { SocketTable_valid_8 in_data 0 1 } } }
	SocketTable_valid_8_c { ap_fifo {  { SocketTable_valid_8_c_din fifo_data 1 1 }  { SocketTable_valid_8_c_full_n fifo_status 0 1 }  { SocketTable_valid_8_c_write fifo_update 1 1 } } }
	SocketTable_valid_9 { ap_none {  { SocketTable_valid_9 in_data 0 1 } } }
	SocketTable_valid_9_c { ap_fifo {  { SocketTable_valid_9_c_din fifo_data 1 1 }  { SocketTable_valid_9_c_full_n fifo_status 0 1 }  { SocketTable_valid_9_c_write fifo_update 1 1 } } }
	SocketTable_valid_10 { ap_none {  { SocketTable_valid_10 in_data 0 1 } } }
	SocketTable_valid_10_c { ap_fifo {  { SocketTable_valid_10_c_din fifo_data 1 1 }  { SocketTable_valid_10_c_full_n fifo_status 0 1 }  { SocketTable_valid_10_c_write fifo_update 1 1 } } }
	SocketTable_valid_11 { ap_none {  { SocketTable_valid_11 in_data 0 1 } } }
	SocketTable_valid_11_c { ap_fifo {  { SocketTable_valid_11_c_din fifo_data 1 1 }  { SocketTable_valid_11_c_full_n fifo_status 0 1 }  { SocketTable_valid_11_c_write fifo_update 1 1 } } }
	SocketTable_valid_12 { ap_none {  { SocketTable_valid_12 in_data 0 1 } } }
	SocketTable_valid_12_c { ap_fifo {  { SocketTable_valid_12_c_din fifo_data 1 1 }  { SocketTable_valid_12_c_full_n fifo_status 0 1 }  { SocketTable_valid_12_c_write fifo_update 1 1 } } }
	SocketTable_valid_13 { ap_none {  { SocketTable_valid_13 in_data 0 1 } } }
	SocketTable_valid_13_c { ap_fifo {  { SocketTable_valid_13_c_din fifo_data 1 1 }  { SocketTable_valid_13_c_full_n fifo_status 0 1 }  { SocketTable_valid_13_c_write fifo_update 1 1 } } }
	SocketTable_valid_14 { ap_none {  { SocketTable_valid_14 in_data 0 1 } } }
	SocketTable_valid_14_c { ap_fifo {  { SocketTable_valid_14_c_din fifo_data 1 1 }  { SocketTable_valid_14_c_full_n fifo_status 0 1 }  { SocketTable_valid_14_c_write fifo_update 1 1 } } }
	SocketTable_valid_15 { ap_none {  { SocketTable_valid_15 in_data 0 1 } } }
	SocketTable_valid_15_c { ap_fifo {  { SocketTable_valid_15_c_din fifo_data 1 1 }  { SocketTable_valid_15_c_full_n fifo_status 0 1 }  { SocketTable_valid_15_c_write fifo_update 1 1 } } }
}
