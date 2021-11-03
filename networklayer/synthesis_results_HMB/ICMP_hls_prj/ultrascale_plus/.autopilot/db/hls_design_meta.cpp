#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axis_icmp_TDATA", 512, hls_in, 0, "axis", "in_data", 1),
	Port_Property("s_axis_icmp_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("s_axis_icmp_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("s_axis_icmp_TKEEP", 64, hls_in, 1, "axis", "in_data", 1),
	Port_Property("s_axis_icmp_TSTRB", 64, hls_in, 2, "axis", "in_data", 1),
	Port_Property("s_axis_icmp_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("myIpAddress", 32, hls_in, 4, "ap_stable", "in_data", 1),
	Port_Property("m_axis_icmp_TDATA", 512, hls_out, 5, "axis", "out_data", 1),
	Port_Property("m_axis_icmp_TVALID", 1, hls_out, 8, "axis", "out_vld", 1),
	Port_Property("m_axis_icmp_TREADY", 1, hls_in, 8, "axis", "out_acc", 1),
	Port_Property("m_axis_icmp_TKEEP", 64, hls_out, 6, "axis", "out_data", 1),
	Port_Property("m_axis_icmp_TSTRB", 64, hls_out, 7, "axis", "out_data", 1),
	Port_Property("m_axis_icmp_TLAST", 1, hls_out, 8, "axis", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "icmp_server";
