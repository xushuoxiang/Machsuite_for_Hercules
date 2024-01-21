# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module backprop
set language verilog
set family virtex7
set device xc7v585t
set package -ffg1761
set speed -2
set clock ap_clk
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false
