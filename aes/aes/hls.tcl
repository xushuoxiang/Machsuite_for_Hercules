open_project aes_syn

add_files aes.c
add_files input.data
add_files check.data
add_files -tb local_support.c
add_files -tb ../../common/harness.c
add_files -tb ../../common/support.c 


#add_files -tb aes_test.c

set_top aes256_encrypt_ecb

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
source ./aes_dir

if {$hls_op == 0} {
    csynth_design
} elseif {$hls_op == 1} {
    cosim_design -rtl verilog -tool xsim -trace_level all
} else {
    csynth_design
    cosim_design -rtl verilog -tool xsim -trace_level all
}

#config_rtl -reset all -reset_level low
#csynth_design
#cosim_design -rtl verilog -tool xsim -trace_level all

exit
