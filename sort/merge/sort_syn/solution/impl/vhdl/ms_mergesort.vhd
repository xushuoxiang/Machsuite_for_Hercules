-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ms_mergesort is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_we0 : OUT STD_LOGIC;
    a_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    a_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    checkdata_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
    checkdata_ce0 : OUT STD_LOGIC;
    checkdata_we0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    checkdata_d0 : OUT STD_LOGIC_VECTOR (127 downto 0);
    checkdata_address1 : OUT STD_LOGIC_VECTOR (20 downto 0);
    checkdata_ce1 : OUT STD_LOGIC;
    checkdata_we1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    checkdata_d1 : OUT STD_LOGIC_VECTOR (127 downto 0);
    hercules_buffer_size : OUT STD_LOGIC_VECTOR (31 downto 0);
    hercules_buffer_size_ap_vld : OUT STD_LOGIC );
end;


architecture behav of ms_mergesort is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ms_mergesort_ms_mergesort,hls_ip_2020_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu19eg-ffvc1760-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.465000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=1103,HLS_SYN_LUT=2237,HLS_VERSION=2020_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_800 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000100000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv21_1 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000001";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv128_lc_2 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111";
    constant ap_const_lv128_lc_3 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal global_time_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal m_1_fu_160_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_1_reg_286 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln92_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mid_fu_188_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mid_reg_295 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln99_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal to_fu_222_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal to_reg_300 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln113_fu_272_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln113_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fu_278_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_merge_1_fu_124_ap_start : STD_LOGIC;
    signal grp_merge_1_fu_124_ap_done : STD_LOGIC;
    signal grp_merge_1_fu_124_ap_idle : STD_LOGIC;
    signal grp_merge_1_fu_124_ap_ready : STD_LOGIC;
    signal grp_merge_1_fu_124_a_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_merge_1_fu_124_a_ce0 : STD_LOGIC;
    signal grp_merge_1_fu_124_a_we0 : STD_LOGIC;
    signal grp_merge_1_fu_124_a_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_merge_1_fu_124_checkdata_address0 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_merge_1_fu_124_checkdata_ce0 : STD_LOGIC;
    signal grp_merge_1_fu_124_checkdata_we0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_merge_1_fu_124_checkdata_d0 : STD_LOGIC_VECTOR (127 downto 0);
    signal grp_merge_1_fu_124_stop : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_merge_1_fu_124_global_time_1_o : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_merge_1_fu_124_global_time_1_o_ap_vld : STD_LOGIC;
    signal m_reg_100 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_2_reg_112 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state5_on_subcall_done : BOOLEAN;
    signal grp_merge_1_fu_124_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal zext_ln9_fu_194_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln9_1_fu_228_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln13_1_fu_250_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln12_1_fu_243_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_fu_144_p4 : STD_LOGIC_VECTOR (20 downto 0);
    signal tmp_1_fu_166_p4 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln101_fu_182_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_fu_199_p4 : STD_LOGIC_VECTOR (127 downto 0);
    signal add_ln13_fu_216_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp7_fu_233_p4 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_2_fu_262_p4 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component ms_mergesort_merge_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        a_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
        a_ce0 : OUT STD_LOGIC;
        a_we0 : OUT STD_LOGIC;
        a_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        a_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        checkdata_address0 : OUT STD_LOGIC_VECTOR (20 downto 0);
        checkdata_ce0 : OUT STD_LOGIC;
        checkdata_we0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        checkdata_d0 : OUT STD_LOGIC_VECTOR (127 downto 0);
        start_r : IN STD_LOGIC_VECTOR (31 downto 0);
        m : IN STD_LOGIC_VECTOR (31 downto 0);
        stop : IN STD_LOGIC_VECTOR (31 downto 0);
        global_time_1_i : IN STD_LOGIC_VECTOR (31 downto 0);
        global_time_1_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        global_time_1_o_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_merge_1_fu_124 : component ms_mergesort_merge_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_merge_1_fu_124_ap_start,
        ap_done => grp_merge_1_fu_124_ap_done,
        ap_idle => grp_merge_1_fu_124_ap_idle,
        ap_ready => grp_merge_1_fu_124_ap_ready,
        a_address0 => grp_merge_1_fu_124_a_address0,
        a_ce0 => grp_merge_1_fu_124_a_ce0,
        a_we0 => grp_merge_1_fu_124_a_we0,
        a_d0 => grp_merge_1_fu_124_a_d0,
        a_q0 => a_q0,
        checkdata_address0 => grp_merge_1_fu_124_checkdata_address0,
        checkdata_ce0 => grp_merge_1_fu_124_checkdata_ce0,
        checkdata_we0 => grp_merge_1_fu_124_checkdata_we0,
        checkdata_d0 => grp_merge_1_fu_124_checkdata_d0,
        start_r => i_2_reg_112,
        m => mid_reg_295,
        stop => grp_merge_1_fu_124_stop,
        global_time_1_i => global_time_1,
        global_time_1_o => grp_merge_1_fu_124_global_time_1_o,
        global_time_1_o_ap_vld => grp_merge_1_fu_124_global_time_1_o_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_merge_1_fu_124_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_merge_1_fu_124_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                    grp_merge_1_fu_124_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_merge_1_fu_124_ap_ready = ap_const_logic_1)) then 
                    grp_merge_1_fu_124_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    global_time_1_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln99_fu_176_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                global_time_1 <= add_ln13_1_fu_250_p2;
            elsif ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5) and (grp_merge_1_fu_124_global_time_1_o_ap_vld = ap_const_logic_1)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5) and (grp_merge_1_fu_124_global_time_1_o_ap_vld = ap_const_logic_1)))) then 
                global_time_1 <= grp_merge_1_fu_124_global_time_1_o;
            end if; 
        end if;
    end process;

    i_2_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                i_2_reg_112 <= i_fu_278_p2;
            elsif (((icmp_ln92_fu_154_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_2_reg_112 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    m_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln99_fu_176_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                m_reg_100 <= m_1_reg_286;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                m_reg_100 <= ap_const_lv32_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln99_fu_176_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                icmp_ln113_reg_305 <= icmp_ln113_fu_272_p2;
                mid_reg_295 <= mid_fu_188_p2;
                to_reg_300 <= to_fu_222_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln92_fu_154_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    m_1_reg_286(31 downto 1) <= m_1_fu_160_p2(31 downto 1);
            end if;
        end if;
    end process;
    m_1_reg_286(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln92_fu_154_p2, ap_CS_fsm_state3, icmp_ln99_fu_176_p2, icmp_ln113_fu_272_p2, ap_CS_fsm_state5, ap_block_state5_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln92_fu_154_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln99_fu_176_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif (((icmp_ln113_fu_272_p2 = ap_const_lv1_1) and (icmp_ln99_fu_176_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    a_address0 <= grp_merge_1_fu_124_a_address0;

    a_ce0_assign_proc : process(icmp_ln113_reg_305, ap_CS_fsm_state5, grp_merge_1_fu_124_a_ce0)
    begin
        if ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            a_ce0 <= grp_merge_1_fu_124_a_ce0;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    a_d0 <= grp_merge_1_fu_124_a_d0;

    a_we0_assign_proc : process(icmp_ln113_reg_305, ap_CS_fsm_state5, grp_merge_1_fu_124_a_we0)
    begin
        if ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            a_we0 <= grp_merge_1_fu_124_a_we0;
        else 
            a_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln101_fu_182_p2 <= std_logic_vector(unsigned(i_2_reg_112) + unsigned(m_reg_100));
    add_ln13_1_fu_250_p2 <= std_logic_vector(unsigned(global_time_1) + unsigned(ap_const_lv32_2));
    add_ln13_fu_216_p2 <= std_logic_vector(unsigned(global_time_1) + unsigned(ap_const_lv32_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state5_on_subcall_done_assign_proc : process(icmp_ln113_reg_305, grp_merge_1_fu_124_ap_done)
    begin
                ap_block_state5_on_subcall_done <= (((grp_merge_1_fu_124_ap_done = ap_const_logic_0) and (icmp_ln113_reg_305 = ap_const_lv1_1)) or ((grp_merge_1_fu_124_ap_done = ap_const_logic_0) and (icmp_ln113_reg_305 = ap_const_lv1_0)));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln92_fu_154_p2)
    begin
        if (((icmp_ln92_fu_154_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln92_fu_154_p2)
    begin
        if (((icmp_ln92_fu_154_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    checkdata_address0_assign_proc : process(ap_CS_fsm_state3, icmp_ln113_reg_305, ap_CS_fsm_state5, grp_merge_1_fu_124_checkdata_address0, zext_ln9_1_fu_228_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            checkdata_address0 <= zext_ln9_1_fu_228_p1(21 - 1 downto 0);
        elsif ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            checkdata_address0 <= grp_merge_1_fu_124_checkdata_address0;
        else 
            checkdata_address0 <= "XXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    checkdata_address1 <= zext_ln9_fu_194_p1(21 - 1 downto 0);

    checkdata_ce0_assign_proc : process(ap_CS_fsm_state3, icmp_ln113_reg_305, ap_CS_fsm_state5, grp_merge_1_fu_124_checkdata_ce0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            checkdata_ce0 <= ap_const_logic_1;
        elsif ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            checkdata_ce0 <= grp_merge_1_fu_124_checkdata_ce0;
        else 
            checkdata_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    checkdata_ce1_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            checkdata_ce1 <= ap_const_logic_1;
        else 
            checkdata_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    checkdata_d0_assign_proc : process(ap_CS_fsm_state3, icmp_ln113_reg_305, ap_CS_fsm_state5, grp_merge_1_fu_124_checkdata_d0, or_ln12_1_fu_243_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            checkdata_d0 <= or_ln12_1_fu_243_p2;
        elsif ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            checkdata_d0 <= grp_merge_1_fu_124_checkdata_d0;
        else 
            checkdata_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    checkdata_d1 <= (tmp2_fu_199_p4 or ap_const_lv128_lc_2);

    checkdata_we0_assign_proc : process(ap_CS_fsm_state3, icmp_ln99_fu_176_p2, icmp_ln113_reg_305, ap_CS_fsm_state5, grp_merge_1_fu_124_checkdata_we0)
    begin
        if (((icmp_ln99_fu_176_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            checkdata_we0 <= ap_const_lv16_FFFF;
        elsif ((((icmp_ln113_reg_305 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln113_reg_305 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)))) then 
            checkdata_we0 <= grp_merge_1_fu_124_checkdata_we0;
        else 
            checkdata_we0 <= ap_const_lv16_0;
        end if; 
    end process;


    checkdata_we1_assign_proc : process(ap_CS_fsm_state3, icmp_ln99_fu_176_p2)
    begin
        if (((icmp_ln99_fu_176_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            checkdata_we1 <= ap_const_lv16_FFFF;
        else 
            checkdata_we1 <= ap_const_lv16_0;
        end if; 
    end process;

    grp_merge_1_fu_124_ap_start <= grp_merge_1_fu_124_ap_start_reg;

    grp_merge_1_fu_124_stop_assign_proc : process(to_reg_300, icmp_ln113_reg_305, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
            if ((icmp_ln113_reg_305 = ap_const_lv1_1)) then 
                grp_merge_1_fu_124_stop <= to_reg_300;
            elsif ((icmp_ln113_reg_305 = ap_const_lv1_0)) then 
                grp_merge_1_fu_124_stop <= ap_const_lv32_800;
            else 
                grp_merge_1_fu_124_stop <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            grp_merge_1_fu_124_stop <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    hercules_buffer_size <= global_time_1;

    hercules_buffer_size_ap_vld_assign_proc : process(ap_CS_fsm_state2, icmp_ln92_fu_154_p2)
    begin
        if (((icmp_ln92_fu_154_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            hercules_buffer_size_ap_vld <= ap_const_logic_1;
        else 
            hercules_buffer_size_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_278_p2 <= std_logic_vector(unsigned(m_1_reg_286) + unsigned(i_2_reg_112));
    icmp_ln113_fu_272_p2 <= "1" when (signed(tmp_2_fu_262_p4) < signed(ap_const_lv21_1)) else "0";
    icmp_ln92_fu_154_p2 <= "1" when (signed(tmp_fu_144_p4) < signed(ap_const_lv21_1)) else "0";
    icmp_ln99_fu_176_p2 <= "1" when (signed(tmp_1_fu_166_p4) < signed(ap_const_lv21_1)) else "0";
    m_1_fu_160_p2 <= std_logic_vector(shift_left(unsigned(m_reg_100),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    mid_fu_188_p2 <= std_logic_vector(unsigned(add_ln101_fu_182_p2) + unsigned(ap_const_lv32_FFFFFFFF));
    or_ln12_1_fu_243_p2 <= (tmp7_fu_233_p4 or ap_const_lv128_lc_3);
    tmp2_fu_199_p4 <= ((global_time_1 & mid_fu_188_p2) & ap_const_lv64_0);
    tmp7_fu_233_p4 <= ((add_ln13_fu_216_p2 & to_fu_222_p2) & ap_const_lv64_0);
    tmp_1_fu_166_p4 <= i_2_reg_112(31 downto 11);
    tmp_2_fu_262_p4 <= to_fu_222_p2(31 downto 11);
    tmp_fu_144_p4 <= m_reg_100(31 downto 11);
    to_fu_222_p2 <= std_logic_vector(unsigned(mid_fu_188_p2) + unsigned(m_reg_100));
    zext_ln9_1_fu_228_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln13_fu_216_p2),64));
    zext_ln9_fu_194_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(global_time_1),64));
end behav;