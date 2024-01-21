// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ms_mergesort_merge_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_we0,
        a_d0,
        a_q0,
        checkdata_address0,
        checkdata_ce0,
        checkdata_we0,
        checkdata_d0,
        start_r,
        m,
        stop,
        global_time_1_i,
        global_time_1_o,
        global_time_1_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_pp0_stage0 = 7'd2;
parameter    ap_ST_fsm_state4 = 7'd4;
parameter    ap_ST_fsm_pp1_stage0 = 7'd8;
parameter    ap_ST_fsm_state7 = 7'd16;
parameter    ap_ST_fsm_pp2_stage0 = 7'd32;
parameter    ap_ST_fsm_state10 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] a_address0;
output   a_ce0;
output   a_we0;
output  [31:0] a_d0;
input  [31:0] a_q0;
output  [20:0] checkdata_address0;
output   checkdata_ce0;
output  [15:0] checkdata_we0;
output  [127:0] checkdata_d0;
input  [31:0] start_r;
input  [31:0] m;
input  [31:0] stop;
input  [31:0] global_time_1_i;
output  [31:0] global_time_1_o;
output   global_time_1_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[10:0] a_address0;
reg a_ce0;
reg a_we0;
reg[31:0] a_d0;
reg[20:0] checkdata_address0;
reg checkdata_ce0;
reg[15:0] checkdata_we0;
reg[127:0] checkdata_d0;
reg[31:0] global_time_1_o;
reg global_time_1_o_ap_vld;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg  signed [31:0] i_3_reg_188;
reg   [63:0] indvars_iv41_reg_198;
reg   [63:0] j_1_reg_207;
reg   [63:0] indvars_iv36_reg_216;
reg   [63:0] k_reg_225;
reg  signed [31:0] grp_load_fu_235_p1;
reg  signed [31:0] reg_249;
wire   [0:0] icmp_ln23_fu_253_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln32_fu_371_p2;
reg   [0:0] icmp_ln23_reg_620;
wire  signed [63:0] sext_ln23_fu_259_p1;
wire   [32:0] add_ln23_fu_267_p2;
reg   [32:0] add_ln23_reg_629;
wire   [0:0] icmp_ln23_1_fu_277_p2;
reg   [0:0] icmp_ln23_1_reg_634;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] trunc_ln24_fu_282_p1;
reg   [10:0] trunc_ln24_reg_638;
wire   [20:0] trunc_ln9_fu_291_p1;
reg   [20:0] trunc_ln9_reg_648;
wire   [31:0] trunc_ln12_fu_295_p1;
reg   [31:0] trunc_ln12_reg_653;
wire   [63:0] add_ln13_3_fu_299_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [31:0] add_ln23_1_fu_305_p2;
reg   [31:0] add_ln23_1_reg_663;
wire   [31:0] add9_fu_366_p2;
reg   [31:0] add9_reg_668;
reg   [0:0] icmp_ln32_reg_673;
wire  signed [63:0] sext_ln32_fu_376_p1;
wire  signed [63:0] sext_ln32_1_fu_380_p1;
wire  signed [63:0] sext_ln32_2_fu_384_p1;
reg  signed [63:0] sext_ln32_2_reg_687;
wire   [0:0] icmp_ln32_1_fu_388_p2;
reg   [0:0] icmp_ln32_1_reg_692;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state5_pp1_stage0_iter0;
wire    ap_block_state6_pp1_stage0_iter1;
wire    ap_block_pp1_stage0_11001;
wire   [31:0] sub_ln10_fu_406_p2;
reg   [31:0] sub_ln10_reg_701;
wire   [20:0] trunc_ln9_1_fu_411_p1;
reg   [20:0] trunc_ln9_1_reg_707;
wire   [31:0] trunc_ln12_1_fu_415_p1;
reg   [31:0] trunc_ln12_1_reg_712;
wire   [63:0] add_ln13_5_fu_419_p2;
reg    ap_enable_reg_pp1_iter0;
wire   [63:0] add_ln32_1_fu_425_p2;
wire  signed [63:0] sext_ln49_fu_472_p1;
wire    ap_CS_fsm_state7;
wire  signed [63:0] sext_ln49_1_fu_475_p1;
reg  signed [63:0] sext_ln49_1_reg_746;
wire   [0:0] icmp_ln49_fu_487_p2;
reg   [0:0] icmp_ln49_reg_751;
wire    ap_CS_fsm_pp2_stage0;
wire    ap_block_state8_pp2_stage0_iter0;
wire    ap_block_state9_pp2_stage0_iter1;
wire    ap_block_pp2_stage0_11001;
reg   [31:0] i_load_reg_755;
reg   [31:0] j_2_load_reg_760;
wire   [63:0] add_ln49_1_fu_508_p2;
reg   [63:0] add_ln49_1_reg_775;
reg    ap_enable_reg_pp2_iter0;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state5;
reg    ap_enable_reg_pp1_iter1;
wire    ap_block_pp2_stage0_subdone;
reg    ap_condition_pp2_exit_iter0_state8;
reg    ap_enable_reg_pp2_iter1;
reg   [10:0] temp_address0;
reg    temp_ce0;
reg    temp_we0;
wire   [31:0] temp_q0;
wire   [10:0] temp_address1;
reg    temp_ce1;
wire   [31:0] temp_q1;
reg  signed [31:0] ap_phi_mux_i_3_phi_fu_191_p4;
wire    ap_block_pp0_stage0;
reg   [63:0] ap_phi_mux_k_phi_fu_228_p4;
wire    ap_block_pp2_stage0;
wire   [63:0] zext_ln24_fu_286_p1;
wire   [63:0] zext_ln23_fu_311_p1;
wire   [63:0] zext_ln9_fu_316_p1;
wire   [63:0] zext_ln33_fu_401_p1;
wire    ap_block_pp1_stage0;
wire   [63:0] zext_ln33_1_fu_431_p1;
wire   [63:0] zext_ln9_2_fu_435_p1;
wire   [63:0] zext_ln50_fu_498_p1;
wire   [63:0] zext_ln51_fu_503_p1;
wire   [63:0] zext_ln53_fu_537_p1;
wire   [63:0] zext_ln9_3_fu_520_p1;
wire   [0:0] icmp_ln52_fu_514_p2;
wire   [20:0] checkdata_addr_3_gep_fu_181_p3;
wire   [31:0] add_ln13_6_fu_526_p2;
wire   [31:0] add_ln13_4_fu_460_p2;
wire   [31:0] add_ln13_2_fu_349_p2;
reg   [31:0] ap_sig_allocacmp_global_time_1_load_2;
reg   [31:0] i_fu_60;
wire   [31:0] i_4_fu_559_p2;
reg   [31:0] ap_sig_allocacmp_i_load;
reg   [31:0] j_2_fu_64;
wire   [31:0] j_3_fu_586_p2;
reg   [31:0] ap_sig_allocacmp_j_2_load;
wire   [127:0] or_ln12_fu_332_p2;
wire   [127:0] or_ln12_2_fu_449_p2;
wire   [127:0] or_ln12_1_fu_546_p5;
wire   [127:0] or_ln12_s_fu_573_p5;
wire  signed [31:0] icmp_ln23_fu_253_p0;
wire  signed [31:0] icmp_ln23_fu_253_p1;
wire  signed [31:0] sext_ln23_1_fu_263_p0;
wire  signed [32:0] sext_ln23_1_fu_263_p1;
wire  signed [32:0] sext_ln23_2_fu_273_p1;
wire   [127:0] tmp4_fu_320_p6;
wire  signed [31:0] sub_ln13_fu_339_p1;
wire   [31:0] sub_ln13_fu_339_p2;
wire  signed [31:0] add_ln13_fu_344_p1;
wire   [31:0] add_ln13_fu_344_p2;
wire  signed [31:0] j_fu_361_p0;
wire  signed [31:0] j_fu_361_p2;
wire   [31:0] grp_fu_239_p2;
wire   [10:0] trunc_ln33_fu_397_p1;
wire   [31:0] trunc_ln32_fu_393_p1;
wire   [127:0] tmp8_fu_439_p5;
wire  signed [31:0] sub_ln13_1_fu_456_p1;
wire   [31:0] sub_ln13_1_fu_456_p2;
wire  signed [31:0] sext_ln49_fu_472_p0;
wire   [31:0] zext_ln9_3_fu_520_p0;
wire   [31:0] add_ln13_6_fu_526_p0;
wire   [10:0] trunc_ln53_fu_533_p1;
wire   [31:0] or_ln12_1_fu_546_p1;
wire   [31:0] trunc_ln10_1_fu_542_p1;
wire   [31:0] or_ln12_s_fu_573_p1;
wire   [31:0] trunc_ln10_fu_569_p1;
wire    ap_CS_fsm_state10;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;
reg    ap_idle_pp2;
wire    ap_enable_pp2;
reg    ap_condition_276;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp2_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp2_iter1 = 1'b0;
end

ms_mergesort_merge_1_temp #(
    .DataWidth( 32 ),
    .AddressRange( 2048 ),
    .AddressWidth( 11 ))
temp_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_address0),
    .ce0(temp_ce0),
    .we0(temp_we0),
    .d0(a_q0),
    .q0(temp_q0),
    .address1(temp_address1),
    .ce1(temp_ce1),
    .q1(temp_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state5))) begin
            ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state5);
        end else if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
        end else if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_enable_reg_pp1_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state8) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
            ap_enable_reg_pp2_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp2_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp2_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp2_stage0_subdone) & (1'b1 == ap_condition_pp2_exit_iter0_state8))) begin
            ap_enable_reg_pp2_iter1 <= (1'b1 ^ ap_condition_pp2_exit_iter0_state8);
        end else if ((1'b0 == ap_block_pp2_stage0_subdone)) begin
            ap_enable_reg_pp2_iter1 <= ap_enable_reg_pp2_iter0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_enable_reg_pp2_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_3_reg_188 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_1_reg_634 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_188 <= add_ln23_1_reg_663;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_fu_60 <= start_r;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        i_fu_60 <= i_4_fu_559_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        indvars_iv36_reg_216 <= sext_ln32_fu_376_p1;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln32_1_fu_388_p2 == 1'd0))) begin
        indvars_iv36_reg_216 <= add_ln13_5_fu_419_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv41_reg_198 <= sext_ln23_fu_259_p1;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_1_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvars_iv41_reg_198 <= add_ln13_3_fu_299_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j_1_reg_207 <= sext_ln32_1_fu_380_p1;
    end else if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln32_1_fu_388_p2 == 1'd0))) begin
        j_1_reg_207 <= add_ln32_1_fu_425_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        j_2_fu_64 <= stop;
    end else if (((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        j_2_fu_64 <= j_3_fu_586_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln49_reg_751 == 1'd1))) begin
        k_reg_225 <= add_ln49_1_reg_775;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        k_reg_225 <= sext_ln49_fu_472_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add9_reg_668 <= add9_fu_366_p2;
        icmp_ln32_reg_673 <= icmp_ln32_fu_371_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_1_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln23_1_reg_663 <= add_ln23_1_fu_305_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln23_reg_629 <= add_ln23_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln49_fu_487_p2 == 1'd1))) begin
        add_ln49_1_reg_775 <= add_ln49_1_fu_508_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln49_fu_487_p2 == 1'd1))) begin
        i_load_reg_755 <= ap_sig_allocacmp_i_load;
        j_2_load_reg_760 <= ap_sig_allocacmp_j_2_load;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln23_1_reg_634 <= icmp_ln23_1_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln23_reg_620 <= icmp_ln23_fu_253_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        icmp_ln32_1_reg_692 <= icmp_ln32_1_fu_388_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        icmp_ln49_reg_751 <= icmp_ln49_fu_487_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        reg_249 <= grp_load_fu_235_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        sext_ln32_2_reg_687 <= sext_ln32_2_fu_384_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        sext_ln49_1_reg_746 <= sext_ln49_1_fu_475_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln32_1_fu_388_p2 == 1'd0))) begin
        sub_ln10_reg_701 <= sub_ln10_fu_406_p2;
        trunc_ln12_1_reg_712 <= trunc_ln12_1_fu_415_p1;
        trunc_ln9_1_reg_707 <= trunc_ln9_1_fu_411_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_1_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln12_reg_653 <= trunc_ln12_fu_295_p1;
        trunc_ln24_reg_638 <= trunc_ln24_fu_282_p1;
        trunc_ln9_reg_648 <= trunc_ln9_fu_291_p1;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)))) begin
        a_address0 = zext_ln53_fu_537_p1;
    end else if (((1'b0 == ap_block_pp1_stage0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1))) begin
        a_address0 = zext_ln33_fu_401_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_address0 = zext_ln24_fu_286_p1;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1)))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_276)) begin
        if ((icmp_ln52_fu_514_p2 == 1'd1)) begin
            a_d0 = temp_q1;
        end else if ((icmp_ln52_fu_514_p2 == 1'd0)) begin
            a_d0 = temp_q0;
        end else begin
            a_d0 = 'bx;
        end
    end else begin
        a_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln23_1_fu_277_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln32_1_fu_388_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln49_fu_487_p2 == 1'd0)) begin
        ap_condition_pp2_exit_iter0_state8 = 1'b1;
    end else begin
        ap_condition_pp2_exit_iter0_state8 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp2_iter1 == 1'b0) & (ap_enable_reg_pp2_iter0 == 1'b0))) begin
        ap_idle_pp2 = 1'b1;
    end else begin
        ap_idle_pp2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln23_1_reg_634 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_3_phi_fu_191_p4 = add_ln23_1_reg_663;
    end else begin
        ap_phi_mux_i_3_phi_fu_191_p4 = i_3_reg_188;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0) & (icmp_ln49_reg_751 == 1'd1))) begin
        ap_phi_mux_k_phi_fu_228_p4 = add_ln49_1_reg_775;
    end else begin
        ap_phi_mux_k_phi_fu_228_p4 = k_reg_225;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln23_reg_620 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_sig_allocacmp_global_time_1_load_2 = add_ln13_2_fu_349_p2;
    end else begin
        ap_sig_allocacmp_global_time_1_load_2 = global_time_1_i;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        ap_sig_allocacmp_i_load = i_4_fu_559_p2;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_60;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        ap_sig_allocacmp_j_2_load = j_3_fu_586_p2;
    end else begin
        ap_sig_allocacmp_j_2_load = j_2_fu_64;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        checkdata_address0 = checkdata_addr_3_gep_fu_181_p3;
    end else if (((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        checkdata_address0 = zext_ln9_3_fu_520_p1;
    end else if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        checkdata_address0 = zext_ln9_2_fu_435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        checkdata_address0 = zext_ln9_fu_316_p1;
    end else begin
        checkdata_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        checkdata_ce0 = 1'b1;
    end else begin
        checkdata_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        checkdata_d0 = or_ln12_s_fu_573_p5;
    end else if (((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0))) begin
        checkdata_d0 = or_ln12_1_fu_546_p5;
    end else if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        checkdata_d0 = or_ln12_2_fu_449_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        checkdata_d0 = or_ln12_fu_332_p2;
    end else begin
        checkdata_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_1_reg_634 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln32_1_reg_692 == 1'd0)))) begin
        checkdata_we0 = 16'd65535;
    end else begin
        checkdata_we0 = 16'd0;
    end
end

always @ (*) begin
    if (((icmp_ln23_reg_620 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        global_time_1_o = add_ln13_2_fu_349_p2;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln32_reg_673 == 1'd0))) begin
        global_time_1_o = add_ln13_4_fu_460_p2;
    end else if ((((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)))) begin
        global_time_1_o = add_ln13_6_fu_526_p2;
    end else begin
        global_time_1_o = global_time_1_i;
    end
end

always @ (*) begin
    if ((((icmp_ln23_reg_620 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd1) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (icmp_ln52_fu_514_p2 == 1'd0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)) | ((1'b1 == ap_CS_fsm_state7) & (icmp_ln32_reg_673 == 1'd0)))) begin
        global_time_1_o_ap_vld = 1'b1;
    end else begin
        global_time_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_load_fu_235_p1 = ap_sig_allocacmp_global_time_1_load_2;
    end else if ((((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0)))) begin
        grp_load_fu_235_p1 = global_time_1_i;
    end else begin
        grp_load_fu_235_p1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1))) begin
        temp_address0 = zext_ln51_fu_503_p1;
    end else if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        temp_address0 = zext_ln33_1_fu_431_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0 = zext_ln23_fu_311_p1;
    end else begin
        temp_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0)))) begin
        temp_ce0 = 1'b1;
    end else begin
        temp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp2_stage0_11001) & (1'b1 == ap_CS_fsm_pp2_stage0) & (ap_enable_reg_pp2_iter0 == 1'b1))) begin
        temp_ce1 = 1'b1;
    end else begin
        temp_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln23_1_reg_634 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (icmp_ln32_1_reg_692 == 1'd0)))) begin
        temp_we0 = 1'b1;
    end else begin
        temp_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln23_fu_253_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln23_fu_253_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln23_1_fu_277_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln23_1_fu_277_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln32_fu_371_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_pp1_stage0 : begin
            if (~((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln32_1_fu_388_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if (((1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (icmp_ln32_1_fu_388_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_pp2_stage0;
        end
        ap_ST_fsm_pp2_stage0 : begin
            if (~((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln49_fu_487_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end else if (((1'b0 == ap_block_pp2_stage0_subdone) & (ap_enable_reg_pp2_iter0 == 1'b1) & (icmp_ln49_fu_487_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp2_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add9_fu_366_p2 = ($signed(j_fu_361_p2) + $signed(stop));

assign add_ln13_2_fu_349_p2 = ($signed(add_ln13_fu_344_p2) + $signed(reg_249));

assign add_ln13_3_fu_299_p2 = (indvars_iv41_reg_198 + 64'd1);

assign add_ln13_4_fu_460_p2 = ($signed(reg_249) + $signed(sub_ln13_1_fu_456_p2));

assign add_ln13_5_fu_419_p2 = (indvars_iv36_reg_216 + 64'd1);

assign add_ln13_6_fu_526_p0 = grp_load_fu_235_p1;

assign add_ln13_6_fu_526_p2 = (add_ln13_6_fu_526_p0 + 32'd1);

assign add_ln13_fu_344_p1 = m;

assign add_ln13_fu_344_p2 = ($signed(sub_ln13_fu_339_p2) + $signed(add_ln13_fu_344_p1));

assign add_ln23_1_fu_305_p2 = ($signed(ap_phi_mux_i_3_phi_fu_191_p4) + $signed(32'd1));

assign add_ln23_fu_267_p2 = ($signed(sext_ln23_1_fu_263_p1) + $signed(33'd1));

assign add_ln32_1_fu_425_p2 = (j_1_reg_207 + 64'd1);

assign add_ln49_1_fu_508_p2 = (ap_phi_mux_k_phi_fu_228_p4 + 64'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp2_stage0 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp2_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp2_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp2_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_276 = ((1'b0 == ap_block_pp2_stage0) & (ap_enable_reg_pp2_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp2_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_enable_pp2 = (ap_idle_pp2 ^ 1'b1);

assign checkdata_addr_3_gep_fu_181_p3 = zext_ln9_3_fu_520_p1;

assign grp_fu_239_p2 = (stop + 32'd1);

assign i_4_fu_559_p2 = (i_load_reg_755 + 32'd1);

assign icmp_ln23_1_fu_277_p2 = ((sext_ln23_2_fu_273_p1 == add_ln23_reg_629) ? 1'b1 : 1'b0);

assign icmp_ln23_fu_253_p0 = start_r;

assign icmp_ln23_fu_253_p1 = m;

assign icmp_ln23_fu_253_p2 = (($signed(icmp_ln23_fu_253_p0) > $signed(icmp_ln23_fu_253_p1)) ? 1'b1 : 1'b0);

assign icmp_ln32_1_fu_388_p2 = ((j_1_reg_207 == sext_ln32_2_reg_687) ? 1'b1 : 1'b0);

assign icmp_ln32_fu_371_p2 = (($signed(j_fu_361_p2) > $signed(stop)) ? 1'b1 : 1'b0);

assign icmp_ln49_fu_487_p2 = (($signed(ap_phi_mux_k_phi_fu_228_p4) < $signed(sext_ln49_1_reg_746)) ? 1'b1 : 1'b0);

assign icmp_ln52_fu_514_p2 = (($signed(temp_q1) < $signed(temp_q0)) ? 1'b1 : 1'b0);

assign j_3_fu_586_p2 = ($signed(j_2_load_reg_760) + $signed(32'd4294967295));

assign j_fu_361_p0 = m;

assign j_fu_361_p2 = ($signed(j_fu_361_p0) + $signed(32'd1));

assign or_ln12_1_fu_546_p1 = grp_load_fu_235_p1;

assign or_ln12_1_fu_546_p5 = {{{{or_ln12_1_fu_546_p1}, {temp_q0}}, {trunc_ln10_1_fu_542_p1}}, {32'd0}};

assign or_ln12_2_fu_449_p2 = (tmp8_fu_439_p5 | 128'd4);

assign or_ln12_fu_332_p2 = (tmp4_fu_320_p6 | 128'd4);

assign or_ln12_s_fu_573_p1 = grp_load_fu_235_p1;

assign or_ln12_s_fu_573_p5 = {{{{or_ln12_s_fu_573_p1}, {temp_q1}}, {trunc_ln10_fu_569_p1}}, {32'd0}};

assign sext_ln23_1_fu_263_p0 = m;

assign sext_ln23_1_fu_263_p1 = sext_ln23_1_fu_263_p0;

assign sext_ln23_2_fu_273_p1 = ap_phi_mux_i_3_phi_fu_191_p4;

assign sext_ln23_fu_259_p1 = grp_load_fu_235_p1;

assign sext_ln32_1_fu_380_p1 = j_fu_361_p2;

assign sext_ln32_2_fu_384_p1 = $signed(grp_fu_239_p2);

assign sext_ln32_fu_376_p1 = grp_load_fu_235_p1;

assign sext_ln49_1_fu_475_p1 = $signed(grp_fu_239_p2);

assign sext_ln49_fu_472_p0 = start_r;

assign sext_ln49_fu_472_p1 = sext_ln49_fu_472_p0;

assign sub_ln10_fu_406_p2 = (add9_reg_668 - trunc_ln32_fu_393_p1);

assign sub_ln13_1_fu_456_p1 = m;

assign sub_ln13_1_fu_456_p2 = ($signed(stop) - $signed(sub_ln13_1_fu_456_p1));

assign sub_ln13_fu_339_p1 = start_r;

assign sub_ln13_fu_339_p2 = ($signed(32'd1) - $signed(sub_ln13_fu_339_p1));

assign temp_address1 = zext_ln50_fu_498_p1;

assign tmp4_fu_320_p6 = {{{{{trunc_ln12_reg_653}, {a_q0}}, {21'd0}}, {trunc_ln24_reg_638}}, {32'd0}};

assign tmp8_fu_439_p5 = {{{{trunc_ln12_1_reg_712}, {a_q0}}, {sub_ln10_reg_701}}, {32'd0}};

assign trunc_ln10_1_fu_542_p1 = k_reg_225[31:0];

assign trunc_ln10_fu_569_p1 = k_reg_225[31:0];

assign trunc_ln12_1_fu_415_p1 = indvars_iv36_reg_216[31:0];

assign trunc_ln12_fu_295_p1 = indvars_iv41_reg_198[31:0];

assign trunc_ln24_fu_282_p1 = ap_phi_mux_i_3_phi_fu_191_p4[10:0];

assign trunc_ln32_fu_393_p1 = j_1_reg_207[31:0];

assign trunc_ln33_fu_397_p1 = j_1_reg_207[10:0];

assign trunc_ln53_fu_533_p1 = k_reg_225[10:0];

assign trunc_ln9_1_fu_411_p1 = indvars_iv36_reg_216[20:0];

assign trunc_ln9_fu_291_p1 = indvars_iv41_reg_198[20:0];

assign zext_ln23_fu_311_p1 = $unsigned(i_3_reg_188);

assign zext_ln24_fu_286_p1 = trunc_ln24_fu_282_p1;

assign zext_ln33_1_fu_431_p1 = sub_ln10_reg_701;

assign zext_ln33_fu_401_p1 = trunc_ln33_fu_397_p1;

assign zext_ln50_fu_498_p1 = ap_sig_allocacmp_j_2_load;

assign zext_ln51_fu_503_p1 = ap_sig_allocacmp_i_load;

assign zext_ln53_fu_537_p1 = trunc_ln53_fu_533_p1;

assign zext_ln9_2_fu_435_p1 = trunc_ln9_1_reg_707;

assign zext_ln9_3_fu_520_p0 = grp_load_fu_235_p1;

assign zext_ln9_3_fu_520_p1 = zext_ln9_3_fu_520_p0;

assign zext_ln9_fu_316_p1 = trunc_ln9_reg_648;

endmodule //ms_mergesort_merge_1