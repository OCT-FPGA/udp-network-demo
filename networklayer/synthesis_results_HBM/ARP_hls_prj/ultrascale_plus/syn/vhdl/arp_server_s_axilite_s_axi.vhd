-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity arp_server_s_axilite_s_axi is
generic (
    C_S_AXI_ADDR_WIDTH    : INTEGER := 12;
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
    arp_scan_i            :out  STD_LOGIC_VECTOR(0 downto 0);
    arp_scan_o            :in   STD_LOGIC_VECTOR(0 downto 0);
    arp_scan_o_ap_vld     :in   STD_LOGIC;
    arpTable_valid_address0 :in   STD_LOGIC_VECTOR(7 downto 0);
    arpTable_valid_ce0    :in   STD_LOGIC;
    arpTable_valid_we0    :in   STD_LOGIC;
    arpTable_valid_d0     :in   STD_LOGIC_VECTOR(0 downto 0);
    arpTable_valid_q0     :out  STD_LOGIC_VECTOR(0 downto 0);
    arpTable_ipAddress_address0 :in   STD_LOGIC_VECTOR(7 downto 0);
    arpTable_ipAddress_ce0 :in   STD_LOGIC;
    arpTable_ipAddress_we0 :in   STD_LOGIC;
    arpTable_ipAddress_d0 :in   STD_LOGIC_VECTOR(31 downto 0);
    arpTable_ipAddress_q0 :out  STD_LOGIC_VECTOR(31 downto 0);
    arpTable_macAddress_address0 :in   STD_LOGIC_VECTOR(7 downto 0);
    arpTable_macAddress_ce0 :in   STD_LOGIC;
    arpTable_macAddress_we0 :in   STD_LOGIC;
    arpTable_macAddress_d0 :in   STD_LOGIC_VECTOR(47 downto 0);
    arpTable_macAddress_q0 :out  STD_LOGIC_VECTOR(47 downto 0);
    ap_local_deadlock     :in   STD_LOGIC_VECTOR(0 downto 0)
);
end entity arp_server_s_axilite_s_axi;

-- ------------------------Address Info-------------------
-- 0x000 : reserved
-- 0x004 : reserved
-- 0x008 : reserved
-- 0x00c : reserved
-- 0x010 : Data signal of arp_scan_i
--         bit 0  - arp_scan_i[0] (Read/Write)
--         others - reserved
-- 0x014 : reserved
-- 0x018 : Data signal of arp_scan_o
--         bit 0  - arp_scan_o[0] (Read)
--         others - reserved
-- 0x01c : Control signal of arp_scan_o
--         bit 0  - arp_scan_o_ap_vld (Read/COR)
--         others - reserved
-- 0x100 ~
-- 0x1ff : Memory 'arpTable_valid' (256 * 1b)
--         Word n : bit [ 0: 0] - arpTable_valid[4n]
--                  bit [ 8: 8] - arpTable_valid[4n+1]
--                  bit [16:16] - arpTable_valid[4n+2]
--                  bit [24:24] - arpTable_valid[4n+3]
--                  others      - reserved
-- 0x400 ~
-- 0x7ff : Memory 'arpTable_ipAddress' (256 * 32b)
--         Word n : bit [31:0] - arpTable_ipAddress[n]
-- 0x800 ~
-- 0xfff : Memory 'arpTable_macAddress' (256 * 48b)
--         Word 2n   : bit [31:0] - arpTable_macAddress[n][31: 0]
--         Word 2n+1 : bit [15:0] - arpTable_macAddress[n][47:32]
--                     others     - reserved
-- (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

architecture behave of arp_server_s_axilite_s_axi is
    type states is (wridle, wrdata, wrresp, wrreset, rdidle, rddata, rdreset);  -- read and write fsm states
    signal wstate  : states := wrreset;
    signal rstate  : states := rdreset;
    signal wnext, rnext: states;
    constant ADDR_ARP_SCAN_I_DATA_0        : INTEGER := 16#010#;
    constant ADDR_ARP_SCAN_I_CTRL          : INTEGER := 16#014#;
    constant ADDR_ARP_SCAN_O_DATA_0        : INTEGER := 16#018#;
    constant ADDR_ARP_SCAN_O_CTRL          : INTEGER := 16#01c#;
    constant ADDR_ARPTABLE_VALID_BASE      : INTEGER := 16#100#;
    constant ADDR_ARPTABLE_VALID_HIGH      : INTEGER := 16#1ff#;
    constant ADDR_ARPTABLE_IPADDRESS_BASE  : INTEGER := 16#400#;
    constant ADDR_ARPTABLE_IPADDRESS_HIGH  : INTEGER := 16#7ff#;
    constant ADDR_ARPTABLE_MACADDRESS_BASE : INTEGER := 16#800#;
    constant ADDR_ARPTABLE_MACADDRESS_HIGH : INTEGER := 16#fff#;
    constant ADDR_BITS         : INTEGER := 12;

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
    signal int_arp_scan_i      : UNSIGNED(0 downto 0) := (others => '0');
    signal int_arp_scan_o_ap_vld : STD_LOGIC;
    signal int_arp_scan_o      : UNSIGNED(0 downto 0) := (others => '0');
    -- memory signals
    signal int_arpTable_valid_address0 : UNSIGNED(5 downto 0);
    signal int_arpTable_valid_ce0 : STD_LOGIC;
    signal int_arpTable_valid_be0 : UNSIGNED(3 downto 0);
    signal int_arpTable_valid_d0 : UNSIGNED(31 downto 0);
    signal int_arpTable_valid_q0 : UNSIGNED(31 downto 0);
    signal int_arpTable_valid_address1 : UNSIGNED(5 downto 0);
    signal int_arpTable_valid_ce1 : STD_LOGIC;
    signal int_arpTable_valid_we1 : STD_LOGIC;
    signal int_arpTable_valid_be1 : UNSIGNED(3 downto 0);
    signal int_arpTable_valid_d1 : UNSIGNED(31 downto 0);
    signal int_arpTable_valid_q1 : UNSIGNED(31 downto 0);
    signal int_arpTable_valid_read : STD_LOGIC;
    signal int_arpTable_valid_write : STD_LOGIC;
    signal int_arpTable_valid_shift0 : UNSIGNED(1 downto 0);
    signal int_arpTable_ipAddress_address0 : UNSIGNED(7 downto 0);
    signal int_arpTable_ipAddress_ce0 : STD_LOGIC;
    signal int_arpTable_ipAddress_be0 : UNSIGNED(3 downto 0);
    signal int_arpTable_ipAddress_d0 : UNSIGNED(31 downto 0);
    signal int_arpTable_ipAddress_q0 : UNSIGNED(31 downto 0);
    signal int_arpTable_ipAddress_address1 : UNSIGNED(7 downto 0);
    signal int_arpTable_ipAddress_ce1 : STD_LOGIC;
    signal int_arpTable_ipAddress_we1 : STD_LOGIC;
    signal int_arpTable_ipAddress_be1 : UNSIGNED(3 downto 0);
    signal int_arpTable_ipAddress_d1 : UNSIGNED(31 downto 0);
    signal int_arpTable_ipAddress_q1 : UNSIGNED(31 downto 0);
    signal int_arpTable_ipAddress_read : STD_LOGIC;
    signal int_arpTable_ipAddress_write : STD_LOGIC;
    signal int_arpTable_macAddress_address0 : UNSIGNED(7 downto 0);
    signal int_arpTable_macAddress_ce0 : STD_LOGIC;
    signal int_arpTable_macAddress_be0 : UNSIGNED(5 downto 0);
    signal int_arpTable_macAddress_d0 : UNSIGNED(47 downto 0);
    signal int_arpTable_macAddress_q0 : UNSIGNED(47 downto 0);
    signal int_arpTable_macAddress_address1 : UNSIGNED(7 downto 0);
    signal int_arpTable_macAddress_ce1 : STD_LOGIC;
    signal int_arpTable_macAddress_we1 : STD_LOGIC;
    signal int_arpTable_macAddress_be1 : UNSIGNED(5 downto 0);
    signal int_arpTable_macAddress_d1 : UNSIGNED(47 downto 0);
    signal int_arpTable_macAddress_q1 : UNSIGNED(47 downto 0);
    signal int_arpTable_macAddress_read : STD_LOGIC;
    signal int_arpTable_macAddress_write : STD_LOGIC;
    signal int_arpTable_macAddress_shift1 : UNSIGNED(0 downto 0);

    component arp_server_s_axilite_s_axi_ram is
        generic (
            MEM_STYLE : STRING :="auto";
            MEM_TYPE  : STRING :="S2P";
            BYTES   : INTEGER :=4;
            DEPTH   : INTEGER :=256;
            AWIDTH  : INTEGER :=8);
        port (
            clk0    : in  STD_LOGIC;
            address0: in  UNSIGNED(AWIDTH-1 downto 0);
            ce0     : in  STD_LOGIC;
            we0     : in  UNSIGNED(BYTES-1 downto 0);
            d0      : in  UNSIGNED(BYTES*8-1 downto 0);
            q0      : out UNSIGNED(BYTES*8-1 downto 0);
            clk1    : in  STD_LOGIC;
            address1: in  UNSIGNED(AWIDTH-1 downto 0);
            ce1     : in  STD_LOGIC;
            we1     : in  UNSIGNED(BYTES-1 downto 0);
            d1      : in  UNSIGNED(BYTES*8-1 downto 0);
            q1      : out UNSIGNED(BYTES*8-1 downto 0));
    end component arp_server_s_axilite_s_axi_ram;

    function log2 (x : INTEGER) return INTEGER is
        variable n, m : INTEGER;
    begin
        n := 1;
        m := 2;
        while m < x loop
            n := n + 1;
            m := m * 2;
        end loop;
        return n;
    end function log2;

begin
-- ----------------------- Instantiation------------------
-- int_arpTable_valid
int_arpTable_valid : arp_server_s_axilite_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "T2P",
     BYTES     => 4,
     DEPTH     => 64,
     AWIDTH    => log2(64))
port map (
     clk0      => ACLK,
     address0  => int_arpTable_valid_address0,
     ce0       => int_arpTable_valid_ce0,
     we0       => int_arpTable_valid_be0,
     d0        => int_arpTable_valid_d0,
     q0        => int_arpTable_valid_q0,
     clk1      => ACLK,
     address1  => int_arpTable_valid_address1,
     ce1       => int_arpTable_valid_ce1,
     we1       => int_arpTable_valid_be1,
     d1        => int_arpTable_valid_d1,
     q1        => int_arpTable_valid_q1);
-- int_arpTable_ipAddress
int_arpTable_ipAddress : arp_server_s_axilite_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "T2P",
     BYTES     => 4,
     DEPTH     => 256,
     AWIDTH    => log2(256))
port map (
     clk0      => ACLK,
     address0  => int_arpTable_ipAddress_address0,
     ce0       => int_arpTable_ipAddress_ce0,
     we0       => int_arpTable_ipAddress_be0,
     d0        => int_arpTable_ipAddress_d0,
     q0        => int_arpTable_ipAddress_q0,
     clk1      => ACLK,
     address1  => int_arpTable_ipAddress_address1,
     ce1       => int_arpTable_ipAddress_ce1,
     we1       => int_arpTable_ipAddress_be1,
     d1        => int_arpTable_ipAddress_d1,
     q1        => int_arpTable_ipAddress_q1);
-- int_arpTable_macAddress
int_arpTable_macAddress : arp_server_s_axilite_s_axi_ram
generic map (
     MEM_STYLE => "auto",
     MEM_TYPE  => "T2P",
     BYTES     => 6,
     DEPTH     => 256,
     AWIDTH    => log2(256))
port map (
     clk0      => ACLK,
     address0  => int_arpTable_macAddress_address0,
     ce0       => int_arpTable_macAddress_ce0,
     we0       => int_arpTable_macAddress_be0,
     d0        => int_arpTable_macAddress_d0,
     q0        => int_arpTable_macAddress_q0,
     clk1      => ACLK,
     address1  => int_arpTable_macAddress_address1,
     ce1       => int_arpTable_macAddress_ce1,
     we1       => int_arpTable_macAddress_be1,
     d1        => int_arpTable_macAddress_d1,
     q1        => int_arpTable_macAddress_q1);


-- ----------------------- AXI WRITE ---------------------
    AWREADY_t <=  '1' when wstate = wridle else '0';
    AWREADY   <=  AWREADY_t;
    WREADY_t  <=  '1' when wstate = wrdata and ar_hs = '0' else '0';
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

    process (wstate, AWVALID, w_hs, BREADY)
    begin
        case (wstate) is
        when wridle =>
            if (AWVALID = '1') then
                wnext <= wrdata;
            else
                wnext <= wridle;
            end if;
        when wrdata =>
            if (w_hs = '1') then
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
    RVALID_t  <= '1' when (rstate = rddata) and (int_arpTable_valid_read = '0') and (int_arpTable_ipAddress_read = '0') and (int_arpTable_macAddress_read = '0') else '0';
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
                    when ADDR_ARP_SCAN_I_DATA_0 =>
                        rdata_data <= RESIZE(int_arp_scan_i(0 downto 0), 32);
                    when ADDR_ARP_SCAN_O_DATA_0 =>
                        rdata_data <= RESIZE(int_arp_scan_o(0 downto 0), 32);
                    when ADDR_ARP_SCAN_O_CTRL =>
                        rdata_data(0) <= int_arp_scan_o_ap_vld;
                    when others =>
                        NULL;
                    end case;
                elsif (int_arpTable_valid_read = '1') then
                    rdata_data <= int_arpTable_valid_q1;
                elsif (int_arpTable_ipAddress_read = '1') then
                    rdata_data <= int_arpTable_ipAddress_q1;
                elsif (int_arpTable_macAddress_read = '1') then
                    rdata_data <= RESIZE(SHIFT_RIGHT(int_arpTable_macAddress_q1, TO_INTEGER(int_arpTable_macAddress_shift1)*32), 32);
                end if;
            end if;
        end if;
    end process;

-- ----------------------- Register logic ----------------
    arp_scan_i           <= STD_LOGIC_VECTOR(int_arp_scan_i);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ACLK_EN = '1') then
                if (w_hs = '1' and waddr = ADDR_ARP_SCAN_I_DATA_0) then
                    int_arp_scan_i(0 downto 0) <= (UNSIGNED(WDATA(0 downto 0)) and wmask(0 downto 0)) or ((not wmask(0 downto 0)) and int_arp_scan_i(0 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arp_scan_o <= (others => '0');
            elsif (ACLK_EN = '1') then
                if (arp_scan_o_ap_vld = '1') then
                    int_arp_scan_o <= UNSIGNED(arp_scan_o);
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arp_scan_o_ap_vld <= '0';
            elsif (ACLK_EN = '1') then
                if (arp_scan_o_ap_vld = '1') then
                    int_arp_scan_o_ap_vld <= '1';
                elsif (ar_hs = '1' and raddr = ADDR_ARP_SCAN_O_CTRL) then
                    int_arp_scan_o_ap_vld <= '0'; -- clear on read
                end if;
            end if;
        end if;
    end process;


-- ----------------------- Memory logic ------------------
    -- arpTable_valid
    int_arpTable_valid_address0 <= SHIFT_RIGHT(UNSIGNED(arpTable_valid_address0), 2)(5 downto 0);
    int_arpTable_valid_ce0 <= arpTable_valid_ce0;
    int_arpTable_valid_be0 <= SHIFT_LEFT(TO_UNSIGNED(1, 4), TO_INTEGER(UNSIGNED(arpTable_valid_address0(1 downto 0)))) when arpTable_valid_we0 = '1' else (others=>'0');
    int_arpTable_valid_d0 <= UNSIGNED(RESIZE(UNSIGNED(arpTable_valid_d0), 8)) & UNSIGNED(RESIZE(UNSIGNED(arpTable_valid_d0), 8)) & UNSIGNED(RESIZE(UNSIGNED(arpTable_valid_d0), 8)) & UNSIGNED(RESIZE(UNSIGNED(arpTable_valid_d0), 8));
    arpTable_valid_q0    <= STD_LOGIC_VECTOR(SHIFT_RIGHT(int_arpTable_valid_q0, TO_INTEGER(int_arpTable_valid_shift0) * 8)(0 downto 0));
    int_arpTable_valid_address1 <= raddr(7 downto 2) when ar_hs = '1' else waddr(7 downto 2);
    int_arpTable_valid_ce1 <= '1' when ar_hs = '1' or (int_arpTable_valid_write = '1' and WVALID  = '1') else '0';
    int_arpTable_valid_we1 <= '1' when int_arpTable_valid_write = '1' and w_hs = '1' else '0';
    int_arpTable_valid_be1 <= UNSIGNED(WSTRB) when int_arpTable_valid_we1 = '1' else (others=>'0');
    int_arpTable_valid_d1 <= UNSIGNED(WDATA);
    -- arpTable_ipAddress
    int_arpTable_ipAddress_address0 <= UNSIGNED(arpTable_ipAddress_address0);
    int_arpTable_ipAddress_ce0 <= arpTable_ipAddress_ce0;
    int_arpTable_ipAddress_be0 <= (others => arpTable_ipAddress_we0);
    int_arpTable_ipAddress_d0 <= RESIZE(UNSIGNED(arpTable_ipAddress_d0), 32);
    arpTable_ipAddress_q0 <= STD_LOGIC_VECTOR(RESIZE(int_arpTable_ipAddress_q0, 32));
    int_arpTable_ipAddress_address1 <= raddr(9 downto 2) when ar_hs = '1' else waddr(9 downto 2);
    int_arpTable_ipAddress_ce1 <= '1' when ar_hs = '1' or (int_arpTable_ipAddress_write = '1' and WVALID  = '1') else '0';
    int_arpTable_ipAddress_we1 <= '1' when int_arpTable_ipAddress_write = '1' and w_hs = '1' else '0';
    int_arpTable_ipAddress_be1 <= UNSIGNED(WSTRB) when int_arpTable_ipAddress_we1 = '1' else (others=>'0');
    int_arpTable_ipAddress_d1 <= UNSIGNED(WDATA);
    -- arpTable_macAddress
    int_arpTable_macAddress_address0 <= UNSIGNED(arpTable_macAddress_address0);
    int_arpTable_macAddress_ce0 <= arpTable_macAddress_ce0;
    int_arpTable_macAddress_be0 <= (others => arpTable_macAddress_we0);
    int_arpTable_macAddress_d0 <= RESIZE(UNSIGNED(arpTable_macAddress_d0), 48);
    arpTable_macAddress_q0 <= STD_LOGIC_VECTOR(RESIZE(int_arpTable_macAddress_q0, 48));
    int_arpTable_macAddress_address1 <= raddr(10 downto 3) when ar_hs = '1' else waddr(10 downto 3);
    int_arpTable_macAddress_ce1 <= '1' when ar_hs = '1' or (int_arpTable_macAddress_write = '1' and WVALID  = '1') else '0';
    int_arpTable_macAddress_we1 <= '1' when int_arpTable_macAddress_write = '1' and w_hs = '1' else '0';
    int_arpTable_macAddress_be1 <= SHIFT_LEFT(RESIZE(UNSIGNED(WSTRB), 6), TO_INTEGER(waddr(2 downto 2)) * 4) when int_arpTable_macAddress_we1 = '1' else (others=>'0');
    int_arpTable_macAddress_d1 <= RESIZE(UNSIGNED(WDATA) & UNSIGNED(WDATA), 48);

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_valid_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_ARPTABLE_VALID_BASE and raddr <= ADDR_ARPTABLE_VALID_HIGH) then
                    int_arpTable_valid_read <= '1';
                else
                    int_arpTable_valid_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_valid_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_ARPTABLE_VALID_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_ARPTABLE_VALID_HIGH) then
                    int_arpTable_valid_write <= '1';
                elsif (w_hs = '1') then
                    int_arpTable_valid_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_valid_shift0 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (arpTable_valid_ce0 = '1') then
                    int_arpTable_valid_shift0 <= UNSIGNED(arpTable_valid_address0(1 downto 0));
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_ipAddress_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_ARPTABLE_IPADDRESS_BASE and raddr <= ADDR_ARPTABLE_IPADDRESS_HIGH) then
                    int_arpTable_ipAddress_read <= '1';
                else
                    int_arpTable_ipAddress_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_ipAddress_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_ARPTABLE_IPADDRESS_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_ARPTABLE_IPADDRESS_HIGH) then
                    int_arpTable_ipAddress_write <= '1';
                elsif (w_hs = '1') then
                    int_arpTable_ipAddress_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_macAddress_read <= '0';
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1' and raddr >= ADDR_ARPTABLE_MACADDRESS_BASE and raddr <= ADDR_ARPTABLE_MACADDRESS_HIGH) then
                    int_arpTable_macAddress_read <= '1';
                else
                    int_arpTable_macAddress_read <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_macAddress_write <= '0';
            elsif (ACLK_EN = '1') then
                if (aw_hs = '1' and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) >= ADDR_ARPTABLE_MACADDRESS_BASE and UNSIGNED(AWADDR(ADDR_BITS-1 downto 0)) <= ADDR_ARPTABLE_MACADDRESS_HIGH) then
                    int_arpTable_macAddress_write <= '1';
                elsif (w_hs = '1') then
                    int_arpTable_macAddress_write <= '0';
                end if;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if (ARESET = '1') then
                int_arpTable_macAddress_shift1 <= (others=>'0');
            elsif (ACLK_EN = '1') then
                if (ar_hs = '1') then
                    int_arpTable_macAddress_shift1 <= raddr(2 downto 2);
                end if;
            end if;
        end if;
    end process;


end architecture behave;

library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

entity arp_server_s_axilite_s_axi_ram is
    generic (
        MEM_STYLE : STRING :="auto";
        MEM_TYPE  : STRING :="S2P";
        BYTES   : INTEGER :=4;
        DEPTH   : INTEGER :=256;
        AWIDTH  : INTEGER :=8);
    port (
        clk0    : in  STD_LOGIC;
        address0: in  UNSIGNED(AWIDTH-1 downto 0);
        ce0     : in  STD_LOGIC;
        we0     : in  UNSIGNED(BYTES-1 downto 0);
        d0      : in  UNSIGNED(BYTES*8-1 downto 0);
        q0      : out UNSIGNED(BYTES*8-1 downto 0);
        clk1    : in  STD_LOGIC;
        address1: in  UNSIGNED(AWIDTH-1 downto 0);
        ce1     : in  STD_LOGIC;
        we1     : in  UNSIGNED(BYTES-1 downto 0);
        d1      : in  UNSIGNED(BYTES*8-1 downto 0);
        q1      : out UNSIGNED(BYTES*8-1 downto 0));

end entity arp_server_s_axilite_s_axi_ram;

architecture behave of arp_server_s_axilite_s_axi_ram is
    signal address0_tmp : UNSIGNED(AWIDTH-1 downto 0);
    signal address1_tmp : UNSIGNED(AWIDTH-1 downto 0);
    type RAM_T is array (0 to DEPTH - 1) of UNSIGNED(BYTES*8 - 1 downto 0);
    shared variable mem : RAM_T := (others => (others => '0'));
    attribute ram_style: string;
    attribute ram_style of mem: variable is MEM_STYLE;
    constant BYTE_WIDTH :INTEGER := 8;

    function port_type_gen( MEM_TYPE: STRING; MEM_STYLE: STRING; PORT_NAME: STRING) return STRING is
    begin
        if (MEM_TYPE = "S2P") and (PORT_NAME = "PORT0") then
            return "WO";
        elsif((MEM_TYPE = "S2P") and (PORT_NAME = "PORT1")) or ((MEM_TYPE = "2P") and (PORT_NAME = "PORT0")) then
            return "RO";
        elsif (MEM_STYLE = "hls_ultra") then
            return "RWNC";
        else
            return "RWRF";
        end if;
    end port_type_gen;
    constant PORT0 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT0");
    constant PORT1 :STRING := port_type_gen(MEM_TYPE, MEM_STYLE, "PORT1");

    function or_reduce( V: UNSIGNED) return std_logic is
    variable result: std_logic;
    begin
        for i in V'range loop
            if i = V'left then
                result := V(i);
            else
                result := result OR V(i);
            end if;
            exit when result = '1';
        end loop;
        return result;
    end or_reduce;

begin

    process (address0)
    begin
    address0_tmp <= address0;
    --synthesis translate_off
        if (address0 > DEPTH-1) then
            address0_tmp <= (others => '0');
        else
            address0_tmp <= address0;
        end if;
    --synthesis translate_on
    end process;

    process (address1)
    begin
    address1_tmp <= address1;
    --synthesis translate_off
        if (address1 > DEPTH-1) then
            address1_tmp <= (others => '0');
        else
            address1_tmp <= address1;
        end if;
    --synthesis translate_on
    end process;

    --read port 0
    read_p0_rf : if (PORT0 = "RO" or PORT0 = "RWRF") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    q0 <= mem(to_integer(address0_tmp));
                end if;
            end if;
        end process;
    end generate read_p0_rf;

    read_p0_nc : if (PORT0 = "RWNC") generate
        process (clk0) begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                    if (we0 = (we0'range => '0')) then
                        q0 <= mem(to_integer(address0_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p0_nc;

    --read port 1
    read_p1_rf : if (PORT1 = "RO" or PORT1 = "RWRF") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    q1 <= mem(to_integer(address1_tmp));
                end if;
            end if;
        end process;
    end generate read_p1_rf;

    read_p1_nc : if (PORT1 = "RWNC") generate
        process (clk1) begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                    if (we1 = (we1'range => '0')) then
                        q1 <= mem(to_integer(address1_tmp));
                    end if;
                end if;
            end if;
        end process;
    end generate read_p1_nc;

    --write port 0
    write_p0 : if (PORT0 /= "RO") generate
        process (clk0)
        begin
            if (clk0'event and clk0 = '1') then
                if (ce0 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we0(i) = '1') then
                        mem(to_integer(address0_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d0((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p0;

    --write port 1
    write_p1 : if (PORT1 /= "RO") generate
        process (clk1)
        begin
            if (clk1'event and clk1 = '1') then
                if (ce1 = '1') then
                for i in 0 to BYTES - 1 loop
                    if (we1(i) = '1') then
                        mem(to_integer(address1_tmp))((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH) := d1((i+1)*BYTE_WIDTH-1 downto i*BYTE_WIDTH);
                    end if;
                end loop;
                end if;
            end if;
        end process;
    end generate write_p1;

end architecture behave;


