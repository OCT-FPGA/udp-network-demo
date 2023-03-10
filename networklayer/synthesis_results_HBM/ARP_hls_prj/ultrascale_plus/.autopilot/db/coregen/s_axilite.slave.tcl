dict set slaves s_axilite {ports {arp_scan_i {type i_ap_none width 1} arp_scan_o {type o_ap_vld width 1} arpTable_valid {type io_ap_memory width 1} arpTable_ipAddress {type io_ap_memory width 32} arpTable_macAddress {type io_ap_memory width 48}} mems {arpTable_valid {width 1} arpTable_ipAddress {width 32} arpTable_macAddress {width 48}} has_ctrl 0}
set datawidth 32
