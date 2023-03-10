
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [8:0] inst_idle_sigs;
wire [4:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~genARPDiscovery_U0.macIpEncode_req_TDATA_blk_n;
assign axis_block_sigs[1] = ~genARPDiscovery_U0.macIpEncode_rsp_TDATA_blk_n;
assign axis_block_sigs[2] = ~arp_pkg_receiver_U0.arpDataIn_TDATA_blk_n;
assign axis_block_sigs[3] = ~arp_pkg_sender_U0.arpDataOut_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.myMacAddress_c_blk_n | ~entry_proc_U0.gatewayIP_c_blk_n | ~entry_proc_U0.gatewayIP_c12_blk_n | ~entry_proc_U0.networkMask_c_blk_n | ~entry_proc_U0.networkMask_c13_blk_n;
assign inst_idle_sigs[1] = genARPDiscovery_U0.ap_idle;
assign inst_block_sigs[1] = (genARPDiscovery_U0.ap_done & ~genARPDiscovery_U0.ap_continue) | ~genARPDiscovery_U0.macIpEncode_i_blk_n | ~genARPDiscovery_U0.macIpEncode_rsp_i_blk_n;
assign inst_idle_sigs[2] = arp_pkg_receiver_U0.ap_idle;
assign inst_block_sigs[2] = (arp_pkg_receiver_U0.ap_done & ~arp_pkg_receiver_U0.ap_continue) | ~arp_pkg_receiver_U0.myIpAddress_c_blk_n | ~arp_pkg_receiver_U0.myIpAddress_c11_blk_n | ~arp_pkg_receiver_U0.arpReplyFifo_blk_n | ~arp_pkg_receiver_U0.arpTableInsertFifo_blk_n;
assign inst_idle_sigs[3] = arp_pkg_sender_U0.ap_idle;
assign inst_block_sigs[3] = (arp_pkg_sender_U0.ap_done & ~arp_pkg_sender_U0.ap_continue) | ~arp_pkg_sender_U0.myMacAddress_blk_n | ~arp_pkg_sender_U0.myIpAddress_blk_n | ~arp_pkg_sender_U0.gatewayIP_blk_n | ~arp_pkg_sender_U0.networkMask_blk_n | ~arp_pkg_sender_U0.arpReplyFifo_blk_n | ~arp_pkg_sender_U0.arpRequestFifo_blk_n;
assign inst_idle_sigs[4] = arp_table_U0.ap_idle;
assign inst_block_sigs[4] = (arp_table_U0.ap_done & ~arp_table_U0.ap_continue) | ~arp_table_U0.myIpAddress_blk_n | ~arp_table_U0.gatewayIP_blk_n | ~arp_table_U0.networkMask_blk_n | ~arp_table_U0.arpTableInsertFifo_blk_n | ~arp_table_U0.macIpEncode_i_blk_n | ~arp_table_U0.arpRequestFifo_blk_n | ~arp_table_U0.macIpEncode_rsp_i_blk_n;

assign inst_idle_sigs[5] = 1'b0;
assign inst_idle_sigs[6] = genARPDiscovery_U0.ap_idle;
assign inst_idle_sigs[7] = arp_pkg_receiver_U0.ap_idle;
assign inst_idle_sigs[8] = arp_pkg_sender_U0.ap_idle;

arp_server_hls_deadlock_idx0_monitor arp_server_hls_deadlock_idx0_monitor_U (
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
