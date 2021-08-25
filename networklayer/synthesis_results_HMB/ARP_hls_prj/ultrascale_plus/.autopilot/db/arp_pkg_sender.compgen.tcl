# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 24 \
    name arpDataOut_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {arpDataOut} \
    metadata {  } \
    op interface \
    ports { arpDataOut_TDATA { O 512 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpDataOut_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 25 \
    name arpDataOut_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {arpDataOut} \
    metadata {  } \
    op interface \
    ports { arpDataOut_TKEEP { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpDataOut_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 26 \
    name arpDataOut_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {arpDataOut} \
    metadata {  } \
    op interface \
    ports { arpDataOut_TREADY { I 1 bit } arpDataOut_TVALID { O 1 bit } arpDataOut_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'arpDataOut_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name myMacAddress_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myMacAddress_V \
    op interface \
    ports { myMacAddress_V_dout { I 48 vector } myMacAddress_V_empty_n { I 1 bit } myMacAddress_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
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
    id 29 \
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
    id 30 \
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
    id 31 \
    name myIpAddress_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress_V_out \
    op interface \
    ports { myIpAddress_V_out_din { O 32 vector } myIpAddress_V_out_full_n { I 1 bit } myIpAddress_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name gatewayIP_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gatewayIP_V_out \
    op interface \
    ports { gatewayIP_V_out_din { O 32 vector } gatewayIP_V_out_full_n { I 1 bit } gatewayIP_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name networkMask_V_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_networkMask_V_out \
    op interface \
    ports { networkMask_V_out_din { O 32 vector } networkMask_V_out_full_n { I 1 bit } networkMask_V_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name arpReplyFifo_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arpReplyFifo_V \
    op interface \
    ports { arpReplyFifo_V_dout { I 192 vector } arpReplyFifo_V_empty_n { I 1 bit } arpReplyFifo_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name arpRequestFifo_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arpRequestFifo_V_V \
    op interface \
    ports { arpRequestFifo_V_V_dout { I 32 vector } arpRequestFifo_V_V_empty_n { I 1 bit } arpRequestFifo_V_V_read { O 1 bit } } \
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


# RegSlice definition:
set ID 36
set RegSliceName regslice_core
set RegSliceInstName regslice_core_U
set CoreName ap_simcore_regslice_core
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


