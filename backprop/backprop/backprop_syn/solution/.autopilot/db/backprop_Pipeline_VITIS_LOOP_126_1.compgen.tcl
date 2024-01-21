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
    id 350 \
    name oracle_activations1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename oracle_activations1 \
    op interface \
    ports { oracle_activations1_address0 { O 6 vector } oracle_activations1_ce0 { O 1 bit } oracle_activations1_we0 { O 1 bit } oracle_activations1_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'oracle_activations1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 416 \
    name dactivations1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dactivations1 \
    op interface \
    ports { dactivations1_address0 { O 6 vector } dactivations1_ce0 { O 1 bit } dactivations1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dactivations1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
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
    id 353 \
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
    id 354 \
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
    id 355 \
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
    id 356 \
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
    id 357 \
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
    id 358 \
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
    id 359 \
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
    id 360 \
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
    id 361 \
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
    id 362 \
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
    id 363 \
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
    id 364 \
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
    id 365 \
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
    id 366 \
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
    id 367 \
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
    id 368 \
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
    id 369 \
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
    id 370 \
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
    id 371 \
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
    id 372 \
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
    id 373 \
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
    id 374 \
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
    id 375 \
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
    id 376 \
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
    id 377 \
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
    id 378 \
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
    id 379 \
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
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 397 \
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
    id 398 \
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
    id 399 \
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
    id 400 \
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
    id 401 \
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
    id 402 \
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
    id 403 \
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
    id 404 \
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
    id 405 \
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
    id 406 \
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
    id 407 \
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
    id 408 \
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
    id 409 \
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
    id 410 \
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
    id 411 \
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
    id 412 \
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
    id 413 \
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
    id 414 \
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
    id 415 \
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


