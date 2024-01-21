open_project sort_syn

set_top ss_sort

add_files sort.c
add_files ../../common/hercules.c
add_files input.data
add_files check.data
add_files -tb ../../common/harness.c
add_files -tb ../../common/support.c 
add_files -tb local_support.c

set clock 10
set part xczu19eg-ffvc1760-2-i


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
source ./sort_dir

#config_rtl -reset all -reset_level low
set_clock_uncertainty 0
if {$hls_op == 0} {
    csynth_design
} elseif {$hls_op == 1} {
    cosim_design -rtl verilog -tool xsim -trace_level all
} elseif {$hls_op == 3} {
    csynth_design
    config_export -version 1.1.0 -ipname sort_highlevel
    export_design -rtl verilog -format ip_catalog 
} else {
    csynth_design
    cosim_design -rtl verilog -tool xsim -trace_level all
}

exit
