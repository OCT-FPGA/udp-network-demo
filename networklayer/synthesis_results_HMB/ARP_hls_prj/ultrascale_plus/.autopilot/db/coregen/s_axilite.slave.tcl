dict set slaves s_axilite {ports {arp_scan_i {type i_ap_none width 1} arp_scan_o {type o_ap_vld width 1} arpTable_valid {type io_ap_memory width 8} arpTable_ipAddress {type o_ap_memory width 32} arpTable_macAddress {type io_ap_memory width 64}} mems {arpTable_valid {width 8} arpTable_ipAddress {width 32} arpTable_macAddress {width 64}} has_ctrl 0}
set datawidth 32
