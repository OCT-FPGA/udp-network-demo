set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME arp_server_entry_proc}
  {SRCNAME genARPDiscovery MODELNAME genARPDiscovery RTLNAME arp_server_genARPDiscovery
    SUBMODULES {
      {MODELNAME arp_server_regslice_both RTLNAME arp_server_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME arp_server_regslice_both_U}
    }
  }
  {SRCNAME arp_pkg_receiver MODELNAME arp_pkg_receiver RTLNAME arp_server_arp_pkg_receiver}
  {SRCNAME arp_pkg_sender MODELNAME arp_pkg_sender RTLNAME arp_server_arp_pkg_sender}
  {SRCNAME arp_table MODELNAME arp_table RTLNAME arp_server_arp_table}
  {SRCNAME arp_server MODELNAME arp_server RTLNAME arp_server IS_TOP 1
    SUBMODULES {
      {MODELNAME arp_server_fifo_w32_d2_S RTLNAME arp_server_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_fifo_w32_d4_S RTLNAME arp_server_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_fifo_w128_d4_S RTLNAME arp_server_fifo_w128_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_fifo_w256_d4_S RTLNAME arp_server_fifo_w256_d4_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME arp_server_s_axilite_s_axi RTLNAME arp_server_s_axilite_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
