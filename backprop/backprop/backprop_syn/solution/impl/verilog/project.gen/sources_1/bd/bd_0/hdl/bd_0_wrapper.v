//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Dec 20 22:01:31 2023
//Host        : open21 running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    biases1_address0,
    biases1_address1,
    biases1_ce0,
    biases1_ce1,
    biases1_d0,
    biases1_q0,
    biases1_q1,
    biases1_we0,
    biases2_address0,
    biases2_address1,
    biases2_ce0,
    biases2_ce1,
    biases2_d0,
    biases2_q0,
    biases2_q1,
    biases2_we0,
    biases3_address0,
    biases3_address1,
    biases3_ce0,
    biases3_ce1,
    biases3_d0,
    biases3_q0,
    biases3_q1,
    biases3_we0,
    training_data_address0,
    training_data_address1,
    training_data_ce0,
    training_data_ce1,
    training_data_q0,
    training_data_q1,
    training_targets_address0,
    training_targets_ce0,
    training_targets_q0,
    weights1_address0,
    weights1_address1,
    weights1_ce0,
    weights1_ce1,
    weights1_d0,
    weights1_q0,
    weights1_q1,
    weights1_we0,
    weights2_address0,
    weights2_address1,
    weights2_ce0,
    weights2_ce1,
    weights2_d0,
    weights2_q0,
    weights2_q1,
    weights2_we0,
    weights3_address0,
    weights3_address1,
    weights3_ce0,
    weights3_ce1,
    weights3_d0,
    weights3_q0,
    weights3_q1,
    weights3_we0);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [5:0]biases1_address0;
  output [5:0]biases1_address1;
  output biases1_ce0;
  output biases1_ce1;
  output [63:0]biases1_d0;
  input [63:0]biases1_q0;
  input [63:0]biases1_q1;
  output biases1_we0;
  output [5:0]biases2_address0;
  output [5:0]biases2_address1;
  output biases2_ce0;
  output biases2_ce1;
  output [63:0]biases2_d0;
  input [63:0]biases2_q0;
  input [63:0]biases2_q1;
  output biases2_we0;
  output [1:0]biases3_address0;
  output [1:0]biases3_address1;
  output biases3_ce0;
  output biases3_ce1;
  output [63:0]biases3_d0;
  input [63:0]biases3_q0;
  input [63:0]biases3_q1;
  output biases3_we0;
  output [11:0]training_data_address0;
  output [11:0]training_data_address1;
  output training_data_ce0;
  output training_data_ce1;
  input [63:0]training_data_q0;
  input [63:0]training_data_q1;
  output [8:0]training_targets_address0;
  output training_targets_ce0;
  input [63:0]training_targets_q0;
  output [9:0]weights1_address0;
  output [9:0]weights1_address1;
  output weights1_ce0;
  output weights1_ce1;
  output [63:0]weights1_d0;
  input [63:0]weights1_q0;
  input [63:0]weights1_q1;
  output weights1_we0;
  output [11:0]weights2_address0;
  output [11:0]weights2_address1;
  output weights2_ce0;
  output weights2_ce1;
  output [63:0]weights2_d0;
  input [63:0]weights2_q0;
  input [63:0]weights2_q1;
  output weights2_we0;
  output [7:0]weights3_address0;
  output [7:0]weights3_address1;
  output weights3_ce0;
  output weights3_ce1;
  output [63:0]weights3_d0;
  input [63:0]weights3_q0;
  input [63:0]weights3_q1;
  output weights3_we0;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [5:0]biases1_address0;
  wire [5:0]biases1_address1;
  wire biases1_ce0;
  wire biases1_ce1;
  wire [63:0]biases1_d0;
  wire [63:0]biases1_q0;
  wire [63:0]biases1_q1;
  wire biases1_we0;
  wire [5:0]biases2_address0;
  wire [5:0]biases2_address1;
  wire biases2_ce0;
  wire biases2_ce1;
  wire [63:0]biases2_d0;
  wire [63:0]biases2_q0;
  wire [63:0]biases2_q1;
  wire biases2_we0;
  wire [1:0]biases3_address0;
  wire [1:0]biases3_address1;
  wire biases3_ce0;
  wire biases3_ce1;
  wire [63:0]biases3_d0;
  wire [63:0]biases3_q0;
  wire [63:0]biases3_q1;
  wire biases3_we0;
  wire [11:0]training_data_address0;
  wire [11:0]training_data_address1;
  wire training_data_ce0;
  wire training_data_ce1;
  wire [63:0]training_data_q0;
  wire [63:0]training_data_q1;
  wire [8:0]training_targets_address0;
  wire training_targets_ce0;
  wire [63:0]training_targets_q0;
  wire [9:0]weights1_address0;
  wire [9:0]weights1_address1;
  wire weights1_ce0;
  wire weights1_ce1;
  wire [63:0]weights1_d0;
  wire [63:0]weights1_q0;
  wire [63:0]weights1_q1;
  wire weights1_we0;
  wire [11:0]weights2_address0;
  wire [11:0]weights2_address1;
  wire weights2_ce0;
  wire weights2_ce1;
  wire [63:0]weights2_d0;
  wire [63:0]weights2_q0;
  wire [63:0]weights2_q1;
  wire weights2_we0;
  wire [7:0]weights3_address0;
  wire [7:0]weights3_address1;
  wire weights3_ce0;
  wire weights3_ce1;
  wire [63:0]weights3_d0;
  wire [63:0]weights3_q0;
  wire [63:0]weights3_q1;
  wire weights3_we0;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .biases1_address0(biases1_address0),
        .biases1_address1(biases1_address1),
        .biases1_ce0(biases1_ce0),
        .biases1_ce1(biases1_ce1),
        .biases1_d0(biases1_d0),
        .biases1_q0(biases1_q0),
        .biases1_q1(biases1_q1),
        .biases1_we0(biases1_we0),
        .biases2_address0(biases2_address0),
        .biases2_address1(biases2_address1),
        .biases2_ce0(biases2_ce0),
        .biases2_ce1(biases2_ce1),
        .biases2_d0(biases2_d0),
        .biases2_q0(biases2_q0),
        .biases2_q1(biases2_q1),
        .biases2_we0(biases2_we0),
        .biases3_address0(biases3_address0),
        .biases3_address1(biases3_address1),
        .biases3_ce0(biases3_ce0),
        .biases3_ce1(biases3_ce1),
        .biases3_d0(biases3_d0),
        .biases3_q0(biases3_q0),
        .biases3_q1(biases3_q1),
        .biases3_we0(biases3_we0),
        .training_data_address0(training_data_address0),
        .training_data_address1(training_data_address1),
        .training_data_ce0(training_data_ce0),
        .training_data_ce1(training_data_ce1),
        .training_data_q0(training_data_q0),
        .training_data_q1(training_data_q1),
        .training_targets_address0(training_targets_address0),
        .training_targets_ce0(training_targets_ce0),
        .training_targets_q0(training_targets_q0),
        .weights1_address0(weights1_address0),
        .weights1_address1(weights1_address1),
        .weights1_ce0(weights1_ce0),
        .weights1_ce1(weights1_ce1),
        .weights1_d0(weights1_d0),
        .weights1_q0(weights1_q0),
        .weights1_q1(weights1_q1),
        .weights1_we0(weights1_we0),
        .weights2_address0(weights2_address0),
        .weights2_address1(weights2_address1),
        .weights2_ce0(weights2_ce0),
        .weights2_ce1(weights2_ce1),
        .weights2_d0(weights2_d0),
        .weights2_q0(weights2_q0),
        .weights2_q1(weights2_q1),
        .weights2_we0(weights2_we0),
        .weights3_address0(weights3_address0),
        .weights3_address1(weights3_address1),
        .weights3_ce0(weights3_ce0),
        .weights3_ce1(weights3_ce1),
        .weights3_d0(weights3_d0),
        .weights3_q0(weights3_q0),
        .weights3_q1(weights3_q1),
        .weights3_we0(weights3_we0));
endmodule
