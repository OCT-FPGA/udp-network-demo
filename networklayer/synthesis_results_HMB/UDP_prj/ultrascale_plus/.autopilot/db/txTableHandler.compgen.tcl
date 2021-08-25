# This script segment is generated automatically by AutoPilot

set id 379
set name udp_mux_164_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 380
set name udp_mux_164_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 16
set din11_signed 0
set din12_width 16
set din12_signed 0
set din13_width 16
set din13_signed 0
set din14_width 16
set din14_signed 0
set din15_width 16
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 16
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 382
set name udp_mux_164_1_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 1
set din0_signed 0
set din1_width 1
set din1_signed 0
set din2_width 1
set din2_signed 0
set din3_width 1
set din3_signed 0
set din4_width 1
set din4_signed 0
set din5_width 1
set din5_signed 0
set din6_width 1
set din6_signed 0
set din7_width 1
set din7_signed 0
set din8_width 1
set din8_signed 0
set din9_width 1
set din9_signed 0
set din10_width 1
set din10_signed 0
set din11_width 1
set din11_signed 0
set din12_width 1
set din12_signed 0
set din13_width 1
set din13_signed 0
set din14_width 1
set din14_signed 0
set din15_width 1
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name SocketTableTx_0_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_0_theirIP_V \
    op interface \
    ports { SocketTableTx_0_theirIP_V_dout { I 32 vector } SocketTableTx_0_theirIP_V_empty_n { I 1 bit } SocketTableTx_0_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name SocketTableTx_1_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_1_theirIP_V \
    op interface \
    ports { SocketTableTx_1_theirIP_V_dout { I 32 vector } SocketTableTx_1_theirIP_V_empty_n { I 1 bit } SocketTableTx_1_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name SocketTableTx_2_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_2_theirIP_V \
    op interface \
    ports { SocketTableTx_2_theirIP_V_dout { I 32 vector } SocketTableTx_2_theirIP_V_empty_n { I 1 bit } SocketTableTx_2_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name SocketTableTx_3_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_3_theirIP_V \
    op interface \
    ports { SocketTableTx_3_theirIP_V_dout { I 32 vector } SocketTableTx_3_theirIP_V_empty_n { I 1 bit } SocketTableTx_3_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name SocketTableTx_4_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_4_theirIP_V \
    op interface \
    ports { SocketTableTx_4_theirIP_V_dout { I 32 vector } SocketTableTx_4_theirIP_V_empty_n { I 1 bit } SocketTableTx_4_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name SocketTableTx_5_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_5_theirIP_V \
    op interface \
    ports { SocketTableTx_5_theirIP_V_dout { I 32 vector } SocketTableTx_5_theirIP_V_empty_n { I 1 bit } SocketTableTx_5_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name SocketTableTx_6_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_6_theirIP_V \
    op interface \
    ports { SocketTableTx_6_theirIP_V_dout { I 32 vector } SocketTableTx_6_theirIP_V_empty_n { I 1 bit } SocketTableTx_6_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name SocketTableTx_7_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_7_theirIP_V \
    op interface \
    ports { SocketTableTx_7_theirIP_V_dout { I 32 vector } SocketTableTx_7_theirIP_V_empty_n { I 1 bit } SocketTableTx_7_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name SocketTableTx_8_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_8_theirIP_V \
    op interface \
    ports { SocketTableTx_8_theirIP_V_dout { I 32 vector } SocketTableTx_8_theirIP_V_empty_n { I 1 bit } SocketTableTx_8_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name SocketTableTx_9_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_9_theirIP_V \
    op interface \
    ports { SocketTableTx_9_theirIP_V_dout { I 32 vector } SocketTableTx_9_theirIP_V_empty_n { I 1 bit } SocketTableTx_9_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name SocketTableTx_10_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_10_theirIP_V \
    op interface \
    ports { SocketTableTx_10_theirIP_V_dout { I 32 vector } SocketTableTx_10_theirIP_V_empty_n { I 1 bit } SocketTableTx_10_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name SocketTableTx_11_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_11_theirIP_V \
    op interface \
    ports { SocketTableTx_11_theirIP_V_dout { I 32 vector } SocketTableTx_11_theirIP_V_empty_n { I 1 bit } SocketTableTx_11_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name SocketTableTx_12_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_12_theirIP_V \
    op interface \
    ports { SocketTableTx_12_theirIP_V_dout { I 32 vector } SocketTableTx_12_theirIP_V_empty_n { I 1 bit } SocketTableTx_12_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name SocketTableTx_13_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_13_theirIP_V \
    op interface \
    ports { SocketTableTx_13_theirIP_V_dout { I 32 vector } SocketTableTx_13_theirIP_V_empty_n { I 1 bit } SocketTableTx_13_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name SocketTableTx_14_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_14_theirIP_V \
    op interface \
    ports { SocketTableTx_14_theirIP_V_dout { I 32 vector } SocketTableTx_14_theirIP_V_empty_n { I 1 bit } SocketTableTx_14_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name SocketTableTx_15_theirIP_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_15_theirIP_V \
    op interface \
    ports { SocketTableTx_15_theirIP_V_dout { I 32 vector } SocketTableTx_15_theirIP_V_empty_n { I 1 bit } SocketTableTx_15_theirIP_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name SocketTableTx_0_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_0_theirPort_V \
    op interface \
    ports { SocketTableTx_0_theirPort_V_dout { I 16 vector } SocketTableTx_0_theirPort_V_empty_n { I 1 bit } SocketTableTx_0_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name SocketTableTx_1_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_1_theirPort_V \
    op interface \
    ports { SocketTableTx_1_theirPort_V_dout { I 16 vector } SocketTableTx_1_theirPort_V_empty_n { I 1 bit } SocketTableTx_1_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name SocketTableTx_2_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_2_theirPort_V \
    op interface \
    ports { SocketTableTx_2_theirPort_V_dout { I 16 vector } SocketTableTx_2_theirPort_V_empty_n { I 1 bit } SocketTableTx_2_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name SocketTableTx_3_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_3_theirPort_V \
    op interface \
    ports { SocketTableTx_3_theirPort_V_dout { I 16 vector } SocketTableTx_3_theirPort_V_empty_n { I 1 bit } SocketTableTx_3_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name SocketTableTx_4_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_4_theirPort_V \
    op interface \
    ports { SocketTableTx_4_theirPort_V_dout { I 16 vector } SocketTableTx_4_theirPort_V_empty_n { I 1 bit } SocketTableTx_4_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name SocketTableTx_5_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_5_theirPort_V \
    op interface \
    ports { SocketTableTx_5_theirPort_V_dout { I 16 vector } SocketTableTx_5_theirPort_V_empty_n { I 1 bit } SocketTableTx_5_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name SocketTableTx_6_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_6_theirPort_V \
    op interface \
    ports { SocketTableTx_6_theirPort_V_dout { I 16 vector } SocketTableTx_6_theirPort_V_empty_n { I 1 bit } SocketTableTx_6_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name SocketTableTx_7_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_7_theirPort_V \
    op interface \
    ports { SocketTableTx_7_theirPort_V_dout { I 16 vector } SocketTableTx_7_theirPort_V_empty_n { I 1 bit } SocketTableTx_7_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name SocketTableTx_8_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_8_theirPort_V \
    op interface \
    ports { SocketTableTx_8_theirPort_V_dout { I 16 vector } SocketTableTx_8_theirPort_V_empty_n { I 1 bit } SocketTableTx_8_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name SocketTableTx_9_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_9_theirPort_V \
    op interface \
    ports { SocketTableTx_9_theirPort_V_dout { I 16 vector } SocketTableTx_9_theirPort_V_empty_n { I 1 bit } SocketTableTx_9_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name SocketTableTx_10_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_10_theirPort_V \
    op interface \
    ports { SocketTableTx_10_theirPort_V_dout { I 16 vector } SocketTableTx_10_theirPort_V_empty_n { I 1 bit } SocketTableTx_10_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name SocketTableTx_11_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_11_theirPort_V \
    op interface \
    ports { SocketTableTx_11_theirPort_V_dout { I 16 vector } SocketTableTx_11_theirPort_V_empty_n { I 1 bit } SocketTableTx_11_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name SocketTableTx_12_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_12_theirPort_V \
    op interface \
    ports { SocketTableTx_12_theirPort_V_dout { I 16 vector } SocketTableTx_12_theirPort_V_empty_n { I 1 bit } SocketTableTx_12_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name SocketTableTx_13_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_13_theirPort_V \
    op interface \
    ports { SocketTableTx_13_theirPort_V_dout { I 16 vector } SocketTableTx_13_theirPort_V_empty_n { I 1 bit } SocketTableTx_13_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name SocketTableTx_14_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_14_theirPort_V \
    op interface \
    ports { SocketTableTx_14_theirPort_V_dout { I 16 vector } SocketTableTx_14_theirPort_V_empty_n { I 1 bit } SocketTableTx_14_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name SocketTableTx_15_theirPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_15_theirPort_V \
    op interface \
    ports { SocketTableTx_15_theirPort_V_dout { I 16 vector } SocketTableTx_15_theirPort_V_empty_n { I 1 bit } SocketTableTx_15_theirPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name SocketTableTx_0_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_0_myPort_V \
    op interface \
    ports { SocketTableTx_0_myPort_V_dout { I 16 vector } SocketTableTx_0_myPort_V_empty_n { I 1 bit } SocketTableTx_0_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name SocketTableTx_1_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_1_myPort_V \
    op interface \
    ports { SocketTableTx_1_myPort_V_dout { I 16 vector } SocketTableTx_1_myPort_V_empty_n { I 1 bit } SocketTableTx_1_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name SocketTableTx_2_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_2_myPort_V \
    op interface \
    ports { SocketTableTx_2_myPort_V_dout { I 16 vector } SocketTableTx_2_myPort_V_empty_n { I 1 bit } SocketTableTx_2_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name SocketTableTx_3_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_3_myPort_V \
    op interface \
    ports { SocketTableTx_3_myPort_V_dout { I 16 vector } SocketTableTx_3_myPort_V_empty_n { I 1 bit } SocketTableTx_3_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name SocketTableTx_4_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_4_myPort_V \
    op interface \
    ports { SocketTableTx_4_myPort_V_dout { I 16 vector } SocketTableTx_4_myPort_V_empty_n { I 1 bit } SocketTableTx_4_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name SocketTableTx_5_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_5_myPort_V \
    op interface \
    ports { SocketTableTx_5_myPort_V_dout { I 16 vector } SocketTableTx_5_myPort_V_empty_n { I 1 bit } SocketTableTx_5_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name SocketTableTx_6_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_6_myPort_V \
    op interface \
    ports { SocketTableTx_6_myPort_V_dout { I 16 vector } SocketTableTx_6_myPort_V_empty_n { I 1 bit } SocketTableTx_6_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name SocketTableTx_7_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_7_myPort_V \
    op interface \
    ports { SocketTableTx_7_myPort_V_dout { I 16 vector } SocketTableTx_7_myPort_V_empty_n { I 1 bit } SocketTableTx_7_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name SocketTableTx_8_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_8_myPort_V \
    op interface \
    ports { SocketTableTx_8_myPort_V_dout { I 16 vector } SocketTableTx_8_myPort_V_empty_n { I 1 bit } SocketTableTx_8_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name SocketTableTx_9_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_9_myPort_V \
    op interface \
    ports { SocketTableTx_9_myPort_V_dout { I 16 vector } SocketTableTx_9_myPort_V_empty_n { I 1 bit } SocketTableTx_9_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name SocketTableTx_10_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_10_myPort_V \
    op interface \
    ports { SocketTableTx_10_myPort_V_dout { I 16 vector } SocketTableTx_10_myPort_V_empty_n { I 1 bit } SocketTableTx_10_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name SocketTableTx_11_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_11_myPort_V \
    op interface \
    ports { SocketTableTx_11_myPort_V_dout { I 16 vector } SocketTableTx_11_myPort_V_empty_n { I 1 bit } SocketTableTx_11_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name SocketTableTx_12_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_12_myPort_V \
    op interface \
    ports { SocketTableTx_12_myPort_V_dout { I 16 vector } SocketTableTx_12_myPort_V_empty_n { I 1 bit } SocketTableTx_12_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name SocketTableTx_13_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_13_myPort_V \
    op interface \
    ports { SocketTableTx_13_myPort_V_dout { I 16 vector } SocketTableTx_13_myPort_V_empty_n { I 1 bit } SocketTableTx_13_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name SocketTableTx_14_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_14_myPort_V \
    op interface \
    ports { SocketTableTx_14_myPort_V_dout { I 16 vector } SocketTableTx_14_myPort_V_empty_n { I 1 bit } SocketTableTx_14_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name SocketTableTx_15_myPort_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_15_myPort_V \
    op interface \
    ports { SocketTableTx_15_myPort_V_dout { I 16 vector } SocketTableTx_15_myPort_V_empty_n { I 1 bit } SocketTableTx_15_myPort_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name SocketTableTx_0_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_0_valid_V \
    op interface \
    ports { SocketTableTx_0_valid_V_dout { I 1 vector } SocketTableTx_0_valid_V_empty_n { I 1 bit } SocketTableTx_0_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name SocketTableTx_1_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_1_valid_V \
    op interface \
    ports { SocketTableTx_1_valid_V_dout { I 1 vector } SocketTableTx_1_valid_V_empty_n { I 1 bit } SocketTableTx_1_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name SocketTableTx_2_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_2_valid_V \
    op interface \
    ports { SocketTableTx_2_valid_V_dout { I 1 vector } SocketTableTx_2_valid_V_empty_n { I 1 bit } SocketTableTx_2_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name SocketTableTx_3_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_3_valid_V \
    op interface \
    ports { SocketTableTx_3_valid_V_dout { I 1 vector } SocketTableTx_3_valid_V_empty_n { I 1 bit } SocketTableTx_3_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name SocketTableTx_4_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_4_valid_V \
    op interface \
    ports { SocketTableTx_4_valid_V_dout { I 1 vector } SocketTableTx_4_valid_V_empty_n { I 1 bit } SocketTableTx_4_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name SocketTableTx_5_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_5_valid_V \
    op interface \
    ports { SocketTableTx_5_valid_V_dout { I 1 vector } SocketTableTx_5_valid_V_empty_n { I 1 bit } SocketTableTx_5_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name SocketTableTx_6_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_6_valid_V \
    op interface \
    ports { SocketTableTx_6_valid_V_dout { I 1 vector } SocketTableTx_6_valid_V_empty_n { I 1 bit } SocketTableTx_6_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name SocketTableTx_7_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_7_valid_V \
    op interface \
    ports { SocketTableTx_7_valid_V_dout { I 1 vector } SocketTableTx_7_valid_V_empty_n { I 1 bit } SocketTableTx_7_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name SocketTableTx_8_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_8_valid_V \
    op interface \
    ports { SocketTableTx_8_valid_V_dout { I 1 vector } SocketTableTx_8_valid_V_empty_n { I 1 bit } SocketTableTx_8_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name SocketTableTx_9_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_9_valid_V \
    op interface \
    ports { SocketTableTx_9_valid_V_dout { I 1 vector } SocketTableTx_9_valid_V_empty_n { I 1 bit } SocketTableTx_9_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name SocketTableTx_10_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_10_valid_V \
    op interface \
    ports { SocketTableTx_10_valid_V_dout { I 1 vector } SocketTableTx_10_valid_V_empty_n { I 1 bit } SocketTableTx_10_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name SocketTableTx_11_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_11_valid_V \
    op interface \
    ports { SocketTableTx_11_valid_V_dout { I 1 vector } SocketTableTx_11_valid_V_empty_n { I 1 bit } SocketTableTx_11_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name SocketTableTx_12_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_12_valid_V \
    op interface \
    ports { SocketTableTx_12_valid_V_dout { I 1 vector } SocketTableTx_12_valid_V_empty_n { I 1 bit } SocketTableTx_12_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name SocketTableTx_13_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_13_valid_V \
    op interface \
    ports { SocketTableTx_13_valid_V_dout { I 1 vector } SocketTableTx_13_valid_V_empty_n { I 1 bit } SocketTableTx_13_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name SocketTableTx_14_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_14_valid_V \
    op interface \
    ports { SocketTableTx_14_valid_V_dout { I 1 vector } SocketTableTx_14_valid_V_empty_n { I 1 bit } SocketTableTx_14_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name SocketTableTx_15_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTableTx_15_valid_V \
    op interface \
    ports { SocketTableTx_15_valid_V_dout { I 1 vector } SocketTableTx_15_valid_V_empty_n { I 1 bit } SocketTableTx_15_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name myIpAddress_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress_V \
    op interface \
    ports { myIpAddress_V { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name agmdIdOut_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_agmdIdOut_V_V \
    op interface \
    ports { agmdIdOut_V_V_dout { I 16 vector } agmdIdOut_V_V_empty_n { I 1 bit } agmdIdOut_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name txthMetaData_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txthMetaData_V \
    op interface \
    ports { txthMetaData_V_din { O 97 vector } txthMetaData_V_full_n { I 1 bit } txthMetaData_V_write { O 1 bit } } \
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


