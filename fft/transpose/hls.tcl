open_project fft_syn

set_top fft1D_512

add_files fft.c
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c 
add_files -tb ../../common/support.c 
add_files -tb local_support.c

set clock 10
set part virtex7

set hls_op $env(hls_operation)
if {$hls_op == 0} {
    open_solution -reset solution
} elseif {$hls_op == 1} {
    open_solution solution
} else {
    open_solution -reset solution
}
set_part $part
create_clock -period $clock
set_clock_uncertainty 0
#source ./fft_dir
config_rtl -reset all -reset_level low
if {$hls_op == 0} {
    csynth_design
} elseif {$hls_op == 1} {
    cosim_design -rtl verilog -tool xsim -trace_level all
} else {
    csynth_design
    cosim_design -rtl verilog -tool xsim -trace_level all
}
exit
