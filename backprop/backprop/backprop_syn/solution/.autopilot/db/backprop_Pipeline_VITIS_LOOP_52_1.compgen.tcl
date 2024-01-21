# This script segment is generated automatically by AutoPilot

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
    id 44 \
    name activations2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename activations2 \
    op interface \
    ports { activations2_address0 { O 6 vector } activations2_ce0 { O 1 bit } activations2_we0 { O 1 bit } activations2_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'activations2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name weights2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights2 \
    op interface \
    ports { weights2_address0 { O 12 vector } weights2_ce0 { O 1 bit } weights2_q0 { I 64 vector } weights2_address1 { O 12 vector } weights2_ce1 { O 1 bit } weights2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name activations1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load \
    op interface \
    ports { activations1_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name activations1_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_1 \
    op interface \
    ports { activations1_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name activations1_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_2 \
    op interface \
    ports { activations1_load_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name activations1_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_3 \
    op interface \
    ports { activations1_load_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name activations1_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_4 \
    op interface \
    ports { activations1_load_4 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name activations1_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_5 \
    op interface \
    ports { activations1_load_5 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name activations1_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_6 \
    op interface \
    ports { activations1_load_6 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name activations1_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_7 \
    op interface \
    ports { activations1_load_7 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name activations1_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_8 \
    op interface \
    ports { activations1_load_8 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name activations1_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_9 \
    op interface \
    ports { activations1_load_9 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name activations1_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_10 \
    op interface \
    ports { activations1_load_10 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name activations1_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_11 \
    op interface \
    ports { activations1_load_11 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name activations1_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_12 \
    op interface \
    ports { activations1_load_12 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name activations1_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_13 \
    op interface \
    ports { activations1_load_13 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name activations1_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_14 \
    op interface \
    ports { activations1_load_14 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name activations1_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_15 \
    op interface \
    ports { activations1_load_15 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name activations1_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_16 \
    op interface \
    ports { activations1_load_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name activations1_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_17 \
    op interface \
    ports { activations1_load_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name activations1_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_18 \
    op interface \
    ports { activations1_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name activations1_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_19 \
    op interface \
    ports { activations1_load_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name activations1_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_20 \
    op interface \
    ports { activations1_load_20 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name activations1_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_21 \
    op interface \
    ports { activations1_load_21 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name activations1_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_22 \
    op interface \
    ports { activations1_load_22 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name activations1_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_23 \
    op interface \
    ports { activations1_load_23 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name activations1_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_24 \
    op interface \
    ports { activations1_load_24 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name activations1_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_25 \
    op interface \
    ports { activations1_load_25 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name activations1_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_26 \
    op interface \
    ports { activations1_load_26 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name activations1_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_27 \
    op interface \
    ports { activations1_load_27 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name activations1_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_28 \
    op interface \
    ports { activations1_load_28 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name activations1_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_29 \
    op interface \
    ports { activations1_load_29 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name activations1_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_30 \
    op interface \
    ports { activations1_load_30 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name activations1_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_31 \
    op interface \
    ports { activations1_load_31 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name activations1_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_32 \
    op interface \
    ports { activations1_load_32 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name activations1_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_33 \
    op interface \
    ports { activations1_load_33 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name activations1_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_34 \
    op interface \
    ports { activations1_load_34 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name activations1_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_35 \
    op interface \
    ports { activations1_load_35 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name activations1_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_36 \
    op interface \
    ports { activations1_load_36 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name activations1_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_37 \
    op interface \
    ports { activations1_load_37 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name activations1_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_38 \
    op interface \
    ports { activations1_load_38 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name activations1_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_39 \
    op interface \
    ports { activations1_load_39 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name activations1_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_40 \
    op interface \
    ports { activations1_load_40 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name activations1_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_41 \
    op interface \
    ports { activations1_load_41 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name activations1_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_42 \
    op interface \
    ports { activations1_load_42 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name activations1_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_43 \
    op interface \
    ports { activations1_load_43 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name activations1_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_44 \
    op interface \
    ports { activations1_load_44 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name activations1_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_45 \
    op interface \
    ports { activations1_load_45 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name activations1_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_46 \
    op interface \
    ports { activations1_load_46 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name activations1_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_47 \
    op interface \
    ports { activations1_load_47 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name activations1_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_48 \
    op interface \
    ports { activations1_load_48 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name activations1_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_49 \
    op interface \
    ports { activations1_load_49 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name activations1_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_50 \
    op interface \
    ports { activations1_load_50 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name activations1_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_51 \
    op interface \
    ports { activations1_load_51 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name activations1_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_52 \
    op interface \
    ports { activations1_load_52 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name activations1_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_53 \
    op interface \
    ports { activations1_load_53 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name activations1_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_54 \
    op interface \
    ports { activations1_load_54 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name activations1_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_55 \
    op interface \
    ports { activations1_load_55 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name activations1_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_56 \
    op interface \
    ports { activations1_load_56 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name activations1_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_57 \
    op interface \
    ports { activations1_load_57 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name activations1_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_58 \
    op interface \
    ports { activations1_load_58 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name activations1_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_59 \
    op interface \
    ports { activations1_load_59 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name activations1_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_60 \
    op interface \
    ports { activations1_load_60 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name activations1_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_61 \
    op interface \
    ports { activations1_load_61 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name activations1_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_62 \
    op interface \
    ports { activations1_load_62 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name activations1_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations1_load_63 \
    op interface \
    ports { activations1_load_63 { I 64 vector } } \
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


