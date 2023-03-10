# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name myMacAddress \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myMacAddress \
    op interface \
    ports { myMacAddress { I 48 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name myMacAddress_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myMacAddress_c \
    op interface \
    ports { myMacAddress_c_din { O 48 vector } myMacAddress_c_full_n { I 1 bit } myMacAddress_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name gatewayIP \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gatewayIP \
    op interface \
    ports { gatewayIP { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name gatewayIP_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gatewayIP_c \
    op interface \
    ports { gatewayIP_c_din { O 32 vector } gatewayIP_c_full_n { I 1 bit } gatewayIP_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name gatewayIP_c12 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gatewayIP_c12 \
    op interface \
    ports { gatewayIP_c12_din { O 32 vector } gatewayIP_c12_full_n { I 1 bit } gatewayIP_c12_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name networkMask \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_networkMask \
    op interface \
    ports { networkMask { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name networkMask_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_networkMask_c \
    op interface \
    ports { networkMask_c_din { O 32 vector } networkMask_c_full_n { I 1 bit } networkMask_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name networkMask_c13 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_networkMask_c13 \
    op interface \
    ports { networkMask_c13_din { O 32 vector } networkMask_c13_full_n { I 1 bit } networkMask_c13_write { O 1 bit } } \
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


