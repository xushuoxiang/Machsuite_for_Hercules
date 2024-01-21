// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ss_sort_update_1 (
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
        bucket_address0,
        bucket_ce0,
        bucket_we0,
        bucket_d0,
        bucket_q0,
        b_address0,
        b_ce0,
        b_q0,
        b_address1,
        b_ce1,
        b_q1,
        checkdata_address0,
        checkdata_ce0,
        checkdata_we0,
        checkdata_d0,
        checkdata_address1,
        checkdata_ce1,
        checkdata_we1,
        checkdata_d1,
        exp,
        mark_a,
        global_time_1_i,
        global_time_1_o,
        global_time_1_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_pp0_stage0 = 10'd2;
parameter    ap_ST_fsm_pp0_stage1 = 10'd4;
parameter    ap_ST_fsm_pp0_stage2 = 10'd8;
parameter    ap_ST_fsm_pp0_stage3 = 10'd16;
parameter    ap_ST_fsm_pp0_stage4 = 10'd32;
parameter    ap_ST_fsm_pp0_stage5 = 10'd64;
parameter    ap_ST_fsm_pp0_stage6 = 10'd128;
parameter    ap_ST_fsm_pp0_stage7 = 10'd256;
parameter    ap_ST_fsm_state11 = 10'd512;

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
output  [10:0] bucket_address0;
output   bucket_ce0;
output   bucket_we0;
output  [31:0] bucket_d0;
input  [31:0] bucket_q0;
output  [10:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [10:0] b_address1;
output   b_ce1;
input  [31:0] b_q1;
output  [20:0] checkdata_address0;
output   checkdata_ce0;
output  [15:0] checkdata_we0;
output  [127:0] checkdata_d0;
output  [20:0] checkdata_address1;
output   checkdata_ce1;
output  [15:0] checkdata_we1;
output  [127:0] checkdata_d1;
input  [4:0] exp;
input  [0:0] mark_a;
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
reg[10:0] bucket_address0;
reg bucket_ce0;
reg bucket_we0;
reg[10:0] b_address0;
reg b_ce0;
reg[10:0] b_address1;
reg b_ce1;
reg[20:0] checkdata_address0;
reg checkdata_ce0;
reg[15:0] checkdata_we0;
reg[127:0] checkdata_d0;
reg[20:0] checkdata_address1;
reg checkdata_ce1;
reg[15:0] checkdata_we1;
reg[127:0] checkdata_d1;
reg[31:0] global_time_1_o;
reg global_time_1_o_ap_vld;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] blockID_reg_310;
reg   [31:0] inc_i14_lcssa17_reg_321;
reg   [31:0] reg_338;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln105_reg_831;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state4_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] exp_cast_fu_343_p1;
reg   [31:0] exp_cast_reg_805;
wire   [0:0] not_mark_a_fu_351_p2;
reg   [0:0] not_mark_a_reg_818;
wire   [9:0] add_ln105_1_fu_357_p2;
reg   [9:0] add_ln105_1_reg_826;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state10_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln105_fu_363_p2;
wire   [8:0] empty_17_fu_369_p1;
reg   [8:0] empty_17_reg_835;
wire   [10:0] shl_ln_fu_373_p3;
reg   [10:0] shl_ln_reg_843;
wire   [10:0] tmp_1_fu_406_p3;
reg   [10:0] tmp_1_reg_859;
reg   [10:0] bucket_addr_reg_864;
reg   [31:0] b_load_1_reg_869;
wire   [20:0] trunc_ln9_fu_448_p1;
reg   [20:0] trunc_ln9_reg_886;
wire   [1:0] trunc_ln109_1_fu_511_p1;
reg   [1:0] trunc_ln109_1_reg_896;
reg   [31:0] b_load_3_reg_901;
wire   [10:0] tmp_s_fu_515_p3;
reg   [10:0] tmp_s_reg_908;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_state5_pp0_stage3_iter0;
wire    ap_block_pp0_stage3_11001;
reg   [10:0] bucket_addr_1_reg_913;
wire   [1:0] trunc_ln109_2_fu_531_p1;
reg   [1:0] trunc_ln109_2_reg_918;
wire   [1:0] trunc_ln109_3_fu_613_p1;
reg   [1:0] trunc_ln109_3_reg_923;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_state6_pp0_stage4_iter0;
wire    ap_block_pp0_stage4_11001;
wire   [10:0] tmp_2_fu_617_p3;
reg   [10:0] tmp_2_reg_928;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_state7_pp0_stage5_iter0;
wire    ap_block_pp0_stage5_11001;
reg   [10:0] bucket_addr_2_reg_933;
wire   [10:0] tmp_3_fu_703_p3;
reg   [10:0] tmp_3_reg_938;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_state9_pp0_stage7_iter0;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] bucket_addr_3_reg_943;
wire   [31:0] add_ln107_fu_788_p2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
wire    ap_block_pp0_stage7_subdone;
reg   [9:0] ap_phi_mux_blockID_phi_fu_314_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln109_fu_381_p1;
wire   [63:0] zext_ln109_1_fu_392_p1;
wire   [63:0] zext_ln111_fu_413_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln109_2_fu_423_p1;
wire   [63:0] zext_ln109_3_fu_433_p1;
wire   [63:0] zext_ln111_4_fu_443_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] inc_i14_lcssa17_cast6_fu_438_p1;
wire   [63:0] zext_ln9_fu_472_p1;
wire   [63:0] zext_ln111_1_fu_521_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln111_5_fu_535_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln9_1_fu_551_p1;
wire   [63:0] zext_ln9_2_fu_574_p1;
wire   [63:0] zext_ln111_2_fu_623_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln111_6_fu_628_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln9_3_fu_644_p1;
wire   [63:0] zext_ln9_4_fu_668_p1;
wire   [63:0] zext_ln111_3_fu_709_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln111_7_fu_714_p1;
wire   [63:0] zext_ln9_5_fu_730_p1;
wire   [63:0] zext_ln9_6_fu_753_p1;
wire   [31:0] add_ln105_fu_794_p2;
wire    ap_CS_fsm_state11;
wire   [31:0] grp_fu_331_p2;
wire    ap_block_state8_pp0_stage6_iter0;
wire    ap_block_pp0_stage6_11001;
wire   [127:0] storemerge1_fu_452_p6;
wire   [127:0] or_ln12_fu_500_p2;
wire   [127:0] storemerge2_fu_556_p6;
wire   [127:0] or_ln12_1_fu_602_p2;
wire   [127:0] storemerge3_fu_649_p6;
wire   [127:0] or_ln12_2_fu_696_p2;
wire   [127:0] storemerge_fu_735_p6;
wire   [127:0] or_ln12_3_fu_781_p2;
wire   [10:0] or_ln109_fu_386_p2;
wire   [31:0] ashr_ln109_fu_397_p2;
wire   [1:0] trunc_ln109_fu_402_p1;
wire   [10:0] or_ln109_1_fu_418_p2;
wire   [10:0] or_ln109_2_fu_428_p2;
wire   [20:0] add_ln9_fu_466_p2;
wire   [31:0] add_ln12_fu_480_p2;
wire   [11:0] zext_ln10_fu_477_p1;
wire   [127:0] tmp1_fu_486_p6;
wire   [31:0] ashr_ln109_1_fu_507_p2;
wire   [31:0] ashr_ln109_2_fu_526_p2;
wire   [20:0] add_ln13_1_fu_546_p2;
wire   [31:0] add_ln13_fu_540_p2;
wire   [20:0] add_ln9_1_fu_569_p2;
wire   [31:0] add_ln12_1_fu_582_p2;
wire   [11:0] zext_ln10_1_fu_579_p1;
wire   [127:0] tmp2_fu_588_p6;
wire   [31:0] ashr_ln109_3_fu_609_p2;
wire   [20:0] add_ln13_3_fu_639_p2;
wire   [31:0] add_ln13_2_fu_633_p2;
wire   [20:0] add_ln9_2_fu_663_p2;
wire   [31:0] add_ln12_2_fu_676_p2;
wire   [11:0] zext_ln10_2_fu_673_p1;
wire   [127:0] tmp3_fu_682_p6;
wire   [20:0] add_ln13_5_fu_725_p2;
wire   [31:0] add_ln13_4_fu_719_p2;
wire   [20:0] add_ln9_3_fu_748_p2;
wire   [31:0] add_ln12_3_fu_761_p2;
wire   [11:0] zext_ln10_3_fu_758_p1;
wire   [127:0] tmp4_fu_767_p6;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b1 == ap_condition_pp0_exit_iter0_state4))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        blockID_reg_310 <= 10'd0;
    end else if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_reg_310 <= add_ln105_1_reg_826;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        inc_i14_lcssa17_reg_321 <= global_time_1_i;
    end else if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        inc_i14_lcssa17_reg_321 <= add_ln107_fu_788_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln105_1_reg_826 <= add_ln105_1_fu_357_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_load_1_reg_869 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        b_load_3_reg_901 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_addr_1_reg_913 <= zext_ln111_1_fu_521_p1;
        tmp_s_reg_908 <= tmp_s_fu_515_p3;
        trunc_ln109_2_reg_918 <= trunc_ln109_2_fu_531_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_addr_2_reg_933 <= zext_ln111_2_fu_623_p1;
        tmp_2_reg_928 <= tmp_2_fu_617_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_addr_3_reg_943 <= zext_ln111_3_fu_709_p1;
        tmp_3_reg_938 <= tmp_3_fu_703_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_addr_reg_864 <= zext_ln111_fu_413_p1;
        tmp_1_reg_859 <= tmp_1_fu_406_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln105_fu_363_p2 == 1'd0))) begin
        empty_17_reg_835 <= empty_17_fu_369_p1;
        shl_ln_reg_843[10 : 2] <= shl_ln_fu_373_p3[10 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        exp_cast_reg_805[4 : 0] <= exp_cast_fu_343_p1[4 : 0];
        not_mark_a_reg_818 <= not_mark_a_fu_351_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln105_reg_831 <= icmp_ln105_fu_363_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_338 <= b_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln109_1_reg_896 <= trunc_ln109_1_fu_511_p1;
        trunc_ln9_reg_886 <= trunc_ln9_fu_448_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        trunc_ln109_3_reg_923 <= trunc_ln109_3_fu_613_p1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_address0 = zext_ln111_7_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        a_address0 = zext_ln111_6_fu_628_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_address0 = zext_ln111_5_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        a_address0 = zext_ln111_4_fu_443_p1;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_d0 = b_load_3_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        a_d0 = b_load_1_reg_869;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        a_d0 = reg_338;
    end else begin
        a_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        a_we0 = 1'b1;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln105_reg_831 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_blockID_phi_fu_314_p4 = add_ln105_1_reg_826;
    end else begin
        ap_phi_mux_blockID_phi_fu_314_p4 = blockID_reg_310;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address0 = zext_ln109_3_fu_433_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address0 = zext_ln109_1_fu_392_p1;
        end else begin
            b_address0 = 'bx;
        end
    end else begin
        b_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            b_address1 = zext_ln109_2_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            b_address1 = zext_ln109_fu_381_p1;
        end else begin
            b_address1 = 'bx;
        end
    end else begin
        b_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        b_ce1 = 1'b1;
    end else begin
        b_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_address0 = bucket_addr_3_reg_943;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bucket_address0 = zext_ln111_3_fu_709_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bucket_address0 = bucket_addr_2_reg_933;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        bucket_address0 = zext_ln111_2_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_address0 = bucket_addr_1_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_address0 = zext_ln111_1_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_address0 = bucket_addr_reg_864;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_address0 = zext_ln111_fu_413_p1;
    end else begin
        bucket_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_ce0 = 1'b1;
    end else begin
        bucket_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        bucket_we0 = 1'b1;
    end else begin
        bucket_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        checkdata_address0 = zext_ln9_6_fu_753_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        checkdata_address0 = zext_ln9_4_fu_668_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        checkdata_address0 = zext_ln9_2_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        checkdata_address0 = zext_ln9_fu_472_p1;
    end else begin
        checkdata_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        checkdata_address1 = zext_ln9_5_fu_730_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        checkdata_address1 = zext_ln9_3_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        checkdata_address1 = zext_ln9_1_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        checkdata_address1 = inc_i14_lcssa17_cast6_fu_438_p1;
    end else begin
        checkdata_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        checkdata_ce0 = 1'b1;
    end else begin
        checkdata_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        checkdata_ce1 = 1'b1;
    end else begin
        checkdata_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        checkdata_d0 = or_ln12_3_fu_781_p2;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        checkdata_d0 = or_ln12_2_fu_696_p2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        checkdata_d0 = or_ln12_1_fu_602_p2;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        checkdata_d0 = or_ln12_fu_500_p2;
    end else begin
        checkdata_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        checkdata_d1 = storemerge_fu_735_p6;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        checkdata_d1 = storemerge3_fu_649_p6;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        checkdata_d1 = storemerge2_fu_556_p6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        checkdata_d1 = storemerge1_fu_452_p6;
    end else begin
        checkdata_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        checkdata_we0 = 16'd65535;
    end else begin
        checkdata_we0 = 16'd0;
    end
end

always @ (*) begin
    if ((((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln105_reg_831 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        checkdata_we1 = 16'd65535;
    end else begin
        checkdata_we1 = 16'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        global_time_1_o = add_ln105_fu_794_p2;
    end else begin
        global_time_1_o = global_time_1_i;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        global_time_1_o_ap_vld = 1'b1;
    end else begin
        global_time_1_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((~((icmp_ln105_reg_831 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else if (((icmp_ln105_reg_831 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln105_1_fu_357_p2 = (ap_phi_mux_blockID_phi_fu_314_p4 + 10'd1);

assign add_ln105_fu_794_p2 = (global_time_1_i + 32'd4096);

assign add_ln107_fu_788_p2 = (inc_i14_lcssa17_reg_321 + 32'd8);

assign add_ln12_1_fu_582_p2 = (inc_i14_lcssa17_reg_321 + 32'd3);

assign add_ln12_2_fu_676_p2 = (inc_i14_lcssa17_reg_321 + 32'd5);

assign add_ln12_3_fu_761_p2 = (inc_i14_lcssa17_reg_321 + 32'd7);

assign add_ln12_fu_480_p2 = (inc_i14_lcssa17_reg_321 + 32'd1);

assign add_ln13_1_fu_546_p2 = (trunc_ln9_reg_886 + 21'd2);

assign add_ln13_2_fu_633_p2 = (inc_i14_lcssa17_reg_321 + 32'd4);

assign add_ln13_3_fu_639_p2 = (trunc_ln9_reg_886 + 21'd4);

assign add_ln13_4_fu_719_p2 = (inc_i14_lcssa17_reg_321 + 32'd6);

assign add_ln13_5_fu_725_p2 = (trunc_ln9_reg_886 + 21'd6);

assign add_ln13_fu_540_p2 = (inc_i14_lcssa17_reg_321 + 32'd2);

assign add_ln9_1_fu_569_p2 = (trunc_ln9_reg_886 + 21'd3);

assign add_ln9_2_fu_663_p2 = (trunc_ln9_reg_886 + 21'd5);

assign add_ln9_3_fu_748_p2 = (trunc_ln9_reg_886 + 21'd7);

assign add_ln9_fu_466_p2 = (trunc_ln9_fu_448_p1 + 21'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage5_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage6_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage7_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ashr_ln109_1_fu_507_p2 = $signed(b_load_1_reg_869) >>> exp_cast_reg_805;

assign ashr_ln109_2_fu_526_p2 = $signed(reg_338) >>> exp_cast_reg_805;

assign ashr_ln109_3_fu_609_p2 = $signed(b_load_3_reg_901) >>> exp_cast_reg_805;

assign ashr_ln109_fu_397_p2 = $signed(b_q1) >>> exp_cast_reg_805;

assign bucket_d0 = grp_fu_331_p2;

assign empty_17_fu_369_p1 = ap_phi_mux_blockID_phi_fu_314_p4[8:0];

assign exp_cast_fu_343_p1 = exp;

assign grp_fu_331_p2 = (bucket_q0 + 32'd1);

assign icmp_ln105_fu_363_p2 = ((ap_phi_mux_blockID_phi_fu_314_p4 == 10'd512) ? 1'b1 : 1'b0);

assign inc_i14_lcssa17_cast6_fu_438_p1 = inc_i14_lcssa17_reg_321;

assign not_mark_a_fu_351_p2 = (mark_a ^ 1'd1);

assign or_ln109_1_fu_418_p2 = (shl_ln_reg_843 | 11'd2);

assign or_ln109_2_fu_428_p2 = (shl_ln_reg_843 | 11'd3);

assign or_ln109_fu_386_p2 = (shl_ln_fu_373_p3 | 11'd1);

assign or_ln12_1_fu_602_p2 = (tmp2_fu_588_p6 | 128'd2);

assign or_ln12_2_fu_696_p2 = (tmp3_fu_682_p6 | 128'd2);

assign or_ln12_3_fu_781_p2 = (tmp4_fu_767_p6 | 128'd2);

assign or_ln12_fu_500_p2 = (tmp1_fu_486_p6 | 128'd2);

assign shl_ln_fu_373_p3 = {{empty_17_fu_369_p1}, {2'd0}};

assign storemerge1_fu_452_p6 = {{{{{inc_i14_lcssa17_reg_321}, {reg_338}}, {bucket_q0}}, {31'd0}}, {not_mark_a_reg_818}};

assign storemerge2_fu_556_p6 = {{{{{add_ln13_fu_540_p2}, {b_load_1_reg_869}}, {bucket_q0}}, {31'd0}}, {not_mark_a_reg_818}};

assign storemerge3_fu_649_p6 = {{{{{add_ln13_2_fu_633_p2}, {reg_338}}, {bucket_q0}}, {31'd0}}, {not_mark_a_reg_818}};

assign storemerge_fu_735_p6 = {{{{{add_ln13_4_fu_719_p2}, {b_load_3_reg_901}}, {bucket_q0}}, {31'd0}}, {not_mark_a_reg_818}};

assign tmp1_fu_486_p6 = {{{{{add_ln12_fu_480_p2}, {grp_fu_331_p2}}, {20'd0}}, {zext_ln10_fu_477_p1}}, {32'd0}};

assign tmp2_fu_588_p6 = {{{{{add_ln12_1_fu_582_p2}, {grp_fu_331_p2}}, {20'd0}}, {zext_ln10_1_fu_579_p1}}, {32'd0}};

assign tmp3_fu_682_p6 = {{{{{add_ln12_2_fu_676_p2}, {grp_fu_331_p2}}, {20'd0}}, {zext_ln10_2_fu_673_p1}}, {32'd0}};

assign tmp4_fu_767_p6 = {{{{{add_ln12_3_fu_761_p2}, {grp_fu_331_p2}}, {20'd0}}, {zext_ln10_3_fu_758_p1}}, {32'd0}};

assign tmp_1_fu_406_p3 = {{trunc_ln109_fu_402_p1}, {empty_17_reg_835}};

assign tmp_2_fu_617_p3 = {{trunc_ln109_2_reg_918}, {empty_17_reg_835}};

assign tmp_3_fu_703_p3 = {{trunc_ln109_3_reg_923}, {empty_17_reg_835}};

assign tmp_s_fu_515_p3 = {{trunc_ln109_1_reg_896}, {empty_17_reg_835}};

assign trunc_ln109_1_fu_511_p1 = ashr_ln109_1_fu_507_p2[1:0];

assign trunc_ln109_2_fu_531_p1 = ashr_ln109_2_fu_526_p2[1:0];

assign trunc_ln109_3_fu_613_p1 = ashr_ln109_3_fu_609_p2[1:0];

assign trunc_ln109_fu_402_p1 = ashr_ln109_fu_397_p2[1:0];

assign trunc_ln9_fu_448_p1 = inc_i14_lcssa17_reg_321[20:0];

assign zext_ln109_1_fu_392_p1 = or_ln109_fu_386_p2;

assign zext_ln109_2_fu_423_p1 = or_ln109_1_fu_418_p2;

assign zext_ln109_3_fu_433_p1 = or_ln109_2_fu_428_p2;

assign zext_ln109_fu_381_p1 = shl_ln_fu_373_p3;

assign zext_ln10_1_fu_579_p1 = tmp_s_reg_908;

assign zext_ln10_2_fu_673_p1 = tmp_2_reg_928;

assign zext_ln10_3_fu_758_p1 = tmp_3_reg_938;

assign zext_ln10_fu_477_p1 = tmp_1_reg_859;

assign zext_ln111_1_fu_521_p1 = tmp_s_fu_515_p3;

assign zext_ln111_2_fu_623_p1 = tmp_2_fu_617_p3;

assign zext_ln111_3_fu_709_p1 = tmp_3_fu_703_p3;

assign zext_ln111_4_fu_443_p1 = bucket_q0;

assign zext_ln111_5_fu_535_p1 = bucket_q0;

assign zext_ln111_6_fu_628_p1 = bucket_q0;

assign zext_ln111_7_fu_714_p1 = bucket_q0;

assign zext_ln111_fu_413_p1 = tmp_1_fu_406_p3;

assign zext_ln9_1_fu_551_p1 = add_ln13_1_fu_546_p2;

assign zext_ln9_2_fu_574_p1 = add_ln9_1_fu_569_p2;

assign zext_ln9_3_fu_644_p1 = add_ln13_3_fu_639_p2;

assign zext_ln9_4_fu_668_p1 = add_ln9_2_fu_663_p2;

assign zext_ln9_5_fu_730_p1 = add_ln13_5_fu_725_p2;

assign zext_ln9_6_fu_753_p1 = add_ln9_3_fu_748_p2;

assign zext_ln9_fu_472_p1 = add_ln9_fu_466_p2;

always @ (posedge ap_clk) begin
    exp_cast_reg_805[31:5] <= 27'b000000000000000000000000000;
    shl_ln_reg_843[1:0] <= 2'b00;
end

endmodule //ss_sort_update_1