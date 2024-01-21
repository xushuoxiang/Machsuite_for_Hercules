-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Wed Dec 20 22:06:00 2023
-- Host        : open21 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/home/xushuoxiang/Machsuite_V0.1/backprop/backprop/backprop_syn/solution/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7v585tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    weights1_ce0 : out STD_LOGIC;
    weights1_we0 : out STD_LOGIC;
    weights1_ce1 : out STD_LOGIC;
    weights2_ce0 : out STD_LOGIC;
    weights2_we0 : out STD_LOGIC;
    weights2_ce1 : out STD_LOGIC;
    weights3_ce0 : out STD_LOGIC;
    weights3_we0 : out STD_LOGIC;
    weights3_ce1 : out STD_LOGIC;
    biases1_ce0 : out STD_LOGIC;
    biases1_we0 : out STD_LOGIC;
    biases1_ce1 : out STD_LOGIC;
    biases2_ce0 : out STD_LOGIC;
    biases2_we0 : out STD_LOGIC;
    biases2_ce1 : out STD_LOGIC;
    biases3_ce0 : out STD_LOGIC;
    biases3_we0 : out STD_LOGIC;
    biases3_ce1 : out STD_LOGIC;
    training_data_ce0 : out STD_LOGIC;
    training_data_ce1 : out STD_LOGIC;
    training_targets_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    weights1_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    weights1_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    weights1_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    weights1_address1 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    weights1_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    weights2_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    weights2_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    weights2_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    weights2_address1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    weights2_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    weights3_address0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    weights3_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    weights3_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    weights3_address1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    weights3_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    biases1_address0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    biases1_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    biases1_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    biases1_address1 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    biases1_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    biases2_address0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    biases2_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    biases2_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    biases2_address1 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    biases2_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    biases3_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    biases3_d0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    biases3_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    biases3_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    biases3_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    training_data_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    training_data_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    training_data_address1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    training_data_q1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    training_targets_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    training_targets_q0 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "weights1_ce0,weights1_we0,weights1_ce1,weights2_ce0,weights2_we0,weights2_ce1,weights3_ce0,weights3_we0,weights3_ce1,biases1_ce0,biases1_we0,biases1_ce1,biases2_ce0,biases2_we0,biases2_ce1,biases3_ce0,biases3_we0,biases3_ce1,training_data_ce0,training_data_ce1,training_targets_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0[9:0],weights1_d0[63:0],weights1_q0[63:0],weights1_address1[9:0],weights1_q1[63:0],weights2_address0[11:0],weights2_d0[63:0],weights2_q0[63:0],weights2_address1[11:0],weights2_q1[63:0],weights3_address0[7:0],weights3_d0[63:0],weights3_q0[63:0],weights3_address1[7:0],weights3_q1[63:0],biases1_address0[5:0],biases1_d0[63:0],biases1_q0[63:0],biases1_address1[5:0],biases1_q1[63:0],biases2_address0[5:0],biases2_d0[63:0],biases2_q0[63:0],biases2_address1[5:0],biases2_q1[63:0],biases3_address0[1:0],biases3_d0[63:0],biases3_q0[63:0],biases3_address1[1:0],biases3_q1[63:0],training_data_address0[11:0],training_data_q0[63:0],training_data_address1[11:0],training_data_q1[63:0],training_targets_address0[8:0],training_targets_q0[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "backprop,Vivado 2022.1";
begin
end;
