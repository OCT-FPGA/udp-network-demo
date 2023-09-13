set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME udp_entry_proc}
  {SRCNAME udpRxEngine MODELNAME udpRxEngine RTLNAME udp_udpRxEngine
    SUBMODULES {
      {MODELNAME udp_regslice_both RTLNAME udp_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME udp_regslice_both_U}
    }
  }
  {SRCNAME TableHandler MODELNAME TableHandler RTLNAME udp_TableHandler
    SUBMODULES {
      {MODELNAME udp_mux_16_4_32_1_1 RTLNAME udp_mux_16_4_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME udp_mux_16_4_16_1_1 RTLNAME udp_mux_16_4_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME udp_mux_16_4_1_1_1 RTLNAME udp_mux_16_4_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rxEngPacketDropper MODELNAME rxEngPacketDropper RTLNAME udp_rxEngPacketDropper}
  {SRCNAME appGetMetaData MODELNAME appGetMetaData RTLNAME udp_appGetMetaData}
  {SRCNAME udpTxEngine MODELNAME udpTxEngine RTLNAME udp_udpTxEngine}
  {SRCNAME udp MODELNAME udp RTLNAME udp IS_TOP 1
    SUBMODULES {
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME myIpAddress_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_0_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_1_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_2_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_3_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_4_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_5_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_6_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_7_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_8_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_9_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_10_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_11_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_12_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_13_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_14_c_U}
      {MODELNAME udp_fifo_w32_d3_S RTLNAME udp_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirIP_15_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_0_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_1_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_2_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_3_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_4_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_5_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_6_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_7_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_8_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_9_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_10_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_11_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_12_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_13_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_14_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_theirPort_15_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_0_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_1_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_2_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_3_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_4_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_5_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_6_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_7_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_8_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_9_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_10_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_11_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_12_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_13_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_14_c_U}
      {MODELNAME udp_fifo_w16_d3_S RTLNAME udp_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_myPort_15_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_0_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_1_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_2_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_3_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_4_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_5_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_6_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_7_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_8_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_9_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_10_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_11_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_12_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_13_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_14_c_U}
      {MODELNAME udp_fifo_w1_d3_S RTLNAME udp_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME SocketTable_valid_15_c_U}
      {MODELNAME udp_fifo_w128_d32_A RTLNAME udp_fifo_w128_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ureMetaData_U}
      {MODELNAME udp_fifo_w1024_d256_A RTLNAME udp_fifo_w1024_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME ureDataPayload_U}
      {MODELNAME udp_fifo_w160_d32_A RTLNAME udp_fifo_w160_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME rthDropFifo_U}
      {MODELNAME udp_fifo_w16_d256_A RTLNAME udp_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME agmdIdOut_U}
      {MODELNAME udp_fifo_w128_d32_A RTLNAME udp_fifo_w128_d32_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME txthMetaData_U}
      {MODELNAME udp_fifo_w1024_d256_A RTLNAME udp_fifo_w1024_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME agmdDataOut_U}
      {MODELNAME udp_fifo_w16_d256_A RTLNAME udp_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME agmdpayloadLenOut_U}
      {MODELNAME udp_start_for_TableHandler_U0 RTLNAME udp_start_for_TableHandler_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_TableHandler_U0_U}
      {MODELNAME udp_start_for_rxEngPacketDropper_U0 RTLNAME udp_start_for_rxEngPacketDropper_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_rxEngPacketDropper_U0_U}
      {MODELNAME udp_start_for_udpTxEngine_U0 RTLNAME udp_start_for_udpTxEngine_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_udpTxEngine_U0_U}
      {MODELNAME udp_s_axilite_s_axi RTLNAME udp_s_axilite_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
