open_project stencil_syn

add_files stencil.c -cflags "-I../../common"
add_files input.data
add_files check.data
#add_files -tb ../../common/support.h
add_files -tb ../../common/support.c -cflags "-I../../common -g"
add_files -tb local_support.c -cflags "-I../../common -g"
add_files -tb ../../common/harness.c -cflags "-I../../common -g"

set_top stencil
set hls_op $env(hls_operation)
if {$hls_op == 0} {
    open_solution -reset solution
} elseif {$hls_op == 1} {
    open_solution solution
} else {
    open_solution -reset solution
}

set_part virtex7
create_clock -period 10
source ./stencil_dir

if {$hls_op == 0} {
    csynth_design
} elseif {$hls_op == 1} {
    cosim_design -rtl verilog -tool xsim -trace_level all
} else {
    csynth_design
    cosim_design -rtl verilog -tool xsim -trace_level all
}

exit
