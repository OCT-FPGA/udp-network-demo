
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
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue);
assign inst_idle_sigs[1] = udpRxEngine_U0.ap_idle;
assign inst_block_sigs[1] = (udpRxEngine_U0.ap_done & ~udpRxEngine_U0.ap_continue) | ~udpRxEngine_U0.ureMetaData_blk_n | ~udpRxEngine_U0.ureDataPayload_blk_n;
assign inst_idle_sigs[2] = TableHandler_U0.ap_idle;
assign inst_block_sigs[2] = (TableHandler_U0.ap_done & ~TableHandler_U0.ap_continue) | ~TableHandler_U0.ureMetaData_blk_n | ~TableHandler_U0.rthDropFifo_blk_n | ~TableHandler_U0.agmdIdOut_blk_n | ~TableHandler_U0.txthMetaData_blk_n;
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

