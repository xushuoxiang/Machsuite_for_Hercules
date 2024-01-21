// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ms_mergesort_ms_mergesort,hls_ip_2020_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu19eg-ffvc1760-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.465000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=1103,HLS_SYN_LUT=2237,HLS_VERSION=2020_2}" *)

module ms_mergesort (
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
        checkdata_address1,
        checkdata_ce1,
        checkdata_we1,
        checkdata_d1,
        hercules_buffer_size,
        hercules_buffer_size_ap_vld
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

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
output  [20:0] checkdata_address1;
output   checkdata_ce1;
output  [15:0] checkdata_we1;
output  [127:0] checkdata_d1;
output  [31:0] hercules_buffer_size;
output   hercules_buffer_size_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg a_we0;
reg[20:0] checkdata_address0;
reg checkdata_ce0;
reg[15:0] checkdata_we0;
reg[127:0] checkdata_d0;
reg checkdata_ce1;
reg[15:0] checkdata_we1;
reg hercules_buffer_size_ap_vld;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] global_time_1;
wire   [31:0] m_1_fu_160_p2;
reg   [31:0] m_1_reg_286;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln92_fu_154_p2;
wire   [31:0] mid_fu_188_p2;
reg   [31:0] mid_reg_295;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln99_fu_176_p2;
wire   [31:0] to_fu_222_p2;
reg   [31:0] to_reg_300;
wire   [0:0] icmp_ln113_fu_272_p2;
reg   [0:0] icmp_ln113_reg_305;
wire   [31:0] i_fu_278_p2;
wire    ap_CS_fsm_state5;
wire    grp_merge_1_fu_124_ap_start;
wire    grp_merge_1_fu_124_ap_done;
wire    grp_merge_1_fu_124_ap_idle;
wire    grp_merge_1_fu_124_ap_ready;
wire   [10:0] grp_merge_1_fu_124_a_address0;
wire    grp_merge_1_fu_124_a_ce0;
wire    grp_merge_1_fu_124_a_we0;
wire   [31:0] grp_merge_1_fu_124_a_d0;
wire   [20:0] grp_merge_1_fu_124_checkdata_address0;
wire    grp_merge_1_fu_124_checkdata_ce0;
wire   [15:0] grp_merge_1_fu_124_checkdata_we0;
wire   [127:0] grp_merge_1_fu_124_checkdata_d0;
reg   [31:0] grp_merge_1_fu_124_stop;
wire   [31:0] grp_merge_1_fu_124_global_time_1_o;
wire    grp_merge_1_fu_124_global_time_1_o_ap_vld;
reg   [31:0] m_reg_100;
reg   [31:0] i_2_reg_112;
reg    ap_block_state5_on_subcall_done;
reg    grp_merge_1_fu_124_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln9_fu_194_p1;
wire   [63:0] zext_ln9_1_fu_228_p1;
wire   [31:0] add_ln13_1_fu_250_p2;
wire   [127:0] or_ln12_1_fu_243_p2;
wire   [20:0] tmp_fu_144_p4;
wire   [20:0] tmp_1_fu_166_p4;
wire   [31:0] add_ln101_fu_182_p2;
wire   [127:0] tmp2_fu_199_p4;
wire   [31:0] add_ln13_fu_216_p2;
wire   [127:0] tmp7_fu_233_p4;
wire   [20:0] tmp_2_fu_262_p4;
reg   [5:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 global_time_1 = 32'd0;
#0 grp_merge_1_fu_124_ap_start_reg = 1'b0;
end

ms_mergesort_merge_1 grp_merge_1_fu_124(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_merge_1_fu_124_ap_start),
    .ap_done(grp_merge_1_fu_124_ap_done),
    .ap_idle(grp_merge_1_fu_124_ap_idle),
    .ap_ready(grp_merge_1_fu_124_ap_ready),
    .a_address0(grp_merge_1_fu_124_a_address0),
    .a_ce0(grp_merge_1_fu_124_a_ce0),
    .a_we0(grp_merge_1_fu_124_a_we0),
    .a_d0(grp_merge_1_fu_124_a_d0),
    .a_q0(a_q0),
    .checkdata_address0(grp_merge_1_fu_124_checkdata_address0),
    .checkdata_ce0(grp_merge_1_fu_124_checkdata_ce0),
    .checkdata_we0(grp_merge_1_fu_124_checkdata_we0),
    .checkdata_d0(grp_merge_1_fu_124_checkdata_d0),
    .start_r(i_2_reg_112),
    .m(mid_reg_295),
    .stop(grp_merge_1_fu_124_stop),
    .global_time_1_i(global_time_1),
    .global_time_1_o(grp_merge_1_fu_124_global_time_1_o),
    .global_time_1_o_ap_vld(grp_merge_1_fu_124_global_time_1_o_ap_vld)
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
        grp_merge_1_fu_124_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_merge_1_fu_124_ap_start_reg <= 1'b1;
        end else if ((grp_merge_1_fu_124_ap_ready == 1'b1)) begin
            grp_merge_1_fu_124_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln99_fu_176_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        global_time_1 <= add_ln13_1_fu_250_p2;
    end else if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (grp_merge_1_fu_124_global_time_1_o_ap_vld == 1'b1)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (grp_merge_1_fu_124_global_time_1_o_ap_vld == 1'b1)))) begin
        global_time_1 <= grp_merge_1_fu_124_global_time_1_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
        i_2_reg_112 <= i_fu_278_p2;
    end else if (((icmp_ln92_fu_154_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_2_reg_112 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln99_fu_176_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        m_reg_100 <= m_1_reg_286;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        m_reg_100 <= 32'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln99_fu_176_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        icmp_ln113_reg_305 <= icmp_ln113_fu_272_p2;
        mid_reg_295 <= mid_fu_188_p2;
        to_reg_300 <= to_fu_222_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln92_fu_154_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_1_reg_286[31 : 1] <= m_1_fu_160_p2[31 : 1];
    end
end

always @ (*) begin
    if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        a_ce0 = grp_merge_1_fu_124_a_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        a_we0 = grp_merge_1_fu_124_a_we0;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln92_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln92_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        checkdata_address0 = zext_ln9_1_fu_228_p1;
    end else if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        checkdata_address0 = grp_merge_1_fu_124_checkdata_address0;
    end else begin
        checkdata_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        checkdata_ce0 = 1'b1;
    end else if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        checkdata_ce0 = grp_merge_1_fu_124_checkdata_ce0;
    end else begin
        checkdata_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        checkdata_ce1 = 1'b1;
    end else begin
        checkdata_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        checkdata_d0 = or_ln12_1_fu_243_p2;
    end else if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        checkdata_d0 = grp_merge_1_fu_124_checkdata_d0;
    end else begin
        checkdata_d0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln99_fu_176_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        checkdata_we0 = 16'd65535;
    end else if ((((icmp_ln113_reg_305 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln113_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state5)))) begin
        checkdata_we0 = grp_merge_1_fu_124_checkdata_we0;
    end else begin
        checkdata_we0 = 16'd0;
    end
end

always @ (*) begin
    if (((icmp_ln99_fu_176_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        checkdata_we1 = 16'd65535;
    end else begin
        checkdata_we1 = 16'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        if ((icmp_ln113_reg_305 == 1'd1)) begin
            grp_merge_1_fu_124_stop = to_reg_300;
        end else if ((icmp_ln113_reg_305 == 1'd0)) begin
            grp_merge_1_fu_124_stop = 32'd2048;
        end else begin
            grp_merge_1_fu_124_stop = 'bx;
        end
    end else begin
        grp_merge_1_fu_124_stop = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln92_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        hercules_buffer_size_ap_vld = 1'b1;
    end else begin
        hercules_buffer_size_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln92_fu_154_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln99_fu_176_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((icmp_ln113_fu_272_p2 == 1'd1) & (icmp_ln99_fu_176_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = grp_merge_1_fu_124_a_address0;

assign a_d0 = grp_merge_1_fu_124_a_d0;

assign add_ln101_fu_182_p2 = (i_2_reg_112 + m_reg_100);

assign add_ln13_1_fu_250_p2 = (global_time_1 + 32'd2);

assign add_ln13_fu_216_p2 = (global_time_1 + 32'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state5_on_subcall_done = (((grp_merge_1_fu_124_ap_done == 1'b0) & (icmp_ln113_reg_305 == 1'd1)) | ((grp_merge_1_fu_124_ap_done == 1'b0) & (icmp_ln113_reg_305 == 1'd0)));
end

assign checkdata_address1 = zext_ln9_fu_194_p1;

assign checkdata_d1 = (tmp2_fu_199_p4 | 128'd15);

assign grp_merge_1_fu_124_ap_start = grp_merge_1_fu_124_ap_start_reg;

assign hercules_buffer_size = global_time_1;

assign i_fu_278_p2 = (m_1_reg_286 + i_2_reg_112);

assign icmp_ln113_fu_272_p2 = (($signed(tmp_2_fu_262_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);

assign icmp_ln92_fu_154_p2 = (($signed(tmp_fu_144_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);

assign icmp_ln99_fu_176_p2 = (($signed(tmp_1_fu_166_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);

assign m_1_fu_160_p2 = m_reg_100 << 32'd1;

assign mid_fu_188_p2 = ($signed(add_ln101_fu_182_p2) + $signed(32'd4294967295));

assign or_ln12_1_fu_243_p2 = (tmp7_fu_233_p4 | 128'd16);

assign tmp2_fu_199_p4 = {{{global_time_1}, {mid_fu_188_p2}}, {64'd0}};

assign tmp7_fu_233_p4 = {{{add_ln13_fu_216_p2}, {to_fu_222_p2}}, {64'd0}};

assign tmp_1_fu_166_p4 = {{i_2_reg_112[31:11]}};

assign tmp_2_fu_262_p4 = {{to_fu_222_p2[31:11]}};

assign tmp_fu_144_p4 = {{m_reg_100[31:11]}};

assign to_fu_222_p2 = (mid_fu_188_p2 + m_reg_100);

assign zext_ln9_1_fu_228_p1 = add_ln13_fu_216_p2;

assign zext_ln9_fu_194_p1 = global_time_1;

always @ (posedge ap_clk) begin
    m_1_reg_286[0] <= 1'b0;
end

endmodule //ms_mergesort