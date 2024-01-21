// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module backprop_backprop_Pipeline_VITIS_LOOP_11_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        net_outputs_2_09,
        net_outputs_1_08,
        net_outputs_0_07,
        activations3_0_8_reload,
        activations3_1_8_reload,
        activations3_2_8_reload,
        sum_reload,
        net_outputs_2_1_out,
        net_outputs_2_1_out_ap_vld,
        net_outputs_1_1_out,
        net_outputs_1_1_out_ap_vld,
        net_outputs_0_1_out,
        net_outputs_0_1_out_ap_vld,
        grp_fu_6784_p_din0,
        grp_fu_6784_p_din1,
        grp_fu_6784_p_dout0,
        grp_fu_6784_p_ce,
        grp_fu_6788_p_din0,
        grp_fu_6788_p_din1,
        grp_fu_6788_p_dout0,
        grp_fu_6788_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] net_outputs_2_09;
input  [63:0] net_outputs_1_08;
input  [63:0] net_outputs_0_07;
input  [63:0] activations3_0_8_reload;
input  [63:0] activations3_1_8_reload;
input  [63:0] activations3_2_8_reload;
input  [63:0] sum_reload;
output  [63:0] net_outputs_2_1_out;
output   net_outputs_2_1_out_ap_vld;
output  [63:0] net_outputs_1_1_out;
output   net_outputs_1_1_out_ap_vld;
output  [63:0] net_outputs_0_1_out;
output   net_outputs_0_1_out_ap_vld;
output  [63:0] grp_fu_6784_p_din0;
output  [63:0] grp_fu_6784_p_din1;
input  [63:0] grp_fu_6784_p_dout0;
output   grp_fu_6784_p_ce;
output  [63:0] grp_fu_6788_p_din0;
output  [63:0] grp_fu_6788_p_din1;
input  [63:0] grp_fu_6788_p_dout0;
output   grp_fu_6788_p_ce;

reg ap_idle;
reg net_outputs_2_1_out_ap_vld;
reg net_outputs_1_1_out_ap_vld;
reg net_outputs_0_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_state18_pp0_stage0_iter17;
wire    ap_block_state19_pp0_stage0_iter18;
wire    ap_block_state20_pp0_stage0_iter19;
wire    ap_block_state21_pp0_stage0_iter20;
wire    ap_block_state22_pp0_stage0_iter21;
wire    ap_block_state23_pp0_stage0_iter22;
wire    ap_block_state24_pp0_stage0_iter23;
wire    ap_block_state25_pp0_stage0_iter24;
wire    ap_block_state26_pp0_stage0_iter25;
wire    ap_block_state27_pp0_stage0_iter26;
wire    ap_block_state28_pp0_stage0_iter27;
wire    ap_block_state29_pp0_stage0_iter28;
wire    ap_block_state30_pp0_stage0_iter29;
wire    ap_block_state31_pp0_stage0_iter30;
wire    ap_block_state32_pp0_stage0_iter31;
wire    ap_block_state33_pp0_stage0_iter32;
wire    ap_block_state34_pp0_stage0_iter33;
wire    ap_block_state35_pp0_stage0_iter34;
wire    ap_block_state36_pp0_stage0_iter35;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_fu_165_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_17_reg_268;
reg   [1:0] i_17_reg_268_pp0_iter1_reg;
reg   [1:0] i_17_reg_268_pp0_iter2_reg;
reg   [1:0] i_17_reg_268_pp0_iter3_reg;
reg   [1:0] i_17_reg_268_pp0_iter4_reg;
reg   [1:0] i_17_reg_268_pp0_iter5_reg;
reg   [1:0] i_17_reg_268_pp0_iter6_reg;
reg   [1:0] i_17_reg_268_pp0_iter7_reg;
reg   [1:0] i_17_reg_268_pp0_iter8_reg;
reg   [1:0] i_17_reg_268_pp0_iter9_reg;
reg   [1:0] i_17_reg_268_pp0_iter10_reg;
reg   [1:0] i_17_reg_268_pp0_iter11_reg;
reg   [1:0] i_17_reg_268_pp0_iter12_reg;
reg   [1:0] i_17_reg_268_pp0_iter13_reg;
reg   [1:0] i_17_reg_268_pp0_iter14_reg;
reg   [1:0] i_17_reg_268_pp0_iter15_reg;
reg   [1:0] i_17_reg_268_pp0_iter16_reg;
reg   [1:0] i_17_reg_268_pp0_iter17_reg;
reg   [1:0] i_17_reg_268_pp0_iter18_reg;
reg   [1:0] i_17_reg_268_pp0_iter19_reg;
reg   [1:0] i_17_reg_268_pp0_iter20_reg;
reg   [1:0] i_17_reg_268_pp0_iter21_reg;
reg   [1:0] i_17_reg_268_pp0_iter22_reg;
reg   [1:0] i_17_reg_268_pp0_iter23_reg;
reg   [1:0] i_17_reg_268_pp0_iter24_reg;
reg   [1:0] i_17_reg_268_pp0_iter25_reg;
reg   [1:0] i_17_reg_268_pp0_iter26_reg;
reg   [1:0] i_17_reg_268_pp0_iter27_reg;
reg   [1:0] i_17_reg_268_pp0_iter28_reg;
reg   [1:0] i_17_reg_268_pp0_iter29_reg;
reg   [1:0] i_17_reg_268_pp0_iter30_reg;
reg   [1:0] i_17_reg_268_pp0_iter31_reg;
reg   [1:0] i_17_reg_268_pp0_iter32_reg;
reg   [1:0] i_17_reg_268_pp0_iter33_reg;
reg   [1:0] i_17_reg_268_pp0_iter34_reg;
reg   [0:0] icmp_ln11_reg_272;
reg   [0:0] icmp_ln11_reg_272_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter2_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter3_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter4_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter5_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter6_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter7_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter8_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter9_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter10_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter11_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter12_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter13_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter14_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter15_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter16_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter17_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter18_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter19_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter20_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter21_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter22_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter23_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter24_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter25_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter26_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter27_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter28_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter29_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter30_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter31_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter32_reg;
reg   [0:0] icmp_ln11_reg_272_pp0_iter33_reg;
wire   [63:0] xor_ln12_fu_193_p2;
reg   [63:0] xor_ln12_reg_276;
wire   [63:0] bitcast_ln12_1_fu_204_p1;
reg   [63:0] tmp_4_reg_286;
reg   [1:0] i_fu_54;
wire   [1:0] add_ln11_fu_171_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_17;
wire    ap_block_pp0_stage0;
reg   [63:0] net_outputs_1_fu_58;
reg   [63:0] net_outputs_1_1_fu_62;
reg   [63:0] net_outputs_1_2_fu_66;
wire    ap_block_pp0_stage0_01001;
wire   [63:0] tmp_8_fu_177_p5;
wire   [63:0] bitcast_ln12_fu_189_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_665;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_done_reg = 1'b0;
end

backprop_mux_32_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
mux_32_64_1_1_U231(
    .din0(activations3_0_8_reload),
    .din1(activations3_1_8_reload),
    .din2(activations3_2_8_reload),
    .din3(ap_sig_allocacmp_i_17),
    .dout(tmp_8_fu_177_p5)
);

backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter34_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln11_fu_165_p2 == 1'd0))) begin
            i_fu_54 <= add_ln11_fu_171_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_54 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            net_outputs_1_1_fu_62 <= net_outputs_1_08;
        end else if (((i_17_reg_268_pp0_iter34_reg == 2'd1) & (ap_enable_reg_pp0_iter35 == 1'b1))) begin
            net_outputs_1_1_fu_62 <= grp_fu_6784_p_dout0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            net_outputs_1_2_fu_66 <= net_outputs_2_09;
        end else if ((1'b1 == ap_condition_665)) begin
            net_outputs_1_2_fu_66 <= grp_fu_6784_p_dout0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            net_outputs_1_fu_58 <= net_outputs_0_07;
        end else if (((i_17_reg_268_pp0_iter34_reg == 2'd0) & (ap_enable_reg_pp0_iter35 == 1'b1))) begin
            net_outputs_1_fu_58 <= grp_fu_6784_p_dout0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_17_reg_268_pp0_iter10_reg <= i_17_reg_268_pp0_iter9_reg;
        i_17_reg_268_pp0_iter11_reg <= i_17_reg_268_pp0_iter10_reg;
        i_17_reg_268_pp0_iter12_reg <= i_17_reg_268_pp0_iter11_reg;
        i_17_reg_268_pp0_iter13_reg <= i_17_reg_268_pp0_iter12_reg;
        i_17_reg_268_pp0_iter14_reg <= i_17_reg_268_pp0_iter13_reg;
        i_17_reg_268_pp0_iter15_reg <= i_17_reg_268_pp0_iter14_reg;
        i_17_reg_268_pp0_iter16_reg <= i_17_reg_268_pp0_iter15_reg;
        i_17_reg_268_pp0_iter17_reg <= i_17_reg_268_pp0_iter16_reg;
        i_17_reg_268_pp0_iter18_reg <= i_17_reg_268_pp0_iter17_reg;
        i_17_reg_268_pp0_iter19_reg <= i_17_reg_268_pp0_iter18_reg;
        i_17_reg_268_pp0_iter20_reg <= i_17_reg_268_pp0_iter19_reg;
        i_17_reg_268_pp0_iter21_reg <= i_17_reg_268_pp0_iter20_reg;
        i_17_reg_268_pp0_iter22_reg <= i_17_reg_268_pp0_iter21_reg;
        i_17_reg_268_pp0_iter23_reg <= i_17_reg_268_pp0_iter22_reg;
        i_17_reg_268_pp0_iter24_reg <= i_17_reg_268_pp0_iter23_reg;
        i_17_reg_268_pp0_iter25_reg <= i_17_reg_268_pp0_iter24_reg;
        i_17_reg_268_pp0_iter26_reg <= i_17_reg_268_pp0_iter25_reg;
        i_17_reg_268_pp0_iter27_reg <= i_17_reg_268_pp0_iter26_reg;
        i_17_reg_268_pp0_iter28_reg <= i_17_reg_268_pp0_iter27_reg;
        i_17_reg_268_pp0_iter29_reg <= i_17_reg_268_pp0_iter28_reg;
        i_17_reg_268_pp0_iter2_reg <= i_17_reg_268_pp0_iter1_reg;
        i_17_reg_268_pp0_iter30_reg <= i_17_reg_268_pp0_iter29_reg;
        i_17_reg_268_pp0_iter31_reg <= i_17_reg_268_pp0_iter30_reg;
        i_17_reg_268_pp0_iter32_reg <= i_17_reg_268_pp0_iter31_reg;
        i_17_reg_268_pp0_iter33_reg <= i_17_reg_268_pp0_iter32_reg;
        i_17_reg_268_pp0_iter34_reg <= i_17_reg_268_pp0_iter33_reg;
        i_17_reg_268_pp0_iter3_reg <= i_17_reg_268_pp0_iter2_reg;
        i_17_reg_268_pp0_iter4_reg <= i_17_reg_268_pp0_iter3_reg;
        i_17_reg_268_pp0_iter5_reg <= i_17_reg_268_pp0_iter4_reg;
        i_17_reg_268_pp0_iter6_reg <= i_17_reg_268_pp0_iter5_reg;
        i_17_reg_268_pp0_iter7_reg <= i_17_reg_268_pp0_iter6_reg;
        i_17_reg_268_pp0_iter8_reg <= i_17_reg_268_pp0_iter7_reg;
        i_17_reg_268_pp0_iter9_reg <= i_17_reg_268_pp0_iter8_reg;
        icmp_ln11_reg_272_pp0_iter10_reg <= icmp_ln11_reg_272_pp0_iter9_reg;
        icmp_ln11_reg_272_pp0_iter11_reg <= icmp_ln11_reg_272_pp0_iter10_reg;
        icmp_ln11_reg_272_pp0_iter12_reg <= icmp_ln11_reg_272_pp0_iter11_reg;
        icmp_ln11_reg_272_pp0_iter13_reg <= icmp_ln11_reg_272_pp0_iter12_reg;
        icmp_ln11_reg_272_pp0_iter14_reg <= icmp_ln11_reg_272_pp0_iter13_reg;
        icmp_ln11_reg_272_pp0_iter15_reg <= icmp_ln11_reg_272_pp0_iter14_reg;
        icmp_ln11_reg_272_pp0_iter16_reg <= icmp_ln11_reg_272_pp0_iter15_reg;
        icmp_ln11_reg_272_pp0_iter17_reg <= icmp_ln11_reg_272_pp0_iter16_reg;
        icmp_ln11_reg_272_pp0_iter18_reg <= icmp_ln11_reg_272_pp0_iter17_reg;
        icmp_ln11_reg_272_pp0_iter19_reg <= icmp_ln11_reg_272_pp0_iter18_reg;
        icmp_ln11_reg_272_pp0_iter20_reg <= icmp_ln11_reg_272_pp0_iter19_reg;
        icmp_ln11_reg_272_pp0_iter21_reg <= icmp_ln11_reg_272_pp0_iter20_reg;
        icmp_ln11_reg_272_pp0_iter22_reg <= icmp_ln11_reg_272_pp0_iter21_reg;
        icmp_ln11_reg_272_pp0_iter23_reg <= icmp_ln11_reg_272_pp0_iter22_reg;
        icmp_ln11_reg_272_pp0_iter24_reg <= icmp_ln11_reg_272_pp0_iter23_reg;
        icmp_ln11_reg_272_pp0_iter25_reg <= icmp_ln11_reg_272_pp0_iter24_reg;
        icmp_ln11_reg_272_pp0_iter26_reg <= icmp_ln11_reg_272_pp0_iter25_reg;
        icmp_ln11_reg_272_pp0_iter27_reg <= icmp_ln11_reg_272_pp0_iter26_reg;
        icmp_ln11_reg_272_pp0_iter28_reg <= icmp_ln11_reg_272_pp0_iter27_reg;
        icmp_ln11_reg_272_pp0_iter29_reg <= icmp_ln11_reg_272_pp0_iter28_reg;
        icmp_ln11_reg_272_pp0_iter2_reg <= icmp_ln11_reg_272_pp0_iter1_reg;
        icmp_ln11_reg_272_pp0_iter30_reg <= icmp_ln11_reg_272_pp0_iter29_reg;
        icmp_ln11_reg_272_pp0_iter31_reg <= icmp_ln11_reg_272_pp0_iter30_reg;
        icmp_ln11_reg_272_pp0_iter32_reg <= icmp_ln11_reg_272_pp0_iter31_reg;
        icmp_ln11_reg_272_pp0_iter33_reg <= icmp_ln11_reg_272_pp0_iter32_reg;
        icmp_ln11_reg_272_pp0_iter3_reg <= icmp_ln11_reg_272_pp0_iter2_reg;
        icmp_ln11_reg_272_pp0_iter4_reg <= icmp_ln11_reg_272_pp0_iter3_reg;
        icmp_ln11_reg_272_pp0_iter5_reg <= icmp_ln11_reg_272_pp0_iter4_reg;
        icmp_ln11_reg_272_pp0_iter6_reg <= icmp_ln11_reg_272_pp0_iter5_reg;
        icmp_ln11_reg_272_pp0_iter7_reg <= icmp_ln11_reg_272_pp0_iter6_reg;
        icmp_ln11_reg_272_pp0_iter8_reg <= icmp_ln11_reg_272_pp0_iter7_reg;
        icmp_ln11_reg_272_pp0_iter9_reg <= icmp_ln11_reg_272_pp0_iter8_reg;
        tmp_4_reg_286 <= grp_fu_6788_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_17_reg_268 <= ap_sig_allocacmp_i_17;
        i_17_reg_268_pp0_iter1_reg <= i_17_reg_268;
        icmp_ln11_reg_272 <= icmp_ln11_fu_165_p2;
        icmp_ln11_reg_272_pp0_iter1_reg <= icmp_ln11_reg_272;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_fu_165_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        xor_ln12_reg_276 <= xor_ln12_fu_193_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_fu_165_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter34_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_17 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_17 = i_fu_54;
    end
end

always @ (*) begin
    if (((icmp_ln11_reg_272_pp0_iter33_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        net_outputs_0_1_out_ap_vld = 1'b1;
    end else begin
        net_outputs_0_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln11_reg_272_pp0_iter33_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        net_outputs_1_1_out_ap_vld = 1'b1;
    end else begin
        net_outputs_1_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln11_reg_272_pp0_iter33_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        net_outputs_2_1_out_ap_vld = 1'b1;
    end else begin
        net_outputs_2_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln11_fu_171_p2 = (ap_sig_allocacmp_i_17 + 2'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);

assign ap_block_state26_pp0_stage0_iter25 = ~(1'b1 == 1'b1);

assign ap_block_state27_pp0_stage0_iter26 = ~(1'b1 == 1'b1);

assign ap_block_state28_pp0_stage0_iter27 = ~(1'b1 == 1'b1);

assign ap_block_state29_pp0_stage0_iter28 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state30_pp0_stage0_iter29 = ~(1'b1 == 1'b1);

assign ap_block_state31_pp0_stage0_iter30 = ~(1'b1 == 1'b1);

assign ap_block_state32_pp0_stage0_iter31 = ~(1'b1 == 1'b1);

assign ap_block_state33_pp0_stage0_iter32 = ~(1'b1 == 1'b1);

assign ap_block_state34_pp0_stage0_iter33 = ~(1'b1 == 1'b1);

assign ap_block_state35_pp0_stage0_iter34 = ~(1'b1 == 1'b1);

assign ap_block_state36_pp0_stage0_iter35 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_665 = (~(i_17_reg_268_pp0_iter34_reg == 2'd1) & ~(i_17_reg_268_pp0_iter34_reg == 2'd0) & (ap_enable_reg_pp0_iter35 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bitcast_ln12_1_fu_204_p1 = xor_ln12_reg_276;

assign bitcast_ln12_fu_189_p1 = tmp_8_fu_177_p5;

assign grp_fu_6784_p_ce = 1'b1;

assign grp_fu_6784_p_din0 = tmp_4_reg_286;

assign grp_fu_6784_p_din1 = sum_reload;

assign grp_fu_6788_p_ce = 1'b1;

assign grp_fu_6788_p_din0 = 64'd0;

assign grp_fu_6788_p_din1 = bitcast_ln12_1_fu_204_p1;

assign icmp_ln11_fu_165_p2 = ((ap_sig_allocacmp_i_17 == 2'd3) ? 1'b1 : 1'b0);

assign net_outputs_0_1_out = net_outputs_1_fu_58;

assign net_outputs_1_1_out = net_outputs_1_1_fu_62;

assign net_outputs_2_1_out = net_outputs_1_2_fu_66;

assign xor_ln12_fu_193_p2 = (bitcast_ln12_fu_189_p1 ^ 64'd9223372036854775808);

endmodule //backprop_backprop_Pipeline_VITIS_LOOP_11_2