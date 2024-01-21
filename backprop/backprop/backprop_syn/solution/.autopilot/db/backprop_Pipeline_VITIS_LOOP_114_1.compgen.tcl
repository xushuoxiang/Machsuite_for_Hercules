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
    id 279 \
    name activations1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename activations1 \
    op interface \
    ports { activations1_address0 { O 6 vector } activations1_ce0 { O 1 bit } activations1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'activations1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name delta_weights2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename delta_weights2 \
    op interface \
    ports { delta_weights2_address0 { O 12 vector } delta_weights2_ce0 { O 1 bit } delta_weights2_we0 { O 1 bit } delta_weights2_d0 { O 64 vector } delta_weights2_address1 { O 12 vector } delta_weights2_ce1 { O 1 bit } delta_weights2_we1 { O 1 bit } delta_weights2_d1 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'delta_weights2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name oracle_activations2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load \
    op interface \
    ports { oracle_activations2_load { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name oracle_activations2_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_1 \
    op interface \
    ports { oracle_activations2_load_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name oracle_activations2_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_2 \
    op interface \
    ports { oracle_activations2_load_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name oracle_activations2_load_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_3 \
    op interface \
    ports { oracle_activations2_load_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name oracle_activations2_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_4 \
    op interface \
    ports { oracle_activations2_load_4 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name oracle_activations2_load_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_5 \
    op interface \
    ports { oracle_activations2_load_5 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name oracle_activations2_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_6 \
    op interface \
    ports { oracle_activations2_load_6 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name oracle_activations2_load_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_7 \
    op interface \
    ports { oracle_activations2_load_7 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name oracle_activations2_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_8 \
    op interface \
    ports { oracle_activations2_load_8 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name oracle_activations2_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_9 \
    op interface \
    ports { oracle_activations2_load_9 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name oracle_activations2_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_10 \
    op interface \
    ports { oracle_activations2_load_10 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name oracle_activations2_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_11 \
    op interface \
    ports { oracle_activations2_load_11 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name oracle_activations2_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_12 \
    op interface \
    ports { oracle_activations2_load_12 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name oracle_activations2_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_13 \
    op interface \
    ports { oracle_activations2_load_13 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name oracle_activations2_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_14 \
    op interface \
    ports { oracle_activations2_load_14 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name oracle_activations2_load_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_15 \
    op interface \
    ports { oracle_activations2_load_15 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name oracle_activations2_load_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_16 \
    op interface \
    ports { oracle_activations2_load_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name oracle_activations2_load_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_17 \
    op interface \
    ports { oracle_activations2_load_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name oracle_activations2_load_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_18 \
    op interface \
    ports { oracle_activations2_load_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name oracle_activations2_load_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_19 \
    op interface \
    ports { oracle_activations2_load_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name oracle_activations2_load_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_20 \
    op interface \
    ports { oracle_activations2_load_20 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name oracle_activations2_load_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_21 \
    op interface \
    ports { oracle_activations2_load_21 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name oracle_activations2_load_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_22 \
    op interface \
    ports { oracle_activations2_load_22 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name oracle_activations2_load_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_23 \
    op interface \
    ports { oracle_activations2_load_23 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name oracle_activations2_load_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_24 \
    op interface \
    ports { oracle_activations2_load_24 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name oracle_activations2_load_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_25 \
    op interface \
    ports { oracle_activations2_load_25 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name oracle_activations2_load_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_26 \
    op interface \
    ports { oracle_activations2_load_26 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name oracle_activations2_load_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_27 \
    op interface \
    ports { oracle_activations2_load_27 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name oracle_activations2_load_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_28 \
    op interface \
    ports { oracle_activations2_load_28 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name oracle_activations2_load_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_29 \
    op interface \
    ports { oracle_activations2_load_29 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name oracle_activations2_load_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_30 \
    op interface \
    ports { oracle_activations2_load_30 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name oracle_activations2_load_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_31 \
    op interface \
    ports { oracle_activations2_load_31 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name oracle_activations2_load_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_32 \
    op interface \
    ports { oracle_activations2_load_32 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name oracle_activations2_load_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_33 \
    op interface \
    ports { oracle_activations2_load_33 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name oracle_activations2_load_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_34 \
    op interface \
    ports { oracle_activations2_load_34 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name oracle_activations2_load_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_35 \
    op interface \
    ports { oracle_activations2_load_35 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name oracle_activations2_load_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_36 \
    op interface \
    ports { oracle_activations2_load_36 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name oracle_activations2_load_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_37 \
    op interface \
    ports { oracle_activations2_load_37 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name oracle_activations2_load_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_38 \
    op interface \
    ports { oracle_activations2_load_38 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name oracle_activations2_load_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_39 \
    op interface \
    ports { oracle_activations2_load_39 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name oracle_activations2_load_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_40 \
    op interface \
    ports { oracle_activations2_load_40 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name oracle_activations2_load_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_41 \
    op interface \
    ports { oracle_activations2_load_41 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name oracle_activations2_load_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_42 \
    op interface \
    ports { oracle_activations2_load_42 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name oracle_activations2_load_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_43 \
    op interface \
    ports { oracle_activations2_load_43 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name oracle_activations2_load_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_44 \
    op interface \
    ports { oracle_activations2_load_44 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name oracle_activations2_load_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_45 \
    op interface \
    ports { oracle_activations2_load_45 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name oracle_activations2_load_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_46 \
    op interface \
    ports { oracle_activations2_load_46 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name oracle_activations2_load_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_47 \
    op interface \
    ports { oracle_activations2_load_47 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name oracle_activations2_load_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_48 \
    op interface \
    ports { oracle_activations2_load_48 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name oracle_activations2_load_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_49 \
    op interface \
    ports { oracle_activations2_load_49 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name oracle_activations2_load_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_50 \
    op interface \
    ports { oracle_activations2_load_50 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name oracle_activations2_load_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_51 \
    op interface \
    ports { oracle_activations2_load_51 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name oracle_activations2_load_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_52 \
    op interface \
    ports { oracle_activations2_load_52 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name oracle_activations2_load_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_53 \
    op interface \
    ports { oracle_activations2_load_53 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name oracle_activations2_load_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_54 \
    op interface \
    ports { oracle_activations2_load_54 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name oracle_activations2_load_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_55 \
    op interface \
    ports { oracle_activations2_load_55 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name oracle_activations2_load_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_56 \
    op interface \
    ports { oracle_activations2_load_56 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name oracle_activations2_load_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_57 \
    op interface \
    ports { oracle_activations2_load_57 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name oracle_activations2_load_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_58 \
    op interface \
    ports { oracle_activations2_load_58 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name oracle_activations2_load_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_59 \
    op interface \
    ports { oracle_activations2_load_59 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name oracle_activations2_load_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_60 \
    op interface \
    ports { oracle_activations2_load_60 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name oracle_activations2_load_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_61 \
    op interface \
    ports { oracle_activations2_load_61 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name oracle_activations2_load_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_62 \
    op interface \
    ports { oracle_activations2_load_62 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name oracle_activations2_load_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_oracle_activations2_load_63 \
    op interface \
    ports { oracle_activations2_load_63 { I 64 vector } } \
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


