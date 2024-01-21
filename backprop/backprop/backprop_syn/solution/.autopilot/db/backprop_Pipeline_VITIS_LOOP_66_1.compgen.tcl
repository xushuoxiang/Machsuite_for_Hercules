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
    id 127 \
    name weights3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weights3 \
    op interface \
    ports { weights3_address0 { O 8 vector } weights3_ce0 { O 1 bit } weights3_q0 { I 64 vector } weights3_address1 { O 8 vector } weights3_ce1 { O 1 bit } weights3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weights3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name activations3_2_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_2_1_reload \
    op interface \
    ports { activations3_2_1_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name activations3_1_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_1_1_reload \
    op interface \
    ports { activations3_1_1_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name activations3_0_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_0_1_reload \
    op interface \
    ports { activations3_0_1_reload { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name activations2_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_2 \
    op interface \
    ports { activations2_load_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name activations2_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_4 \
    op interface \
    ports { activations2_load_4 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name activations2_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_5 \
    op interface \
    ports { activations2_load_5 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name activations2_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_6 \
    op interface \
    ports { activations2_load_6 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name activations2_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_7 \
    op interface \
    ports { activations2_load_7 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name activations2_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_8 \
    op interface \
    ports { activations2_load_8 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name activations2_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_9 \
    op interface \
    ports { activations2_load_9 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name activations2_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_10 \
    op interface \
    ports { activations2_load_10 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name activations2_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_11 \
    op interface \
    ports { activations2_load_11 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name activations2_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_12 \
    op interface \
    ports { activations2_load_12 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name activations2_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_13 \
    op interface \
    ports { activations2_load_13 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name activations2_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_14 \
    op interface \
    ports { activations2_load_14 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name activations2_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_15 \
    op interface \
    ports { activations2_load_15 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name activations2_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_16 \
    op interface \
    ports { activations2_load_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name activations2_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_17 \
    op interface \
    ports { activations2_load_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name activations2_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_18 \
    op interface \
    ports { activations2_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name activations2_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_19 \
    op interface \
    ports { activations2_load_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name activations2_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_20 \
    op interface \
    ports { activations2_load_20 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name activations2_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_21 \
    op interface \
    ports { activations2_load_21 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name activations2_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_22 \
    op interface \
    ports { activations2_load_22 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name activations2_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_23 \
    op interface \
    ports { activations2_load_23 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name activations2_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_24 \
    op interface \
    ports { activations2_load_24 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name activations2_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_25 \
    op interface \
    ports { activations2_load_25 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name activations2_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_26 \
    op interface \
    ports { activations2_load_26 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name activations2_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_27 \
    op interface \
    ports { activations2_load_27 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name activations2_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_28 \
    op interface \
    ports { activations2_load_28 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name activations2_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_29 \
    op interface \
    ports { activations2_load_29 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name activations2_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_30 \
    op interface \
    ports { activations2_load_30 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name activations2_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_31 \
    op interface \
    ports { activations2_load_31 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name activations2_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_32 \
    op interface \
    ports { activations2_load_32 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name activations2_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_33 \
    op interface \
    ports { activations2_load_33 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name activations2_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_34 \
    op interface \
    ports { activations2_load_34 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name activations2_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_35 \
    op interface \
    ports { activations2_load_35 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name activations2_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_36 \
    op interface \
    ports { activations2_load_36 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name activations2_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_37 \
    op interface \
    ports { activations2_load_37 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name activations2_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_38 \
    op interface \
    ports { activations2_load_38 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name activations2_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_39 \
    op interface \
    ports { activations2_load_39 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name activations2_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_40 \
    op interface \
    ports { activations2_load_40 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name activations2_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_41 \
    op interface \
    ports { activations2_load_41 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name activations2_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_42 \
    op interface \
    ports { activations2_load_42 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name activations2_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_43 \
    op interface \
    ports { activations2_load_43 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name activations2_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_44 \
    op interface \
    ports { activations2_load_44 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name activations2_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_45 \
    op interface \
    ports { activations2_load_45 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name activations2_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_46 \
    op interface \
    ports { activations2_load_46 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name activations2_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_47 \
    op interface \
    ports { activations2_load_47 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name activations2_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_48 \
    op interface \
    ports { activations2_load_48 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name activations2_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_49 \
    op interface \
    ports { activations2_load_49 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name activations2_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_50 \
    op interface \
    ports { activations2_load_50 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name activations2_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_51 \
    op interface \
    ports { activations2_load_51 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name activations2_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_52 \
    op interface \
    ports { activations2_load_52 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name activations2_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_53 \
    op interface \
    ports { activations2_load_53 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name activations2_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_54 \
    op interface \
    ports { activations2_load_54 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name activations2_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_55 \
    op interface \
    ports { activations2_load_55 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name activations2_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_56 \
    op interface \
    ports { activations2_load_56 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name activations2_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_57 \
    op interface \
    ports { activations2_load_57 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name activations2_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_58 \
    op interface \
    ports { activations2_load_58 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name activations2_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_59 \
    op interface \
    ports { activations2_load_59 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name activations2_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_60 \
    op interface \
    ports { activations2_load_60 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name activations2_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_61 \
    op interface \
    ports { activations2_load_61 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name activations2_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_62 \
    op interface \
    ports { activations2_load_62 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name activations2_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_63 \
    op interface \
    ports { activations2_load_63 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name activations2_load_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_64 \
    op interface \
    ports { activations2_load_64 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name activations2_load_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_65 \
    op interface \
    ports { activations2_load_65 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name activations2_load_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_activations2_load_66 \
    op interface \
    ports { activations2_load_66 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name activations3_2_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_2_4_out \
    op interface \
    ports { activations3_2_4_out { O 64 vector } activations3_2_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name activations3_1_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_1_4_out \
    op interface \
    ports { activations3_1_4_out { O 64 vector } activations3_1_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name activations3_0_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_activations3_0_41_out \
    op interface \
    ports { activations3_0_41_out { O 64 vector } activations3_0_41_out_ap_vld { O 1 bit } } \
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


