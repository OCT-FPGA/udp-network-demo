`timescale 1 ns / 1 ps

module packet_handler_hls_deadlock_idx0_monitor ( // for module packet_handler_packet_handler_inst
    input wire clock,
    input wire reset,
    input wire [1:0] axis_block_sigs,
    input wire [4:0] inst_idle_sigs,
    input wire [1:0] inst_block_sigs,
    output wire [3:0] axis_block_info,
    output wire block
);

// signal declare
reg [3:0] monitor_axis_block_info;
reg monitor_find_block;
wire idx1_block;
wire idx2_block;
wire [1:0] process_idle_vec;
wire [1:0] process_chan_block_vec;
wire [1:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign axis_block_info = (monitor_find_block == 1'b1) ? monitor_axis_block_info : 4'h0;
assign block = monitor_find_block;
assign idx1_block = axis_block_sigs[0];
assign idx2_block = axis_block_sigs[1];
assign process_axis_block_vec[0] = idx1_block & (1'b0 | axis_block_sigs[0]);
assign process_idle_vec[0] = inst_idle_sigs[0];
assign process_chan_block_vec[0] = inst_block_sigs[0];
assign process_axis_block_vec[1] = idx2_block & (1'b0 | axis_block_sigs[1]);
assign process_idle_vec[1] = inst_idle_sigs[1];
assign process_chan_block_vec[1] = inst_block_sigs[1];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[1:0] <= 2'h0;
    else if (axis_block_sigs[0])
        monitor_axis_block_info[1:0] <= ~(2'h1 << 0);
    else
        monitor_axis_block_info[1:0] <= 2'h0;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_axis_block_info[3:2] <= 2'h0;
    else if (axis_block_sigs[1])
        monitor_axis_block_info[3:2] <= ~(2'h1 << 1);
    else
        monitor_axis_block_info[3:2] <= 2'h0;
end

// instant sub module
endmodule
