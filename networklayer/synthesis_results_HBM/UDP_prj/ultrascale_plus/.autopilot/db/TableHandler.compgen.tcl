# This script segment is generated automatically by AutoPilot

set id 141
set name udp_mux_1616_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
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
set din16_width 16
set din16_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
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


set id 142
set name udp_mux_1616_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
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
set din16_width 16
set din16_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
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


set id 144
set name udp_mux_1616_1_1_1
set corename simcore_mux
set op mux
set stage_num 1
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
set din16_width 16
set din16_signed 0
set dout_width 1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
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
    id 148 \
    name SocketTable_theirIP_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_0 \
    op interface \
    ports { SocketTable_theirIP_0_dout { I 32 vector } SocketTable_theirIP_0_empty_n { I 1 bit } SocketTable_theirIP_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name SocketTable_theirIP_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_1 \
    op interface \
    ports { SocketTable_theirIP_1_dout { I 32 vector } SocketTable_theirIP_1_empty_n { I 1 bit } SocketTable_theirIP_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name SocketTable_theirIP_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_2 \
    op interface \
    ports { SocketTable_theirIP_2_dout { I 32 vector } SocketTable_theirIP_2_empty_n { I 1 bit } SocketTable_theirIP_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name SocketTable_theirIP_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_3 \
    op interface \
    ports { SocketTable_theirIP_3_dout { I 32 vector } SocketTable_theirIP_3_empty_n { I 1 bit } SocketTable_theirIP_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name SocketTable_theirIP_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_4 \
    op interface \
    ports { SocketTable_theirIP_4_dout { I 32 vector } SocketTable_theirIP_4_empty_n { I 1 bit } SocketTable_theirIP_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name SocketTable_theirIP_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_5 \
    op interface \
    ports { SocketTable_theirIP_5_dout { I 32 vector } SocketTable_theirIP_5_empty_n { I 1 bit } SocketTable_theirIP_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name SocketTable_theirIP_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_6 \
    op interface \
    ports { SocketTable_theirIP_6_dout { I 32 vector } SocketTable_theirIP_6_empty_n { I 1 bit } SocketTable_theirIP_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name SocketTable_theirIP_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_7 \
    op interface \
    ports { SocketTable_theirIP_7_dout { I 32 vector } SocketTable_theirIP_7_empty_n { I 1 bit } SocketTable_theirIP_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name SocketTable_theirIP_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_8 \
    op interface \
    ports { SocketTable_theirIP_8_dout { I 32 vector } SocketTable_theirIP_8_empty_n { I 1 bit } SocketTable_theirIP_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name SocketTable_theirIP_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_9 \
    op interface \
    ports { SocketTable_theirIP_9_dout { I 32 vector } SocketTable_theirIP_9_empty_n { I 1 bit } SocketTable_theirIP_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name SocketTable_theirIP_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_10 \
    op interface \
    ports { SocketTable_theirIP_10_dout { I 32 vector } SocketTable_theirIP_10_empty_n { I 1 bit } SocketTable_theirIP_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name SocketTable_theirIP_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_11 \
    op interface \
    ports { SocketTable_theirIP_11_dout { I 32 vector } SocketTable_theirIP_11_empty_n { I 1 bit } SocketTable_theirIP_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name SocketTable_theirIP_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_12 \
    op interface \
    ports { SocketTable_theirIP_12_dout { I 32 vector } SocketTable_theirIP_12_empty_n { I 1 bit } SocketTable_theirIP_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name SocketTable_theirIP_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_13 \
    op interface \
    ports { SocketTable_theirIP_13_dout { I 32 vector } SocketTable_theirIP_13_empty_n { I 1 bit } SocketTable_theirIP_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name SocketTable_theirIP_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_14 \
    op interface \
    ports { SocketTable_theirIP_14_dout { I 32 vector } SocketTable_theirIP_14_empty_n { I 1 bit } SocketTable_theirIP_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name SocketTable_theirIP_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_15 \
    op interface \
    ports { SocketTable_theirIP_15_dout { I 32 vector } SocketTable_theirIP_15_empty_n { I 1 bit } SocketTable_theirIP_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name SocketTable_theirPort_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_0 \
    op interface \
    ports { SocketTable_theirPort_0_dout { I 16 vector } SocketTable_theirPort_0_empty_n { I 1 bit } SocketTable_theirPort_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name SocketTable_theirPort_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_1 \
    op interface \
    ports { SocketTable_theirPort_1_dout { I 16 vector } SocketTable_theirPort_1_empty_n { I 1 bit } SocketTable_theirPort_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name SocketTable_theirPort_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_2 \
    op interface \
    ports { SocketTable_theirPort_2_dout { I 16 vector } SocketTable_theirPort_2_empty_n { I 1 bit } SocketTable_theirPort_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name SocketTable_theirPort_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_3 \
    op interface \
    ports { SocketTable_theirPort_3_dout { I 16 vector } SocketTable_theirPort_3_empty_n { I 1 bit } SocketTable_theirPort_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name SocketTable_theirPort_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_4 \
    op interface \
    ports { SocketTable_theirPort_4_dout { I 16 vector } SocketTable_theirPort_4_empty_n { I 1 bit } SocketTable_theirPort_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name SocketTable_theirPort_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_5 \
    op interface \
    ports { SocketTable_theirPort_5_dout { I 16 vector } SocketTable_theirPort_5_empty_n { I 1 bit } SocketTable_theirPort_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name SocketTable_theirPort_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_6 \
    op interface \
    ports { SocketTable_theirPort_6_dout { I 16 vector } SocketTable_theirPort_6_empty_n { I 1 bit } SocketTable_theirPort_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name SocketTable_theirPort_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_7 \
    op interface \
    ports { SocketTable_theirPort_7_dout { I 16 vector } SocketTable_theirPort_7_empty_n { I 1 bit } SocketTable_theirPort_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name SocketTable_theirPort_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_8 \
    op interface \
    ports { SocketTable_theirPort_8_dout { I 16 vector } SocketTable_theirPort_8_empty_n { I 1 bit } SocketTable_theirPort_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name SocketTable_theirPort_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_9 \
    op interface \
    ports { SocketTable_theirPort_9_dout { I 16 vector } SocketTable_theirPort_9_empty_n { I 1 bit } SocketTable_theirPort_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name SocketTable_theirPort_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_10 \
    op interface \
    ports { SocketTable_theirPort_10_dout { I 16 vector } SocketTable_theirPort_10_empty_n { I 1 bit } SocketTable_theirPort_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name SocketTable_theirPort_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_11 \
    op interface \
    ports { SocketTable_theirPort_11_dout { I 16 vector } SocketTable_theirPort_11_empty_n { I 1 bit } SocketTable_theirPort_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name SocketTable_theirPort_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_12 \
    op interface \
    ports { SocketTable_theirPort_12_dout { I 16 vector } SocketTable_theirPort_12_empty_n { I 1 bit } SocketTable_theirPort_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name SocketTable_theirPort_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_13 \
    op interface \
    ports { SocketTable_theirPort_13_dout { I 16 vector } SocketTable_theirPort_13_empty_n { I 1 bit } SocketTable_theirPort_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name SocketTable_theirPort_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_14 \
    op interface \
    ports { SocketTable_theirPort_14_dout { I 16 vector } SocketTable_theirPort_14_empty_n { I 1 bit } SocketTable_theirPort_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name SocketTable_theirPort_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_15 \
    op interface \
    ports { SocketTable_theirPort_15_dout { I 16 vector } SocketTable_theirPort_15_empty_n { I 1 bit } SocketTable_theirPort_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name SocketTable_myPort_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_0 \
    op interface \
    ports { SocketTable_myPort_0_dout { I 16 vector } SocketTable_myPort_0_empty_n { I 1 bit } SocketTable_myPort_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name SocketTable_myPort_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_1 \
    op interface \
    ports { SocketTable_myPort_1_dout { I 16 vector } SocketTable_myPort_1_empty_n { I 1 bit } SocketTable_myPort_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name SocketTable_myPort_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_2 \
    op interface \
    ports { SocketTable_myPort_2_dout { I 16 vector } SocketTable_myPort_2_empty_n { I 1 bit } SocketTable_myPort_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name SocketTable_myPort_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_3 \
    op interface \
    ports { SocketTable_myPort_3_dout { I 16 vector } SocketTable_myPort_3_empty_n { I 1 bit } SocketTable_myPort_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name SocketTable_myPort_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_4 \
    op interface \
    ports { SocketTable_myPort_4_dout { I 16 vector } SocketTable_myPort_4_empty_n { I 1 bit } SocketTable_myPort_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name SocketTable_myPort_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_5 \
    op interface \
    ports { SocketTable_myPort_5_dout { I 16 vector } SocketTable_myPort_5_empty_n { I 1 bit } SocketTable_myPort_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name SocketTable_myPort_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_6 \
    op interface \
    ports { SocketTable_myPort_6_dout { I 16 vector } SocketTable_myPort_6_empty_n { I 1 bit } SocketTable_myPort_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name SocketTable_myPort_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_7 \
    op interface \
    ports { SocketTable_myPort_7_dout { I 16 vector } SocketTable_myPort_7_empty_n { I 1 bit } SocketTable_myPort_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name SocketTable_myPort_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_8 \
    op interface \
    ports { SocketTable_myPort_8_dout { I 16 vector } SocketTable_myPort_8_empty_n { I 1 bit } SocketTable_myPort_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name SocketTable_myPort_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_9 \
    op interface \
    ports { SocketTable_myPort_9_dout { I 16 vector } SocketTable_myPort_9_empty_n { I 1 bit } SocketTable_myPort_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name SocketTable_myPort_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_10 \
    op interface \
    ports { SocketTable_myPort_10_dout { I 16 vector } SocketTable_myPort_10_empty_n { I 1 bit } SocketTable_myPort_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name SocketTable_myPort_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_11 \
    op interface \
    ports { SocketTable_myPort_11_dout { I 16 vector } SocketTable_myPort_11_empty_n { I 1 bit } SocketTable_myPort_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name SocketTable_myPort_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_12 \
    op interface \
    ports { SocketTable_myPort_12_dout { I 16 vector } SocketTable_myPort_12_empty_n { I 1 bit } SocketTable_myPort_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name SocketTable_myPort_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_13 \
    op interface \
    ports { SocketTable_myPort_13_dout { I 16 vector } SocketTable_myPort_13_empty_n { I 1 bit } SocketTable_myPort_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name SocketTable_myPort_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_14 \
    op interface \
    ports { SocketTable_myPort_14_dout { I 16 vector } SocketTable_myPort_14_empty_n { I 1 bit } SocketTable_myPort_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name SocketTable_myPort_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_15 \
    op interface \
    ports { SocketTable_myPort_15_dout { I 16 vector } SocketTable_myPort_15_empty_n { I 1 bit } SocketTable_myPort_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name SocketTable_valid_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_0 \
    op interface \
    ports { SocketTable_valid_0_dout { I 1 vector } SocketTable_valid_0_empty_n { I 1 bit } SocketTable_valid_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name SocketTable_valid_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_1 \
    op interface \
    ports { SocketTable_valid_1_dout { I 1 vector } SocketTable_valid_1_empty_n { I 1 bit } SocketTable_valid_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name SocketTable_valid_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_2 \
    op interface \
    ports { SocketTable_valid_2_dout { I 1 vector } SocketTable_valid_2_empty_n { I 1 bit } SocketTable_valid_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name SocketTable_valid_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_3 \
    op interface \
    ports { SocketTable_valid_3_dout { I 1 vector } SocketTable_valid_3_empty_n { I 1 bit } SocketTable_valid_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name SocketTable_valid_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_4 \
    op interface \
    ports { SocketTable_valid_4_dout { I 1 vector } SocketTable_valid_4_empty_n { I 1 bit } SocketTable_valid_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name SocketTable_valid_5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_5 \
    op interface \
    ports { SocketTable_valid_5_dout { I 1 vector } SocketTable_valid_5_empty_n { I 1 bit } SocketTable_valid_5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name SocketTable_valid_6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_6 \
    op interface \
    ports { SocketTable_valid_6_dout { I 1 vector } SocketTable_valid_6_empty_n { I 1 bit } SocketTable_valid_6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name SocketTable_valid_7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_7 \
    op interface \
    ports { SocketTable_valid_7_dout { I 1 vector } SocketTable_valid_7_empty_n { I 1 bit } SocketTable_valid_7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name SocketTable_valid_8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_8 \
    op interface \
    ports { SocketTable_valid_8_dout { I 1 vector } SocketTable_valid_8_empty_n { I 1 bit } SocketTable_valid_8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name SocketTable_valid_9 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_9 \
    op interface \
    ports { SocketTable_valid_9_dout { I 1 vector } SocketTable_valid_9_empty_n { I 1 bit } SocketTable_valid_9_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name SocketTable_valid_10 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_10 \
    op interface \
    ports { SocketTable_valid_10_dout { I 1 vector } SocketTable_valid_10_empty_n { I 1 bit } SocketTable_valid_10_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name SocketTable_valid_11 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_11 \
    op interface \
    ports { SocketTable_valid_11_dout { I 1 vector } SocketTable_valid_11_empty_n { I 1 bit } SocketTable_valid_11_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name SocketTable_valid_12 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_12 \
    op interface \
    ports { SocketTable_valid_12_dout { I 1 vector } SocketTable_valid_12_empty_n { I 1 bit } SocketTable_valid_12_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name SocketTable_valid_13 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_13 \
    op interface \
    ports { SocketTable_valid_13_dout { I 1 vector } SocketTable_valid_13_empty_n { I 1 bit } SocketTable_valid_13_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name SocketTable_valid_14 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_14 \
    op interface \
    ports { SocketTable_valid_14_dout { I 1 vector } SocketTable_valid_14_empty_n { I 1 bit } SocketTable_valid_14_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name SocketTable_valid_15 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_15 \
    op interface \
    ports { SocketTable_valid_15_dout { I 1 vector } SocketTable_valid_15_empty_n { I 1 bit } SocketTable_valid_15_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name numberSockets \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numberSockets \
    op interface \
    ports { numberSockets { O 16 vector } numberSockets_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
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
    id 214 \
    name ureMetaData \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ureMetaData \
    op interface \
    ports { ureMetaData_dout { I 128 vector } ureMetaData_empty_n { I 1 bit } ureMetaData_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name rthDropFifo \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rthDropFifo \
    op interface \
    ports { rthDropFifo_din { O 160 vector } rthDropFifo_full_n { I 1 bit } rthDropFifo_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name agmdIdOut \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_agmdIdOut \
    op interface \
    ports { agmdIdOut_dout { I 16 vector } agmdIdOut_empty_n { I 1 bit } agmdIdOut_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name txthMetaData \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_txthMetaData \
    op interface \
    ports { txthMetaData_din { O 128 vector } txthMetaData_full_n { I 1 bit } txthMetaData_write { O 1 bit } } \
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


