# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 37 \
    name arpTable_macAddress_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename arpTable_macAddress_V \
    op interface \
    ports { arpTable_macAddress_V_address0 { O 8 vector } arpTable_macAddress_V_ce0 { O 1 bit } arpTable_macAddress_V_we0 { O 1 bit } arpTable_macAddress_V_d0 { O 48 vector } arpTable_macAddress_V_q0 { I 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpTable_macAddress_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name arpTable_ipAddress_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename arpTable_ipAddress_V \
    op interface \
    ports { arpTable_ipAddress_V_address0 { O 8 vector } arpTable_ipAddress_V_ce0 { O 1 bit } arpTable_ipAddress_V_we0 { O 1 bit } arpTable_ipAddress_V_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpTable_ipAddress_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name arpTable_valid_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename arpTable_valid_V \
    op interface \
    ports { arpTable_valid_V_address0 { O 8 vector } arpTable_valid_V_ce0 { O 1 bit } arpTable_valid_V_we0 { O 1 bit } arpTable_valid_V_d0 { O 1 vector } arpTable_valid_V_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpTable_valid_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name myIpAddress_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress_V \
    op interface \
    ports { myIpAddress_V_dout { I 32 vector } myIpAddress_V_empty_n { I 1 bit } myIpAddress_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name gatewayIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gatewayIP_V \
    op interface \
    ports { gatewayIP_V_dout { I 32 vector } gatewayIP_V_empty_n { I 1 bit } gatewayIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name networkMask_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_networkMask_V \
    op interface \
    ports { networkMask_V_dout { I 32 vector } networkMask_V_empty_n { I 1 bit } networkMask_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name arpTableInsertFifo_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arpTableInsertFifo_V \
    op interface \
    ports { arpTableInsertFifo_V_dout { I 81 vector } arpTableInsertFifo_V_empty_n { I 1 bit } arpTableInsertFifo_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name macIpEncode_i_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_macIpEncode_i_V_V \
    op interface \
    ports { macIpEncode_i_V_V_dout { I 32 vector } macIpEncode_i_V_V_empty_n { I 1 bit } macIpEncode_i_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name arpRequestFifo_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arpRequestFifo_V_V \
    op interface \
    ports { arpRequestFifo_V_V_din { O 32 vector } arpRequestFifo_V_V_full_n { I 1 bit } arpRequestFifo_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name macIpEncode_rsp_i_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_macIpEncode_rsp_i_V \
    op interface \
    ports { macIpEncode_rsp_i_V_din { O 49 vector } macIpEncode_rsp_i_V_full_n { I 1 bit } macIpEncode_rsp_i_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


