-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity udpRxEngine is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    rxUdpDataIn_TVALID : IN STD_LOGIC;
    ureDataPayload_V_din : OUT STD_LOGIC_VECTOR (576 downto 0);
    ureDataPayload_V_full_n : IN STD_LOGIC;
    ureDataPayload_V_write : OUT STD_LOGIC;
    ureMetaData_V_din : OUT STD_LOGIC_VECTOR (96 downto 0);
    ureMetaData_V_full_n : IN STD_LOGIC;
    ureMetaData_V_write : OUT STD_LOGIC;
    rxUdpDataIn_TDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    rxUdpDataIn_TREADY : OUT STD_LOGIC;
    rxUdpDataIn_TKEEP : IN STD_LOGIC_VECTOR (63 downto 0);
    rxUdpDataIn_TLAST : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of udpRxEngine is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_E0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011100000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_78 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_70 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110000";
    constant ap_const_lv32_77 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110111";
    constant ap_const_lv32_68 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_67 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100111";
    constant ap_const_lv32_98 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011000";
    constant ap_const_lv32_9F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011111";
    constant ap_const_lv32_90 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010010000";
    constant ap_const_lv32_97 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010010111";
    constant ap_const_lv32_88 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010001000";
    constant ap_const_lv32_8F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010001111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_87 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000111";
    constant ap_const_lv32_A8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010101000";
    constant ap_const_lv32_AF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010101111";
    constant ap_const_lv32_A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100000";
    constant ap_const_lv32_A7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100111";
    constant ap_const_lv32_B8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv32_B0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010110000";
    constant ap_const_lv32_B7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010110111";
    constant ap_const_lv32_11F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100011111";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ure_state_load_load_fu_223_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_nbreadreq_fu_136_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op7_read_state1 : BOOLEAN;
    signal ap_predicate_op22_read_state1 : BOOLEAN;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ure_state_load_reg_537 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_5_reg_541 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op64_write_state2 : BOOLEAN;
    signal tmp_reg_563 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op71_write_state2 : BOOLEAN;
    signal tmp_last_V_reg_567 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op74_write_state2 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ure_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal prevWord_data_V : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal prevWord_keep_V_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    signal rxUdpDataIn_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ureMetaData_V_blk_n : STD_LOGIC;
    signal ureDataPayload_V_blk_n : STD_LOGIC;
    signal reg_215 : STD_LOGIC_VECTOR (287 downto 0);
    signal reg_219 : STD_LOGIC_VECTOR (35 downto 0);
    signal trunc_ln647_fu_233_p1 : STD_LOGIC_VECTOR (223 downto 0);
    signal trunc_ln647_reg_548 : STD_LOGIC_VECTOR (223 downto 0);
    signal trunc_ln647_10_fu_237_p1 : STD_LOGIC_VECTOR (27 downto 0);
    signal trunc_ln647_10_reg_553 : STD_LOGIC_VECTOR (27 downto 0);
    signal p_Result_s_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_191_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_237_i_i_reg_571 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_1_i_i_reg_576 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_2_i_i_reg_581 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_3_i_i_reg_586 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_i53_i_reg_591 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_1_i_reg_596 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_2_i_reg_601 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_237_3_i_reg_606 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_239_i58_i_reg_611 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_239_1_i_reg_616 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_239_i61_i_reg_621 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_239_1_i1_reg_626 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_reg_pp0_iter0_tmp_last_V_3_reg_172 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_reg_pp0_iter1_tmp_last_V_3_reg_172 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln173_fu_255_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_Result_17_fu_438_p5 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_19_fu_487_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal p_Result_18_fu_456_p5 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_20_fu_491_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_419_p4 : STD_LOGIC_VECTOR (576 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_2_fu_474_p6 : STD_LOGIC_VECTOR (576 downto 0);
    signal tmp_1_fu_514_p4 : STD_LOGIC_VECTOR (576 downto 0);
    signal tmp_11_fu_241_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln414_fu_403_p1 : STD_LOGIC_VECTOR (287 downto 0);
    signal trunc_ln414_2_fu_411_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal p_Result_22_fu_415_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_21_fu_407_p1 : STD_LOGIC_VECTOR (511 downto 0);
    signal trunc_ln414_4_fu_434_p1 : STD_LOGIC_VECTOR (35 downto 0);
    signal trunc_ln414_3_fu_430_p1 : STD_LOGIC_VECTOR (287 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_condition_191 : BOOLEAN;
    signal ap_condition_154 : BOOLEAN;
    signal ap_condition_103 : BOOLEAN;
    signal ap_condition_193 : BOOLEAN;
    signal ap_condition_223 : BOOLEAN;
    signal ap_condition_198 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter1_tmp_last_V_3_reg_172_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_103)) then
                if ((ap_const_boolean_1 = ap_condition_154)) then 
                    ap_phi_reg_pp0_iter1_tmp_last_V_3_reg_172 <= p_Result_s_fu_249_p2;
                elsif ((ap_const_boolean_1 = ap_condition_191)) then 
                    ap_phi_reg_pp0_iter1_tmp_last_V_3_reg_172 <= ap_const_lv1_0;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_tmp_last_V_3_reg_172 <= ap_phi_reg_pp0_iter0_tmp_last_V_3_reg_172;
                end if;
            end if; 
        end if;
    end process;

    prevWord_data_V_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_193)) then
                if (((ure_state_load_reg_537 = ap_const_lv2_0) and (tmp_reg_563 = ap_const_lv1_1))) then 
                    prevWord_data_V <= p_Result_19_fu_487_p1;
                elsif (((tmp_5_reg_541 = ap_const_lv1_1) and (ure_state_load_reg_537 = ap_const_lv2_1))) then 
                    prevWord_data_V <= p_Result_17_fu_438_p5;
                end if;
            end if; 
        end if;
    end process;

    prevWord_keep_V_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_193)) then
                if (((ure_state_load_reg_537 = ap_const_lv2_0) and (tmp_reg_563 = ap_const_lv1_1))) then 
                    prevWord_keep_V_1 <= p_Result_20_fu_491_p1;
                elsif (((tmp_5_reg_541 = ap_const_lv1_1) and (ure_state_load_reg_537 = ap_const_lv2_1))) then 
                    prevWord_keep_V_1 <= p_Result_18_fu_456_p5;
                end if;
            end if; 
        end if;
    end process;

    ure_state_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_103)) then
                if ((ap_const_boolean_1 = ap_condition_198)) then 
                    ure_state <= ap_const_lv2_1;
                elsif ((ap_const_boolean_1 = ap_condition_154)) then 
                    ure_state <= select_ln173_fu_255_p3;
                elsif ((ure_state_load_load_fu_223_p1 = ap_const_lv2_2)) then 
                    ure_state <= ap_const_lv2_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                p_Result_237_1_i_i_reg_576 <= rxUdpDataIn_TDATA(119 downto 112);
                p_Result_237_1_i_reg_596 <= rxUdpDataIn_TDATA(151 downto 144);
                p_Result_237_2_i_i_reg_581 <= rxUdpDataIn_TDATA(111 downto 104);
                p_Result_237_2_i_reg_601 <= rxUdpDataIn_TDATA(143 downto 136);
                p_Result_237_3_i_i_reg_586 <= rxUdpDataIn_TDATA(103 downto 96);
                p_Result_237_3_i_reg_606 <= rxUdpDataIn_TDATA(135 downto 128);
                p_Result_237_i53_i_reg_591 <= rxUdpDataIn_TDATA(159 downto 152);
                p_Result_237_i_i_reg_571 <= rxUdpDataIn_TDATA(127 downto 120);
                p_Result_239_1_i1_reg_626 <= rxUdpDataIn_TDATA(183 downto 176);
                p_Result_239_1_i_reg_616 <= rxUdpDataIn_TDATA(167 downto 160);
                p_Result_239_i58_i_reg_611 <= rxUdpDataIn_TDATA(175 downto 168);
                p_Result_239_i61_i_reg_621 <= rxUdpDataIn_TDATA(191 downto 184);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then
                reg_215 <= rxUdpDataIn_TDATA(511 downto 224);
                reg_219 <= rxUdpDataIn_TKEEP(63 downto 28);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ure_state = ap_const_lv2_1) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_5_reg_541 <= grp_nbreadreq_fu_136_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_last_V_reg_567 <= rxUdpDataIn_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ure_state = ap_const_lv2_0) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_563 <= grp_nbreadreq_fu_136_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln647_10_reg_553 <= trunc_ln647_10_fu_237_p1;
                trunc_ln647_reg_548 <= trunc_ln647_fu_233_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ure_state_load_reg_537 <= ure_state;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxUdpDataIn_TVALID, ap_predicate_op7_read_state1, ap_predicate_op22_read_state1, ureDataPayload_V_full_n, ure_state_load_reg_537, ap_predicate_op64_write_state2, ureMetaData_V_full_n, ap_predicate_op71_write_state2, ap_predicate_op74_write_state2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ureMetaData_V_full_n = ap_const_logic_0) and (ap_predicate_op71_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op74_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((ure_state_load_reg_537 = ap_const_lv2_2) and (ureDataPayload_V_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op22_read_state1 = ap_const_boolean_1)) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxUdpDataIn_TVALID, ap_predicate_op7_read_state1, ap_predicate_op22_read_state1, ureDataPayload_V_full_n, ure_state_load_reg_537, ap_predicate_op64_write_state2, ureMetaData_V_full_n, ap_predicate_op71_write_state2, ap_predicate_op74_write_state2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ureMetaData_V_full_n = ap_const_logic_0) and (ap_predicate_op71_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op74_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((ure_state_load_reg_537 = ap_const_lv2_2) and (ureDataPayload_V_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op22_read_state1 = ap_const_boolean_1)) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_start, ap_done_reg, ap_enable_reg_pp0_iter1, rxUdpDataIn_TVALID, ap_predicate_op7_read_state1, ap_predicate_op22_read_state1, ureDataPayload_V_full_n, ure_state_load_reg_537, ap_predicate_op64_write_state2, ureMetaData_V_full_n, ap_predicate_op71_write_state2, ap_predicate_op74_write_state2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_done_reg = ap_const_logic_1) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((ureMetaData_V_full_n = ap_const_logic_0) and (ap_predicate_op71_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op74_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((ure_state_load_reg_537 = ap_const_lv2_2) and (ureDataPayload_V_full_n = ap_const_logic_0)))) or ((ap_start = ap_const_logic_1) and ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op22_read_state1 = ap_const_boolean_1)) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))));
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start, ap_done_reg, rxUdpDataIn_TVALID, ap_predicate_op7_read_state1, ap_predicate_op22_read_state1)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op22_read_state1 = ap_const_boolean_1)) or ((rxUdpDataIn_TVALID = ap_const_logic_0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(ureDataPayload_V_full_n, ure_state_load_reg_537, ap_predicate_op64_write_state2, ureMetaData_V_full_n, ap_predicate_op71_write_state2, ap_predicate_op74_write_state2)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((ureMetaData_V_full_n = ap_const_logic_0) and (ap_predicate_op71_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op74_write_state2 = ap_const_boolean_1)) or ((ureDataPayload_V_full_n = ap_const_logic_0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((ure_state_load_reg_537 = ap_const_lv2_2) and (ureDataPayload_V_full_n = ap_const_logic_0)));
    end process;


    ap_condition_103_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
                ap_condition_103 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_154_assign_proc : process(grp_nbreadreq_fu_136_p5, ure_state, grp_fu_191_p1)
    begin
                ap_condition_154 <= ((grp_fu_191_p1 = ap_const_lv1_1) and (grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_1));
    end process;


    ap_condition_191_assign_proc : process(grp_nbreadreq_fu_136_p5, ure_state, grp_fu_191_p1)
    begin
                ap_condition_191 <= ((grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_1) and (grp_fu_191_p1 = ap_const_lv1_0));
    end process;


    ap_condition_193_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_193 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_198_assign_proc : process(grp_nbreadreq_fu_136_p5, ure_state, grp_fu_191_p1)
    begin
                ap_condition_198 <= ((grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_0) and (grp_fu_191_p1 = ap_const_lv1_0));
    end process;


    ap_condition_223_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_01001)
    begin
                ap_condition_223 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_01001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start;

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_idle_pp0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_tmp_last_V_3_reg_172 <= "X";

    ap_predicate_op22_read_state1_assign_proc : process(grp_nbreadreq_fu_136_p5, ure_state)
    begin
                ap_predicate_op22_read_state1 <= ((grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_0));
    end process;


    ap_predicate_op64_write_state2_assign_proc : process(ure_state_load_reg_537, tmp_5_reg_541)
    begin
                ap_predicate_op64_write_state2 <= ((tmp_5_reg_541 = ap_const_lv1_1) and (ure_state_load_reg_537 = ap_const_lv2_1));
    end process;


    ap_predicate_op71_write_state2_assign_proc : process(ure_state_load_reg_537, tmp_reg_563)
    begin
                ap_predicate_op71_write_state2 <= ((ure_state_load_reg_537 = ap_const_lv2_0) and (tmp_reg_563 = ap_const_lv1_1));
    end process;


    ap_predicate_op74_write_state2_assign_proc : process(ure_state_load_reg_537, tmp_reg_563, tmp_last_V_reg_567)
    begin
                ap_predicate_op74_write_state2 <= ((ure_state_load_reg_537 = ap_const_lv2_0) and (tmp_last_V_reg_567 = ap_const_lv1_1) and (tmp_reg_563 = ap_const_lv1_1));
    end process;


    ap_predicate_op7_read_state1_assign_proc : process(grp_nbreadreq_fu_136_p5, ure_state)
    begin
                ap_predicate_op7_read_state1 <= ((grp_nbreadreq_fu_136_p5 = ap_const_lv1_1) and (ure_state = ap_const_lv2_1));
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_idle_pp0_0to0 = ap_const_logic_1))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_191_p1 <= rxUdpDataIn_TLAST;
    grp_nbreadreq_fu_136_p5 <= (0=>(rxUdpDataIn_TVALID), others=>'-');
    p_Result_17_fu_438_p5 <= (prevWord_data_V(511 downto 288) & reg_215);
    p_Result_18_fu_456_p5 <= (prevWord_keep_V_1(63 downto 36) & reg_219);
    p_Result_19_fu_487_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_215),512));
    p_Result_20_fu_491_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(reg_219),64));
    p_Result_21_fu_407_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln414_fu_403_p1),512));
    p_Result_22_fu_415_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln414_2_fu_411_p1),64));
    p_Result_s_fu_249_p2 <= (tmp_11_fu_241_p3 xor ap_const_lv1_1);

    rxUdpDataIn_TDATA_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_pp0_stage0, rxUdpDataIn_TVALID, ap_predicate_op7_read_state1, ap_predicate_op22_read_state1, ap_block_pp0_stage0)
    begin
        if (((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op22_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or (not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            rxUdpDataIn_TDATA_blk_n <= rxUdpDataIn_TVALID;
        else 
            rxUdpDataIn_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    rxUdpDataIn_TREADY_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_predicate_op7_read_state1, ap_predicate_op22_read_state1, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op22_read_state1 = ap_const_boolean_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op7_read_state1 = ap_const_boolean_1)))) then 
            rxUdpDataIn_TREADY <= ap_const_logic_1;
        else 
            rxUdpDataIn_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    select_ln173_fu_255_p3 <= 
        ap_const_lv2_2 when (tmp_11_fu_241_p3(0) = '1') else 
        ap_const_lv2_0;
    tmp_11_fu_241_p3 <= rxUdpDataIn_TKEEP(28 downto 28);
    tmp_1_fu_514_p4 <= ((ap_const_lv1_1 & p_Result_20_fu_491_p1) & p_Result_19_fu_487_p1);
    tmp_2_fu_474_p6 <= ((((ap_phi_reg_pp0_iter1_tmp_last_V_3_reg_172 & trunc_ln647_10_reg_553) & trunc_ln414_4_fu_434_p1) & trunc_ln647_reg_548) & trunc_ln414_3_fu_430_p1);
    tmp_3_fu_419_p4 <= ((ap_const_lv1_1 & p_Result_22_fu_415_p1) & p_Result_21_fu_407_p1);
    trunc_ln414_2_fu_411_p1 <= prevWord_keep_V_1(36 - 1 downto 0);
    trunc_ln414_3_fu_430_p1 <= prevWord_data_V(288 - 1 downto 0);
    trunc_ln414_4_fu_434_p1 <= prevWord_keep_V_1(36 - 1 downto 0);
    trunc_ln414_fu_403_p1 <= prevWord_data_V(288 - 1 downto 0);
    trunc_ln647_10_fu_237_p1 <= rxUdpDataIn_TKEEP(28 - 1 downto 0);
    trunc_ln647_fu_233_p1 <= rxUdpDataIn_TDATA(224 - 1 downto 0);

    ureDataPayload_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ureDataPayload_V_full_n, ure_state_load_reg_537, ap_predicate_op64_write_state2, ap_predicate_op74_write_state2, ap_block_pp0_stage0)
    begin
        if ((((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op74_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((ure_state_load_reg_537 = ap_const_lv2_2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0)))) then 
            ureDataPayload_V_blk_n <= ureDataPayload_V_full_n;
        else 
            ureDataPayload_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    ureDataPayload_V_din_assign_proc : process(ure_state_load_reg_537, ap_predicate_op64_write_state2, ap_predicate_op74_write_state2, tmp_3_fu_419_p4, tmp_2_fu_474_p6, tmp_1_fu_514_p4, ap_condition_223)
    begin
        if ((ap_const_boolean_1 = ap_condition_223)) then
            if ((ap_predicate_op74_write_state2 = ap_const_boolean_1)) then 
                ureDataPayload_V_din <= tmp_1_fu_514_p4;
            elsif ((ap_predicate_op64_write_state2 = ap_const_boolean_1)) then 
                ureDataPayload_V_din <= tmp_2_fu_474_p6;
            elsif ((ure_state_load_reg_537 = ap_const_lv2_2)) then 
                ureDataPayload_V_din <= tmp_3_fu_419_p4;
            else 
                ureDataPayload_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ureDataPayload_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ureDataPayload_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ure_state_load_reg_537, ap_predicate_op64_write_state2, ap_predicate_op74_write_state2, ap_block_pp0_stage0_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op74_write_state2 = ap_const_boolean_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op64_write_state2 = ap_const_boolean_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ure_state_load_reg_537 = ap_const_lv2_2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            ureDataPayload_V_write <= ap_const_logic_1;
        else 
            ureDataPayload_V_write <= ap_const_logic_0;
        end if; 
    end process;


    ureMetaData_V_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ureMetaData_V_full_n, ap_predicate_op71_write_state2, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op71_write_state2 = ap_const_boolean_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ureMetaData_V_blk_n <= ureMetaData_V_full_n;
        else 
            ureMetaData_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    ureMetaData_V_din <= ((((((((((((ap_const_lv1_1 & p_Result_239_1_i1_reg_626) & p_Result_239_i61_i_reg_621) & p_Result_239_1_i_reg_616) & p_Result_239_i58_i_reg_611) & p_Result_237_3_i_reg_606) & p_Result_237_2_i_reg_601) & p_Result_237_1_i_reg_596) & p_Result_237_i53_i_reg_591) & p_Result_237_3_i_i_reg_586) & p_Result_237_2_i_i_reg_581) & p_Result_237_1_i_i_reg_576) & p_Result_237_i_i_reg_571);

    ureMetaData_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op71_write_state2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op71_write_state2 = ap_const_boolean_1))) then 
            ureMetaData_V_write <= ap_const_logic_1;
        else 
            ureMetaData_V_write <= ap_const_logic_0;
        end if; 
    end process;

    ure_state_load_load_fu_223_p1 <= ure_state;
end behav;
