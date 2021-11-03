set SynModuleInfo {
  {SRCNAME packet_identification MODELNAME packet_identification RTLNAME packet_handler_packet_identification
    SUBMODULES {
      {MODELNAME packet_handler_regslice_both RTLNAME packet_handler_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME packet_handler_regslice_both_U}
    }
  }
  {SRCNAME ethernet_remover MODELNAME ethernet_remover RTLNAME packet_handler_ethernet_remover}
  {SRCNAME packet_handler MODELNAME packet_handler RTLNAME packet_handler IS_TOP 1
    SUBMODULES {
      {MODELNAME packet_handler_fifo_w1024_d16_A RTLNAME packet_handler_fifo_w1024_d16_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME packet_handler_start_for_ethernet_remover_U0 RTLNAME packet_handler_start_for_ethernet_remover_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
