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
set C_modelType { int 1072 }
set C_modelArgList {
	{ myIpAddress int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_0 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_1 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_2 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_3 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_4 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_5 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_6 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_7 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_8 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_9 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_10 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_11 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_12 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_13 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_14 int 32 regular {pointer 0}  }
	{ SocketTable_theirIP_15 int 32 regular {pointer 0}  }
	{ SocketTable_theirPort_0 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_1 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_2 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_3 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_4 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_5 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_6 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_7 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_8 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_9 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_10 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_11 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_12 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_13 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_14 int 16 regular {pointer 0}  }
	{ SocketTable_theirPort_15 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_0 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_1 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_2 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_3 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_4 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_5 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_6 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_7 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_8 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_9 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_10 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_11 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_12 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_13 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_14 int 16 regular {pointer 0}  }
	{ SocketTable_myPort_15 int 16 regular {pointer 0}  }
	{ SocketTable_valid_0 int 1 regular {pointer 0}  }
	{ SocketTable_valid_1 int 1 regular {pointer 0}  }
	{ SocketTable_valid_2 int 1 regular {pointer 0}  }
	{ SocketTable_valid_3 int 1 regular {pointer 0}  }
	{ SocketTable_valid_4 int 1 regular {pointer 0}  }
	{ SocketTable_valid_5 int 1 regular {pointer 0}  }
	{ SocketTable_valid_6 int 1 regular {pointer 0}  }
	{ SocketTable_valid_7 int 1 regular {pointer 0}  }
	{ SocketTable_valid_8 int 1 regular {pointer 0}  }
	{ SocketTable_valid_9 int 1 regular {pointer 0}  }
	{ SocketTable_valid_10 int 1 regular {pointer 0}  }
	{ SocketTable_valid_11 int 1 regular {pointer 0}  }
	{ SocketTable_valid_12 int 1 regular {pointer 0}  }
	{ SocketTable_valid_13 int 1 regular {pointer 0}  }
	{ SocketTable_valid_14 int 1 regular {pointer 0}  }
	{ SocketTable_valid_15 int 1 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "myIpAddress", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_0", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_9", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_11", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_13", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_14", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_15", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1072} ]}
# RTL Port declarations: 
set portNum 137
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ myIpAddress sc_in sc_lv 32 signal 0 } 
	{ SocketTable_theirIP_0 sc_in sc_lv 32 signal 1 } 
	{ SocketTable_theirIP_1 sc_in sc_lv 32 signal 2 } 
	{ SocketTable_theirIP_2 sc_in sc_lv 32 signal 3 } 
	{ SocketTable_theirIP_3 sc_in sc_lv 32 signal 4 } 
	{ SocketTable_theirIP_4 sc_in sc_lv 32 signal 5 } 
	{ SocketTable_theirIP_5 sc_in sc_lv 32 signal 6 } 
	{ SocketTable_theirIP_6 sc_in sc_lv 32 signal 7 } 
	{ SocketTable_theirIP_7 sc_in sc_lv 32 signal 8 } 
	{ SocketTable_theirIP_8 sc_in sc_lv 32 signal 9 } 
	{ SocketTable_theirIP_9 sc_in sc_lv 32 signal 10 } 
	{ SocketTable_theirIP_10 sc_in sc_lv 32 signal 11 } 
	{ SocketTable_theirIP_11 sc_in sc_lv 32 signal 12 } 
	{ SocketTable_theirIP_12 sc_in sc_lv 32 signal 13 } 
	{ SocketTable_theirIP_13 sc_in sc_lv 32 signal 14 } 
	{ SocketTable_theirIP_14 sc_in sc_lv 32 signal 15 } 
	{ SocketTable_theirIP_15 sc_in sc_lv 32 signal 16 } 
	{ SocketTable_theirPort_0 sc_in sc_lv 16 signal 17 } 
	{ SocketTable_theirPort_1 sc_in sc_lv 16 signal 18 } 
	{ SocketTable_theirPort_2 sc_in sc_lv 16 signal 19 } 
	{ SocketTable_theirPort_3 sc_in sc_lv 16 signal 20 } 
	{ SocketTable_theirPort_4 sc_in sc_lv 16 signal 21 } 
	{ SocketTable_theirPort_5 sc_in sc_lv 16 signal 22 } 
	{ SocketTable_theirPort_6 sc_in sc_lv 16 signal 23 } 
	{ SocketTable_theirPort_7 sc_in sc_lv 16 signal 24 } 
	{ SocketTable_theirPort_8 sc_in sc_lv 16 signal 25 } 
	{ SocketTable_theirPort_9 sc_in sc_lv 16 signal 26 } 
	{ SocketTable_theirPort_10 sc_in sc_lv 16 signal 27 } 
	{ SocketTable_theirPort_11 sc_in sc_lv 16 signal 28 } 
	{ SocketTable_theirPort_12 sc_in sc_lv 16 signal 29 } 
	{ SocketTable_theirPort_13 sc_in sc_lv 16 signal 30 } 
	{ SocketTable_theirPort_14 sc_in sc_lv 16 signal 31 } 
	{ SocketTable_theirPort_15 sc_in sc_lv 16 signal 32 } 
	{ SocketTable_myPort_0 sc_in sc_lv 16 signal 33 } 
	{ SocketTable_myPort_1 sc_in sc_lv 16 signal 34 } 
	{ SocketTable_myPort_2 sc_in sc_lv 16 signal 35 } 
	{ SocketTable_myPort_3 sc_in sc_lv 16 signal 36 } 
	{ SocketTable_myPort_4 sc_in sc_lv 16 signal 37 } 
	{ SocketTable_myPort_5 sc_in sc_lv 16 signal 38 } 
	{ SocketTable_myPort_6 sc_in sc_lv 16 signal 39 } 
	{ SocketTable_myPort_7 sc_in sc_lv 16 signal 40 } 
	{ SocketTable_myPort_8 sc_in sc_lv 16 signal 41 } 
	{ SocketTable_myPort_9 sc_in sc_lv 16 signal 42 } 
	{ SocketTable_myPort_10 sc_in sc_lv 16 signal 43 } 
	{ SocketTable_myPort_11 sc_in sc_lv 16 signal 44 } 
	{ SocketTable_myPort_12 sc_in sc_lv 16 signal 45 } 
	{ SocketTable_myPort_13 sc_in sc_lv 16 signal 46 } 
	{ SocketTable_myPort_14 sc_in sc_lv 16 signal 47 } 
	{ SocketTable_myPort_15 sc_in sc_lv 16 signal 48 } 
	{ SocketTable_valid_0 sc_in sc_lv 1 signal 49 } 
	{ SocketTable_valid_1 sc_in sc_lv 1 signal 50 } 
	{ SocketTable_valid_2 sc_in sc_lv 1 signal 51 } 
	{ SocketTable_valid_3 sc_in sc_lv 1 signal 52 } 
	{ SocketTable_valid_4 sc_in sc_lv 1 signal 53 } 
	{ SocketTable_valid_5 sc_in sc_lv 1 signal 54 } 
	{ SocketTable_valid_6 sc_in sc_lv 1 signal 55 } 
	{ SocketTable_valid_7 sc_in sc_lv 1 signal 56 } 
	{ SocketTable_valid_8 sc_in sc_lv 1 signal 57 } 
	{ SocketTable_valid_9 sc_in sc_lv 1 signal 58 } 
	{ SocketTable_valid_10 sc_in sc_lv 1 signal 59 } 
	{ SocketTable_valid_11 sc_in sc_lv 1 signal 60 } 
	{ SocketTable_valid_12 sc_in sc_lv 1 signal 61 } 
	{ SocketTable_valid_13 sc_in sc_lv 1 signal 62 } 
	{ SocketTable_valid_14 sc_in sc_lv 1 signal 63 } 
	{ SocketTable_valid_15 sc_in sc_lv 1 signal 64 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 32 signal -1 } 
	{ ap_return_3 sc_out sc_lv 32 signal -1 } 
	{ ap_return_4 sc_out sc_lv 32 signal -1 } 
	{ ap_return_5 sc_out sc_lv 32 signal -1 } 
	{ ap_return_6 sc_out sc_lv 32 signal -1 } 
	{ ap_return_7 sc_out sc_lv 32 signal -1 } 
	{ ap_return_8 sc_out sc_lv 32 signal -1 } 
	{ ap_return_9 sc_out sc_lv 32 signal -1 } 
	{ ap_return_10 sc_out sc_lv 32 signal -1 } 
	{ ap_return_11 sc_out sc_lv 32 signal -1 } 
	{ ap_return_12 sc_out sc_lv 32 signal -1 } 
	{ ap_return_13 sc_out sc_lv 32 signal -1 } 
	{ ap_return_14 sc_out sc_lv 32 signal -1 } 
	{ ap_return_15 sc_out sc_lv 32 signal -1 } 
	{ ap_return_16 sc_out sc_lv 32 signal -1 } 
	{ ap_return_17 sc_out sc_lv 16 signal -1 } 
	{ ap_return_18 sc_out sc_lv 16 signal -1 } 
	{ ap_return_19 sc_out sc_lv 16 signal -1 } 
	{ ap_return_20 sc_out sc_lv 16 signal -1 } 
	{ ap_return_21 sc_out sc_lv 16 signal -1 } 
	{ ap_return_22 sc_out sc_lv 16 signal -1 } 
	{ ap_return_23 sc_out sc_lv 16 signal -1 } 
	{ ap_return_24 sc_out sc_lv 16 signal -1 } 
	{ ap_return_25 sc_out sc_lv 16 signal -1 } 
	{ ap_return_26 sc_out sc_lv 16 signal -1 } 
	{ ap_return_27 sc_out sc_lv 16 signal -1 } 
	{ ap_return_28 sc_out sc_lv 16 signal -1 } 
	{ ap_return_29 sc_out sc_lv 16 signal -1 } 
	{ ap_return_30 sc_out sc_lv 16 signal -1 } 
	{ ap_return_31 sc_out sc_lv 16 signal -1 } 
	{ ap_return_32 sc_out sc_lv 16 signal -1 } 
	{ ap_return_33 sc_out sc_lv 16 signal -1 } 
	{ ap_return_34 sc_out sc_lv 16 signal -1 } 
	{ ap_return_35 sc_out sc_lv 16 signal -1 } 
	{ ap_return_36 sc_out sc_lv 16 signal -1 } 
	{ ap_return_37 sc_out sc_lv 16 signal -1 } 
	{ ap_return_38 sc_out sc_lv 16 signal -1 } 
	{ ap_return_39 sc_out sc_lv 16 signal -1 } 
	{ ap_return_40 sc_out sc_lv 16 signal -1 } 
	{ ap_return_41 sc_out sc_lv 16 signal -1 } 
	{ ap_return_42 sc_out sc_lv 16 signal -1 } 
	{ ap_return_43 sc_out sc_lv 16 signal -1 } 
	{ ap_return_44 sc_out sc_lv 16 signal -1 } 
	{ ap_return_45 sc_out sc_lv 16 signal -1 } 
	{ ap_return_46 sc_out sc_lv 16 signal -1 } 
	{ ap_return_47 sc_out sc_lv 16 signal -1 } 
	{ ap_return_48 sc_out sc_lv 16 signal -1 } 
	{ ap_return_49 sc_out sc_lv 1 signal -1 } 
	{ ap_return_50 sc_out sc_lv 1 signal -1 } 
	{ ap_return_51 sc_out sc_lv 1 signal -1 } 
	{ ap_return_52 sc_out sc_lv 1 signal -1 } 
	{ ap_return_53 sc_out sc_lv 1 signal -1 } 
	{ ap_return_54 sc_out sc_lv 1 signal -1 } 
	{ ap_return_55 sc_out sc_lv 1 signal -1 } 
	{ ap_return_56 sc_out sc_lv 1 signal -1 } 
	{ ap_return_57 sc_out sc_lv 1 signal -1 } 
	{ ap_return_58 sc_out sc_lv 1 signal -1 } 
	{ ap_return_59 sc_out sc_lv 1 signal -1 } 
	{ ap_return_60 sc_out sc_lv 1 signal -1 } 
	{ ap_return_61 sc_out sc_lv 1 signal -1 } 
	{ ap_return_62 sc_out sc_lv 1 signal -1 } 
	{ ap_return_63 sc_out sc_lv 1 signal -1 } 
	{ ap_return_64 sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "myIpAddress", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14", "role": "default" }} , 
 	{ "name": "SocketTable_theirIP_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14", "role": "default" }} , 
 	{ "name": "SocketTable_theirPort_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_0", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_1", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_2", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_3", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_4", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_5", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_6", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_7", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_8", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_9", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_10", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_11", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_12", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_13", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_14", "role": "default" }} , 
 	{ "name": "SocketTable_myPort_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_15", "role": "default" }} , 
 	{ "name": "SocketTable_valid_0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0", "role": "default" }} , 
 	{ "name": "SocketTable_valid_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1", "role": "default" }} , 
 	{ "name": "SocketTable_valid_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2", "role": "default" }} , 
 	{ "name": "SocketTable_valid_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3", "role": "default" }} , 
 	{ "name": "SocketTable_valid_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4", "role": "default" }} , 
 	{ "name": "SocketTable_valid_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5", "role": "default" }} , 
 	{ "name": "SocketTable_valid_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6", "role": "default" }} , 
 	{ "name": "SocketTable_valid_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7", "role": "default" }} , 
 	{ "name": "SocketTable_valid_8", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8", "role": "default" }} , 
 	{ "name": "SocketTable_valid_9", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9", "role": "default" }} , 
 	{ "name": "SocketTable_valid_10", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10", "role": "default" }} , 
 	{ "name": "SocketTable_valid_11", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11", "role": "default" }} , 
 	{ "name": "SocketTable_valid_12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12", "role": "default" }} , 
 	{ "name": "SocketTable_valid_13", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13", "role": "default" }} , 
 	{ "name": "SocketTable_valid_14", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14", "role": "default" }} , 
 	{ "name": "SocketTable_valid_15", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }} , 
 	{ "name": "ap_return_51", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_51", "role": "default" }} , 
 	{ "name": "ap_return_52", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_52", "role": "default" }} , 
 	{ "name": "ap_return_53", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_53", "role": "default" }} , 
 	{ "name": "ap_return_54", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_54", "role": "default" }} , 
 	{ "name": "ap_return_55", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_55", "role": "default" }} , 
 	{ "name": "ap_return_56", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_56", "role": "default" }} , 
 	{ "name": "ap_return_57", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_57", "role": "default" }} , 
 	{ "name": "ap_return_58", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_58", "role": "default" }} , 
 	{ "name": "ap_return_59", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_59", "role": "default" }} , 
 	{ "name": "ap_return_60", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_60", "role": "default" }} , 
 	{ "name": "ap_return_61", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_61", "role": "default" }} , 
 	{ "name": "ap_return_62", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_62", "role": "default" }} , 
 	{ "name": "ap_return_63", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_63", "role": "default" }} , 
 	{ "name": "ap_return_64", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return_64", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "SocketTable_valid_15", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		SocketTable_valid_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	myIpAddress { ap_none {  { myIpAddress in_data 0 32 } } }
	SocketTable_theirIP_0 { ap_none {  { SocketTable_theirIP_0 in_data 0 32 } } }
	SocketTable_theirIP_1 { ap_none {  { SocketTable_theirIP_1 in_data 0 32 } } }
	SocketTable_theirIP_2 { ap_none {  { SocketTable_theirIP_2 in_data 0 32 } } }
	SocketTable_theirIP_3 { ap_none {  { SocketTable_theirIP_3 in_data 0 32 } } }
	SocketTable_theirIP_4 { ap_none {  { SocketTable_theirIP_4 in_data 0 32 } } }
	SocketTable_theirIP_5 { ap_none {  { SocketTable_theirIP_5 in_data 0 32 } } }
	SocketTable_theirIP_6 { ap_none {  { SocketTable_theirIP_6 in_data 0 32 } } }
	SocketTable_theirIP_7 { ap_none {  { SocketTable_theirIP_7 in_data 0 32 } } }
	SocketTable_theirIP_8 { ap_none {  { SocketTable_theirIP_8 in_data 0 32 } } }
	SocketTable_theirIP_9 { ap_none {  { SocketTable_theirIP_9 in_data 0 32 } } }
	SocketTable_theirIP_10 { ap_none {  { SocketTable_theirIP_10 in_data 0 32 } } }
	SocketTable_theirIP_11 { ap_none {  { SocketTable_theirIP_11 in_data 0 32 } } }
	SocketTable_theirIP_12 { ap_none {  { SocketTable_theirIP_12 in_data 0 32 } } }
	SocketTable_theirIP_13 { ap_none {  { SocketTable_theirIP_13 in_data 0 32 } } }
	SocketTable_theirIP_14 { ap_none {  { SocketTable_theirIP_14 in_data 0 32 } } }
	SocketTable_theirIP_15 { ap_none {  { SocketTable_theirIP_15 in_data 0 32 } } }
	SocketTable_theirPort_0 { ap_none {  { SocketTable_theirPort_0 in_data 0 16 } } }
	SocketTable_theirPort_1 { ap_none {  { SocketTable_theirPort_1 in_data 0 16 } } }
	SocketTable_theirPort_2 { ap_none {  { SocketTable_theirPort_2 in_data 0 16 } } }
	SocketTable_theirPort_3 { ap_none {  { SocketTable_theirPort_3 in_data 0 16 } } }
	SocketTable_theirPort_4 { ap_none {  { SocketTable_theirPort_4 in_data 0 16 } } }
	SocketTable_theirPort_5 { ap_none {  { SocketTable_theirPort_5 in_data 0 16 } } }
	SocketTable_theirPort_6 { ap_none {  { SocketTable_theirPort_6 in_data 0 16 } } }
	SocketTable_theirPort_7 { ap_none {  { SocketTable_theirPort_7 in_data 0 16 } } }
	SocketTable_theirPort_8 { ap_none {  { SocketTable_theirPort_8 in_data 0 16 } } }
	SocketTable_theirPort_9 { ap_none {  { SocketTable_theirPort_9 in_data 0 16 } } }
	SocketTable_theirPort_10 { ap_none {  { SocketTable_theirPort_10 in_data 0 16 } } }
	SocketTable_theirPort_11 { ap_none {  { SocketTable_theirPort_11 in_data 0 16 } } }
	SocketTable_theirPort_12 { ap_none {  { SocketTable_theirPort_12 in_data 0 16 } } }
	SocketTable_theirPort_13 { ap_none {  { SocketTable_theirPort_13 in_data 0 16 } } }
	SocketTable_theirPort_14 { ap_none {  { SocketTable_theirPort_14 in_data 0 16 } } }
	SocketTable_theirPort_15 { ap_none {  { SocketTable_theirPort_15 in_data 0 16 } } }
	SocketTable_myPort_0 { ap_none {  { SocketTable_myPort_0 in_data 0 16 } } }
	SocketTable_myPort_1 { ap_none {  { SocketTable_myPort_1 in_data 0 16 } } }
	SocketTable_myPort_2 { ap_none {  { SocketTable_myPort_2 in_data 0 16 } } }
	SocketTable_myPort_3 { ap_none {  { SocketTable_myPort_3 in_data 0 16 } } }
	SocketTable_myPort_4 { ap_none {  { SocketTable_myPort_4 in_data 0 16 } } }
	SocketTable_myPort_5 { ap_none {  { SocketTable_myPort_5 in_data 0 16 } } }
	SocketTable_myPort_6 { ap_none {  { SocketTable_myPort_6 in_data 0 16 } } }
	SocketTable_myPort_7 { ap_none {  { SocketTable_myPort_7 in_data 0 16 } } }
	SocketTable_myPort_8 { ap_none {  { SocketTable_myPort_8 in_data 0 16 } } }
	SocketTable_myPort_9 { ap_none {  { SocketTable_myPort_9 in_data 0 16 } } }
	SocketTable_myPort_10 { ap_none {  { SocketTable_myPort_10 in_data 0 16 } } }
	SocketTable_myPort_11 { ap_none {  { SocketTable_myPort_11 in_data 0 16 } } }
	SocketTable_myPort_12 { ap_none {  { SocketTable_myPort_12 in_data 0 16 } } }
	SocketTable_myPort_13 { ap_none {  { SocketTable_myPort_13 in_data 0 16 } } }
	SocketTable_myPort_14 { ap_none {  { SocketTable_myPort_14 in_data 0 16 } } }
	SocketTable_myPort_15 { ap_none {  { SocketTable_myPort_15 in_data 0 16 } } }
	SocketTable_valid_0 { ap_none {  { SocketTable_valid_0 in_data 0 1 } } }
	SocketTable_valid_1 { ap_none {  { SocketTable_valid_1 in_data 0 1 } } }
	SocketTable_valid_2 { ap_none {  { SocketTable_valid_2 in_data 0 1 } } }
	SocketTable_valid_3 { ap_none {  { SocketTable_valid_3 in_data 0 1 } } }
	SocketTable_valid_4 { ap_none {  { SocketTable_valid_4 in_data 0 1 } } }
	SocketTable_valid_5 { ap_none {  { SocketTable_valid_5 in_data 0 1 } } }
	SocketTable_valid_6 { ap_none {  { SocketTable_valid_6 in_data 0 1 } } }
	SocketTable_valid_7 { ap_none {  { SocketTable_valid_7 in_data 0 1 } } }
	SocketTable_valid_8 { ap_none {  { SocketTable_valid_8 in_data 0 1 } } }
	SocketTable_valid_9 { ap_none {  { SocketTable_valid_9 in_data 0 1 } } }
	SocketTable_valid_10 { ap_none {  { SocketTable_valid_10 in_data 0 1 } } }
	SocketTable_valid_11 { ap_none {  { SocketTable_valid_11 in_data 0 1 } } }
	SocketTable_valid_12 { ap_none {  { SocketTable_valid_12 in_data 0 1 } } }
	SocketTable_valid_13 { ap_none {  { SocketTable_valid_13 in_data 0 1 } } }
	SocketTable_valid_14 { ap_none {  { SocketTable_valid_14 in_data 0 1 } } }
	SocketTable_valid_15 { ap_none {  { SocketTable_valid_15 in_data 0 1 } } }
}
