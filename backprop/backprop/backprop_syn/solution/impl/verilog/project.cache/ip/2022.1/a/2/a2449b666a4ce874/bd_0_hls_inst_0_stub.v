// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed Dec 20 22:05:31 2023
// Host        : open21 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7v585tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "backprop,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(weights1_ce0, weights1_we0, weights1_ce1, 
  weights2_ce0, weights2_we0, weights2_ce1, weights3_ce0, weights3_we0, weights3_ce1, 
  biases1_ce0, biases1_we0, biases1_ce1, biases2_ce0, biases2_we0, biases2_ce1, biases3_ce0, 
  biases3_we0, biases3_ce1, training_data_ce0, training_data_ce1, training_targets_ce0, 
  ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, weights1_address0, weights1_d0, 
  weights1_q0, weights1_address1, weights1_q1, weights2_address0, weights2_d0, weights2_q0, 
  weights2_address1, weights2_q1, weights3_address0, weights3_d0, weights3_q0, 
  weights3_address1, weights3_q1, biases1_address0, biases1_d0, biases1_q0, biases1_address1, 
  biases1_q1, biases2_address0, biases2_d0, biases2_q0, biases2_address1, biases2_q1, 
  biases3_address0, biases3_d0, biases3_q0, biases3_address1, biases3_q1, 
  training_data_address0, training_data_q0, training_data_address1, training_data_q1, 
  training_targets_address0, training_targets_q0)
/* synthesis syn_black_box black_box_pad_pin="weights1_ce0,weights1_we0,weights1_ce1,weights2_ce0,weights2_we0,weights2_ce1,weights3_ce0,weights3_we0,weights3_ce1,biases1_ce0,biases1_we0,biases1_ce1,biases2_ce0,biases2_we0,biases2_ce1,biases3_ce0,biases3_we0,biases3_ce1,training_data_ce0,training_data_ce1,training_targets_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0[9:0],weights1_d0[63:0],weights1_q0[63:0],weights1_address1[9:0],weights1_q1[63:0],weights2_address0[11:0],weights2_d0[63:0],weights2_q0[63:0],weights2_address1[11:0],weights2_q1[63:0],weights3_address0[7:0],weights3_d0[63:0],weights3_q0[63:0],weights3_address1[7:0],weights3_q1[63:0],biases1_address0[5:0],biases1_d0[63:0],biases1_q0[63:0],biases1_address1[5:0],biases1_q1[63:0],biases2_address0[5:0],biases2_d0[63:0],biases2_q0[63:0],biases2_address1[5:0],biases2_q1[63:0],biases3_address0[1:0],biases3_d0[63:0],biases3_q0[63:0],biases3_address1[1:0],biases3_q1[63:0],training_data_address0[11:0],training_data_q0[63:0],training_data_address1[11:0],training_data_q1[63:0],training_targets_address0[8:0],training_targets_q0[63:0]" */;
  output weights1_ce0;
  output weights1_we0;
  output weights1_ce1;
  output weights2_ce0;
  output weights2_we0;
  output weights2_ce1;
  output weights3_ce0;
  output weights3_we0;
  output weights3_ce1;
  output biases1_ce0;
  output biases1_we0;
  output biases1_ce1;
  output biases2_ce0;
  output biases2_we0;
  output biases2_ce1;
  output biases3_ce0;
  output biases3_we0;
  output biases3_ce1;
  output training_data_ce0;
  output training_data_ce1;
  output training_targets_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [9:0]weights1_address0;
  output [63:0]weights1_d0;
  input [63:0]weights1_q0;
  output [9:0]weights1_address1;
  input [63:0]weights1_q1;
  output [11:0]weights2_address0;
  output [63:0]weights2_d0;
  input [63:0]weights2_q0;
  output [11:0]weights2_address1;
  input [63:0]weights2_q1;
  output [7:0]weights3_address0;
  output [63:0]weights3_d0;
  input [63:0]weights3_q0;
  output [7:0]weights3_address1;
  input [63:0]weights3_q1;
  output [5:0]biases1_address0;
  output [63:0]biases1_d0;
  input [63:0]biases1_q0;
  output [5:0]biases1_address1;
  input [63:0]biases1_q1;
  output [5:0]biases2_address0;
  output [63:0]biases2_d0;
  input [63:0]biases2_q0;
  output [5:0]biases2_address1;
  input [63:0]biases2_q1;
  output [1:0]biases3_address0;
  output [63:0]biases3_d0;
  input [63:0]biases3_q0;
  output [1:0]biases3_address1;
  input [63:0]biases3_q1;
  output [11:0]training_data_address0;
  input [63:0]training_data_q0;
  output [11:0]training_data_address1;
  input [63:0]training_data_q1;
  output [8:0]training_targets_address0;
  input [63:0]training_targets_q0;
endmodule
