set moduleName TableHandler
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {TableHandler}
set C_modelType { void 0 }
set C_modelArgList {
	{ SocketTable_theirIP_0 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_1 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_2 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_3 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_4 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_5 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_6 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_7 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_8 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_9 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_10 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_11 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_12 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_13 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_14 int 32 regular {fifo 0}  }
	{ SocketTable_theirIP_15 int 32 regular {fifo 0}  }
	{ SocketTable_theirPort_0 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_1 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_2 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_3 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_4 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_5 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_6 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_7 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_8 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_9 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_10 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_11 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_12 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_13 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_14 int 16 regular {fifo 0}  }
	{ SocketTable_theirPort_15 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_0 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_1 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_2 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_3 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_4 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_5 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_6 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_7 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_8 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_9 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_10 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_11 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_12 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_13 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_14 int 16 regular {fifo 0}  }
	{ SocketTable_myPort_15 int 16 regular {fifo 0}  }
	{ SocketTable_valid_0 int 1 regular {fifo 0}  }
	{ SocketTable_valid_1 int 1 regular {fifo 0}  }
	{ SocketTable_valid_2 int 1 regular {fifo 0}  }
	{ SocketTable_valid_3 int 1 regular {fifo 0}  }
	{ SocketTable_valid_4 int 1 regular {fifo 0}  }
	{ SocketTable_valid_5 int 1 regular {fifo 0}  }
	{ SocketTable_valid_6 int 1 regular {fifo 0}  }
	{ SocketTable_valid_7 int 1 regular {fifo 0}  }
	{ SocketTable_valid_8 int 1 regular {fifo 0}  }
	{ SocketTable_valid_9 int 1 regular {fifo 0}  }
	{ SocketTable_valid_10 int 1 regular {fifo 0}  }
	{ SocketTable_valid_11 int 1 regular {fifo 0}  }
	{ SocketTable_valid_12 int 1 regular {fifo 0}  }
	{ SocketTable_valid_13 int 1 regular {fifo 0}  }
	{ SocketTable_valid_14 int 1 regular {fifo 0}  }
	{ SocketTable_valid_15 int 1 regular {fifo 0}  }
	{ numberSockets int 16 regular {pointer 1}  }
	{ myIpAddress int 32 regular {fifo 0}  }
	{ ureMetaData int 128 regular {fifo 0 volatile } {global 0}  }
	{ rthDropFifo int 160 regular {fifo 1 volatile } {global 1}  }
	{ agmdIdOut int 16 regular {fifo 0 volatile } {global 0}  }
	{ txthMetaData int 128 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SocketTable_theirIP_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_4", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_5", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_6", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_7", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_8", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_9", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_10", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_11", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_12", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_13", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_14", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirIP_15", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_2", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_3", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_4", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_5", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_6", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_7", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_8", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_9", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_10", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_11", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_12", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_13", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_14", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_theirPort_15", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_1", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_2", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_3", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_4", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_5", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_6", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_7", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_8", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_9", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_10", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_11", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_12", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_13", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_14", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_myPort_15", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_0", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_2", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_3", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_4", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_5", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_6", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_7", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_8", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_9", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_10", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_11", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_12", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_13", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_14", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTable_valid_15", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "numberSockets", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "myIpAddress", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ureMetaData", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "rthDropFifo", "interface" : "fifo", "bitwidth" : 160, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "agmdIdOut", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txthMetaData", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 216
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SocketTable_valid_15_dout sc_in sc_lv 1 signal 63 } 
	{ SocketTable_valid_15_empty_n sc_in sc_logic 1 signal 63 } 
	{ SocketTable_valid_15_read sc_out sc_logic 1 signal 63 } 
	{ SocketTable_valid_14_dout sc_in sc_lv 1 signal 62 } 
	{ SocketTable_valid_14_empty_n sc_in sc_logic 1 signal 62 } 
	{ SocketTable_valid_14_read sc_out sc_logic 1 signal 62 } 
	{ SocketTable_valid_13_dout sc_in sc_lv 1 signal 61 } 
	{ SocketTable_valid_13_empty_n sc_in sc_logic 1 signal 61 } 
	{ SocketTable_valid_13_read sc_out sc_logic 1 signal 61 } 
	{ SocketTable_valid_12_dout sc_in sc_lv 1 signal 60 } 
	{ SocketTable_valid_12_empty_n sc_in sc_logic 1 signal 60 } 
	{ SocketTable_valid_12_read sc_out sc_logic 1 signal 60 } 
	{ SocketTable_valid_11_dout sc_in sc_lv 1 signal 59 } 
	{ SocketTable_valid_11_empty_n sc_in sc_logic 1 signal 59 } 
	{ SocketTable_valid_11_read sc_out sc_logic 1 signal 59 } 
	{ SocketTable_valid_10_dout sc_in sc_lv 1 signal 58 } 
	{ SocketTable_valid_10_empty_n sc_in sc_logic 1 signal 58 } 
	{ SocketTable_valid_10_read sc_out sc_logic 1 signal 58 } 
	{ SocketTable_valid_9_dout sc_in sc_lv 1 signal 57 } 
	{ SocketTable_valid_9_empty_n sc_in sc_logic 1 signal 57 } 
	{ SocketTable_valid_9_read sc_out sc_logic 1 signal 57 } 
	{ SocketTable_valid_8_dout sc_in sc_lv 1 signal 56 } 
	{ SocketTable_valid_8_empty_n sc_in sc_logic 1 signal 56 } 
	{ SocketTable_valid_8_read sc_out sc_logic 1 signal 56 } 
	{ SocketTable_valid_7_dout sc_in sc_lv 1 signal 55 } 
	{ SocketTable_valid_7_empty_n sc_in sc_logic 1 signal 55 } 
	{ SocketTable_valid_7_read sc_out sc_logic 1 signal 55 } 
	{ SocketTable_valid_6_dout sc_in sc_lv 1 signal 54 } 
	{ SocketTable_valid_6_empty_n sc_in sc_logic 1 signal 54 } 
	{ SocketTable_valid_6_read sc_out sc_logic 1 signal 54 } 
	{ SocketTable_valid_5_dout sc_in sc_lv 1 signal 53 } 
	{ SocketTable_valid_5_empty_n sc_in sc_logic 1 signal 53 } 
	{ SocketTable_valid_5_read sc_out sc_logic 1 signal 53 } 
	{ SocketTable_valid_4_dout sc_in sc_lv 1 signal 52 } 
	{ SocketTable_valid_4_empty_n sc_in sc_logic 1 signal 52 } 
	{ SocketTable_valid_4_read sc_out sc_logic 1 signal 52 } 
	{ SocketTable_valid_3_dout sc_in sc_lv 1 signal 51 } 
	{ SocketTable_valid_3_empty_n sc_in sc_logic 1 signal 51 } 
	{ SocketTable_valid_3_read sc_out sc_logic 1 signal 51 } 
	{ SocketTable_valid_2_dout sc_in sc_lv 1 signal 50 } 
	{ SocketTable_valid_2_empty_n sc_in sc_logic 1 signal 50 } 
	{ SocketTable_valid_2_read sc_out sc_logic 1 signal 50 } 
	{ SocketTable_valid_1_dout sc_in sc_lv 1 signal 49 } 
	{ SocketTable_valid_1_empty_n sc_in sc_logic 1 signal 49 } 
	{ SocketTable_valid_1_read sc_out sc_logic 1 signal 49 } 
	{ SocketTable_valid_0_dout sc_in sc_lv 1 signal 48 } 
	{ SocketTable_valid_0_empty_n sc_in sc_logic 1 signal 48 } 
	{ SocketTable_valid_0_read sc_out sc_logic 1 signal 48 } 
	{ SocketTable_myPort_15_dout sc_in sc_lv 16 signal 47 } 
	{ SocketTable_myPort_15_empty_n sc_in sc_logic 1 signal 47 } 
	{ SocketTable_myPort_15_read sc_out sc_logic 1 signal 47 } 
	{ SocketTable_myPort_14_dout sc_in sc_lv 16 signal 46 } 
	{ SocketTable_myPort_14_empty_n sc_in sc_logic 1 signal 46 } 
	{ SocketTable_myPort_14_read sc_out sc_logic 1 signal 46 } 
	{ SocketTable_myPort_13_dout sc_in sc_lv 16 signal 45 } 
	{ SocketTable_myPort_13_empty_n sc_in sc_logic 1 signal 45 } 
	{ SocketTable_myPort_13_read sc_out sc_logic 1 signal 45 } 
	{ SocketTable_myPort_12_dout sc_in sc_lv 16 signal 44 } 
	{ SocketTable_myPort_12_empty_n sc_in sc_logic 1 signal 44 } 
	{ SocketTable_myPort_12_read sc_out sc_logic 1 signal 44 } 
	{ SocketTable_myPort_11_dout sc_in sc_lv 16 signal 43 } 
	{ SocketTable_myPort_11_empty_n sc_in sc_logic 1 signal 43 } 
	{ SocketTable_myPort_11_read sc_out sc_logic 1 signal 43 } 
	{ SocketTable_myPort_10_dout sc_in sc_lv 16 signal 42 } 
	{ SocketTable_myPort_10_empty_n sc_in sc_logic 1 signal 42 } 
	{ SocketTable_myPort_10_read sc_out sc_logic 1 signal 42 } 
	{ SocketTable_myPort_9_dout sc_in sc_lv 16 signal 41 } 
	{ SocketTable_myPort_9_empty_n sc_in sc_logic 1 signal 41 } 
	{ SocketTable_myPort_9_read sc_out sc_logic 1 signal 41 } 
	{ SocketTable_myPort_8_dout sc_in sc_lv 16 signal 40 } 
	{ SocketTable_myPort_8_empty_n sc_in sc_logic 1 signal 40 } 
	{ SocketTable_myPort_8_read sc_out sc_logic 1 signal 40 } 
	{ SocketTable_myPort_7_dout sc_in sc_lv 16 signal 39 } 
	{ SocketTable_myPort_7_empty_n sc_in sc_logic 1 signal 39 } 
	{ SocketTable_myPort_7_read sc_out sc_logic 1 signal 39 } 
	{ SocketTable_myPort_6_dout sc_in sc_lv 16 signal 38 } 
	{ SocketTable_myPort_6_empty_n sc_in sc_logic 1 signal 38 } 
	{ SocketTable_myPort_6_read sc_out sc_logic 1 signal 38 } 
	{ SocketTable_myPort_5_dout sc_in sc_lv 16 signal 37 } 
	{ SocketTable_myPort_5_empty_n sc_in sc_logic 1 signal 37 } 
	{ SocketTable_myPort_5_read sc_out sc_logic 1 signal 37 } 
	{ SocketTable_myPort_4_dout sc_in sc_lv 16 signal 36 } 
	{ SocketTable_myPort_4_empty_n sc_in sc_logic 1 signal 36 } 
	{ SocketTable_myPort_4_read sc_out sc_logic 1 signal 36 } 
	{ SocketTable_myPort_3_dout sc_in sc_lv 16 signal 35 } 
	{ SocketTable_myPort_3_empty_n sc_in sc_logic 1 signal 35 } 
	{ SocketTable_myPort_3_read sc_out sc_logic 1 signal 35 } 
	{ SocketTable_myPort_2_dout sc_in sc_lv 16 signal 34 } 
	{ SocketTable_myPort_2_empty_n sc_in sc_logic 1 signal 34 } 
	{ SocketTable_myPort_2_read sc_out sc_logic 1 signal 34 } 
	{ SocketTable_myPort_1_dout sc_in sc_lv 16 signal 33 } 
	{ SocketTable_myPort_1_empty_n sc_in sc_logic 1 signal 33 } 
	{ SocketTable_myPort_1_read sc_out sc_logic 1 signal 33 } 
	{ SocketTable_myPort_0_dout sc_in sc_lv 16 signal 32 } 
	{ SocketTable_myPort_0_empty_n sc_in sc_logic 1 signal 32 } 
	{ SocketTable_myPort_0_read sc_out sc_logic 1 signal 32 } 
	{ SocketTable_theirPort_15_dout sc_in sc_lv 16 signal 31 } 
	{ SocketTable_theirPort_15_empty_n sc_in sc_logic 1 signal 31 } 
	{ SocketTable_theirPort_15_read sc_out sc_logic 1 signal 31 } 
	{ SocketTable_theirPort_14_dout sc_in sc_lv 16 signal 30 } 
	{ SocketTable_theirPort_14_empty_n sc_in sc_logic 1 signal 30 } 
	{ SocketTable_theirPort_14_read sc_out sc_logic 1 signal 30 } 
	{ SocketTable_theirPort_13_dout sc_in sc_lv 16 signal 29 } 
	{ SocketTable_theirPort_13_empty_n sc_in sc_logic 1 signal 29 } 
	{ SocketTable_theirPort_13_read sc_out sc_logic 1 signal 29 } 
	{ SocketTable_theirPort_12_dout sc_in sc_lv 16 signal 28 } 
	{ SocketTable_theirPort_12_empty_n sc_in sc_logic 1 signal 28 } 
	{ SocketTable_theirPort_12_read sc_out sc_logic 1 signal 28 } 
	{ SocketTable_theirPort_11_dout sc_in sc_lv 16 signal 27 } 
	{ SocketTable_theirPort_11_empty_n sc_in sc_logic 1 signal 27 } 
	{ SocketTable_theirPort_11_read sc_out sc_logic 1 signal 27 } 
	{ SocketTable_theirPort_10_dout sc_in sc_lv 16 signal 26 } 
	{ SocketTable_theirPort_10_empty_n sc_in sc_logic 1 signal 26 } 
	{ SocketTable_theirPort_10_read sc_out sc_logic 1 signal 26 } 
	{ SocketTable_theirPort_9_dout sc_in sc_lv 16 signal 25 } 
	{ SocketTable_theirPort_9_empty_n sc_in sc_logic 1 signal 25 } 
	{ SocketTable_theirPort_9_read sc_out sc_logic 1 signal 25 } 
	{ SocketTable_theirPort_8_dout sc_in sc_lv 16 signal 24 } 
	{ SocketTable_theirPort_8_empty_n sc_in sc_logic 1 signal 24 } 
	{ SocketTable_theirPort_8_read sc_out sc_logic 1 signal 24 } 
	{ SocketTable_theirPort_7_dout sc_in sc_lv 16 signal 23 } 
	{ SocketTable_theirPort_7_empty_n sc_in sc_logic 1 signal 23 } 
	{ SocketTable_theirPort_7_read sc_out sc_logic 1 signal 23 } 
	{ SocketTable_theirPort_6_dout sc_in sc_lv 16 signal 22 } 
	{ SocketTable_theirPort_6_empty_n sc_in sc_logic 1 signal 22 } 
	{ SocketTable_theirPort_6_read sc_out sc_logic 1 signal 22 } 
	{ SocketTable_theirPort_5_dout sc_in sc_lv 16 signal 21 } 
	{ SocketTable_theirPort_5_empty_n sc_in sc_logic 1 signal 21 } 
	{ SocketTable_theirPort_5_read sc_out sc_logic 1 signal 21 } 
	{ SocketTable_theirPort_4_dout sc_in sc_lv 16 signal 20 } 
	{ SocketTable_theirPort_4_empty_n sc_in sc_logic 1 signal 20 } 
	{ SocketTable_theirPort_4_read sc_out sc_logic 1 signal 20 } 
	{ SocketTable_theirPort_3_dout sc_in sc_lv 16 signal 19 } 
	{ SocketTable_theirPort_3_empty_n sc_in sc_logic 1 signal 19 } 
	{ SocketTable_theirPort_3_read sc_out sc_logic 1 signal 19 } 
	{ SocketTable_theirPort_2_dout sc_in sc_lv 16 signal 18 } 
	{ SocketTable_theirPort_2_empty_n sc_in sc_logic 1 signal 18 } 
	{ SocketTable_theirPort_2_read sc_out sc_logic 1 signal 18 } 
	{ SocketTable_theirPort_1_dout sc_in sc_lv 16 signal 17 } 
	{ SocketTable_theirPort_1_empty_n sc_in sc_logic 1 signal 17 } 
	{ SocketTable_theirPort_1_read sc_out sc_logic 1 signal 17 } 
	{ SocketTable_theirPort_0_dout sc_in sc_lv 16 signal 16 } 
	{ SocketTable_theirPort_0_empty_n sc_in sc_logic 1 signal 16 } 
	{ SocketTable_theirPort_0_read sc_out sc_logic 1 signal 16 } 
	{ SocketTable_theirIP_15_dout sc_in sc_lv 32 signal 15 } 
	{ SocketTable_theirIP_15_empty_n sc_in sc_logic 1 signal 15 } 
	{ SocketTable_theirIP_15_read sc_out sc_logic 1 signal 15 } 
	{ SocketTable_theirIP_14_dout sc_in sc_lv 32 signal 14 } 
	{ SocketTable_theirIP_14_empty_n sc_in sc_logic 1 signal 14 } 
	{ SocketTable_theirIP_14_read sc_out sc_logic 1 signal 14 } 
	{ SocketTable_theirIP_13_dout sc_in sc_lv 32 signal 13 } 
	{ SocketTable_theirIP_13_empty_n sc_in sc_logic 1 signal 13 } 
	{ SocketTable_theirIP_13_read sc_out sc_logic 1 signal 13 } 
	{ SocketTable_theirIP_12_dout sc_in sc_lv 32 signal 12 } 
	{ SocketTable_theirIP_12_empty_n sc_in sc_logic 1 signal 12 } 
	{ SocketTable_theirIP_12_read sc_out sc_logic 1 signal 12 } 
	{ SocketTable_theirIP_11_dout sc_in sc_lv 32 signal 11 } 
	{ SocketTable_theirIP_11_empty_n sc_in sc_logic 1 signal 11 } 
	{ SocketTable_theirIP_11_read sc_out sc_logic 1 signal 11 } 
	{ SocketTable_theirIP_10_dout sc_in sc_lv 32 signal 10 } 
	{ SocketTable_theirIP_10_empty_n sc_in sc_logic 1 signal 10 } 
	{ SocketTable_theirIP_10_read sc_out sc_logic 1 signal 10 } 
	{ SocketTable_theirIP_9_dout sc_in sc_lv 32 signal 9 } 
	{ SocketTable_theirIP_9_empty_n sc_in sc_logic 1 signal 9 } 
	{ SocketTable_theirIP_9_read sc_out sc_logic 1 signal 9 } 
	{ SocketTable_theirIP_8_dout sc_in sc_lv 32 signal 8 } 
	{ SocketTable_theirIP_8_empty_n sc_in sc_logic 1 signal 8 } 
	{ SocketTable_theirIP_8_read sc_out sc_logic 1 signal 8 } 
	{ SocketTable_theirIP_7_dout sc_in sc_lv 32 signal 7 } 
	{ SocketTable_theirIP_7_empty_n sc_in sc_logic 1 signal 7 } 
	{ SocketTable_theirIP_7_read sc_out sc_logic 1 signal 7 } 
	{ SocketTable_theirIP_6_dout sc_in sc_lv 32 signal 6 } 
	{ SocketTable_theirIP_6_empty_n sc_in sc_logic 1 signal 6 } 
	{ SocketTable_theirIP_6_read sc_out sc_logic 1 signal 6 } 
	{ SocketTable_theirIP_5_dout sc_in sc_lv 32 signal 5 } 
	{ SocketTable_theirIP_5_empty_n sc_in sc_logic 1 signal 5 } 
	{ SocketTable_theirIP_5_read sc_out sc_logic 1 signal 5 } 
	{ SocketTable_theirIP_4_dout sc_in sc_lv 32 signal 4 } 
	{ SocketTable_theirIP_4_empty_n sc_in sc_logic 1 signal 4 } 
	{ SocketTable_theirIP_4_read sc_out sc_logic 1 signal 4 } 
	{ SocketTable_theirIP_3_dout sc_in sc_lv 32 signal 3 } 
	{ SocketTable_theirIP_3_empty_n sc_in sc_logic 1 signal 3 } 
	{ SocketTable_theirIP_3_read sc_out sc_logic 1 signal 3 } 
	{ SocketTable_theirIP_2_dout sc_in sc_lv 32 signal 2 } 
	{ SocketTable_theirIP_2_empty_n sc_in sc_logic 1 signal 2 } 
	{ SocketTable_theirIP_2_read sc_out sc_logic 1 signal 2 } 
	{ SocketTable_theirIP_1_dout sc_in sc_lv 32 signal 1 } 
	{ SocketTable_theirIP_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ SocketTable_theirIP_1_read sc_out sc_logic 1 signal 1 } 
	{ SocketTable_theirIP_0_dout sc_in sc_lv 32 signal 0 } 
	{ SocketTable_theirIP_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ SocketTable_theirIP_0_read sc_out sc_logic 1 signal 0 } 
	{ myIpAddress_dout sc_in sc_lv 32 signal 65 } 
	{ myIpAddress_empty_n sc_in sc_logic 1 signal 65 } 
	{ myIpAddress_read sc_out sc_logic 1 signal 65 } 
	{ ureMetaData_dout sc_in sc_lv 128 signal 66 } 
	{ ureMetaData_empty_n sc_in sc_logic 1 signal 66 } 
	{ ureMetaData_read sc_out sc_logic 1 signal 66 } 
	{ agmdIdOut_dout sc_in sc_lv 16 signal 68 } 
	{ agmdIdOut_empty_n sc_in sc_logic 1 signal 68 } 
	{ agmdIdOut_read sc_out sc_logic 1 signal 68 } 
	{ txthMetaData_din sc_out sc_lv 128 signal 69 } 
	{ txthMetaData_full_n sc_in sc_logic 1 signal 69 } 
	{ txthMetaData_write sc_out sc_logic 1 signal 69 } 
	{ rthDropFifo_din sc_out sc_lv 160 signal 67 } 
	{ rthDropFifo_full_n sc_in sc_logic 1 signal 67 } 
	{ rthDropFifo_write sc_out sc_logic 1 signal 67 } 
	{ numberSockets sc_out sc_lv 16 signal 64 } 
	{ numberSockets_ap_vld sc_out sc_logic 1 outvld 64 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SocketTable_valid_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_15", "role": "read" }} , 
 	{ "name": "SocketTable_valid_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_14", "role": "read" }} , 
 	{ "name": "SocketTable_valid_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_13", "role": "read" }} , 
 	{ "name": "SocketTable_valid_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_12", "role": "read" }} , 
 	{ "name": "SocketTable_valid_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_11", "role": "read" }} , 
 	{ "name": "SocketTable_valid_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_10", "role": "read" }} , 
 	{ "name": "SocketTable_valid_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_9", "role": "read" }} , 
 	{ "name": "SocketTable_valid_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_8", "role": "read" }} , 
 	{ "name": "SocketTable_valid_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_7", "role": "read" }} , 
 	{ "name": "SocketTable_valid_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_6", "role": "read" }} , 
 	{ "name": "SocketTable_valid_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_5", "role": "read" }} , 
 	{ "name": "SocketTable_valid_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_4", "role": "read" }} , 
 	{ "name": "SocketTable_valid_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_3", "role": "read" }} , 
 	{ "name": "SocketTable_valid_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_2", "role": "read" }} , 
 	{ "name": "SocketTable_valid_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_1", "role": "read" }} , 
 	{ "name": "SocketTable_valid_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0", "role": "dout" }} , 
 	{ "name": "SocketTable_valid_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0", "role": "empty_n" }} , 
 	{ "name": "SocketTable_valid_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_valid_0", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_15", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_15", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_15", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_14", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_14", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_14", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_13", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_13", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_13", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_12", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_12", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_12", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_11", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_11", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_11", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_10", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_10", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_10", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_9", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_9", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_9", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_8", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_8", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_8", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_7", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_7", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_7", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_6", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_6", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_6", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_5", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_5", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_5", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_4", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_4", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_4", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_3", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_3", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_3", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_2", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_2", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_2", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_1", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_1", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_1", "role": "read" }} , 
 	{ "name": "SocketTable_myPort_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_myPort_0", "role": "dout" }} , 
 	{ "name": "SocketTable_myPort_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_0", "role": "empty_n" }} , 
 	{ "name": "SocketTable_myPort_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_myPort_0", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_15", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_14", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_13", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_12", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_11", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_10", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_9", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_8", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_7", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_6", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_5", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_4", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_3", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_2", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_1", "role": "read" }} , 
 	{ "name": "SocketTable_theirPort_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0", "role": "dout" }} , 
 	{ "name": "SocketTable_theirPort_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirPort_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirPort_0", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_15", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_14_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_14_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_14_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_14", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_13_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_13_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_13_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_13", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_12_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_12_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_12_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_12", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_11_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_11_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_11_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_11", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_10_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_10_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_10_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_10", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_9_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_9_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_9_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_9", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_8_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_8_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_8_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_8", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_7_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_7_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_7_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_7", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_6_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_6_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_6_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_6", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_5", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_4_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_4_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_4_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_4", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_3", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_2", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_1", "role": "read" }} , 
 	{ "name": "SocketTable_theirIP_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0", "role": "dout" }} , 
 	{ "name": "SocketTable_theirIP_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0", "role": "empty_n" }} , 
 	{ "name": "SocketTable_theirIP_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTable_theirIP_0", "role": "read" }} , 
 	{ "name": "myIpAddress_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress", "role": "dout" }} , 
 	{ "name": "myIpAddress_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "empty_n" }} , 
 	{ "name": "myIpAddress_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "myIpAddress", "role": "read" }} , 
 	{ "name": "ureMetaData_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ureMetaData", "role": "dout" }} , 
 	{ "name": "ureMetaData_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureMetaData", "role": "empty_n" }} , 
 	{ "name": "ureMetaData_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ureMetaData", "role": "read" }} , 
 	{ "name": "agmdIdOut_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdIdOut", "role": "dout" }} , 
 	{ "name": "agmdIdOut_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut", "role": "empty_n" }} , 
 	{ "name": "agmdIdOut_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut", "role": "read" }} , 
 	{ "name": "txthMetaData_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "txthMetaData", "role": "din" }} , 
 	{ "name": "txthMetaData_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData", "role": "full_n" }} , 
 	{ "name": "txthMetaData_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData", "role": "write" }} , 
 	{ "name": "rthDropFifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":160, "type": "signal", "bundle":{"name": "rthDropFifo", "role": "din" }} , 
 	{ "name": "rthDropFifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rthDropFifo", "role": "full_n" }} , 
 	{ "name": "rthDropFifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rthDropFifo", "role": "write" }} , 
 	{ "name": "numberSockets", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "numberSockets", "role": "default" }} , 
 	{ "name": "numberSockets_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "numberSockets", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "SocketTable_theirIP_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirIP_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirIP_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_theirPort_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_theirPort_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_myPort_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_myPort_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_8", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_9", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_10", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_11", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_12", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_13", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_14", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_14_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTable_valid_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "SocketTable_valid_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numberSockets", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "myIpAddress", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "myIpAddress_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ureMetaData", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "ureMetaData_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rthDropFifo", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rthDropFifo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "agmdIdOut", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txthMetaData", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "txthMetaData_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1616_32_1_1_U141", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1616_16_1_1_U142", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1616_16_1_1_U143", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_1616_1_1_1_U144", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TableHandler {
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
		myIpAddress {Type I LastRead 0 FirstWrite -1}
		ureMetaData {Type I LastRead 0 FirstWrite -1}
		rthDropFifo {Type O LastRead -1 FirstWrite 2}
		agmdIdOut {Type I LastRead 0 FirstWrite -1}
		txthMetaData {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	SocketTable_theirIP_0 { ap_fifo {  { SocketTable_theirIP_0_dout fifo_data 0 32 }  { SocketTable_theirIP_0_empty_n fifo_status 0 1 }  { SocketTable_theirIP_0_read fifo_update 1 1 } } }
	SocketTable_theirIP_1 { ap_fifo {  { SocketTable_theirIP_1_dout fifo_data 0 32 }  { SocketTable_theirIP_1_empty_n fifo_status 0 1 }  { SocketTable_theirIP_1_read fifo_update 1 1 } } }
	SocketTable_theirIP_2 { ap_fifo {  { SocketTable_theirIP_2_dout fifo_data 0 32 }  { SocketTable_theirIP_2_empty_n fifo_status 0 1 }  { SocketTable_theirIP_2_read fifo_update 1 1 } } }
	SocketTable_theirIP_3 { ap_fifo {  { SocketTable_theirIP_3_dout fifo_data 0 32 }  { SocketTable_theirIP_3_empty_n fifo_status 0 1 }  { SocketTable_theirIP_3_read fifo_update 1 1 } } }
	SocketTable_theirIP_4 { ap_fifo {  { SocketTable_theirIP_4_dout fifo_data 0 32 }  { SocketTable_theirIP_4_empty_n fifo_status 0 1 }  { SocketTable_theirIP_4_read fifo_update 1 1 } } }
	SocketTable_theirIP_5 { ap_fifo {  { SocketTable_theirIP_5_dout fifo_data 0 32 }  { SocketTable_theirIP_5_empty_n fifo_status 0 1 }  { SocketTable_theirIP_5_read fifo_update 1 1 } } }
	SocketTable_theirIP_6 { ap_fifo {  { SocketTable_theirIP_6_dout fifo_data 0 32 }  { SocketTable_theirIP_6_empty_n fifo_status 0 1 }  { SocketTable_theirIP_6_read fifo_update 1 1 } } }
	SocketTable_theirIP_7 { ap_fifo {  { SocketTable_theirIP_7_dout fifo_data 0 32 }  { SocketTable_theirIP_7_empty_n fifo_status 0 1 }  { SocketTable_theirIP_7_read fifo_update 1 1 } } }
	SocketTable_theirIP_8 { ap_fifo {  { SocketTable_theirIP_8_dout fifo_data 0 32 }  { SocketTable_theirIP_8_empty_n fifo_status 0 1 }  { SocketTable_theirIP_8_read fifo_update 1 1 } } }
	SocketTable_theirIP_9 { ap_fifo {  { SocketTable_theirIP_9_dout fifo_data 0 32 }  { SocketTable_theirIP_9_empty_n fifo_status 0 1 }  { SocketTable_theirIP_9_read fifo_update 1 1 } } }
	SocketTable_theirIP_10 { ap_fifo {  { SocketTable_theirIP_10_dout fifo_data 0 32 }  { SocketTable_theirIP_10_empty_n fifo_status 0 1 }  { SocketTable_theirIP_10_read fifo_update 1 1 } } }
	SocketTable_theirIP_11 { ap_fifo {  { SocketTable_theirIP_11_dout fifo_data 0 32 }  { SocketTable_theirIP_11_empty_n fifo_status 0 1 }  { SocketTable_theirIP_11_read fifo_update 1 1 } } }
	SocketTable_theirIP_12 { ap_fifo {  { SocketTable_theirIP_12_dout fifo_data 0 32 }  { SocketTable_theirIP_12_empty_n fifo_status 0 1 }  { SocketTable_theirIP_12_read fifo_update 1 1 } } }
	SocketTable_theirIP_13 { ap_fifo {  { SocketTable_theirIP_13_dout fifo_data 0 32 }  { SocketTable_theirIP_13_empty_n fifo_status 0 1 }  { SocketTable_theirIP_13_read fifo_update 1 1 } } }
	SocketTable_theirIP_14 { ap_fifo {  { SocketTable_theirIP_14_dout fifo_data 0 32 }  { SocketTable_theirIP_14_empty_n fifo_status 0 1 }  { SocketTable_theirIP_14_read fifo_update 1 1 } } }
	SocketTable_theirIP_15 { ap_fifo {  { SocketTable_theirIP_15_dout fifo_data 0 32 }  { SocketTable_theirIP_15_empty_n fifo_status 0 1 }  { SocketTable_theirIP_15_read fifo_update 1 1 } } }
	SocketTable_theirPort_0 { ap_fifo {  { SocketTable_theirPort_0_dout fifo_data 0 16 }  { SocketTable_theirPort_0_empty_n fifo_status 0 1 }  { SocketTable_theirPort_0_read fifo_update 1 1 } } }
	SocketTable_theirPort_1 { ap_fifo {  { SocketTable_theirPort_1_dout fifo_data 0 16 }  { SocketTable_theirPort_1_empty_n fifo_status 0 1 }  { SocketTable_theirPort_1_read fifo_update 1 1 } } }
	SocketTable_theirPort_2 { ap_fifo {  { SocketTable_theirPort_2_dout fifo_data 0 16 }  { SocketTable_theirPort_2_empty_n fifo_status 0 1 }  { SocketTable_theirPort_2_read fifo_update 1 1 } } }
	SocketTable_theirPort_3 { ap_fifo {  { SocketTable_theirPort_3_dout fifo_data 0 16 }  { SocketTable_theirPort_3_empty_n fifo_status 0 1 }  { SocketTable_theirPort_3_read fifo_update 1 1 } } }
	SocketTable_theirPort_4 { ap_fifo {  { SocketTable_theirPort_4_dout fifo_data 0 16 }  { SocketTable_theirPort_4_empty_n fifo_status 0 1 }  { SocketTable_theirPort_4_read fifo_update 1 1 } } }
	SocketTable_theirPort_5 { ap_fifo {  { SocketTable_theirPort_5_dout fifo_data 0 16 }  { SocketTable_theirPort_5_empty_n fifo_status 0 1 }  { SocketTable_theirPort_5_read fifo_update 1 1 } } }
	SocketTable_theirPort_6 { ap_fifo {  { SocketTable_theirPort_6_dout fifo_data 0 16 }  { SocketTable_theirPort_6_empty_n fifo_status 0 1 }  { SocketTable_theirPort_6_read fifo_update 1 1 } } }
	SocketTable_theirPort_7 { ap_fifo {  { SocketTable_theirPort_7_dout fifo_data 0 16 }  { SocketTable_theirPort_7_empty_n fifo_status 0 1 }  { SocketTable_theirPort_7_read fifo_update 1 1 } } }
	SocketTable_theirPort_8 { ap_fifo {  { SocketTable_theirPort_8_dout fifo_data 0 16 }  { SocketTable_theirPort_8_empty_n fifo_status 0 1 }  { SocketTable_theirPort_8_read fifo_update 1 1 } } }
	SocketTable_theirPort_9 { ap_fifo {  { SocketTable_theirPort_9_dout fifo_data 0 16 }  { SocketTable_theirPort_9_empty_n fifo_status 0 1 }  { SocketTable_theirPort_9_read fifo_update 1 1 } } }
	SocketTable_theirPort_10 { ap_fifo {  { SocketTable_theirPort_10_dout fifo_data 0 16 }  { SocketTable_theirPort_10_empty_n fifo_status 0 1 }  { SocketTable_theirPort_10_read fifo_update 1 1 } } }
	SocketTable_theirPort_11 { ap_fifo {  { SocketTable_theirPort_11_dout fifo_data 0 16 }  { SocketTable_theirPort_11_empty_n fifo_status 0 1 }  { SocketTable_theirPort_11_read fifo_update 1 1 } } }
	SocketTable_theirPort_12 { ap_fifo {  { SocketTable_theirPort_12_dout fifo_data 0 16 }  { SocketTable_theirPort_12_empty_n fifo_status 0 1 }  { SocketTable_theirPort_12_read fifo_update 1 1 } } }
	SocketTable_theirPort_13 { ap_fifo {  { SocketTable_theirPort_13_dout fifo_data 0 16 }  { SocketTable_theirPort_13_empty_n fifo_status 0 1 }  { SocketTable_theirPort_13_read fifo_update 1 1 } } }
	SocketTable_theirPort_14 { ap_fifo {  { SocketTable_theirPort_14_dout fifo_data 0 16 }  { SocketTable_theirPort_14_empty_n fifo_status 0 1 }  { SocketTable_theirPort_14_read fifo_update 1 1 } } }
	SocketTable_theirPort_15 { ap_fifo {  { SocketTable_theirPort_15_dout fifo_data 0 16 }  { SocketTable_theirPort_15_empty_n fifo_status 0 1 }  { SocketTable_theirPort_15_read fifo_update 1 1 } } }
	SocketTable_myPort_0 { ap_fifo {  { SocketTable_myPort_0_dout fifo_data 0 16 }  { SocketTable_myPort_0_empty_n fifo_status 0 1 }  { SocketTable_myPort_0_read fifo_update 1 1 } } }
	SocketTable_myPort_1 { ap_fifo {  { SocketTable_myPort_1_dout fifo_data 0 16 }  { SocketTable_myPort_1_empty_n fifo_status 0 1 }  { SocketTable_myPort_1_read fifo_update 1 1 } } }
	SocketTable_myPort_2 { ap_fifo {  { SocketTable_myPort_2_dout fifo_data 0 16 }  { SocketTable_myPort_2_empty_n fifo_status 0 1 }  { SocketTable_myPort_2_read fifo_update 1 1 } } }
	SocketTable_myPort_3 { ap_fifo {  { SocketTable_myPort_3_dout fifo_data 0 16 }  { SocketTable_myPort_3_empty_n fifo_status 0 1 }  { SocketTable_myPort_3_read fifo_update 1 1 } } }
	SocketTable_myPort_4 { ap_fifo {  { SocketTable_myPort_4_dout fifo_data 0 16 }  { SocketTable_myPort_4_empty_n fifo_status 0 1 }  { SocketTable_myPort_4_read fifo_update 1 1 } } }
	SocketTable_myPort_5 { ap_fifo {  { SocketTable_myPort_5_dout fifo_data 0 16 }  { SocketTable_myPort_5_empty_n fifo_status 0 1 }  { SocketTable_myPort_5_read fifo_update 1 1 } } }
	SocketTable_myPort_6 { ap_fifo {  { SocketTable_myPort_6_dout fifo_data 0 16 }  { SocketTable_myPort_6_empty_n fifo_status 0 1 }  { SocketTable_myPort_6_read fifo_update 1 1 } } }
	SocketTable_myPort_7 { ap_fifo {  { SocketTable_myPort_7_dout fifo_data 0 16 }  { SocketTable_myPort_7_empty_n fifo_status 0 1 }  { SocketTable_myPort_7_read fifo_update 1 1 } } }
	SocketTable_myPort_8 { ap_fifo {  { SocketTable_myPort_8_dout fifo_data 0 16 }  { SocketTable_myPort_8_empty_n fifo_status 0 1 }  { SocketTable_myPort_8_read fifo_update 1 1 } } }
	SocketTable_myPort_9 { ap_fifo {  { SocketTable_myPort_9_dout fifo_data 0 16 }  { SocketTable_myPort_9_empty_n fifo_status 0 1 }  { SocketTable_myPort_9_read fifo_update 1 1 } } }
	SocketTable_myPort_10 { ap_fifo {  { SocketTable_myPort_10_dout fifo_data 0 16 }  { SocketTable_myPort_10_empty_n fifo_status 0 1 }  { SocketTable_myPort_10_read fifo_update 1 1 } } }
	SocketTable_myPort_11 { ap_fifo {  { SocketTable_myPort_11_dout fifo_data 0 16 }  { SocketTable_myPort_11_empty_n fifo_status 0 1 }  { SocketTable_myPort_11_read fifo_update 1 1 } } }
	SocketTable_myPort_12 { ap_fifo {  { SocketTable_myPort_12_dout fifo_data 0 16 }  { SocketTable_myPort_12_empty_n fifo_status 0 1 }  { SocketTable_myPort_12_read fifo_update 1 1 } } }
	SocketTable_myPort_13 { ap_fifo {  { SocketTable_myPort_13_dout fifo_data 0 16 }  { SocketTable_myPort_13_empty_n fifo_status 0 1 }  { SocketTable_myPort_13_read fifo_update 1 1 } } }
	SocketTable_myPort_14 { ap_fifo {  { SocketTable_myPort_14_dout fifo_data 0 16 }  { SocketTable_myPort_14_empty_n fifo_status 0 1 }  { SocketTable_myPort_14_read fifo_update 1 1 } } }
	SocketTable_myPort_15 { ap_fifo {  { SocketTable_myPort_15_dout fifo_data 0 16 }  { SocketTable_myPort_15_empty_n fifo_status 0 1 }  { SocketTable_myPort_15_read fifo_update 1 1 } } }
	SocketTable_valid_0 { ap_fifo {  { SocketTable_valid_0_dout fifo_data 0 1 }  { SocketTable_valid_0_empty_n fifo_status 0 1 }  { SocketTable_valid_0_read fifo_update 1 1 } } }
	SocketTable_valid_1 { ap_fifo {  { SocketTable_valid_1_dout fifo_data 0 1 }  { SocketTable_valid_1_empty_n fifo_status 0 1 }  { SocketTable_valid_1_read fifo_update 1 1 } } }
	SocketTable_valid_2 { ap_fifo {  { SocketTable_valid_2_dout fifo_data 0 1 }  { SocketTable_valid_2_empty_n fifo_status 0 1 }  { SocketTable_valid_2_read fifo_update 1 1 } } }
	SocketTable_valid_3 { ap_fifo {  { SocketTable_valid_3_dout fifo_data 0 1 }  { SocketTable_valid_3_empty_n fifo_status 0 1 }  { SocketTable_valid_3_read fifo_update 1 1 } } }
	SocketTable_valid_4 { ap_fifo {  { SocketTable_valid_4_dout fifo_data 0 1 }  { SocketTable_valid_4_empty_n fifo_status 0 1 }  { SocketTable_valid_4_read fifo_update 1 1 } } }
	SocketTable_valid_5 { ap_fifo {  { SocketTable_valid_5_dout fifo_data 0 1 }  { SocketTable_valid_5_empty_n fifo_status 0 1 }  { SocketTable_valid_5_read fifo_update 1 1 } } }
	SocketTable_valid_6 { ap_fifo {  { SocketTable_valid_6_dout fifo_data 0 1 }  { SocketTable_valid_6_empty_n fifo_status 0 1 }  { SocketTable_valid_6_read fifo_update 1 1 } } }
	SocketTable_valid_7 { ap_fifo {  { SocketTable_valid_7_dout fifo_data 0 1 }  { SocketTable_valid_7_empty_n fifo_status 0 1 }  { SocketTable_valid_7_read fifo_update 1 1 } } }
	SocketTable_valid_8 { ap_fifo {  { SocketTable_valid_8_dout fifo_data 0 1 }  { SocketTable_valid_8_empty_n fifo_status 0 1 }  { SocketTable_valid_8_read fifo_update 1 1 } } }
	SocketTable_valid_9 { ap_fifo {  { SocketTable_valid_9_dout fifo_data 0 1 }  { SocketTable_valid_9_empty_n fifo_status 0 1 }  { SocketTable_valid_9_read fifo_update 1 1 } } }
	SocketTable_valid_10 { ap_fifo {  { SocketTable_valid_10_dout fifo_data 0 1 }  { SocketTable_valid_10_empty_n fifo_status 0 1 }  { SocketTable_valid_10_read fifo_update 1 1 } } }
	SocketTable_valid_11 { ap_fifo {  { SocketTable_valid_11_dout fifo_data 0 1 }  { SocketTable_valid_11_empty_n fifo_status 0 1 }  { SocketTable_valid_11_read fifo_update 1 1 } } }
	SocketTable_valid_12 { ap_fifo {  { SocketTable_valid_12_dout fifo_data 0 1 }  { SocketTable_valid_12_empty_n fifo_status 0 1 }  { SocketTable_valid_12_read fifo_update 1 1 } } }
	SocketTable_valid_13 { ap_fifo {  { SocketTable_valid_13_dout fifo_data 0 1 }  { SocketTable_valid_13_empty_n fifo_status 0 1 }  { SocketTable_valid_13_read fifo_update 1 1 } } }
	SocketTable_valid_14 { ap_fifo {  { SocketTable_valid_14_dout fifo_data 0 1 }  { SocketTable_valid_14_empty_n fifo_status 0 1 }  { SocketTable_valid_14_read fifo_update 1 1 } } }
	SocketTable_valid_15 { ap_fifo {  { SocketTable_valid_15_dout fifo_data 0 1 }  { SocketTable_valid_15_empty_n fifo_status 0 1 }  { SocketTable_valid_15_read fifo_update 1 1 } } }
	numberSockets { ap_vld {  { numberSockets out_data 1 16 }  { numberSockets_ap_vld out_vld 1 1 } } }
	myIpAddress { ap_fifo {  { myIpAddress_dout fifo_data 0 32 }  { myIpAddress_empty_n fifo_status 0 1 }  { myIpAddress_read fifo_update 1 1 } } }
	ureMetaData { ap_fifo {  { ureMetaData_dout fifo_data 0 128 }  { ureMetaData_empty_n fifo_status 0 1 }  { ureMetaData_read fifo_update 1 1 } } }
	rthDropFifo { ap_fifo {  { rthDropFifo_din fifo_data 1 160 }  { rthDropFifo_full_n fifo_status 0 1 }  { rthDropFifo_write fifo_update 1 1 } } }
	agmdIdOut { ap_fifo {  { agmdIdOut_dout fifo_data 0 16 }  { agmdIdOut_empty_n fifo_status 0 1 }  { agmdIdOut_read fifo_update 1 1 } } }
	txthMetaData { ap_fifo {  { txthMetaData_din fifo_data 1 128 }  { txthMetaData_full_n fifo_status 0 1 }  { txthMetaData_write fifo_update 1 1 } } }
}
