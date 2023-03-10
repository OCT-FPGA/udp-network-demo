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
    id 44 \
    name arpTable_macAddress \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename arpTable_macAddress \
    op interface \
    ports { arpTable_macAddress_address0 { O 8 vector } arpTable_macAddress_ce0 { O 1 bit } arpTable_macAddress_we0 { O 1 bit } arpTable_macAddress_d0 { O 48 vector } arpTable_macAddress_q0 { I 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpTable_macAddress'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name arpTable_ipAddress \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename arpTable_ipAddress \
    op interface \
    ports { arpTable_ipAddress_address0 { O 8 vector } arpTable_ipAddress_ce0 { O 1 bit } arpTable_ipAddress_we0 { O 1 bit } arpTable_ipAddress_d0 { O 32 vector } arpTable_ipAddress_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpTable_ipAddress'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name arpTable_valid \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename arpTable_valid \
    op interface \
    ports { arpTable_valid_address0 { O 8 vector } arpTable_valid_ce0 { O 1 bit } arpTable_valid_we0 { O 1 bit } arpTable_valid_d0 { O 1 vector } arpTable_valid_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpTable_valid'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name myIpAddress \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress \
    op interface \
    ports { myIpAddress_dout { I 32 vector } myIpAddress_empty_n { I 1 bit } myIpAddress_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name gatewayIP \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gatewayIP \
    op interface \
    ports { gatewayIP_dout { I 32 vector } gatewayIP_empty_n { I 1 bit } gatewayIP_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name networkMask \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_networkMask \
    op interface \
    ports { networkMask_dout { I 32 vector } networkMask_empty_n { I 1 bit } networkMask_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name arpTableInsertFifo \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arpTableInsertFifo \
    op interface \
    ports { arpTableInsertFifo_dout { I 128 vector } arpTableInsertFifo_empty_n { I 1 bit } arpTableInsertFifo_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name macIpEncode_i \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_macIpEncode_i \
    op interface \
    ports { macIpEncode_i_dout { I 32 vector } macIpEncode_i_empty_n { I 1 bit } macIpEncode_i_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name arpRequestFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_arpRequestFifo \
    op interface \
    ports { arpRequestFifo_din { O 32 vector } arpRequestFifo_full_n { I 1 bit } arpRequestFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name macIpEncode_rsp_i \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_macIpEncode_rsp_i \
    op interface \
    ports { macIpEncode_rsp_i_din { O 128 vector } macIpEncode_rsp_i_full_n { I 1 bit } macIpEncode_rsp_i_write { O 1 bit } } \
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


