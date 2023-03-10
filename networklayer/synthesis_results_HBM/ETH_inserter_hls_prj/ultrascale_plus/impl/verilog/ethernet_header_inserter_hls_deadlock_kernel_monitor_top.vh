
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [3:0] axis_block_sigs;
wire [6:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~broadcaster_and_mac_request_U0.dataIn_TDATA_blk_n;
assign axis_block_sigs[1] = ~broadcaster_and_mac_request_U0.arpTableRequest_TDATA_blk_n;
assign axis_block_sigs[2] = ~handle_output_U0.arpTableReplay_TDATA_blk_n;
assign axis_block_sigs[3] = ~handle_output_U0.dataOut_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.myMacAddress_c_blk_n;
assign inst_idle_sigs[1] = broadcaster_and_mac_request_U0.ap_idle;
assign inst_block_sigs[1] = (broadcaster_and_mac_request_U0.ap_done & ~broadcaster_and_mac_request_U0.ap_continue) | ~broadcaster_and_mac_request_U0.ip_header_out_blk_n | ~broadcaster_and_mac_request_U0.no_ip_header_out_blk_n;
assign inst_idle_sigs[2] = compute_and_insert_ip_checksum_U0.ap_idle;
assign inst_block_sigs[2] = (compute_and_insert_ip_checksum_U0.ap_done & ~compute_and_insert_ip_checksum_U0.ap_continue) | ~compute_and_insert_ip_checksum_U0.ip_header_out_blk_n | ~compute_and_insert_ip_checksum_U0.ip_header_checksum_blk_n;
assign inst_idle_sigs[3] = handle_output_U0.ap_idle;
assign inst_block_sigs[3] = (handle_output_U0.ap_done & ~handle_output_U0.ap_continue) | ~handle_output_U0.myMacAddress_blk_n | ~handle_output_U0.ip_header_checksum_blk_n | ~handle_output_U0.no_ip_header_out_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = broadcaster_and_mac_request_U0.ap_idle;
assign inst_idle_sigs[6] = handle_output_U0.ap_idle;

ethernet_header_inserter_hls_deadlock_idx0_monitor ethernet_header_inserter_hls_deadlock_idx0_monitor_U (
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
