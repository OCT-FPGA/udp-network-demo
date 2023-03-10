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
    name myIpAddress \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress \
    op interface \
    ports { myIpAddress { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name myIpAddress_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_myIpAddress_c \
    op interface \
    ports { myIpAddress_c_din { O 32 vector } myIpAddress_c_full_n { I 1 bit } myIpAddress_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name SocketTable_theirIP_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_0 \
    op interface \
    ports { SocketTable_theirIP_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name SocketTable_theirIP_0_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_0_c \
    op interface \
    ports { SocketTable_theirIP_0_c_din { O 32 vector } SocketTable_theirIP_0_c_full_n { I 1 bit } SocketTable_theirIP_0_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name SocketTable_theirIP_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_1 \
    op interface \
    ports { SocketTable_theirIP_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name SocketTable_theirIP_1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_1_c \
    op interface \
    ports { SocketTable_theirIP_1_c_din { O 32 vector } SocketTable_theirIP_1_c_full_n { I 1 bit } SocketTable_theirIP_1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name SocketTable_theirIP_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_2 \
    op interface \
    ports { SocketTable_theirIP_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name SocketTable_theirIP_2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_2_c \
    op interface \
    ports { SocketTable_theirIP_2_c_din { O 32 vector } SocketTable_theirIP_2_c_full_n { I 1 bit } SocketTable_theirIP_2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name SocketTable_theirIP_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_3 \
    op interface \
    ports { SocketTable_theirIP_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name SocketTable_theirIP_3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_3_c \
    op interface \
    ports { SocketTable_theirIP_3_c_din { O 32 vector } SocketTable_theirIP_3_c_full_n { I 1 bit } SocketTable_theirIP_3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name SocketTable_theirIP_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_4 \
    op interface \
    ports { SocketTable_theirIP_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name SocketTable_theirIP_4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_4_c \
    op interface \
    ports { SocketTable_theirIP_4_c_din { O 32 vector } SocketTable_theirIP_4_c_full_n { I 1 bit } SocketTable_theirIP_4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name SocketTable_theirIP_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_5 \
    op interface \
    ports { SocketTable_theirIP_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name SocketTable_theirIP_5_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_5_c \
    op interface \
    ports { SocketTable_theirIP_5_c_din { O 32 vector } SocketTable_theirIP_5_c_full_n { I 1 bit } SocketTable_theirIP_5_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name SocketTable_theirIP_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_6 \
    op interface \
    ports { SocketTable_theirIP_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name SocketTable_theirIP_6_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_6_c \
    op interface \
    ports { SocketTable_theirIP_6_c_din { O 32 vector } SocketTable_theirIP_6_c_full_n { I 1 bit } SocketTable_theirIP_6_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name SocketTable_theirIP_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_7 \
    op interface \
    ports { SocketTable_theirIP_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name SocketTable_theirIP_7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_7_c \
    op interface \
    ports { SocketTable_theirIP_7_c_din { O 32 vector } SocketTable_theirIP_7_c_full_n { I 1 bit } SocketTable_theirIP_7_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name SocketTable_theirIP_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_8 \
    op interface \
    ports { SocketTable_theirIP_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name SocketTable_theirIP_8_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_8_c \
    op interface \
    ports { SocketTable_theirIP_8_c_din { O 32 vector } SocketTable_theirIP_8_c_full_n { I 1 bit } SocketTable_theirIP_8_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name SocketTable_theirIP_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_9 \
    op interface \
    ports { SocketTable_theirIP_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name SocketTable_theirIP_9_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_9_c \
    op interface \
    ports { SocketTable_theirIP_9_c_din { O 32 vector } SocketTable_theirIP_9_c_full_n { I 1 bit } SocketTable_theirIP_9_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name SocketTable_theirIP_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_10 \
    op interface \
    ports { SocketTable_theirIP_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name SocketTable_theirIP_10_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_10_c \
    op interface \
    ports { SocketTable_theirIP_10_c_din { O 32 vector } SocketTable_theirIP_10_c_full_n { I 1 bit } SocketTable_theirIP_10_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name SocketTable_theirIP_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_11 \
    op interface \
    ports { SocketTable_theirIP_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name SocketTable_theirIP_11_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_11_c \
    op interface \
    ports { SocketTable_theirIP_11_c_din { O 32 vector } SocketTable_theirIP_11_c_full_n { I 1 bit } SocketTable_theirIP_11_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name SocketTable_theirIP_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_12 \
    op interface \
    ports { SocketTable_theirIP_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name SocketTable_theirIP_12_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_12_c \
    op interface \
    ports { SocketTable_theirIP_12_c_din { O 32 vector } SocketTable_theirIP_12_c_full_n { I 1 bit } SocketTable_theirIP_12_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name SocketTable_theirIP_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_13 \
    op interface \
    ports { SocketTable_theirIP_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name SocketTable_theirIP_13_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_13_c \
    op interface \
    ports { SocketTable_theirIP_13_c_din { O 32 vector } SocketTable_theirIP_13_c_full_n { I 1 bit } SocketTable_theirIP_13_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name SocketTable_theirIP_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_14 \
    op interface \
    ports { SocketTable_theirIP_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name SocketTable_theirIP_14_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_14_c \
    op interface \
    ports { SocketTable_theirIP_14_c_din { O 32 vector } SocketTable_theirIP_14_c_full_n { I 1 bit } SocketTable_theirIP_14_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name SocketTable_theirIP_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_15 \
    op interface \
    ports { SocketTable_theirIP_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name SocketTable_theirIP_15_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirIP_15_c \
    op interface \
    ports { SocketTable_theirIP_15_c_din { O 32 vector } SocketTable_theirIP_15_c_full_n { I 1 bit } SocketTable_theirIP_15_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name SocketTable_theirPort_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_0 \
    op interface \
    ports { SocketTable_theirPort_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name SocketTable_theirPort_0_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_0_c \
    op interface \
    ports { SocketTable_theirPort_0_c_din { O 16 vector } SocketTable_theirPort_0_c_full_n { I 1 bit } SocketTable_theirPort_0_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name SocketTable_theirPort_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_1 \
    op interface \
    ports { SocketTable_theirPort_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name SocketTable_theirPort_1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_1_c \
    op interface \
    ports { SocketTable_theirPort_1_c_din { O 16 vector } SocketTable_theirPort_1_c_full_n { I 1 bit } SocketTable_theirPort_1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name SocketTable_theirPort_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_2 \
    op interface \
    ports { SocketTable_theirPort_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name SocketTable_theirPort_2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_2_c \
    op interface \
    ports { SocketTable_theirPort_2_c_din { O 16 vector } SocketTable_theirPort_2_c_full_n { I 1 bit } SocketTable_theirPort_2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name SocketTable_theirPort_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_3 \
    op interface \
    ports { SocketTable_theirPort_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name SocketTable_theirPort_3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_3_c \
    op interface \
    ports { SocketTable_theirPort_3_c_din { O 16 vector } SocketTable_theirPort_3_c_full_n { I 1 bit } SocketTable_theirPort_3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name SocketTable_theirPort_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_4 \
    op interface \
    ports { SocketTable_theirPort_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name SocketTable_theirPort_4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_4_c \
    op interface \
    ports { SocketTable_theirPort_4_c_din { O 16 vector } SocketTable_theirPort_4_c_full_n { I 1 bit } SocketTable_theirPort_4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name SocketTable_theirPort_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_5 \
    op interface \
    ports { SocketTable_theirPort_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name SocketTable_theirPort_5_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_5_c \
    op interface \
    ports { SocketTable_theirPort_5_c_din { O 16 vector } SocketTable_theirPort_5_c_full_n { I 1 bit } SocketTable_theirPort_5_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name SocketTable_theirPort_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_6 \
    op interface \
    ports { SocketTable_theirPort_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name SocketTable_theirPort_6_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_6_c \
    op interface \
    ports { SocketTable_theirPort_6_c_din { O 16 vector } SocketTable_theirPort_6_c_full_n { I 1 bit } SocketTable_theirPort_6_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name SocketTable_theirPort_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_7 \
    op interface \
    ports { SocketTable_theirPort_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name SocketTable_theirPort_7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_7_c \
    op interface \
    ports { SocketTable_theirPort_7_c_din { O 16 vector } SocketTable_theirPort_7_c_full_n { I 1 bit } SocketTable_theirPort_7_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name SocketTable_theirPort_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_8 \
    op interface \
    ports { SocketTable_theirPort_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name SocketTable_theirPort_8_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_8_c \
    op interface \
    ports { SocketTable_theirPort_8_c_din { O 16 vector } SocketTable_theirPort_8_c_full_n { I 1 bit } SocketTable_theirPort_8_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name SocketTable_theirPort_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_9 \
    op interface \
    ports { SocketTable_theirPort_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name SocketTable_theirPort_9_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_9_c \
    op interface \
    ports { SocketTable_theirPort_9_c_din { O 16 vector } SocketTable_theirPort_9_c_full_n { I 1 bit } SocketTable_theirPort_9_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name SocketTable_theirPort_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_10 \
    op interface \
    ports { SocketTable_theirPort_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name SocketTable_theirPort_10_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_10_c \
    op interface \
    ports { SocketTable_theirPort_10_c_din { O 16 vector } SocketTable_theirPort_10_c_full_n { I 1 bit } SocketTable_theirPort_10_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name SocketTable_theirPort_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_11 \
    op interface \
    ports { SocketTable_theirPort_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name SocketTable_theirPort_11_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_11_c \
    op interface \
    ports { SocketTable_theirPort_11_c_din { O 16 vector } SocketTable_theirPort_11_c_full_n { I 1 bit } SocketTable_theirPort_11_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name SocketTable_theirPort_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_12 \
    op interface \
    ports { SocketTable_theirPort_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name SocketTable_theirPort_12_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_12_c \
    op interface \
    ports { SocketTable_theirPort_12_c_din { O 16 vector } SocketTable_theirPort_12_c_full_n { I 1 bit } SocketTable_theirPort_12_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name SocketTable_theirPort_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_13 \
    op interface \
    ports { SocketTable_theirPort_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name SocketTable_theirPort_13_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_13_c \
    op interface \
    ports { SocketTable_theirPort_13_c_din { O 16 vector } SocketTable_theirPort_13_c_full_n { I 1 bit } SocketTable_theirPort_13_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name SocketTable_theirPort_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_14 \
    op interface \
    ports { SocketTable_theirPort_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name SocketTable_theirPort_14_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_14_c \
    op interface \
    ports { SocketTable_theirPort_14_c_din { O 16 vector } SocketTable_theirPort_14_c_full_n { I 1 bit } SocketTable_theirPort_14_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name SocketTable_theirPort_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_15 \
    op interface \
    ports { SocketTable_theirPort_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name SocketTable_theirPort_15_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_theirPort_15_c \
    op interface \
    ports { SocketTable_theirPort_15_c_din { O 16 vector } SocketTable_theirPort_15_c_full_n { I 1 bit } SocketTable_theirPort_15_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name SocketTable_myPort_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_0 \
    op interface \
    ports { SocketTable_myPort_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name SocketTable_myPort_0_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_0_c \
    op interface \
    ports { SocketTable_myPort_0_c_din { O 16 vector } SocketTable_myPort_0_c_full_n { I 1 bit } SocketTable_myPort_0_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name SocketTable_myPort_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_1 \
    op interface \
    ports { SocketTable_myPort_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name SocketTable_myPort_1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_1_c \
    op interface \
    ports { SocketTable_myPort_1_c_din { O 16 vector } SocketTable_myPort_1_c_full_n { I 1 bit } SocketTable_myPort_1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name SocketTable_myPort_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_2 \
    op interface \
    ports { SocketTable_myPort_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name SocketTable_myPort_2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_2_c \
    op interface \
    ports { SocketTable_myPort_2_c_din { O 16 vector } SocketTable_myPort_2_c_full_n { I 1 bit } SocketTable_myPort_2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name SocketTable_myPort_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_3 \
    op interface \
    ports { SocketTable_myPort_3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name SocketTable_myPort_3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_3_c \
    op interface \
    ports { SocketTable_myPort_3_c_din { O 16 vector } SocketTable_myPort_3_c_full_n { I 1 bit } SocketTable_myPort_3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name SocketTable_myPort_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_4 \
    op interface \
    ports { SocketTable_myPort_4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name SocketTable_myPort_4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_4_c \
    op interface \
    ports { SocketTable_myPort_4_c_din { O 16 vector } SocketTable_myPort_4_c_full_n { I 1 bit } SocketTable_myPort_4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name SocketTable_myPort_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_5 \
    op interface \
    ports { SocketTable_myPort_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name SocketTable_myPort_5_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_5_c \
    op interface \
    ports { SocketTable_myPort_5_c_din { O 16 vector } SocketTable_myPort_5_c_full_n { I 1 bit } SocketTable_myPort_5_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name SocketTable_myPort_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_6 \
    op interface \
    ports { SocketTable_myPort_6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name SocketTable_myPort_6_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_6_c \
    op interface \
    ports { SocketTable_myPort_6_c_din { O 16 vector } SocketTable_myPort_6_c_full_n { I 1 bit } SocketTable_myPort_6_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name SocketTable_myPort_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_7 \
    op interface \
    ports { SocketTable_myPort_7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name SocketTable_myPort_7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_7_c \
    op interface \
    ports { SocketTable_myPort_7_c_din { O 16 vector } SocketTable_myPort_7_c_full_n { I 1 bit } SocketTable_myPort_7_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name SocketTable_myPort_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_8 \
    op interface \
    ports { SocketTable_myPort_8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name SocketTable_myPort_8_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_8_c \
    op interface \
    ports { SocketTable_myPort_8_c_din { O 16 vector } SocketTable_myPort_8_c_full_n { I 1 bit } SocketTable_myPort_8_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name SocketTable_myPort_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_9 \
    op interface \
    ports { SocketTable_myPort_9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name SocketTable_myPort_9_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_9_c \
    op interface \
    ports { SocketTable_myPort_9_c_din { O 16 vector } SocketTable_myPort_9_c_full_n { I 1 bit } SocketTable_myPort_9_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name SocketTable_myPort_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_10 \
    op interface \
    ports { SocketTable_myPort_10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name SocketTable_myPort_10_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_10_c \
    op interface \
    ports { SocketTable_myPort_10_c_din { O 16 vector } SocketTable_myPort_10_c_full_n { I 1 bit } SocketTable_myPort_10_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name SocketTable_myPort_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_11 \
    op interface \
    ports { SocketTable_myPort_11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name SocketTable_myPort_11_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_11_c \
    op interface \
    ports { SocketTable_myPort_11_c_din { O 16 vector } SocketTable_myPort_11_c_full_n { I 1 bit } SocketTable_myPort_11_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name SocketTable_myPort_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_12 \
    op interface \
    ports { SocketTable_myPort_12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name SocketTable_myPort_12_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_12_c \
    op interface \
    ports { SocketTable_myPort_12_c_din { O 16 vector } SocketTable_myPort_12_c_full_n { I 1 bit } SocketTable_myPort_12_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name SocketTable_myPort_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_13 \
    op interface \
    ports { SocketTable_myPort_13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name SocketTable_myPort_13_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_13_c \
    op interface \
    ports { SocketTable_myPort_13_c_din { O 16 vector } SocketTable_myPort_13_c_full_n { I 1 bit } SocketTable_myPort_13_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name SocketTable_myPort_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_14 \
    op interface \
    ports { SocketTable_myPort_14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name SocketTable_myPort_14_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_14_c \
    op interface \
    ports { SocketTable_myPort_14_c_din { O 16 vector } SocketTable_myPort_14_c_full_n { I 1 bit } SocketTable_myPort_14_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name SocketTable_myPort_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_15 \
    op interface \
    ports { SocketTable_myPort_15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name SocketTable_myPort_15_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_myPort_15_c \
    op interface \
    ports { SocketTable_myPort_15_c_din { O 16 vector } SocketTable_myPort_15_c_full_n { I 1 bit } SocketTable_myPort_15_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name SocketTable_valid_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_0 \
    op interface \
    ports { SocketTable_valid_0 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name SocketTable_valid_0_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_0_c \
    op interface \
    ports { SocketTable_valid_0_c_din { O 1 vector } SocketTable_valid_0_c_full_n { I 1 bit } SocketTable_valid_0_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name SocketTable_valid_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_1 \
    op interface \
    ports { SocketTable_valid_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name SocketTable_valid_1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_1_c \
    op interface \
    ports { SocketTable_valid_1_c_din { O 1 vector } SocketTable_valid_1_c_full_n { I 1 bit } SocketTable_valid_1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name SocketTable_valid_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_2 \
    op interface \
    ports { SocketTable_valid_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name SocketTable_valid_2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_2_c \
    op interface \
    ports { SocketTable_valid_2_c_din { O 1 vector } SocketTable_valid_2_c_full_n { I 1 bit } SocketTable_valid_2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name SocketTable_valid_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_3 \
    op interface \
    ports { SocketTable_valid_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name SocketTable_valid_3_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_3_c \
    op interface \
    ports { SocketTable_valid_3_c_din { O 1 vector } SocketTable_valid_3_c_full_n { I 1 bit } SocketTable_valid_3_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name SocketTable_valid_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_4 \
    op interface \
    ports { SocketTable_valid_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name SocketTable_valid_4_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_4_c \
    op interface \
    ports { SocketTable_valid_4_c_din { O 1 vector } SocketTable_valid_4_c_full_n { I 1 bit } SocketTable_valid_4_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name SocketTable_valid_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_5 \
    op interface \
    ports { SocketTable_valid_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name SocketTable_valid_5_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_5_c \
    op interface \
    ports { SocketTable_valid_5_c_din { O 1 vector } SocketTable_valid_5_c_full_n { I 1 bit } SocketTable_valid_5_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name SocketTable_valid_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_6 \
    op interface \
    ports { SocketTable_valid_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name SocketTable_valid_6_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_6_c \
    op interface \
    ports { SocketTable_valid_6_c_din { O 1 vector } SocketTable_valid_6_c_full_n { I 1 bit } SocketTable_valid_6_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name SocketTable_valid_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_7 \
    op interface \
    ports { SocketTable_valid_7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name SocketTable_valid_7_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_7_c \
    op interface \
    ports { SocketTable_valid_7_c_din { O 1 vector } SocketTable_valid_7_c_full_n { I 1 bit } SocketTable_valid_7_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name SocketTable_valid_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_8 \
    op interface \
    ports { SocketTable_valid_8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name SocketTable_valid_8_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_8_c \
    op interface \
    ports { SocketTable_valid_8_c_din { O 1 vector } SocketTable_valid_8_c_full_n { I 1 bit } SocketTable_valid_8_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name SocketTable_valid_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_9 \
    op interface \
    ports { SocketTable_valid_9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name SocketTable_valid_9_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_9_c \
    op interface \
    ports { SocketTable_valid_9_c_din { O 1 vector } SocketTable_valid_9_c_full_n { I 1 bit } SocketTable_valid_9_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name SocketTable_valid_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_10 \
    op interface \
    ports { SocketTable_valid_10 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name SocketTable_valid_10_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_10_c \
    op interface \
    ports { SocketTable_valid_10_c_din { O 1 vector } SocketTable_valid_10_c_full_n { I 1 bit } SocketTable_valid_10_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name SocketTable_valid_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_11 \
    op interface \
    ports { SocketTable_valid_11 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name SocketTable_valid_11_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_11_c \
    op interface \
    ports { SocketTable_valid_11_c_din { O 1 vector } SocketTable_valid_11_c_full_n { I 1 bit } SocketTable_valid_11_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name SocketTable_valid_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_12 \
    op interface \
    ports { SocketTable_valid_12 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name SocketTable_valid_12_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_12_c \
    op interface \
    ports { SocketTable_valid_12_c_din { O 1 vector } SocketTable_valid_12_c_full_n { I 1 bit } SocketTable_valid_12_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name SocketTable_valid_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_13 \
    op interface \
    ports { SocketTable_valid_13 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name SocketTable_valid_13_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_13_c \
    op interface \
    ports { SocketTable_valid_13_c_din { O 1 vector } SocketTable_valid_13_c_full_n { I 1 bit } SocketTable_valid_13_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name SocketTable_valid_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_14 \
    op interface \
    ports { SocketTable_valid_14 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name SocketTable_valid_14_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_14_c \
    op interface \
    ports { SocketTable_valid_14_c_din { O 1 vector } SocketTable_valid_14_c_full_n { I 1 bit } SocketTable_valid_14_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name SocketTable_valid_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_15 \
    op interface \
    ports { SocketTable_valid_15 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name SocketTable_valid_15_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_SocketTable_valid_15_c \
    op interface \
    ports { SocketTable_valid_15_c_din { O 1 vector } SocketTable_valid_15_c_full_n { I 1 bit } SocketTable_valid_15_c_write { O 1 bit } } \
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


