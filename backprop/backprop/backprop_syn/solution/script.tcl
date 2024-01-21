############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project backprop_syn
set_top backprop
add_files backprop.c
add_files input.data
add_files check.data
add_files local_support.c
add_files -tb ../../common/support.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../common/support.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../common/harness.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb local_support.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution" -flow_target vivado
set_part {xc7v585t-ffg1761-2}
create_clock -period 10 -name default
config_interface -m_axi_latency 0
config_export -format ip_catalog -rtl verilog -version 1.1.0 -vivado_clock 10
source "./backprop_syn/solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
