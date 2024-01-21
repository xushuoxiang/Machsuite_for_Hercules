# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name dactivations3_2_06 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dactivations3_2_06 \
    op interface \
    ports { dactivations3_2_06 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name dactivations3_1_05 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dactivations3_1_05 \
    op interface \
    ports { dactivations3_1_05 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name dactivations3_0_04 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dactivations3_0_04 \
    op interface \
    ports { dactivations3_0_04 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name activations3_2_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_2_6_reload \
    op interface \
    ports { activations3_2_6_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name activations3_1_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_1_6_reload \
    op interface \
    ports { activations3_1_6_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name activations3_0_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_0_63_reload \
    op interface \
    ports { activations3_0_63_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name dactivations3_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dactivations3_2_1_out \
    op interface \
    ports { dactivations3_2_1_out { O 64 vector } dactivations3_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name dactivations3_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dactivations3_1_1_out \
    op interface \
    ports { dactivations3_1_1_out { O 64 vector } dactivations3_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name dactivations3_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dactivations3_0_1_out \
    op interface \
    ports { dactivations3_0_1_out { O 64 vector } dactivations3_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name activations3_2_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_2_8_out \
    op interface \
    ports { activations3_2_8_out { O 64 vector } activations3_2_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name activations3_1_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_1_8_out \
    op interface \
    ports { activations3_1_8_out { O 64 vector } activations3_1_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name activations3_0_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_0_8_out \
    op interface \
    ports { activations3_0_8_out { O 64 vector } activations3_0_8_out_ap_vld { O 1 bit } } \
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


