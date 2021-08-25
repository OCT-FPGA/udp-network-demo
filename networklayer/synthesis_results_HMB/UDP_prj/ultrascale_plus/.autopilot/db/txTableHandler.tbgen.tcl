set moduleName txTableHandler
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
set C_modelName {txTableHandler}
set C_modelType { void 0 }
set C_modelArgList {
	{ SocketTableTx_0_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_1_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_2_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_3_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_4_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_5_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_6_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_7_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_8_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_9_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_10_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_11_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_12_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_13_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_14_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_15_theirIP_V int 32 regular {fifo 0}  }
	{ SocketTableTx_0_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_1_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_2_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_3_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_4_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_5_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_6_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_7_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_8_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_9_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_10_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_11_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_12_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_13_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_14_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_15_theirPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_0_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_1_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_2_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_3_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_4_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_5_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_6_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_7_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_8_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_9_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_10_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_11_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_12_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_13_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_14_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_15_myPort_V int 16 regular {fifo 0}  }
	{ SocketTableTx_0_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_1_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_2_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_3_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_4_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_5_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_6_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_7_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_8_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_9_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_10_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_11_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_12_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_13_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_14_valid_V int 1 regular {fifo 0}  }
	{ SocketTableTx_15_valid_V int 1 regular {fifo 0}  }
	{ myIpAddress_V int 32 regular {pointer 0}  }
	{ agmdIdOut_V_V int 16 regular {fifo 0 volatile } {global 0}  }
	{ txthMetaData_V int 97 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "SocketTableTx_0_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_1_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_2_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_3_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_4_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_5_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_6_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_7_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_8_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_9_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_10_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_11_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_12_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_13_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_14_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_15_theirIP_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_0_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_1_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_2_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_3_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_4_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_5_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_6_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_7_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_8_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_9_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_10_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_11_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_12_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_13_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_14_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_15_theirPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_0_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_1_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_2_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_3_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_4_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_5_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_6_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_7_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_8_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_9_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_10_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_11_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_12_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_13_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_14_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_15_myPort_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_0_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_1_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_2_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_3_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_4_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_5_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_6_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_7_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_8_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_9_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_10_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_11_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_12_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_13_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_14_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "SocketTableTx_15_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "myIpAddress_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "agmdIdOut_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "txthMetaData_V", "interface" : "fifo", "bitwidth" : 97, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 206
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ SocketTableTx_0_theirIP_V_dout sc_in sc_lv 32 signal 0 } 
	{ SocketTableTx_0_theirIP_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ SocketTableTx_0_theirIP_V_read sc_out sc_logic 1 signal 0 } 
	{ SocketTableTx_1_theirIP_V_dout sc_in sc_lv 32 signal 1 } 
	{ SocketTableTx_1_theirIP_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ SocketTableTx_1_theirIP_V_read sc_out sc_logic 1 signal 1 } 
	{ SocketTableTx_2_theirIP_V_dout sc_in sc_lv 32 signal 2 } 
	{ SocketTableTx_2_theirIP_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ SocketTableTx_2_theirIP_V_read sc_out sc_logic 1 signal 2 } 
	{ SocketTableTx_3_theirIP_V_dout sc_in sc_lv 32 signal 3 } 
	{ SocketTableTx_3_theirIP_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ SocketTableTx_3_theirIP_V_read sc_out sc_logic 1 signal 3 } 
	{ SocketTableTx_4_theirIP_V_dout sc_in sc_lv 32 signal 4 } 
	{ SocketTableTx_4_theirIP_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ SocketTableTx_4_theirIP_V_read sc_out sc_logic 1 signal 4 } 
	{ SocketTableTx_5_theirIP_V_dout sc_in sc_lv 32 signal 5 } 
	{ SocketTableTx_5_theirIP_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ SocketTableTx_5_theirIP_V_read sc_out sc_logic 1 signal 5 } 
	{ SocketTableTx_6_theirIP_V_dout sc_in sc_lv 32 signal 6 } 
	{ SocketTableTx_6_theirIP_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ SocketTableTx_6_theirIP_V_read sc_out sc_logic 1 signal 6 } 
	{ SocketTableTx_7_theirIP_V_dout sc_in sc_lv 32 signal 7 } 
	{ SocketTableTx_7_theirIP_V_empty_n sc_in sc_logic 1 signal 7 } 
	{ SocketTableTx_7_theirIP_V_read sc_out sc_logic 1 signal 7 } 
	{ SocketTableTx_8_theirIP_V_dout sc_in sc_lv 32 signal 8 } 
	{ SocketTableTx_8_theirIP_V_empty_n sc_in sc_logic 1 signal 8 } 
	{ SocketTableTx_8_theirIP_V_read sc_out sc_logic 1 signal 8 } 
	{ SocketTableTx_9_theirIP_V_dout sc_in sc_lv 32 signal 9 } 
	{ SocketTableTx_9_theirIP_V_empty_n sc_in sc_logic 1 signal 9 } 
	{ SocketTableTx_9_theirIP_V_read sc_out sc_logic 1 signal 9 } 
	{ SocketTableTx_10_theirIP_V_dout sc_in sc_lv 32 signal 10 } 
	{ SocketTableTx_10_theirIP_V_empty_n sc_in sc_logic 1 signal 10 } 
	{ SocketTableTx_10_theirIP_V_read sc_out sc_logic 1 signal 10 } 
	{ SocketTableTx_11_theirIP_V_dout sc_in sc_lv 32 signal 11 } 
	{ SocketTableTx_11_theirIP_V_empty_n sc_in sc_logic 1 signal 11 } 
	{ SocketTableTx_11_theirIP_V_read sc_out sc_logic 1 signal 11 } 
	{ SocketTableTx_12_theirIP_V_dout sc_in sc_lv 32 signal 12 } 
	{ SocketTableTx_12_theirIP_V_empty_n sc_in sc_logic 1 signal 12 } 
	{ SocketTableTx_12_theirIP_V_read sc_out sc_logic 1 signal 12 } 
	{ SocketTableTx_13_theirIP_V_dout sc_in sc_lv 32 signal 13 } 
	{ SocketTableTx_13_theirIP_V_empty_n sc_in sc_logic 1 signal 13 } 
	{ SocketTableTx_13_theirIP_V_read sc_out sc_logic 1 signal 13 } 
	{ SocketTableTx_14_theirIP_V_dout sc_in sc_lv 32 signal 14 } 
	{ SocketTableTx_14_theirIP_V_empty_n sc_in sc_logic 1 signal 14 } 
	{ SocketTableTx_14_theirIP_V_read sc_out sc_logic 1 signal 14 } 
	{ SocketTableTx_15_theirIP_V_dout sc_in sc_lv 32 signal 15 } 
	{ SocketTableTx_15_theirIP_V_empty_n sc_in sc_logic 1 signal 15 } 
	{ SocketTableTx_15_theirIP_V_read sc_out sc_logic 1 signal 15 } 
	{ SocketTableTx_0_theirPort_V_dout sc_in sc_lv 16 signal 16 } 
	{ SocketTableTx_0_theirPort_V_empty_n sc_in sc_logic 1 signal 16 } 
	{ SocketTableTx_0_theirPort_V_read sc_out sc_logic 1 signal 16 } 
	{ SocketTableTx_1_theirPort_V_dout sc_in sc_lv 16 signal 17 } 
	{ SocketTableTx_1_theirPort_V_empty_n sc_in sc_logic 1 signal 17 } 
	{ SocketTableTx_1_theirPort_V_read sc_out sc_logic 1 signal 17 } 
	{ SocketTableTx_2_theirPort_V_dout sc_in sc_lv 16 signal 18 } 
	{ SocketTableTx_2_theirPort_V_empty_n sc_in sc_logic 1 signal 18 } 
	{ SocketTableTx_2_theirPort_V_read sc_out sc_logic 1 signal 18 } 
	{ SocketTableTx_3_theirPort_V_dout sc_in sc_lv 16 signal 19 } 
	{ SocketTableTx_3_theirPort_V_empty_n sc_in sc_logic 1 signal 19 } 
	{ SocketTableTx_3_theirPort_V_read sc_out sc_logic 1 signal 19 } 
	{ SocketTableTx_4_theirPort_V_dout sc_in sc_lv 16 signal 20 } 
	{ SocketTableTx_4_theirPort_V_empty_n sc_in sc_logic 1 signal 20 } 
	{ SocketTableTx_4_theirPort_V_read sc_out sc_logic 1 signal 20 } 
	{ SocketTableTx_5_theirPort_V_dout sc_in sc_lv 16 signal 21 } 
	{ SocketTableTx_5_theirPort_V_empty_n sc_in sc_logic 1 signal 21 } 
	{ SocketTableTx_5_theirPort_V_read sc_out sc_logic 1 signal 21 } 
	{ SocketTableTx_6_theirPort_V_dout sc_in sc_lv 16 signal 22 } 
	{ SocketTableTx_6_theirPort_V_empty_n sc_in sc_logic 1 signal 22 } 
	{ SocketTableTx_6_theirPort_V_read sc_out sc_logic 1 signal 22 } 
	{ SocketTableTx_7_theirPort_V_dout sc_in sc_lv 16 signal 23 } 
	{ SocketTableTx_7_theirPort_V_empty_n sc_in sc_logic 1 signal 23 } 
	{ SocketTableTx_7_theirPort_V_read sc_out sc_logic 1 signal 23 } 
	{ SocketTableTx_8_theirPort_V_dout sc_in sc_lv 16 signal 24 } 
	{ SocketTableTx_8_theirPort_V_empty_n sc_in sc_logic 1 signal 24 } 
	{ SocketTableTx_8_theirPort_V_read sc_out sc_logic 1 signal 24 } 
	{ SocketTableTx_9_theirPort_V_dout sc_in sc_lv 16 signal 25 } 
	{ SocketTableTx_9_theirPort_V_empty_n sc_in sc_logic 1 signal 25 } 
	{ SocketTableTx_9_theirPort_V_read sc_out sc_logic 1 signal 25 } 
	{ SocketTableTx_10_theirPort_V_dout sc_in sc_lv 16 signal 26 } 
	{ SocketTableTx_10_theirPort_V_empty_n sc_in sc_logic 1 signal 26 } 
	{ SocketTableTx_10_theirPort_V_read sc_out sc_logic 1 signal 26 } 
	{ SocketTableTx_11_theirPort_V_dout sc_in sc_lv 16 signal 27 } 
	{ SocketTableTx_11_theirPort_V_empty_n sc_in sc_logic 1 signal 27 } 
	{ SocketTableTx_11_theirPort_V_read sc_out sc_logic 1 signal 27 } 
	{ SocketTableTx_12_theirPort_V_dout sc_in sc_lv 16 signal 28 } 
	{ SocketTableTx_12_theirPort_V_empty_n sc_in sc_logic 1 signal 28 } 
	{ SocketTableTx_12_theirPort_V_read sc_out sc_logic 1 signal 28 } 
	{ SocketTableTx_13_theirPort_V_dout sc_in sc_lv 16 signal 29 } 
	{ SocketTableTx_13_theirPort_V_empty_n sc_in sc_logic 1 signal 29 } 
	{ SocketTableTx_13_theirPort_V_read sc_out sc_logic 1 signal 29 } 
	{ SocketTableTx_14_theirPort_V_dout sc_in sc_lv 16 signal 30 } 
	{ SocketTableTx_14_theirPort_V_empty_n sc_in sc_logic 1 signal 30 } 
	{ SocketTableTx_14_theirPort_V_read sc_out sc_logic 1 signal 30 } 
	{ SocketTableTx_15_theirPort_V_dout sc_in sc_lv 16 signal 31 } 
	{ SocketTableTx_15_theirPort_V_empty_n sc_in sc_logic 1 signal 31 } 
	{ SocketTableTx_15_theirPort_V_read sc_out sc_logic 1 signal 31 } 
	{ SocketTableTx_0_myPort_V_dout sc_in sc_lv 16 signal 32 } 
	{ SocketTableTx_0_myPort_V_empty_n sc_in sc_logic 1 signal 32 } 
	{ SocketTableTx_0_myPort_V_read sc_out sc_logic 1 signal 32 } 
	{ SocketTableTx_1_myPort_V_dout sc_in sc_lv 16 signal 33 } 
	{ SocketTableTx_1_myPort_V_empty_n sc_in sc_logic 1 signal 33 } 
	{ SocketTableTx_1_myPort_V_read sc_out sc_logic 1 signal 33 } 
	{ SocketTableTx_2_myPort_V_dout sc_in sc_lv 16 signal 34 } 
	{ SocketTableTx_2_myPort_V_empty_n sc_in sc_logic 1 signal 34 } 
	{ SocketTableTx_2_myPort_V_read sc_out sc_logic 1 signal 34 } 
	{ SocketTableTx_3_myPort_V_dout sc_in sc_lv 16 signal 35 } 
	{ SocketTableTx_3_myPort_V_empty_n sc_in sc_logic 1 signal 35 } 
	{ SocketTableTx_3_myPort_V_read sc_out sc_logic 1 signal 35 } 
	{ SocketTableTx_4_myPort_V_dout sc_in sc_lv 16 signal 36 } 
	{ SocketTableTx_4_myPort_V_empty_n sc_in sc_logic 1 signal 36 } 
	{ SocketTableTx_4_myPort_V_read sc_out sc_logic 1 signal 36 } 
	{ SocketTableTx_5_myPort_V_dout sc_in sc_lv 16 signal 37 } 
	{ SocketTableTx_5_myPort_V_empty_n sc_in sc_logic 1 signal 37 } 
	{ SocketTableTx_5_myPort_V_read sc_out sc_logic 1 signal 37 } 
	{ SocketTableTx_6_myPort_V_dout sc_in sc_lv 16 signal 38 } 
	{ SocketTableTx_6_myPort_V_empty_n sc_in sc_logic 1 signal 38 } 
	{ SocketTableTx_6_myPort_V_read sc_out sc_logic 1 signal 38 } 
	{ SocketTableTx_7_myPort_V_dout sc_in sc_lv 16 signal 39 } 
	{ SocketTableTx_7_myPort_V_empty_n sc_in sc_logic 1 signal 39 } 
	{ SocketTableTx_7_myPort_V_read sc_out sc_logic 1 signal 39 } 
	{ SocketTableTx_8_myPort_V_dout sc_in sc_lv 16 signal 40 } 
	{ SocketTableTx_8_myPort_V_empty_n sc_in sc_logic 1 signal 40 } 
	{ SocketTableTx_8_myPort_V_read sc_out sc_logic 1 signal 40 } 
	{ SocketTableTx_9_myPort_V_dout sc_in sc_lv 16 signal 41 } 
	{ SocketTableTx_9_myPort_V_empty_n sc_in sc_logic 1 signal 41 } 
	{ SocketTableTx_9_myPort_V_read sc_out sc_logic 1 signal 41 } 
	{ SocketTableTx_10_myPort_V_dout sc_in sc_lv 16 signal 42 } 
	{ SocketTableTx_10_myPort_V_empty_n sc_in sc_logic 1 signal 42 } 
	{ SocketTableTx_10_myPort_V_read sc_out sc_logic 1 signal 42 } 
	{ SocketTableTx_11_myPort_V_dout sc_in sc_lv 16 signal 43 } 
	{ SocketTableTx_11_myPort_V_empty_n sc_in sc_logic 1 signal 43 } 
	{ SocketTableTx_11_myPort_V_read sc_out sc_logic 1 signal 43 } 
	{ SocketTableTx_12_myPort_V_dout sc_in sc_lv 16 signal 44 } 
	{ SocketTableTx_12_myPort_V_empty_n sc_in sc_logic 1 signal 44 } 
	{ SocketTableTx_12_myPort_V_read sc_out sc_logic 1 signal 44 } 
	{ SocketTableTx_13_myPort_V_dout sc_in sc_lv 16 signal 45 } 
	{ SocketTableTx_13_myPort_V_empty_n sc_in sc_logic 1 signal 45 } 
	{ SocketTableTx_13_myPort_V_read sc_out sc_logic 1 signal 45 } 
	{ SocketTableTx_14_myPort_V_dout sc_in sc_lv 16 signal 46 } 
	{ SocketTableTx_14_myPort_V_empty_n sc_in sc_logic 1 signal 46 } 
	{ SocketTableTx_14_myPort_V_read sc_out sc_logic 1 signal 46 } 
	{ SocketTableTx_15_myPort_V_dout sc_in sc_lv 16 signal 47 } 
	{ SocketTableTx_15_myPort_V_empty_n sc_in sc_logic 1 signal 47 } 
	{ SocketTableTx_15_myPort_V_read sc_out sc_logic 1 signal 47 } 
	{ SocketTableTx_0_valid_V_dout sc_in sc_lv 1 signal 48 } 
	{ SocketTableTx_0_valid_V_empty_n sc_in sc_logic 1 signal 48 } 
	{ SocketTableTx_0_valid_V_read sc_out sc_logic 1 signal 48 } 
	{ SocketTableTx_1_valid_V_dout sc_in sc_lv 1 signal 49 } 
	{ SocketTableTx_1_valid_V_empty_n sc_in sc_logic 1 signal 49 } 
	{ SocketTableTx_1_valid_V_read sc_out sc_logic 1 signal 49 } 
	{ SocketTableTx_2_valid_V_dout sc_in sc_lv 1 signal 50 } 
	{ SocketTableTx_2_valid_V_empty_n sc_in sc_logic 1 signal 50 } 
	{ SocketTableTx_2_valid_V_read sc_out sc_logic 1 signal 50 } 
	{ SocketTableTx_3_valid_V_dout sc_in sc_lv 1 signal 51 } 
	{ SocketTableTx_3_valid_V_empty_n sc_in sc_logic 1 signal 51 } 
	{ SocketTableTx_3_valid_V_read sc_out sc_logic 1 signal 51 } 
	{ SocketTableTx_4_valid_V_dout sc_in sc_lv 1 signal 52 } 
	{ SocketTableTx_4_valid_V_empty_n sc_in sc_logic 1 signal 52 } 
	{ SocketTableTx_4_valid_V_read sc_out sc_logic 1 signal 52 } 
	{ SocketTableTx_5_valid_V_dout sc_in sc_lv 1 signal 53 } 
	{ SocketTableTx_5_valid_V_empty_n sc_in sc_logic 1 signal 53 } 
	{ SocketTableTx_5_valid_V_read sc_out sc_logic 1 signal 53 } 
	{ SocketTableTx_6_valid_V_dout sc_in sc_lv 1 signal 54 } 
	{ SocketTableTx_6_valid_V_empty_n sc_in sc_logic 1 signal 54 } 
	{ SocketTableTx_6_valid_V_read sc_out sc_logic 1 signal 54 } 
	{ SocketTableTx_7_valid_V_dout sc_in sc_lv 1 signal 55 } 
	{ SocketTableTx_7_valid_V_empty_n sc_in sc_logic 1 signal 55 } 
	{ SocketTableTx_7_valid_V_read sc_out sc_logic 1 signal 55 } 
	{ SocketTableTx_8_valid_V_dout sc_in sc_lv 1 signal 56 } 
	{ SocketTableTx_8_valid_V_empty_n sc_in sc_logic 1 signal 56 } 
	{ SocketTableTx_8_valid_V_read sc_out sc_logic 1 signal 56 } 
	{ SocketTableTx_9_valid_V_dout sc_in sc_lv 1 signal 57 } 
	{ SocketTableTx_9_valid_V_empty_n sc_in sc_logic 1 signal 57 } 
	{ SocketTableTx_9_valid_V_read sc_out sc_logic 1 signal 57 } 
	{ SocketTableTx_10_valid_V_dout sc_in sc_lv 1 signal 58 } 
	{ SocketTableTx_10_valid_V_empty_n sc_in sc_logic 1 signal 58 } 
	{ SocketTableTx_10_valid_V_read sc_out sc_logic 1 signal 58 } 
	{ SocketTableTx_11_valid_V_dout sc_in sc_lv 1 signal 59 } 
	{ SocketTableTx_11_valid_V_empty_n sc_in sc_logic 1 signal 59 } 
	{ SocketTableTx_11_valid_V_read sc_out sc_logic 1 signal 59 } 
	{ SocketTableTx_12_valid_V_dout sc_in sc_lv 1 signal 60 } 
	{ SocketTableTx_12_valid_V_empty_n sc_in sc_logic 1 signal 60 } 
	{ SocketTableTx_12_valid_V_read sc_out sc_logic 1 signal 60 } 
	{ SocketTableTx_13_valid_V_dout sc_in sc_lv 1 signal 61 } 
	{ SocketTableTx_13_valid_V_empty_n sc_in sc_logic 1 signal 61 } 
	{ SocketTableTx_13_valid_V_read sc_out sc_logic 1 signal 61 } 
	{ SocketTableTx_14_valid_V_dout sc_in sc_lv 1 signal 62 } 
	{ SocketTableTx_14_valid_V_empty_n sc_in sc_logic 1 signal 62 } 
	{ SocketTableTx_14_valid_V_read sc_out sc_logic 1 signal 62 } 
	{ SocketTableTx_15_valid_V_dout sc_in sc_lv 1 signal 63 } 
	{ SocketTableTx_15_valid_V_empty_n sc_in sc_logic 1 signal 63 } 
	{ SocketTableTx_15_valid_V_read sc_out sc_logic 1 signal 63 } 
	{ agmdIdOut_V_V_dout sc_in sc_lv 16 signal 65 } 
	{ agmdIdOut_V_V_empty_n sc_in sc_logic 1 signal 65 } 
	{ agmdIdOut_V_V_read sc_out sc_logic 1 signal 65 } 
	{ txthMetaData_V_din sc_out sc_lv 97 signal 66 } 
	{ txthMetaData_V_full_n sc_in sc_logic 1 signal 66 } 
	{ txthMetaData_V_write sc_out sc_logic 1 signal 66 } 
	{ myIpAddress_V sc_in sc_lv 32 signal 64 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "SocketTableTx_0_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_0_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_0_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_0_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_1_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_1_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_1_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_1_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_2_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_2_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_2_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_2_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_3_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_3_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_3_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_3_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_4_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_4_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_4_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_4_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_5_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_5_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_5_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_5_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_6_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_6_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_6_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_6_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_7_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_7_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_7_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_7_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_8_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_8_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_8_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_8_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_9_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_9_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_9_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_9_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_10_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_10_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_10_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_10_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_11_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_11_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_11_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_11_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_12_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_12_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_12_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_12_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_13_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_13_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_13_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_13_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_14_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_14_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_14_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_14_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_15_theirIP_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "SocketTableTx_15_theirIP_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_15_theirIP_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_theirIP_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_15_theirIP_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_theirIP_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_0_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_0_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_0_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_0_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_1_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_1_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_1_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_1_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_2_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_2_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_2_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_2_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_3_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_3_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_3_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_3_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_4_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_4_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_4_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_4_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_5_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_5_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_5_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_5_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_6_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_6_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_6_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_6_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_7_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_7_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_7_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_7_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_8_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_8_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_8_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_8_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_9_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_9_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_9_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_9_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_10_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_10_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_10_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_10_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_11_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_11_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_11_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_11_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_12_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_12_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_12_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_12_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_13_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_13_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_13_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_13_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_14_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_14_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_14_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_14_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_15_theirPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_15_theirPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_15_theirPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_theirPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_15_theirPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_theirPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_0_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_0_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_0_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_0_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_1_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_1_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_1_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_1_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_2_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_2_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_2_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_2_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_3_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_3_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_3_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_3_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_4_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_4_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_4_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_4_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_5_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_5_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_5_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_5_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_6_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_6_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_6_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_6_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_7_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_7_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_7_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_7_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_8_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_8_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_8_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_8_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_9_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_9_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_9_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_9_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_10_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_10_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_10_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_10_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_11_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_11_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_11_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_11_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_12_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_12_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_12_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_12_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_13_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_13_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_13_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_13_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_14_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_14_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_14_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_14_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_15_myPort_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "SocketTableTx_15_myPort_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_15_myPort_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_myPort_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_15_myPort_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_myPort_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_0_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_0_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_0_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_0_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_1_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_1_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_1_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_1_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_2_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_2_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_2_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_2_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_3_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_3_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_3_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_3_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_4_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_4_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_4_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_4_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_5_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_5_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_5_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_5_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_6_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_6_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_6_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_6_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_7_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_7_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_7_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_7_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_8_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_8_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_8_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_8_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_9_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_9_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_9_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_9_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_10_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_10_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_10_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_10_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_11_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_11_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_11_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_11_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_12_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_12_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_12_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_12_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_13_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_13_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_13_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_13_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_14_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_14_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_14_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_14_valid_V", "role": "read" }} , 
 	{ "name": "SocketTableTx_15_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_valid_V", "role": "dout" }} , 
 	{ "name": "SocketTableTx_15_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_valid_V", "role": "empty_n" }} , 
 	{ "name": "SocketTableTx_15_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "SocketTableTx_15_valid_V", "role": "read" }} , 
 	{ "name": "agmdIdOut_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "agmdIdOut_V_V", "role": "dout" }} , 
 	{ "name": "agmdIdOut_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut_V_V", "role": "empty_n" }} , 
 	{ "name": "agmdIdOut_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "agmdIdOut_V_V", "role": "read" }} , 
 	{ "name": "txthMetaData_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "txthMetaData_V", "role": "din" }} , 
 	{ "name": "txthMetaData_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData_V", "role": "full_n" }} , 
 	{ "name": "txthMetaData_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "txthMetaData_V", "role": "write" }} , 
 	{ "name": "myIpAddress_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "myIpAddress_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
			{"Name" : "SocketTableTx_0_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_theirIP_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_theirIP_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_0_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_theirPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_theirPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_0_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_myPort_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_myPort_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_0_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_0_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_1_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_1_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_2_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_2_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_3_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_3_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_4_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_4_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_5_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_5_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_6_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_6_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_7_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_7_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_8_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_8_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_9_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_9_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_10_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_10_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_11_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_11_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_12_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_12_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_13_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_13_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_14_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_14_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "SocketTableTx_15_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "SocketTableTx_15_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "myIpAddress_V", "Type" : "Stable", "Direction" : "I"},
			{"Name" : "agmdIdOut_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "agmdIdOut_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "txthMetaData_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "txthMetaData_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_mux_164_32_1_1_U379", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_mux_164_16_1_1_U380", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_mux_164_16_1_1_U381", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udp_mux_164_1_1_1_U382", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		txthMetaData_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	SocketTableTx_0_theirIP_V { ap_fifo {  { SocketTableTx_0_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_0_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_0_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_1_theirIP_V { ap_fifo {  { SocketTableTx_1_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_1_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_1_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_2_theirIP_V { ap_fifo {  { SocketTableTx_2_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_2_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_2_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_3_theirIP_V { ap_fifo {  { SocketTableTx_3_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_3_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_3_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_4_theirIP_V { ap_fifo {  { SocketTableTx_4_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_4_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_4_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_5_theirIP_V { ap_fifo {  { SocketTableTx_5_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_5_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_5_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_6_theirIP_V { ap_fifo {  { SocketTableTx_6_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_6_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_6_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_7_theirIP_V { ap_fifo {  { SocketTableTx_7_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_7_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_7_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_8_theirIP_V { ap_fifo {  { SocketTableTx_8_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_8_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_8_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_9_theirIP_V { ap_fifo {  { SocketTableTx_9_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_9_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_9_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_10_theirIP_V { ap_fifo {  { SocketTableTx_10_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_10_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_10_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_11_theirIP_V { ap_fifo {  { SocketTableTx_11_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_11_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_11_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_12_theirIP_V { ap_fifo {  { SocketTableTx_12_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_12_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_12_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_13_theirIP_V { ap_fifo {  { SocketTableTx_13_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_13_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_13_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_14_theirIP_V { ap_fifo {  { SocketTableTx_14_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_14_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_14_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_15_theirIP_V { ap_fifo {  { SocketTableTx_15_theirIP_V_dout fifo_data 0 32 }  { SocketTableTx_15_theirIP_V_empty_n fifo_status 0 1 }  { SocketTableTx_15_theirIP_V_read fifo_update 1 1 } } }
	SocketTableTx_0_theirPort_V { ap_fifo {  { SocketTableTx_0_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_0_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_0_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_1_theirPort_V { ap_fifo {  { SocketTableTx_1_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_1_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_1_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_2_theirPort_V { ap_fifo {  { SocketTableTx_2_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_2_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_2_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_3_theirPort_V { ap_fifo {  { SocketTableTx_3_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_3_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_3_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_4_theirPort_V { ap_fifo {  { SocketTableTx_4_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_4_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_4_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_5_theirPort_V { ap_fifo {  { SocketTableTx_5_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_5_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_5_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_6_theirPort_V { ap_fifo {  { SocketTableTx_6_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_6_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_6_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_7_theirPort_V { ap_fifo {  { SocketTableTx_7_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_7_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_7_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_8_theirPort_V { ap_fifo {  { SocketTableTx_8_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_8_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_8_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_9_theirPort_V { ap_fifo {  { SocketTableTx_9_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_9_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_9_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_10_theirPort_V { ap_fifo {  { SocketTableTx_10_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_10_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_10_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_11_theirPort_V { ap_fifo {  { SocketTableTx_11_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_11_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_11_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_12_theirPort_V { ap_fifo {  { SocketTableTx_12_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_12_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_12_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_13_theirPort_V { ap_fifo {  { SocketTableTx_13_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_13_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_13_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_14_theirPort_V { ap_fifo {  { SocketTableTx_14_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_14_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_14_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_15_theirPort_V { ap_fifo {  { SocketTableTx_15_theirPort_V_dout fifo_data 0 16 }  { SocketTableTx_15_theirPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_15_theirPort_V_read fifo_update 1 1 } } }
	SocketTableTx_0_myPort_V { ap_fifo {  { SocketTableTx_0_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_0_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_0_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_1_myPort_V { ap_fifo {  { SocketTableTx_1_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_1_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_1_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_2_myPort_V { ap_fifo {  { SocketTableTx_2_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_2_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_2_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_3_myPort_V { ap_fifo {  { SocketTableTx_3_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_3_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_3_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_4_myPort_V { ap_fifo {  { SocketTableTx_4_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_4_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_4_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_5_myPort_V { ap_fifo {  { SocketTableTx_5_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_5_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_5_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_6_myPort_V { ap_fifo {  { SocketTableTx_6_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_6_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_6_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_7_myPort_V { ap_fifo {  { SocketTableTx_7_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_7_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_7_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_8_myPort_V { ap_fifo {  { SocketTableTx_8_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_8_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_8_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_9_myPort_V { ap_fifo {  { SocketTableTx_9_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_9_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_9_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_10_myPort_V { ap_fifo {  { SocketTableTx_10_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_10_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_10_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_11_myPort_V { ap_fifo {  { SocketTableTx_11_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_11_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_11_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_12_myPort_V { ap_fifo {  { SocketTableTx_12_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_12_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_12_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_13_myPort_V { ap_fifo {  { SocketTableTx_13_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_13_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_13_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_14_myPort_V { ap_fifo {  { SocketTableTx_14_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_14_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_14_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_15_myPort_V { ap_fifo {  { SocketTableTx_15_myPort_V_dout fifo_data 0 16 }  { SocketTableTx_15_myPort_V_empty_n fifo_status 0 1 }  { SocketTableTx_15_myPort_V_read fifo_update 1 1 } } }
	SocketTableTx_0_valid_V { ap_fifo {  { SocketTableTx_0_valid_V_dout fifo_data 0 1 }  { SocketTableTx_0_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_0_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_1_valid_V { ap_fifo {  { SocketTableTx_1_valid_V_dout fifo_data 0 1 }  { SocketTableTx_1_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_1_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_2_valid_V { ap_fifo {  { SocketTableTx_2_valid_V_dout fifo_data 0 1 }  { SocketTableTx_2_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_2_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_3_valid_V { ap_fifo {  { SocketTableTx_3_valid_V_dout fifo_data 0 1 }  { SocketTableTx_3_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_3_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_4_valid_V { ap_fifo {  { SocketTableTx_4_valid_V_dout fifo_data 0 1 }  { SocketTableTx_4_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_4_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_5_valid_V { ap_fifo {  { SocketTableTx_5_valid_V_dout fifo_data 0 1 }  { SocketTableTx_5_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_5_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_6_valid_V { ap_fifo {  { SocketTableTx_6_valid_V_dout fifo_data 0 1 }  { SocketTableTx_6_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_6_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_7_valid_V { ap_fifo {  { SocketTableTx_7_valid_V_dout fifo_data 0 1 }  { SocketTableTx_7_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_7_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_8_valid_V { ap_fifo {  { SocketTableTx_8_valid_V_dout fifo_data 0 1 }  { SocketTableTx_8_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_8_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_9_valid_V { ap_fifo {  { SocketTableTx_9_valid_V_dout fifo_data 0 1 }  { SocketTableTx_9_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_9_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_10_valid_V { ap_fifo {  { SocketTableTx_10_valid_V_dout fifo_data 0 1 }  { SocketTableTx_10_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_10_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_11_valid_V { ap_fifo {  { SocketTableTx_11_valid_V_dout fifo_data 0 1 }  { SocketTableTx_11_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_11_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_12_valid_V { ap_fifo {  { SocketTableTx_12_valid_V_dout fifo_data 0 1 }  { SocketTableTx_12_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_12_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_13_valid_V { ap_fifo {  { SocketTableTx_13_valid_V_dout fifo_data 0 1 }  { SocketTableTx_13_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_13_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_14_valid_V { ap_fifo {  { SocketTableTx_14_valid_V_dout fifo_data 0 1 }  { SocketTableTx_14_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_14_valid_V_read fifo_update 1 1 } } }
	SocketTableTx_15_valid_V { ap_fifo {  { SocketTableTx_15_valid_V_dout fifo_data 0 1 }  { SocketTableTx_15_valid_V_empty_n fifo_status 0 1 }  { SocketTableTx_15_valid_V_read fifo_update 1 1 } } }
	myIpAddress_V { ap_stable {  { myIpAddress_V in_data 0 32 } } }
	agmdIdOut_V_V { ap_fifo {  { agmdIdOut_V_V_dout fifo_data 0 16 }  { agmdIdOut_V_V_empty_n fifo_status 0 1 }  { agmdIdOut_V_V_read fifo_update 1 1 } } }
	txthMetaData_V { ap_fifo {  { txthMetaData_V_din fifo_data 1 97 }  { txthMetaData_V_full_n fifo_status 0 1 }  { txthMetaData_V_write fifo_update 1 1 } } }
}
