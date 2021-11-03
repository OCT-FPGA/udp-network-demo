# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_s_axilite {
arp_scan_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
arp_scan_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
arpTable_valid { 
	dir IO
	width 8
	depth 256
	mode ap_memory
	offset 256
	offset_end 511
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
arpTable_ipAddress { 
	dir O
	width 32
	depth 256
	mode ap_memory
	offset 1024
	offset_end 2047
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
arpTable_macAddress { 
	dir IO
	width 64
	depth 256
	mode ap_memory
	offset 2048
	offset_end 4095
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 1
}
}
dict set axilite_register_dict s_axilite $port_s_axilite


