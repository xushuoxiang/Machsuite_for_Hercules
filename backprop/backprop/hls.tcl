open_project backprop_syn

add_files backprop.c
add_files input.data
add_files check.data
add_files local_support.c

add_files -tb ../../common/support.c
add_files -tb ../../common/support.h
add_files -tb ../../common/harness.c  
add_files -tb local_support.c

set_top backprop
open_solution -reset solution

set_part virtex7
create_clock -period 10
#source ./stencil_dir

csim_design

csynth_design
cosim_design -rtl verilog -tool xsim -trace_level all

exit
