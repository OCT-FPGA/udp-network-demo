-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity udp_s_axilite_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 10;
    C_S_AXI_DATA_WIDTH    : INTEGER := 32);
port (
    ACLK                  :in   STD_LOGIC;
    ARESET                :in   STD_LOGIC;
    ACLK_EN               :in   STD_LOGIC;
    AWADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    AWVALID               :in   STD_LOGIC;
    AWREADY               :out  STD_LOGIC;
    WDATA                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    WSTRB                 :in   STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH/8-1 downto 0);
    WVALID                :in   STD_LOGIC;
    WREADY                :out  STD_LOGIC;
    BRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    BVALID                :out  STD_LOGIC;
    BREADY                :in   STD_LOGIC;
    ARADDR                :in   STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH-1 downto 0);
    ARVALID               :in   STD_LOGIC;
    ARREADY               :out  STD_LOGIC;
    RDATA                 :out  STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH-1 downto 0);
    RRESP                 :out  STD_LOGIC_VECTOR(1 downto 0);
    RVALID                :out  STD_LOGIC;
    RREADY                :in   STD_LOGIC;
    SocketTable_theirIP_0 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_1 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_2 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_3 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_4 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_5 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_6 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_7 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_8 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_9 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_10 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_11 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_12 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_13 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_14 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirIP_15 :out  STD_LOGIC_VECTOR(31 downto 0);
    SocketTable_theirPort_0 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_1 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_2 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_3 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_4 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_5 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_6 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_7 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_8 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_9 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_10 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_11 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_12 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_13 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_14 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_theirPort_15 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_0  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_1  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_2  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_3  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_4  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_5  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_6  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_7  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_8  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_9  :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_10 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_11 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_12 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_13 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_14 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_myPort_15 :out  STD_LOGIC_VECTOR(15 downto 0);
    SocketTable_valid_0   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_1   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_2   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_3   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_4   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_5   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_6   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_7   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_8   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_9   :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_10  :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_11  :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_12  :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_13  :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_14  :out  STD_LOGIC_VECTOR(0 downto 0);
    SocketTable_valid_15  :out  STD_LOGIC_VECTOR(0 downto 0);
    numberSockets         :in   STD_LOGIC_VECTOR(15 downto 0);
    numberSockets_ap_vld  :in   STD_LOGIC
);
end entity udp_s_axilite_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : reserved
-- 0x004 : reserved
-- 0x008 : reserved
-- 0x00c : reserved
-- 0x010 : Data signal of SocketTable_theirIP_0
--         bit 31~0 - SocketTable_theirIP_0[31:0] (Read/Write)
-- 0x014 : reserved
-- 0x018 : Data signal of SocketTable_theirIP_1
--         bit 31~0 - SocketTable_theirIP_1[31:0] (Read/Write)
-- 0x01c : reserved
-- 0x020 : Data signal of SocketTable_theirIP_2
--         bit 31~0 - SocketTable_theirIP_2[31:0] (Read/Write)
-- 0x024 : reserved
-- 0x028 : Data signal of SocketTable_theirIP_3
--         bit 31~0 - SocketTable_theirIP_3[31:0] (Read/Write)
-- 0x02c : reserved
-- 0x030 : Data signal of SocketTable_theirIP_4
--         bit 31~0 - SocketTable_theirIP_4[31:0] (Read/Write)
-- 0x034 : reserved
-- 0x038 : Data signal of SocketTable_theirIP_5
--         bit 31~0 - SocketTable_theirIP_5[31:0] (Read/Write)
-- 0x03c : reserved
-- 0x040 : Data signal of SocketTable_theirIP_6
--         bit 31~0 - SocketTable_theirIP_6[31:0] (Read/Write)
-- 0x044 : reserved
-- 0x048 : Data signal of SocketTable_theirIP_7
--         bit 31~0 - SocketTable_theirIP_7[31:0] (Read/Write)
-- 0x04c : reserved
-- 0x050 : Data signal of SocketTable_theirIP_8
--         bit 31~0 - SocketTable_theirIP_8[31:0] (Read/Write)
-- 0x054 : reserved
-- 0x058 : Data signal of SocketTable_theirIP_9
--         bit 31~0 - SocketTable_theirIP_9[31:0] (Read/Write)
-- 0x05c : reserved
-- 0x060 : Data signal of SocketTable_theirIP_10
--         bit 31~0 - SocketTable_theirIP_10[31:0] (Read/Write)
-- 0x064 : reserved
-- 0x068 : Data signal of SocketTable_theirIP_11
--         bit 31~0 - SocketTable_theirIP_11[31:0] (Read/Write)
-- 0x06c : reserved
-- 0x070 : Data signal of SocketTable_theirIP_12
--         bit 31~0 - SocketTable_theirIP_12[31:0] (Read/Write)
-- 0x074 : reserved
-- 0x078 : Data signal of SocketTable_theirIP_13
--         bit 31~0 - SocketTable_theirIP_13[31:0] (Read/Write)
-- 0x07c : reserved
-- 0x080 : Data signal of SocketTable_theirIP_14
--         bit 31~0 - SocketTable_theirIP_14[31:0] (Read/Write)
-- 0x084 : reserved
-- 0x088 : Data signal of SocketTable_theirIP_15
--         bit 31~0 - SocketTable_theirIP_15[31:0] (Read/Write)
-- 0x08c : reserved
-- 0x090 : Data signal of SocketTable_theirPort_0
--         bit 15~0 - SocketTable_theirPort_0[15:0] (Read/Write)
--         others   - reserved
-- 0x094 : reserved
-- 0x098 : Data signal of SocketTable_theirPort_1
--         bit 15~0 - SocketTable_theirPort_1[15:0] (Read/Write)
--         others   - reserved
-- 0x09c : reserved
-- 0x0a0 : Data signal of SocketTable_theirPort_2
--         bit 15~0 - SocketTable_theirPort_2[15:0] (Read/Write)
--         others   - reserved
-- 0x0a4 : reserved
-- 0x0a8 : Data signal of SocketTable_theirPort_3
--         bit 15~0 - SocketTable_theirPort_3[15:0] (Read/Write)
--         others   - reserved
-- 0x0ac : reserved
-- 0x0b0 : Data signal of SocketTable_theirPort_4
--         bit 15~0 - SocketTable_theirPort_4[15:0] (Read/Write)
--         others   - reserved
-- 0x0b4 : reserved
-- 0x0b8 : Data signal of SocketTable_theirPort_5
--         bit 15~0 - SocketTable_theirPort_5[15:0] (Read/Write)
--         others   - reserved
-- 0x0bc : reserved
-- 0x0c0 : Data signal of SocketTable_theirPort_6
--         bit 15~0 - SocketTable_theirPort_6[15:0] (Read/Write)
--         others   - reserved
-- 0x0c4 : reserved
-- 0x0c8 : Data signal of SocketTable_theirPort_7
--         bit 15~0 - SocketTable_theirPort_7[15:0] (Read/Write)
--         others   - reserved
-- 0x0cc : reserved
-- 0x0d0 : Data signal of SocketTable_theirPort_8
--         bit 15~0 - SocketTable_theirPort_8[15:0] (Read/Write)
--         others   - reserved
-- 0x0d4 : reserved
-- 0x0d8 : Data signal of SocketTable_theirPort_9
--         bit 15~0 - SocketTable_theirPort_9[15:0] (Read/Write)
--         others   - reserved
-- 0x0dc : reserved
-- 0x0e0 : Data signal of SocketTable_theirPort_10
--         bit 15~0 - SocketTable_theirPort_10[15:0] (Read/Write)
--         others   - reserved
-- 0x0e4 : reserved
-- 0x0e8 : Data signal of SocketTable_theirPort_11
--         bit 15~0 - SocketTable_theirPort_11[15:0] (Read/Write)
--         others   - reserved
-- 0x0ec : reserved
-- 0x0f0 : Data signal of SocketTable_theirPort_12
--         bit 15~0 - SocketTable_theirPort_12[15:0] (Read/Write)
--         others   - reserved
-- 0x0f4 : reserved
-- 0x0f8 : Data signal of SocketTable_theirPort_13
--         bit 15~0 - SocketTable_theirPort_13[15:0] (Read/Write)
--         others   - reserved
-- 0x0fc : reserved
-- 0x100 : Data signal of SocketTable_theirPort_14
--         bit 15~0 - SocketTable_theirPort_14[15:0] (Read/Write)
--         others   - reserved
-- 0x104 : reserved
-- 0x108 : Data signal of SocketTable_theirPort_15
--         bit 15~0 - SocketTable_theirPort_15[15:0] (Read/Write)
--         others   - reserved
-- 0x10c : reserved
-- 0x110 : Data signal of SocketTable_myPort_0
--         bit 15~0 - SocketTable_myPort_0[15:0] (Read/Write)
--         others   - reserved
-- 0x114 : reserved
-- 0x118 : Data signal of SocketTable_myPort_1
--         bit 15~0 - SocketTable_myPort_1[15:0] (Read/Write)
--         others   - reserved
-- 0x11c : reserved
-- 0x120 : Data signal of SocketTable_myPort_2
--         bit 15~0 - SocketTable_myPort_2[15:0] (Read/Write)
--         others   - reserved
-- 0x124 : reserved
-- 0x128 : Data signal of SocketTable_myPort_3
--         bit 15~0 - SocketTable_myPort_3[15:0] (Read/Write)
--         others   - reserved
-- 0x12c : reserved
-- 0x130 : Data signal of SocketTable_myPort_4
--         bit 15~0 - SocketTable_myPort_4[15:0] (Read/Write)
--         others   - reserved
-- 0x134 : reserved
-- 0x138 : Data signal of SocketTable_myPort_5
--         bit 15~0 - SocketTable_myPort_5[15:0] (Read/Write)
--         others   - reserved
-- 0x13c : reserved
-- 0x140 : Data signal of SocketTable_myPort_6
--         bit 15~0 - SocketTable_myPort_6[15:0] (Read/Write)
--         others   - reserved
-- 0x144 : reserved
-- 0x148 : Data signal of SocketTable_myPort_7
--         bit 15~0 - SocketTable_myPort_7[15:0] (Read/Write)
--         others   - reserved
-- 0x14c : reserved
-- 0x150 : Data signal of SocketTable_myPort_8
--         bit 15~0 - SocketTable_myPort_8[15:0] (Read/Write)
--         others   - reserved
-- 0x154 : reserved
-- 0x158 : Data signal of SocketTable_myPort_9
--         bit 15~0 - SocketTable_myPort_9[15:0] (Read/Write)
--         others   - reserved
-- 0x15c : reserved
-- 0x160 : Data signal of SocketTable_myPort_10
--         bit 15~0 - SocketTable_myPort_10[15:0] (Read/Write)
--         others   - reserved
-- 0x164 : reserved
-- 0x168 : Data signal of SocketTable_myPort_11
--         bit 15~0 - SocketTable_myPort_11[15:0] (Read/Write)
--         others   - reserved
-- 0x16c : reserved
-- 0x170 : Data signal of SocketTable_myPort_12
--         bit 15~0 - SocketTable_myPort_12[15:0] (Read/Write)
--         others   - reserved
-- 0x174 : reserved
-- 0x178 : Data signal of SocketTable_myPort_13
--         bit 15~0 - SocketTable_myPort_13[15:0] (Read/Write)
--         others   - reserved
-- 0x17c : reserved
-- 0x180 : Data signal of SocketTable_myPort_14
--         bit 15~0 - SocketTable_myPort_14[15:0] (Read/Write)
--         others   - reserved
-- 0x184 : reserved
-- 0x188 : Data signal of SocketTable_myPort_15
--         bit 15~0 - SocketTable_myPort_15[15:0] (Read/Write)
--         others   - reserved
-- 0x18c : reserved
-- 0x190 : Data signal of SocketTable_valid_0
--         bit 0  - SocketTable_valid_0[0] (Read/Write)
--         others - reserved
-- 0x194 : reserved
-- 0x198 : Data signal of SocketTable_valid_1
--         bit 0  - SocketTable_valid_1[0] (Read/Write)
--         others - reserved
-- 0x19c : reserved
-- 0x1a0 : Data signal of SocketTable_valid_2
--         bit 0  - SocketTable_valid_2[0] (Read/Write)
--         others - reserved
-- 0x1a4 : reserved
-- 0x1a8 : Data signal of SocketTable_valid_3
--         bit 0  - SocketTable_valid_3[0] (Read/Write)
--         others - reserved
-- 0x1ac : reserved
-- 0x1b0 : Data signal of SocketTable_valid_4
--         bit 0  - SocketTable_valid_4[0] (Read/Write)
--         others - reserved
-- 0x1b4 : reserved
-- 0x1b8 : Data signal of SocketTable_valid_5
--         bit 0  - SocketTable_valid_5[0] (Read/Write)
--         others - reserved
-- 0x1bc : reserved
-- 0x1c0 : Data signal of SocketTable_valid_6
--         bit 0  - SocketTable_valid_6[0] (Read/Write)
--         others - reserved
-- 0x1c4 : reserved
-- 0x1c8 : Data signal of SocketTable_valid_7
--         bit 0  - SocketTable_valid_7[0] (Read/Write)
--         others - reserved
-- 0x1cc : reserved
-- 0x1d0 : Data signal of SocketTable_valid_8
--         bit 0  - SocketTable_valid_8[0] (Read/Write)
--         others - reserved
-- 0x1d4 : reserved
-- 0x1d8 : Data signal of SocketTable_valid_9
--         bit 0  - SocketTable_valid_9[0] (Read/Write)
--         others - reserved
-- 0x1dc : reserved
-- 0x1e0 : Data signal of SocketTable_valid_10
--         bit 0  - SocketTable_valid_10[0] (Read/Write)
--         others - reserved
-- 0x1e4 : reserved
-- 0x1e8 : Data signal of SocketTable_valid_11
--         bit 0  - SocketTable_valid_11[0] (Read/Write)
--         others - reserved
-- 0x1ec : reserved
-- 0x1f0 : Data signal of SocketTable_valid_12
--         bit 0  - SocketTable_valid_12[0] (Read/Write)
--         others - reserved
-- 0x1f4 : reserved
-- 0x1f8 : Data signal of SocketTable_valid_13
--         bit 0  - SocketTable_valid_13[0] (Read/Write)
--         others - reserved
-- 0x1fc : reserved
-- 0x200 : Data signal of SocketTable_valid_14
--         bit 0  - SocketTable_valid_14[0] (Read/Write)
--         others - reserved
-- 0x204 : reserved
-- 0x208 : Data signal of SocketTable_valid_15
--         bit 0  - SocketTable_valid_15[0] (Read/Write)
--         others - reserved
-- 0x20c : reserved
-- 0x210 : Data signal of numberSockets
--         bit 15~0 - numberSockets[15:0] (Read)
--         others   - reserved
-- 0x214 : Control signal of numberSockets
--         bit 0  - numberSockets_ap_vld (Read/COR)
--         others - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of udp_s_axilite_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_SOCKETTABLE_THEIRIP_0_DATA_0    : INTEGER := 16#010#;
    constant ADDR_SOCKETTABLE_THEIRIP_0_CTRL      : INTEGER := 16#014#;
    constant ADDR_SOCKETTABLE_THEIRIP_1_DATA_0    : INTEGER := 16#018#;
    constant ADDR_SOCKETTABLE_THEIRIP_1_CTRL      : INTEGER := 16#01c#;
    constant ADDR_SOCKETTABLE_THEIRIP_2_DATA_0    : INTEGER := 16#020#;
    constant ADDR_SOCKETTABLE_THEIRIP_2_CTRL      : INTEGER := 16#024#;
    constant ADDR_SOCKETTABLE_THEIRIP_3_DATA_0    : INTEGER := 16#028#;
    constant ADDR_SOCKETTABLE_THEIRIP_3_CTRL      : INTEGER := 16#02c#;
    constant ADDR_SOCKETTABLE_THEIRIP_4_DATA_0    : INTEGER := 16#030#;
    constant ADDR_SOCKETTABLE_THEIRIP_4_CTRL      : INTEGER := 16#034#;
    constant ADDR_SOCKETTABLE_THEIRIP_5_DATA_0    : INTEGER := 16#038#;
    constant ADDR_SOCKETTABLE_THEIRIP_5_CTRL      : INTEGER := 16#03c#;
    constant ADDR_SOCKETTABLE_THEIRIP_6_DATA_0    : INTEGER := 16#040#;
    constant ADDR_SOCKETTABLE_THEIRIP_6_CTRL      : INTEGER := 16#044#;
    constant ADDR_SOCKETTABLE_THEIRIP_7_DATA_0    : INTEGER := 16#048#;
    constant ADDR_SOCKETTABLE_THEIRIP_7_CTRL      : INTEGER := 16#04c#;
    constant ADDR_SOCKETTABLE_THEIRIP_8_DATA_0    : INTEGER := 16#050#;
    constant ADDR_SOCKETTABLE_THEIRIP_8_CTRL      : INTEGER := 16#054#;
    constant ADDR_SOCKETTABLE_THEIRIP_9_DATA_0    : INTEGER := 16#058#;
    constant ADDR_SOCKETTABLE_THEIRIP_9_CTRL      : INTEGER := 16#05c#;
    constant ADDR_SOCKETTABLE_THEIRIP_10_DATA_0   : INTEGER := 16#060#;
    constant ADDR_SOCKETTABLE_THEIRIP_10_CTRL     : INTEGER := 16#064#;
    constant ADDR_SOCKETTABLE_THEIRIP_11_DATA_0   : INTEGER := 16#068#;
    constant ADDR_SOCKETTABLE_THEIRIP_11_CTRL     : INTEGER := 16#06c#;
    constant ADDR_SOCKETTABLE_THEIRIP_12_DATA_0   : INTEGER := 16#070#;
    constant ADDR_SOCKETTABLE_THEIRIP_12_CTRL     : INTEGER := 16#074#;
    constant ADDR_SOCKETTABLE_THEIRIP_13_DATA_0   : INTEGER := 16#078#;
    constant ADDR_SOCKETTABLE_THEIRIP_13_CTRL     : INTEGER := 16#07c#;
    constant ADDR_SOCKETTABLE_THEIRIP_14_DATA_0   : INTEGER := 16#080#;
    constant ADDR_SOCKETTABLE_THEIRIP_14_CTRL     : INTEGER := 16#084#;
    constant ADDR_SOCKETTABLE_THEIRIP_15_DATA_0   : INTEGER := 16#088#;
    constant ADDR_SOCKETTABLE_THEIRIP_15_CTRL     : INTEGER := 16#08c#;
    constant ADDR_SOCKETTABLE_THEIRPORT_0_DATA_0  : INTEGER := 16#090#;
    constant ADDR_SOCKETTABLE_THEIRPORT_0_CTRL    : INTEGER := 16#094#;
    constant ADDR_SOCKETTABLE_THEIRPORT_1_DATA_0  : INTEGER := 16#098#;
    constant ADDR_SOCKETTABLE_THEIRPORT_1_CTRL    : INTEGER := 16#09c#;
    constant ADDR_SOCKETTABLE_THEIRPORT_2_DATA_0  : INTEGER := 16#0a0#;
    constant ADDR_SOCKETTABLE_THEIRPORT_2_CTRL    : INTEGER := 16#0a4#;
    constant ADDR_SOCKETTABLE_THEIRPORT_3_DATA_0  : INTEGER := 16#0a8#;
    constant ADDR_SOCKETTABLE_THEIRPORT_3_CTRL    : INTEGER := 16#0ac#;
    constant ADDR_SOCKETTABLE_THEIRPORT_4_DATA_0  : INTEGER := 16#0b0#;
    constant ADDR_SOCKETTABLE_THEIRPORT_4_CTRL    : INTEGER := 16#0b4#;
    constant ADDR_SOCKETTABLE_THEIRPORT_5_DATA_0  : INTEGER := 16#0b8#;
    constant ADDR_SOCKETTABLE_THEIRPORT_5_CTRL    : INTEGER := 16#0bc#;
    constant ADDR_SOCKETTABLE_THEIRPORT_6_DATA_0  : INTEGER := 16#0c0#;
    constant ADDR_SOCKETTABLE_THEIRPORT_6_CTRL    : INTEGER := 16#0c4#;
    constant ADDR_SOCKETTABLE_THEIRPORT_7_DATA_0  : INTEGER := 16#0c8#;
    constant ADDR_SOCKETTABLE_THEIRPORT_7_CTRL    : INTEGER := 16#0cc#;
    constant ADDR_SOCKETTABLE_THEIRPORT_8_DATA_0  : INTEGER := 16#0d0#;
    constant ADDR_SOCKETTABLE_THEIRPORT_8_CTRL    : INTEGER := 16#0d4#;
    constant ADDR_SOCKETTABLE_THEIRPORT_9_DATA_0  : INTEGER := 16#0d8#;
    constant ADDR_SOCKETTABLE_THEIRPORT_9_CTRL    : INTEGER := 16#0dc#;
    constant ADDR_SOCKETTABLE_THEIRPORT_10_DATA_0 : INTEGER := 16#0e0#;
    constant ADDR_SOCKETTABLE_THEIRPORT_10_CTRL   : INTEGER := 16#0e4#;
    constant ADDR_SOCKETTABLE_THEIRPORT_11_DATA_0 : INTEGER := 16#0e8#;
    constant ADDR_SOCKETTABLE_THEIRPORT_11_CTRL   : INTEGER := 16#0ec#;
    constant ADDR_SOCKETTABLE_THEIRPORT_12_DATA_0 : INTEGER := 16#0f0#;
    constant ADDR_SOCKETTABLE_THEIRPORT_12_CTRL   : INTEGER := 16#0f4#;
    constant ADDR_SOCKETTABLE_THEIRPORT_13_DATA_0 : INTEGER := 16#0f8#;
    constant ADDR_SOCKETTABLE_THEIRPORT_13_CTRL   : INTEGER := 16#0fc#;
    constant ADDR_SOCKETTABLE_THEIRPORT_14_DATA_0 : INTEGER := 16#100#;
    constant ADDR_SOCKETTABLE_THEIRPORT_14_CTRL   : INTEGER := 16#104#;
    constant ADDR_SOCKETTABLE_THEIRPORT_15_DATA_0 : INTEGER := 16#108#;
    constant ADDR_SOCKETTABLE_THEIRPORT_15_CTRL   : INTEGER := 16#10c#;
    constant ADDR_SOCKETTABLE_MYPORT_0_DATA_0     : INTEGER := 16#110#;
    constant ADDR_SOCKETTABLE_MYPORT_0_CTRL       : INTEGER := 16#114#;
    constant ADDR_SOCKETTABLE_MYPORT_1_DATA_0     : INTEGER := 16#118#;
    constant ADDR_SOCKETTABLE_MYPORT_1_CTRL       : INTEGER := 16#11c#;
    constant ADDR_SOCKETTABLE_MYPORT_2_DATA_0     : INTEGER := 16#120#;
    constant ADDR_SOCKETTABLE_MYPORT_2_CTRL       : INTEGER := 16#124#;
    constant ADDR_SOCKETTABLE_MYPORT_3_DATA_0     : INTEGER := 16#128#;
    constant ADDR_SOCKETTABLE_MYPORT_3_CTRL       : INTEGER := 16#12c#;
    constant ADDR_SOCKETTABLE_MYPORT_4_DATA_0     : INTEGER := 16#130#;
    constant ADDR_SOCKETTABLE_MYPORT_4_CTRL       : INTEGER := 16#134#;
    constant ADDR_SOCKETTABLE_MYPORT_5_DATA_0     : INTEGER := 16#138#;
    constant ADDR_SOCKETTABLE_MYPORT_5_CTRL       : INTEGER := 16#13c#;
    constant ADDR_SOCKETTABLE_MYPORT_6_DATA_0     : INTEGER := 16#140#;
    constant ADDR_SOCKETTABLE_MYPORT_6_CTRL       : INTEGER := 16#144#;
    constant ADDR_SOCKETTABLE_MYPORT_7_DATA_0     : INTEGER := 16#148#;
    constant ADDR_SOCKETTABLE_MYPORT_7_CTRL       : INTEGER := 16#14c#;
    constant ADDR_SOCKETTABLE_MYPORT_8_DATA_0     : INTEGER := 16#150#;
    constant ADDR_SOCKETTABLE_MYPORT_8_CTRL       : INTEGER := 16#154#;
    constant ADDR_SOCKETTABLE_MYPORT_9_DATA_0     : INTEGER := 16#158#;
    constant ADDR_SOCKETTABLE_MYPORT_9_CTRL       : INTEGER := 16#15c#;
    constant ADDR_SOCKETTABLE_MYPORT_10_DATA_0    : INTEGER := 16#160#;
    constant ADDR_SOCKETTABLE_MYPORT_10_CTRL      : INTEGER := 16#164#;
    constant ADDR_SOCKETTABLE_MYPORT_11_DATA_0    : INTEGER := 16#168#;
    constant ADDR_SOCKETTABLE_MYPORT_11_CTRL      : INTEGER := 16#16c#;
    constant ADDR_SOCKETTABLE_MYPORT_12_DATA_0    : INTEGER := 16#170#;
    constant ADDR_SOCKETTABLE_MYPORT_12_CTRL      : INTEGER := 16#174#;
    constant ADDR_SOCKETTABLE_MYPORT_13_DATA_0    : INTEGER := 16#178#;
    constant ADDR_SOCKETTABLE_MYPORT_13_CTRL      : INTEGER := 16#17c#;
    constant ADDR_SOCKETTABLE_MYPORT_14_DATA_0    : INTEGER := 16#180#;
    constant ADDR_SOCKETTABLE_MYPORT_14_CTRL      : INTEGER := 16#184#;
    constant ADDR_SOCKETTABLE_MYPORT_15_DATA_0    : INTEGER := 16#188#;
    constant ADDR_SOCKETTABLE_MYPORT_15_CTRL      : INTEGER := 16#18c#;
    constant ADDR_SOCKETTABLE_VALID_0_DATA_0      : INTEGER := 16#190#;
    constant ADDR_SOCKETTABLE_VALID_0_CTRL        : INTEGER := 16#194#;
    constant ADDR_SOCKETTABLE_VALID_1_DATA_0      : INTEGER := 16#198#;
    constant ADDR_SOCKETTABLE_VALID_1_CTRL        : INTEGER := 16#19c#;
    constant ADDR_SOCKETTABLE_VALID_2_DATA_0      : INTEGER := 16#1a0#;
    constant ADDR_SOCKETTABLE_VALID_2_CTRL        : INTEGER := 16#1a4#;
    constant ADDR_SOCKETTABLE_VALID_3_DATA_0      : INTEGER := 16#1a8#;
    constant ADDR_SOCKETTABLE_VALID_3_CTRL        : INTEGER := 16#1ac#;
    constant ADDR_SOCKETTABLE_VALID_4_DATA_0      : INTEGER := 16#1b0#;
    constant ADDR_SOCKETTABLE_VALID_4_CTRL        : INTEGER := 16#1b4#;
    constant ADDR_SOCKETTABLE_VALID_5_DATA_0      : INTEGER := 16#1b8#;
    constant ADDR_SOCKETTABLE_VALID_5_CTRL        : INTEGER := 16#1bc#;
    constant ADDR_SOCKETTABLE_VALID_6_DATA_0      : INTEGER := 16#1c0#;
    constant ADDR_SOCKETTABLE_VALID_6_CTRL        : INTEGER := 16#1c4#;
    constant ADDR_SOCKETTABLE_VALID_7_DATA_0      : INTEGER := 16#1c8#;
    constant ADDR_SOCKETTABLE_VALID_7_CTRL        : INTEGER := 16#1cc#;
    constant ADDR_SOCKETTABLE_VALID_8_DATA_0      : INTEGER := 16#1d0#;
    constant ADDR_SOCKETTABLE_VALID_8_CTRL        : INTEGER := 16#1d4#;
    constant ADDR_SOCKETTABLE_VALID_9_DATA_0      : INTEGER := 16#1d8#;
    constant ADDR_SOCKETTABLE_VALID_9_CTRL        : INTEGER := 16#1dc#;
    constant ADDR_SOCKETTABLE_VALID_10_DATA_0     : INTEGER := 16#1e0#;
    constant ADDR_SOCKETTABLE_VALID_10_CTRL       : INTEGER := 16#1e4#;
    constant ADDR_SOCKETTABLE_VALID_11_DATA_0     : INTEGER := 16#1e8#;
    constant ADDR_SOCKETTABLE_VALID_11_CTRL       : INTEGER := 16#1ec#;
    constant ADDR_SOCKETTABLE_VALID_12_DATA_0     : INTEGER := 16#1f0#;
    constant ADDR_SOCKETTABLE_VALID_12_CTRL       : INTEGER := 16#1f4#;
    constant ADDR_SOCKETTABLE_VALID_13_DATA_0     : INTEGER := 16#1f8#;
    constant ADDR_SOCKETTABLE_VALID_13_CTRL       : INTEGER := 16#1fc#;
    constant ADDR_SOCKETTABLE_VALID_14_DATA_0     : INTEGER := 16#200#;
    constant ADDR_SOCKETTABLE_VALID_14_CTRL       : INTEGER := 16#204#;
    constant ADDR_SOCKETTABLE_VALID_15_DATA_0     : INTEGER := 16#208#;
    constant ADDR_SOCKETTABLE_VALID_15_CTRL       : INTEGER := 16#20c#;
    constant ADDR_NUMBERSOCKETS_DATA_0            : INTEGER := 16#210#;
    constant ADDR_NUMBERSOCKETS_CTRL              : INTEGER := 16#214#;
    constant ADDR_BITS         : INTEGER := 10;

    signal waddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal wmask               : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal aw_hs               : STD_LOGIC;
    signal w_hs                : STD_LOGIC;
    signal rdata_data          : UNSIGNED(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal ar_hs               : STD_LOGIC;
    signal raddr               : UNSIGNED(ADDR_BITS-1 downto 0);
    signal AWREADY_t           : STD_LOGIC;
    signal WREADY_t            : STD_LOGIC;
    signal ARREADY_t           : STD_LOGIC;
    signal RVALID_t            : STD_LOGIC;
    -- internal registers
    signal int_SocketTable_theirIP_0 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_1 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_2 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_3 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_4 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_5 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_6 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_7 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_8 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_9 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_10 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_11 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_12 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_13 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_14 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirIP_15 : UNSIGNED(31 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_0 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_1 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_2 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_3 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_4 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_5 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_6 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_7 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_8 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_9 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_10 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_11 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_12 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_13 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_14 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_theirPort_15 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_0 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_1 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_2 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_3 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_4 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_5 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_6 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_7 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_8 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_9 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_10 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_11 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_12 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_13 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_14 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_myPort_15 : UNSIGNED(15 downto 0) := (others => '0');
    signal int_SocketTable_valid_0 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_1 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_2 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_3 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_4 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_5 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_6 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_7 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_8 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_9 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_10 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_11 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_12 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_13 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_14 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_SocketTable_valid_15 : UNSIGNED(0 downto 0) := (others => '0');
    signal int_numberSockets_ap_vld : STD_LOGIC;
    signal int_numberSockets   : UNSIGNED(15 downto 0) := (others => '0');


begin
-- ----------------------- Instantiation------------------


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata else '0';
    WREADY    <=  WREADY_t;
    BRESP     <=  "00";  -- OKAY
    BVALID    <=  '1' when wstate = wrresp else '0';
    wmask     <=  (31 downto 24 => WSTRB(3), 23 downto 16 => WSTRB(2), 15 downto 8 => WSTRB(1), 7 downto 0 => WSTRB(0));
    aw_hs     <=  AWVALID and AWREADY_t;
    w_hs      <=  WVALID and WREADY_t;

    -- write FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                wstate <= wrreset;
            elsif (ACLK_EN = '1') then
                wstate <= wnext;
            end if;
        end if;
    end process;

    process (wstate, AWVALID, WVALID, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (WVALID = '1') then
                wnext <= wrresp;
            else
                wnext <= wrdata;
            end if;
        when wrresp =>
            if (BREADY = '1') then
                wnext <= wridle;
            else
                wnext <= wrresp;
            end if;
        when others =>
            wnext <= wridle;
        end case;
    end process;

    waddr_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (aw_hs = '1') then
                    waddr <= UNSIGNED(AWADDR(ADDR_BITS-1 downto 0));
                end if;
            end if;
        end if;
    end process;

-- ----------------------- AXI READ ----------------------
    ARREADY_t <= '1' when (rstate = rdidle) else '0';
    ARREADY <= ARREADY_t;
    RDATA   <= STD_LOGIC_VECTOR(rdata_data);
    RRESP   <= "00";  -- OKAY
    RVALID_t  <= '1' when (rstate = rddata) else '0';
    RVALID    <= RVALID_t;
    ar_hs   <= ARVALID and ARREADY_t;
    raddr   <= UNSIGNED(ARADDR(ADDR_BITS-1 downto 0));

    -- read FSM
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                rstate <= rdreset;
            elsif (ACLK_EN = '1') then
                rstate <= rnext;
            end if;
        end if;
    end process;

    process (rstate, ARVALID, RREADY, RVALID_t)
    begin
        case (rstate) is
        when rdidle =>
            if (ARVALID = '1') then
                rnext <= rddata;
            else
                rnext <= rdidle;
            end if;
        when rddata =>
            if (RREADY = '1' and RVALID_t = '1') then
                rnext <= rdidle;
            else
                rnext <= rddata;
            end if;
        when others =>
            rnext <= rdidle;
        end case;
    end process;

    rdata_proc : process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    rdata_data <= (others => '0');
                    case (TO_INTEGER(raddr)) is
                    when ADDR_SOCKETTABLE_THEIRIP_0_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_0(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_1_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_1(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_2_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_2(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_3_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_3(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_4_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_4(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_5_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_5(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_6_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_6(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_7_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_7(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_8_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_8(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_9_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_9(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_10_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_10(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_11_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_11(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_12_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_12(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_13_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_13(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_14_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_14(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRIP_15_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirIP_15(31 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_0_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_0(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_1(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_2(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_3_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_3(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_4_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_4(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_5_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_5(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_6_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_6(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_7_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_7(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_8_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_8(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_9_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_9(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_10_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_10(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_11_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_11(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_12_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_12(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_13_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_13(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_14_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_14(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_THEIRPORT_15_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_theirPort_15(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_0_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_0(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_1_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_1(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_2_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_2(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_3_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_3(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_4_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_4(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_5_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_5(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_6_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_6(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_7_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_7(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_8_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_8(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_9_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_9(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_10_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_10(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_11_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_11(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_12_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_12(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_13_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_13(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_14_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_14(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_MYPORT_15_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_myPort_15(15 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_0_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_0(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_1_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_1(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_2_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_2(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_3_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_3(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_4_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_4(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_5_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_5(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_6_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_6(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_7_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_7(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_8_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_8(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_9_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_9(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_10_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_10(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_11_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_11(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_12_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_12(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_13_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_13(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_14_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_14(0 downto 0), 32);
                    when ADDR_SOCKETTABLE_VALID_15_DATA_0 =>
                        rdata_data <= RESIZE(int_SocketTable_valid_15(0 downto 0), 32);
                    when ADDR_NUMBERSOCKETS_DATA_0 =>
                        rdata_data <= RESIZE(int_numberSockets(15 downto 0), 32);
                    when ADDR_NUMBERSOCKETS_CTRL =>
                        rdata_data(0) <= int_numberSockets_ap_vld;
                    when others =>
                        NULL;
                    end case;
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    SocketTable_theirIP_0 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_0);
    SocketTable_theirIP_1 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_1);
    SocketTable_theirIP_2 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_2);
    SocketTable_theirIP_3 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_3);
    SocketTable_theirIP_4 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_4);
    SocketTable_theirIP_5 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_5);
    SocketTable_theirIP_6 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_6);
    SocketTable_theirIP_7 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_7);
    SocketTable_theirIP_8 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_8);
    SocketTable_theirIP_9 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_9);
    SocketTable_theirIP_10 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_10);
    SocketTable_theirIP_11 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_11);
    SocketTable_theirIP_12 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_12);
    SocketTable_theirIP_13 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_13);
    SocketTable_theirIP_14 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_14);
    SocketTable_theirIP_15 <= STD_LOGIC_VECTOR(int_SocketTable_theirIP_15);
    SocketTable_theirPort_0 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_0);
    SocketTable_theirPort_1 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_1);
    SocketTable_theirPort_2 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_2);
    SocketTable_theirPort_3 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_3);
    SocketTable_theirPort_4 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_4);
    SocketTable_theirPort_5 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_5);
    SocketTable_theirPort_6 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_6);
    SocketTable_theirPort_7 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_7);
    SocketTable_theirPort_8 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_8);
    SocketTable_theirPort_9 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_9);
    SocketTable_theirPort_10 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_10);
    SocketTable_theirPort_11 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_11);
    SocketTable_theirPort_12 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_12);
    SocketTable_theirPort_13 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_13);
    SocketTable_theirPort_14 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_14);
    SocketTable_theirPort_15 <= STD_LOGIC_VECTOR(int_SocketTable_theirPort_15);
    SocketTable_myPort_0 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_0);
    SocketTable_myPort_1 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_1);
    SocketTable_myPort_2 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_2);
    SocketTable_myPort_3 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_3);
    SocketTable_myPort_4 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_4);
    SocketTable_myPort_5 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_5);
    SocketTable_myPort_6 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_6);
    SocketTable_myPort_7 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_7);
    SocketTable_myPort_8 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_8);
    SocketTable_myPort_9 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_9);
    SocketTable_myPort_10 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_10);
    SocketTable_myPort_11 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_11);
    SocketTable_myPort_12 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_12);
    SocketTable_myPort_13 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_13);
    SocketTable_myPort_14 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_14);
    SocketTable_myPort_15 <= STD_LOGIC_VECTOR(int_SocketTable_myPort_15);
    SocketTable_valid_0  <= STD_LOGIC_VECTOR(int_SocketTable_valid_0);
    SocketTable_valid_1  <= STD_LOGIC_VECTOR(int_SocketTable_valid_1);
    SocketTable_valid_2  <= STD_LOGIC_VECTOR(int_SocketTable_valid_2);
    SocketTable_valid_3  <= STD_LOGIC_VECTOR(int_SocketTable_valid_3);
    SocketTable_valid_4  <= STD_LOGIC_VECTOR(int_SocketTable_valid_4);
    SocketTable_valid_5  <= STD_LOGIC_VECTOR(int_SocketTable_valid_5);
    SocketTable_valid_6  <= STD_LOGIC_VECTOR(int_SocketTable_valid_6);
    SocketTable_valid_7  <= STD_LOGIC_VECTOR(int_SocketTable_valid_7);
    SocketTable_valid_8  <= STD_LOGIC_VECTOR(int_SocketTable_valid_8);
    SocketTable_valid_9  <= STD_LOGIC_VECTOR(int_SocketTable_valid_9);
    SocketTable_valid_10 <= STD_LOGIC_VECTOR(int_SocketTable_valid_10);
    SocketTable_valid_11 <= STD_LOGIC_VECTOR(int_SocketTable_valid_11);
    SocketTable_valid_12 <= STD_LOGIC_VECTOR(int_SocketTable_valid_12);
    SocketTable_valid_13 <= STD_LOGIC_VECTOR(int_SocketTable_valid_13);
    SocketTable_valid_14 <= STD_LOGIC_VECTOR(int_SocketTable_valid_14);
    SocketTable_valid_15 <= STD_LOGIC_VECTOR(int_SocketTable_valid_15);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_0_DATA_0) then
                    int_SocketTable_theirIP_0(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_0(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_1_DATA_0) then
                    int_SocketTable_theirIP_1(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_1(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_2_DATA_0) then
                    int_SocketTable_theirIP_2(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_2(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_3_DATA_0) then
                    int_SocketTable_theirIP_3(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_3(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_4_DATA_0) then
                    int_SocketTable_theirIP_4(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_4(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_5_DATA_0) then
                    int_SocketTable_theirIP_5(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_5(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_6_DATA_0) then
                    int_SocketTable_theirIP_6(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_6(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_7_DATA_0) then
                    int_SocketTable_theirIP_7(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_7(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_8_DATA_0) then
                    int_SocketTable_theirIP_8(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_8(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_9_DATA_0) then
                    int_SocketTable_theirIP_9(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_9(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_10_DATA_0) then
                    int_SocketTable_theirIP_10(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_10(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_11_DATA_0) then
                    int_SocketTable_theirIP_11(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_11(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_12_DATA_0) then
                    int_SocketTable_theirIP_12(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_12(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_13_DATA_0) then
                    int_SocketTable_theirIP_13(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_13(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_14_DATA_0) then
                    int_SocketTable_theirIP_14(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_14(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRIP_15_DATA_0) then
                    int_SocketTable_theirIP_15(31 downto 0) <= (UNSIGNED(WDATA(31 downto 0)) and wmask(31 downto 0)) or ((not wmask(31 downto 0)) and int_SocketTable_theirIP_15(31 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_0_DATA_0) then
                    int_SocketTable_theirPort_0(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_0(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_1_DATA_0) then
                    int_SocketTable_theirPort_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_2_DATA_0) then
                    int_SocketTable_theirPort_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_3_DATA_0) then
                    int_SocketTable_theirPort_3(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_3(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_4_DATA_0) then
                    int_SocketTable_theirPort_4(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_4(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_5_DATA_0) then
                    int_SocketTable_theirPort_5(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_5(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_6_DATA_0) then
                    int_SocketTable_theirPort_6(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_6(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_7_DATA_0) then
                    int_SocketTable_theirPort_7(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_7(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_8_DATA_0) then
                    int_SocketTable_theirPort_8(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_8(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_9_DATA_0) then
                    int_SocketTable_theirPort_9(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_9(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_10_DATA_0) then
                    int_SocketTable_theirPort_10(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_10(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_11_DATA_0) then
                    int_SocketTable_theirPort_11(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_11(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_12_DATA_0) then
                    int_SocketTable_theirPort_12(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_12(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_13_DATA_0) then
                    int_SocketTable_theirPort_13(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_13(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_14_DATA_0) then
                    int_SocketTable_theirPort_14(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_14(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_THEIRPORT_15_DATA_0) then
                    int_SocketTable_theirPort_15(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_theirPort_15(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_0_DATA_0) then
                    int_SocketTable_myPort_0(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_0(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_1_DATA_0) then
                    int_SocketTable_myPort_1(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_1(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_2_DATA_0) then
                    int_SocketTable_myPort_2(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_2(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_3_DATA_0) then
                    int_SocketTable_myPort_3(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_3(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_4_DATA_0) then
                    int_SocketTable_myPort_4(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_4(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_5_DATA_0) then
                    int_SocketTable_myPort_5(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_5(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_6_DATA_0) then
                    int_SocketTable_myPort_6(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_6(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_7_DATA_0) then
                    int_SocketTable_myPort_7(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_7(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_8_DATA_0) then
                    int_SocketTable_myPort_8(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_8(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_9_DATA_0) then
                    int_SocketTable_myPort_9(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_9(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_10_DATA_0) then
                    int_SocketTable_myPort_10(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_10(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_11_DATA_0) then
                    int_SocketTable_myPort_11(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_11(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_12_DATA_0) then
                    int_SocketTable_myPort_12(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_12(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_13_DATA_0) then
                    int_SocketTable_myPort_13(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_13(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_14_DATA_0) then
                    int_SocketTable_myPort_14(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_14(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_MYPORT_15_DATA_0) then
                    int_SocketTable_myPort_15(15 downto 0) <= (UNSIGNED(WDATA(15 downto 0)) and wmask(15 downto 0)) or ((not wmask(15 downto 0)) and int_SocketTable_myPort_15(15 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_0_DATA_0) then
                    int_SocketTable_valid_0(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_0(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_1_DATA_0) then
                    int_SocketTable_valid_1(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_1(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_2_DATA_0) then
                    int_SocketTable_valid_2(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_2(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_3_DATA_0) then
                    int_SocketTable_valid_3(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_3(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_4_DATA_0) then
                    int_SocketTable_valid_4(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_4(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_5_DATA_0) then
                    int_SocketTable_valid_5(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_5(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_6_DATA_0) then
                    int_SocketTable_valid_6(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_6(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_7_DATA_0) then
                    int_SocketTable_valid_7(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_7(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_8_DATA_0) then
                    int_SocketTable_valid_8(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_8(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_9_DATA_0) then
                    int_SocketTable_valid_9(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_9(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_10_DATA_0) then
                    int_SocketTable_valid_10(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_10(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_11_DATA_0) then
                    int_SocketTable_valid_11(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_11(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_12_DATA_0) then
                    int_SocketTable_valid_12(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_12(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_13_DATA_0) then
                    int_SocketTable_valid_13(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_13(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_14_DATA_0) then
                    int_SocketTable_valid_14(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_14(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_SOCKETTABLE_VALID_15_DATA_0) then
                    int_SocketTable_valid_15(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_SocketTable_valid_15(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_numberSockets <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (numberSockets_ap_vld = '1') then
                    int_numberSockets <= UNSIGNED(numberSockets);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_numberSockets_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (numberSockets_ap_vld = '1') then
                    int_numberSockets_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_NUMBERSOCKETS_CTRL) then
                    int_numberSockets_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------

end architecture behave;
