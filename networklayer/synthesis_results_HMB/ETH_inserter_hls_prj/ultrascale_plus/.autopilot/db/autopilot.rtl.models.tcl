set SynModuleInfo {
  {SRCNAME broadcaster_and_mac_request MODELNAME broadcaster_and_mac_request RTLNAME ethernet_header_inserter_broadcaster_and_mac_request
    SUBMODULES {
      {MODELNAME ethernet_header_inserter_regslice_both RTLNAME ethernet_header_inserter_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ethernet_header_inserter_regslice_both_U}
    }
  }
  {SRCNAME compute_and_insert_ip_checksum MODELNAME compute_and_insert_ip_checksum RTLNAME ethernet_header_inserter_compute_and_insert_ip_checksum}
  {SRCNAME handle_output MODELNAME handle_output RTLNAME ethernet_header_inserter_handle_output}
  {SRCNAME ethernet_header_inserter MODELNAME ethernet_header_inserter RTLNAME ethernet_header_inserter IS_TOP 1
    SUBMODULES {
      {MODELNAME ethernet_header_inserter_fifo_w1024_d16_A RTLNAME ethernet_header_inserter_fifo_w1024_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME ethernet_header_inserter_start_for_compute_and_insert_ip_checksum_U0 RTLNAME ethernet_header_inserter_start_for_compute_and_insert_ip_checksum_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
