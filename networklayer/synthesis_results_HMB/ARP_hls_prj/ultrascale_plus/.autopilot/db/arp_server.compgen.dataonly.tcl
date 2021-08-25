# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_s_axilite {
arpTable_macAddress_V { 
	dir IO
	width 48
	depth 256
	mode ap_memory
	offset 2048
	offset_end 4095
}
arpTable_ipAddress_V { 
	dir O
	width 32
	depth 256
	mode ap_memory
	offset 4096
	offset_end 5119
}
arpTable_valid_V { 
	dir IO
	width 1
	depth 256
	mode ap_memory
	offset 5120
	offset_end 5375
}
arp_scan_V_i { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 5376
	offset_end 5383
}
arp_scan_V_o { 
	dir O
	width 1
	depth 1
	mode ap_vld
	offset 5384
	offset_end 5391
}
}
dict set axilite_register_dict s_axilite $port_s_axilite


