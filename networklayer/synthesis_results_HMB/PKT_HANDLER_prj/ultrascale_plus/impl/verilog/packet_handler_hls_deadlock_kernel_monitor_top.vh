
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [1:0] axis_block_sigs;
wire [4:0] inst_idle_sigs;
wire [1:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~packet_identification_U0.s_axis_TDATA_blk_n;
assign axis_block_sigs[1] = ~ethernet_remover_U0.m_axis_TDATA_blk_n;

assign inst_idle_sigs[0] = packet_identification_U0.ap_idle;
assign inst_block_sigs[0] = (packet_identification_U0.ap_done & ~packet_identification_U0.ap_continue) | ~packet_identification_U0.eth_level_pkt_blk_n;
assign inst_idle_sigs[1] = ethernet_remover_U0.ap_idle;
assign inst_block_sigs[1] = (ethernet_remover_U0.ap_done & ~ethernet_remover_U0.ap_continue) | ~ethernet_remover_U0.eth_level_pkt_blk_n;

assign inst_idle_sigs[2] = 1'b0;
assign inst_idle_sigs[3] = packet_identification_U0.ap_idle;
assign inst_idle_sigs[4] = ethernet_remover_U0.ap_idle;

packet_handler_hls_deadlock_idx0_monitor packet_handler_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

