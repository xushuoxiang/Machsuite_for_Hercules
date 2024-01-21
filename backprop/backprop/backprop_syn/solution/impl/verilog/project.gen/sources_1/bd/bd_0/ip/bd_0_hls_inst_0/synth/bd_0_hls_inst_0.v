// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:backprop:1.1
// IP Revision: 0

(* X_CORE_INFO = "backprop,Vivado 2022.1" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,backprop,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,backprop,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=backprop,x_ipVersion=1.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  weights1_ce0,
  weights1_we0,
  weights1_ce1,
  weights2_ce0,
  weights2_we0,
  weights2_ce1,
  weights3_ce0,
  weights3_we0,
  weights3_ce1,
  biases1_ce0,
  biases1_we0,
  biases1_ce1,
  biases2_ce0,
  biases2_we0,
  biases2_ce1,
  biases3_ce0,
  biases3_we0,
  biases3_ce1,
  training_data_ce0,
  training_data_ce1,
  training_targets_ce0,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  weights1_address0,
  weights1_d0,
  weights1_q0,
  weights1_address1,
  weights1_q1,
  weights2_address0,
  weights2_d0,
  weights2_q0,
  weights2_address1,
  weights2_q1,
  weights3_address0,
  weights3_d0,
  weights3_q0,
  weights3_address1,
  weights3_q1,
  biases1_address0,
  biases1_d0,
  biases1_q0,
  biases1_address1,
  biases1_q1,
  biases2_address0,
  biases2_d0,
  biases2_q0,
  biases2_address1,
  biases2_q1,
  biases3_address0,
  biases3_d0,
  biases3_q0,
  biases3_address1,
  biases3_q1,
  training_data_address0,
  training_data_q0,
  training_data_address1,
  training_data_q1,
  training_targets_address0,
  training_targets_q0
);

output wire weights1_ce0;
output wire weights1_we0;
output wire weights1_ce1;
output wire weights2_ce0;
output wire weights2_we0;
output wire weights2_ce1;
output wire weights3_ce0;
output wire weights3_we0;
output wire weights3_ce1;
output wire biases1_ce0;
output wire biases1_we0;
output wire biases1_ce1;
output wire biases2_ce0;
output wire biases2_we0;
output wire biases2_ce1;
output wire biases3_ce0;
output wire biases3_we0;
output wire biases3_ce1;
output wire training_data_ce0;
output wire training_data_ce1;
output wire training_targets_ce0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights1_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights1_address0 DATA" *)
output wire [9 : 0] weights1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights1_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights1_d0 DATA" *)
output wire [63 : 0] weights1_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights1_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights1_q0 DATA" *)
input wire [63 : 0] weights1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights1_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights1_address1 DATA" *)
output wire [9 : 0] weights1_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights1_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights1_q1 DATA" *)
input wire [63 : 0] weights1_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights2_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights2_address0 DATA" *)
output wire [11 : 0] weights2_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights2_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights2_d0 DATA" *)
output wire [63 : 0] weights2_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights2_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights2_q0 DATA" *)
input wire [63 : 0] weights2_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights2_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights2_address1 DATA" *)
output wire [11 : 0] weights2_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights2_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights2_q1 DATA" *)
input wire [63 : 0] weights2_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights3_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights3_address0 DATA" *)
output wire [7 : 0] weights3_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights3_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights3_d0 DATA" *)
output wire [63 : 0] weights3_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights3_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights3_q0 DATA" *)
input wire [63 : 0] weights3_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights3_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights3_address1 DATA" *)
output wire [7 : 0] weights3_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights3_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 weights3_q1 DATA" *)
input wire [63 : 0] weights3_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases1_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases1_address0 DATA" *)
output wire [5 : 0] biases1_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases1_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases1_d0 DATA" *)
output wire [63 : 0] biases1_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases1_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases1_q0 DATA" *)
input wire [63 : 0] biases1_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases1_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases1_address1 DATA" *)
output wire [5 : 0] biases1_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases1_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases1_q1 DATA" *)
input wire [63 : 0] biases1_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases2_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases2_address0 DATA" *)
output wire [5 : 0] biases2_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases2_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases2_d0 DATA" *)
output wire [63 : 0] biases2_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases2_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases2_q0 DATA" *)
input wire [63 : 0] biases2_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases2_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases2_address1 DATA" *)
output wire [5 : 0] biases2_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases2_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases2_q1 DATA" *)
input wire [63 : 0] biases2_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases3_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases3_address0 DATA" *)
output wire [1 : 0] biases3_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases3_d0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases3_d0 DATA" *)
output wire [63 : 0] biases3_d0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases3_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases3_q0 DATA" *)
input wire [63 : 0] biases3_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases3_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases3_address1 DATA" *)
output wire [1 : 0] biases3_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME biases3_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 biases3_q1 DATA" *)
input wire [63 : 0] biases3_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME training_data_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 training_data_address0 DATA" *)
output wire [11 : 0] training_data_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME training_data_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 training_data_q0 DATA" *)
input wire [63 : 0] training_data_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME training_data_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 training_data_address1 DATA" *)
output wire [11 : 0] training_data_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME training_data_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 training_data_q1 DATA" *)
input wire [63 : 0] training_data_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME training_targets_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 training_targets_address0 DATA" *)
output wire [8 : 0] training_targets_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME training_targets_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 training_targets_q0 DATA" *)
input wire [63 : 0] training_targets_q0;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  backprop inst (
    .weights1_ce0(weights1_ce0),
    .weights1_we0(weights1_we0),
    .weights1_ce1(weights1_ce1),
    .weights2_ce0(weights2_ce0),
    .weights2_we0(weights2_we0),
    .weights2_ce1(weights2_ce1),
    .weights3_ce0(weights3_ce0),
    .weights3_we0(weights3_we0),
    .weights3_ce1(weights3_ce1),
    .biases1_ce0(biases1_ce0),
    .biases1_we0(biases1_we0),
    .biases1_ce1(biases1_ce1),
    .biases2_ce0(biases2_ce0),
    .biases2_we0(biases2_we0),
    .biases2_ce1(biases2_ce1),
    .biases3_ce0(biases3_ce0),
    .biases3_we0(biases3_we0),
    .biases3_ce1(biases3_ce1),
    .training_data_ce0(training_data_ce0),
    .training_data_ce1(training_data_ce1),
    .training_targets_ce0(training_targets_ce0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .weights1_address0(weights1_address0),
    .weights1_d0(weights1_d0),
    .weights1_q0(weights1_q0),
    .weights1_address1(weights1_address1),
    .weights1_q1(weights1_q1),
    .weights2_address0(weights2_address0),
    .weights2_d0(weights2_d0),
    .weights2_q0(weights2_q0),
    .weights2_address1(weights2_address1),
    .weights2_q1(weights2_q1),
    .weights3_address0(weights3_address0),
    .weights3_d0(weights3_d0),
    .weights3_q0(weights3_q0),
    .weights3_address1(weights3_address1),
    .weights3_q1(weights3_q1),
    .biases1_address0(biases1_address0),
    .biases1_d0(biases1_d0),
    .biases1_q0(biases1_q0),
    .biases1_address1(biases1_address1),
    .biases1_q1(biases1_q1),
    .biases2_address0(biases2_address0),
    .biases2_d0(biases2_d0),
    .biases2_q0(biases2_q0),
    .biases2_address1(biases2_address1),
    .biases2_q1(biases2_q1),
    .biases3_address0(biases3_address0),
    .biases3_d0(biases3_d0),
    .biases3_q0(biases3_q0),
    .biases3_address1(biases3_address1),
    .biases3_q1(biases3_q1),
    .training_data_address0(training_data_address0),
    .training_data_q0(training_data_q0),
    .training_data_address1(training_data_address1),
    .training_data_q1(training_data_q1),
    .training_targets_address0(training_targets_address0),
    .training_targets_q0(training_targets_q0)
  );
endmodule
