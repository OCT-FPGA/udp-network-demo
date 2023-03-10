
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [10:0] inst_idle_sigs;
wire [5:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~udpRxEngine_U0.rxUdpDataIn_TDATA_blk_n;
assign axis_block_sigs[1] = ~rxEngPacketDropper_U0.DataOutApp_TDATA_blk_n;
assign axis_block_sigs[2] = ~appGetMetaData_U0.DataInApp_TDATA_blk_n;
assign axis_block_sigs[3] = ~udpTxEngine_U0.txUdpDataOut_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.myIpAddress_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_0_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_1_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_2_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_3_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_4_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_5_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_6_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_7_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_8_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_9_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_10_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_11_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_12_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_13_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_14_c_blk_n | ~entry_proc_U0.SocketTable_theirIP_15_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_0_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_1_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_2_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_3_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_4_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_5_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_6_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_7_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_8_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_9_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_10_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_11_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_12_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_13_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_14_c_blk_n | ~entry_proc_U0.SocketTable_theirPort_15_c_blk_n | ~entry_proc_U0.SocketTable_myPort_0_c_blk_n | ~entry_proc_U0.SocketTable_myPort_1_c_blk_n | ~entry_proc_U0.SocketTable_myPort_2_c_blk_n | ~entry_proc_U0.SocketTable_myPort_3_c_blk_n | ~entry_proc_U0.SocketTable_myPort_4_c_blk_n | ~entry_proc_U0.SocketTable_myPort_5_c_blk_n | ~entry_proc_U0.SocketTable_myPort_6_c_blk_n | ~entry_proc_U0.SocketTable_myPort_7_c_blk_n | ~entry_proc_U0.SocketTable_myPort_8_c_blk_n | ~entry_proc_U0.SocketTable_myPort_9_c_blk_n | ~entry_proc_U0.SocketTable_myPort_10_c_blk_n | ~entry_proc_U0.SocketTable_myPort_11_c_blk_n | ~entry_proc_U0.SocketTable_myPort_12_c_blk_n | ~entry_proc_U0.SocketTable_myPort_13_c_blk_n | ~entry_proc_U0.SocketTable_myPort_14_c_blk_n | ~entry_proc_U0.SocketTable_myPort_15_c_blk_n | ~entry_proc_U0.SocketTable_valid_0_c_blk_n | ~entry_proc_U0.SocketTable_valid_1_c_blk_n | ~entry_proc_U0.SocketTable_valid_2_c_blk_n | ~entry_proc_U0.SocketTable_valid_3_c_blk_n | ~entry_proc_U0.SocketTable_valid_4_c_blk_n | ~entry_proc_U0.SocketTable_valid_5_c_blk_n | ~entry_proc_U0.SocketTable_valid_6_c_blk_n | ~entry_proc_U0.SocketTable_valid_7_c_blk_n | ~entry_proc_U0.SocketTable_valid_8_c_blk_n | ~entry_proc_U0.SocketTable_valid_9_c_blk_n | ~entry_proc_U0.SocketTable_valid_10_c_blk_n | ~entry_proc_U0.SocketTable_valid_11_c_blk_n | ~entry_proc_U0.SocketTable_valid_12_c_blk_n | ~entry_proc_U0.SocketTable_valid_13_c_blk_n | ~entry_proc_U0.SocketTable_valid_14_c_blk_n | ~entry_proc_U0.SocketTable_valid_15_c_blk_n;
assign inst_idle_sigs[1] = udpRxEngine_U0.ap_idle;
assign inst_block_sigs[1] = (udpRxEngine_U0.ap_done & ~udpRxEngine_U0.ap_continue) | ~udpRxEngine_U0.ureMetaData_blk_n | ~udpRxEngine_U0.ureDataPayload_blk_n;
assign inst_idle_sigs[2] = TableHandler_U0.ap_idle;
assign inst_block_sigs[2] = (TableHandler_U0.ap_done & ~TableHandler_U0.ap_continue) | ~TableHandler_U0.SocketTable_theirIP_0_blk_n | ~TableHandler_U0.SocketTable_theirIP_1_blk_n | ~TableHandler_U0.SocketTable_theirIP_2_blk_n | ~TableHandler_U0.SocketTable_theirIP_3_blk_n | ~TableHandler_U0.SocketTable_theirIP_4_blk_n | ~TableHandler_U0.SocketTable_theirIP_5_blk_n | ~TableHandler_U0.SocketTable_theirIP_6_blk_n | ~TableHandler_U0.SocketTable_theirIP_7_blk_n | ~TableHandler_U0.SocketTable_theirIP_8_blk_n | ~TableHandler_U0.SocketTable_theirIP_9_blk_n | ~TableHandler_U0.SocketTable_theirIP_10_blk_n | ~TableHandler_U0.SocketTable_theirIP_11_blk_n | ~TableHandler_U0.SocketTable_theirIP_12_blk_n | ~TableHandler_U0.SocketTable_theirIP_13_blk_n | ~TableHandler_U0.SocketTable_theirIP_14_blk_n | ~TableHandler_U0.SocketTable_theirIP_15_blk_n | ~TableHandler_U0.SocketTable_theirPort_0_blk_n | ~TableHandler_U0.SocketTable_theirPort_1_blk_n | ~TableHandler_U0.SocketTable_theirPort_2_blk_n | ~TableHandler_U0.SocketTable_theirPort_3_blk_n | ~TableHandler_U0.SocketTable_theirPort_4_blk_n | ~TableHandler_U0.SocketTable_theirPort_5_blk_n | ~TableHandler_U0.SocketTable_theirPort_6_blk_n | ~TableHandler_U0.SocketTable_theirPort_7_blk_n | ~TableHandler_U0.SocketTable_theirPort_8_blk_n | ~TableHandler_U0.SocketTable_theirPort_9_blk_n | ~TableHandler_U0.SocketTable_theirPort_10_blk_n | ~TableHandler_U0.SocketTable_theirPort_11_blk_n | ~TableHandler_U0.SocketTable_theirPort_12_blk_n | ~TableHandler_U0.SocketTable_theirPort_13_blk_n | ~TableHandler_U0.SocketTable_theirPort_14_blk_n | ~TableHandler_U0.SocketTable_theirPort_15_blk_n | ~TableHandler_U0.SocketTable_myPort_0_blk_n | ~TableHandler_U0.SocketTable_myPort_1_blk_n | ~TableHandler_U0.SocketTable_myPort_2_blk_n | ~TableHandler_U0.SocketTable_myPort_3_blk_n | ~TableHandler_U0.SocketTable_myPort_4_blk_n | ~TableHandler_U0.SocketTable_myPort_5_blk_n | ~TableHandler_U0.SocketTable_myPort_6_blk_n | ~TableHandler_U0.SocketTable_myPort_7_blk_n | ~TableHandler_U0.SocketTable_myPort_8_blk_n | ~TableHandler_U0.SocketTable_myPort_9_blk_n | ~TableHandler_U0.SocketTable_myPort_10_blk_n | ~TableHandler_U0.SocketTable_myPort_11_blk_n | ~TableHandler_U0.SocketTable_myPort_12_blk_n | ~TableHandler_U0.SocketTable_myPort_13_blk_n | ~TableHandler_U0.SocketTable_myPort_14_blk_n | ~TableHandler_U0.SocketTable_myPort_15_blk_n | ~TableHandler_U0.SocketTable_valid_0_blk_n | ~TableHandler_U0.SocketTable_valid_1_blk_n | ~TableHandler_U0.SocketTable_valid_2_blk_n | ~TableHandler_U0.SocketTable_valid_3_blk_n | ~TableHandler_U0.SocketTable_valid_4_blk_n | ~TableHandler_U0.SocketTable_valid_5_blk_n | ~TableHandler_U0.SocketTable_valid_6_blk_n | ~TableHandler_U0.SocketTable_valid_7_blk_n | ~TableHandler_U0.SocketTable_valid_8_blk_n | ~TableHandler_U0.SocketTable_valid_9_blk_n | ~TableHandler_U0.SocketTable_valid_10_blk_n | ~TableHandler_U0.SocketTable_valid_11_blk_n | ~TableHandler_U0.SocketTable_valid_12_blk_n | ~TableHandler_U0.SocketTable_valid_13_blk_n | ~TableHandler_U0.SocketTable_valid_14_blk_n | ~TableHandler_U0.SocketTable_valid_15_blk_n | ~TableHandler_U0.myIpAddress_blk_n | ~TableHandler_U0.ureMetaData_blk_n | ~TableHandler_U0.rthDropFifo_blk_n | ~TableHandler_U0.agmdIdOut_blk_n | ~TableHandler_U0.txthMetaData_blk_n;
assign inst_idle_sigs[3] = rxEngPacketDropper_U0.ap_idle;
assign inst_block_sigs[3] = (rxEngPacketDropper_U0.ap_done & ~rxEngPacketDropper_U0.ap_continue) | ~rxEngPacketDropper_U0.rthDropFifo_blk_n | ~rxEngPacketDropper_U0.ureDataPayload_blk_n;
assign inst_idle_sigs[4] = appGetMetaData_U0.ap_idle;
assign inst_block_sigs[4] = (appGetMetaData_U0.ap_done & ~appGetMetaData_U0.ap_continue) | ~appGetMetaData_U0.agmdDataOut_blk_n | ~appGetMetaData_U0.agmdIdOut_blk_n | ~appGetMetaData_U0.agmdpayloadLenOut_blk_n;
assign inst_idle_sigs[5] = udpTxEngine_U0.ap_idle;
assign inst_block_sigs[5] = (udpTxEngine_U0.ap_done & ~udpTxEngine_U0.ap_continue) | ~udpTxEngine_U0.txthMetaData_blk_n | ~udpTxEngine_U0.agmdpayloadLenOut_blk_n | ~udpTxEngine_U0.agmdDataOut_blk_n;

assign inst_idle_sigs[6] = 1'b0;
assign inst_idle_sigs[7] = udpRxEngine_U0.ap_idle;
assign inst_idle_sigs[8] = rxEngPacketDropper_U0.ap_idle;
assign inst_idle_sigs[9] = appGetMetaData_U0.ap_idle;
assign inst_idle_sigs[10] = udpTxEngine_U0.ap_idle;

udp_hls_deadlock_idx0_monitor udp_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
