# This script segment is generated automatically by AutoPilot

set name backprop_mul_6ns_5ns_10_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name activations1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename activations1 \
    op interface \
    ports { activations1_address0 { O 6 vector } activations1_ce0 { O 1 bit } activations1_we0 { O 1 bit } activations1_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'activations1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 16 \
    name weights1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights1 \
    op interface \
    ports { weights1_address0 { O 10 vector } weights1_ce0 { O 1 bit } weights1_q0 { I 64 vector } weights1_address1 { O 10 vector } weights1_ce1 { O 1 bit } weights1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name bitcast_ln41_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_1 \
    op interface \
    ports { bitcast_ln41_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name bitcast_ln41_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_14 \
    op interface \
    ports { bitcast_ln41_14 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name bitcast_ln41_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_15 \
    op interface \
    ports { bitcast_ln41_15 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name bitcast_ln41_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_16 \
    op interface \
    ports { bitcast_ln41_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name bitcast_ln41_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_17 \
    op interface \
    ports { bitcast_ln41_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name bitcast_ln41_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_18 \
    op interface \
    ports { bitcast_ln41_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name bitcast_ln41_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_19 \
    op interface \
    ports { bitcast_ln41_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name bitcast_ln41_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_20 \
    op interface \
    ports { bitcast_ln41_20 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name bitcast_ln41_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_21 \
    op interface \
    ports { bitcast_ln41_21 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name bitcast_ln41_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_22 \
    op interface \
    ports { bitcast_ln41_22 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name bitcast_ln41_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_23 \
    op interface \
    ports { bitcast_ln41_23 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name bitcast_ln41_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_24 \
    op interface \
    ports { bitcast_ln41_24 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name bitcast_ln41_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bitcast_ln41_25 \
    op interface \
    ports { bitcast_ln41_25 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName backprop_flow_control_loop_pipe_sequential_init_U
set CompName backprop_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix backprop_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


