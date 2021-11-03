set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME udp_entry_proc}
  {SRCNAME udpRxEngine MODELNAME udpRxEngine RTLNAME udp_udpRxEngine
    SUBMODULES {
      {MODELNAME udp_regslice_both RTLNAME udp_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME udp_regslice_both_U}
    }
  }
  {SRCNAME TableHandler MODELNAME TableHandler RTLNAME udp_TableHandler}
  {SRCNAME rxEngPacketDropper MODELNAME rxEngPacketDropper RTLNAME udp_rxEngPacketDropper}
  {SRCNAME keep2len MODELNAME keep2len RTLNAME udp_keep2len}
  {SRCNAME appGetMetaData MODELNAME appGetMetaData RTLNAME udp_appGetMetaData}
  {SRCNAME udpTxEngine MODELNAME udpTxEngine RTLNAME udp_udpTxEngine}
  {SRCNAME udp MODELNAME udp RTLNAME udp IS_TOP 1
    SUBMODULES {
      {MODELNAME udp_fifo_w32_d2_S RTLNAME udp_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_fifo_w16_d2_S RTLNAME udp_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_fifo_w1_d2_S RTLNAME udp_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_fifo_w128_d32_A RTLNAME udp_fifo_w128_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_fifo_w1024_d256_A RTLNAME udp_fifo_w1024_d256_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_fifo_w160_d32_A RTLNAME udp_fifo_w160_d32_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_fifo_w16_d256_A RTLNAME udp_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_start_for_rxEngPacketDropper_U0 RTLNAME udp_start_for_rxEngPacketDropper_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_start_for_udpTxEngine_U0 RTLNAME udp_start_for_udpTxEngine_U0 BINDTYPE storage TYPE fifo IMPL srl LATENCY -1 ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME udp_s_axilite_s_axi RTLNAME udp_s_axilite_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
