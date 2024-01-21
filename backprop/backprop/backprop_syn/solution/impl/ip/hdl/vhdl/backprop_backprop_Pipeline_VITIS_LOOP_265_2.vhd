-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity backprop_backprop_Pipeline_VITIS_LOOP_265_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    activations3_2_0 : IN STD_LOGIC_VECTOR (63 downto 0);
    activations3_1_0 : IN STD_LOGIC_VECTOR (63 downto 0);
    activations3_0_0 : IN STD_LOGIC_VECTOR (63 downto 0);
    activations1_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    activations1_ce0 : OUT STD_LOGIC;
    activations1_we0 : OUT STD_LOGIC;
    activations1_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    activations2_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    activations2_ce0 : OUT STD_LOGIC;
    activations2_we0 : OUT STD_LOGIC;
    activations2_d0 : OUT STD_LOGIC_VECTOR (63 downto 0);
    activations3_2_1_out : OUT STD_LOGIC_VECTOR (63 downto 0);
    activations3_2_1_out_ap_vld : OUT STD_LOGIC;
    activations3_1_1_out : OUT STD_LOGIC_VECTOR (63 downto 0);
    activations3_1_1_out_ap_vld : OUT STD_LOGIC;
    activations3_0_1_out : OUT STD_LOGIC_VECTOR (63 downto 0);
    activations3_0_1_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of backprop_backprop_Pipeline_VITIS_LOOP_265_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_3 : STD_LOGIC_VECTOR (6 downto 0) := "0000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln265_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal j_cast29_fu_181_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal j_fu_54 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln265_fu_166_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal activations3_0_1_fu_58 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln268_2_fu_255_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal activations3_1_1_fu_62 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln268_1_fu_247_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal activations3_2_1_fu_66 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln268_fu_239_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln269_fu_193_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln269_fu_197_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln269_1_fu_203_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln269_fu_209_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln268_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln269_fu_215_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln269_1_fu_223_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln269_2_fu_231_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component backprop_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component backprop_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    activations3_0_1_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    activations3_0_1_fu_58 <= activations3_0_0;
                elsif (((icmp_ln265_fu_160_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    activations3_0_1_fu_58 <= select_ln268_2_fu_255_p3;
                end if;
            end if; 
        end if;
    end process;

    activations3_1_1_fu_62_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    activations3_1_1_fu_62 <= activations3_1_0;
                elsif (((icmp_ln265_fu_160_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    activations3_1_1_fu_62 <= select_ln268_1_fu_247_p3;
                end if;
            end if; 
        end if;
    end process;

    activations3_2_1_fu_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    activations3_2_1_fu_66 <= activations3_2_0;
                elsif (((icmp_ln265_fu_160_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    activations3_2_1_fu_66 <= select_ln268_fu_239_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_54 <= ap_const_lv7_0;
                elsif (((icmp_ln265_fu_160_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_54 <= add_ln265_fu_166_p2;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    activations1_address0 <= j_cast29_fu_181_p1(6 - 1 downto 0);

    activations1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations1_ce0 <= ap_const_logic_1;
        else 
            activations1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    activations1_d0 <= ap_const_lv64_0;

    activations1_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln265_fu_160_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln265_fu_160_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations1_we0 <= ap_const_logic_1;
        else 
            activations1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    activations2_address0 <= j_cast29_fu_181_p1(6 - 1 downto 0);

    activations2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations2_ce0 <= ap_const_logic_1;
        else 
            activations2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    activations2_d0 <= ap_const_lv64_0;

    activations2_we0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln265_fu_160_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln265_fu_160_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations2_we0 <= ap_const_logic_1;
        else 
            activations2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    activations3_0_1_out <= activations3_0_1_fu_58;

    activations3_0_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln265_fu_160_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln265_fu_160_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations3_0_1_out_ap_vld <= ap_const_logic_1;
        else 
            activations3_0_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    activations3_1_1_out <= activations3_1_1_fu_62;

    activations3_1_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln265_fu_160_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln265_fu_160_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations3_1_1_out_ap_vld <= ap_const_logic_1;
        else 
            activations3_1_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    activations3_2_1_out <= activations3_2_1_fu_66;

    activations3_2_1_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln265_fu_160_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln265_fu_160_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            activations3_2_1_out_ap_vld <= ap_const_logic_1;
        else 
            activations3_2_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    add_ln265_fu_166_p2 <= std_logic_vector(unsigned(j_fu_54) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln265_fu_160_p2)
    begin
        if (((icmp_ln265_fu_160_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln265_fu_160_p2 <= "1" when (j_fu_54 = ap_const_lv7_40) else "0";
    icmp_ln268_fu_187_p2 <= "1" when (unsigned(j_fu_54) < unsigned(ap_const_lv7_3)) else "0";
    icmp_ln269_1_fu_203_p2 <= "1" when (trunc_ln269_fu_193_p1 = ap_const_lv2_1) else "0";
    icmp_ln269_fu_197_p2 <= "1" when (trunc_ln269_fu_193_p1 = ap_const_lv2_0) else "0";
    j_cast29_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_54),64));
    or_ln269_fu_209_p2 <= (icmp_ln269_fu_197_p2 or icmp_ln269_1_fu_203_p2);
    select_ln268_1_fu_247_p3 <= 
        select_ln269_1_fu_223_p3 when (icmp_ln268_fu_187_p2(0) = '1') else 
        activations3_1_1_fu_62;
    select_ln268_2_fu_255_p3 <= 
        select_ln269_2_fu_231_p3 when (icmp_ln268_fu_187_p2(0) = '1') else 
        activations3_0_1_fu_58;
    select_ln268_fu_239_p3 <= 
        select_ln269_fu_215_p3 when (icmp_ln268_fu_187_p2(0) = '1') else 
        activations3_2_1_fu_66;
    select_ln269_1_fu_223_p3 <= 
        ap_const_lv64_0 when (icmp_ln269_1_fu_203_p2(0) = '1') else 
        activations3_1_1_fu_62;
    select_ln269_2_fu_231_p3 <= 
        ap_const_lv64_0 when (icmp_ln269_fu_197_p2(0) = '1') else 
        activations3_0_1_fu_58;
    select_ln269_fu_215_p3 <= 
        activations3_2_1_fu_66 when (or_ln269_fu_209_p2(0) = '1') else 
        ap_const_lv64_0;
    trunc_ln269_fu_193_p1 <= j_fu_54(2 - 1 downto 0);
end behav;