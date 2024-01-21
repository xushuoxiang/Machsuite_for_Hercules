set moduleName backprop_Pipeline_VITIS_LOOP_66_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {backprop_Pipeline_VITIS_LOOP_66_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ activations3_2_1_reload double 64 regular  }
	{ activations3_1_1_reload double 64 regular  }
	{ activations3_0_1_reload double 64 regular  }
	{ weights3 int 64 regular {array 192 { 1 1 } 1 1 }  }
	{ activations2_load_2 double 64 regular  }
	{ activations2_load_4 double 64 regular  }
	{ activations2_load_5 double 64 regular  }
	{ activations2_load_6 double 64 regular  }
	{ activations2_load_7 double 64 regular  }
	{ activations2_load_8 double 64 regular  }
	{ activations2_load_9 double 64 regular  }
	{ activations2_load_10 double 64 regular  }
	{ activations2_load_11 double 64 regular  }
	{ activations2_load_12 double 64 regular  }
	{ activations2_load_13 double 64 regular  }
	{ activations2_load_14 double 64 regular  }
	{ activations2_load_15 double 64 regular  }
	{ activations2_load_16 double 64 regular  }
	{ activations2_load_17 double 64 regular  }
	{ activations2_load_18 double 64 regular  }
	{ activations2_load_19 double 64 regular  }
	{ activations2_load_20 double 64 regular  }
	{ activations2_load_21 double 64 regular  }
	{ activations2_load_22 double 64 regular  }
	{ activations2_load_23 double 64 regular  }
	{ activations2_load_24 double 64 regular  }
	{ activations2_load_25 double 64 regular  }
	{ activations2_load_26 double 64 regular  }
	{ activations2_load_27 double 64 regular  }
	{ activations2_load_28 double 64 regular  }
	{ activations2_load_29 double 64 regular  }
	{ activations2_load_30 double 64 regular  }
	{ activations2_load_31 double 64 regular  }
	{ activations2_load_32 double 64 regular  }
	{ activations2_load_33 double 64 regular  }
	{ activations2_load_34 double 64 regular  }
	{ activations2_load_35 double 64 regular  }
	{ activations2_load_36 double 64 regular  }
	{ activations2_load_37 double 64 regular  }
	{ activations2_load_38 double 64 regular  }
	{ activations2_load_39 double 64 regular  }
	{ activations2_load_40 double 64 regular  }
	{ activations2_load_41 double 64 regular  }
	{ activations2_load_42 double 64 regular  }
	{ activations2_load_43 double 64 regular  }
	{ activations2_load_44 double 64 regular  }
	{ activations2_load_45 double 64 regular  }
	{ activations2_load_46 double 64 regular  }
	{ activations2_load_47 double 64 regular  }
	{ activations2_load_48 double 64 regular  }
	{ activations2_load_49 double 64 regular  }
	{ activations2_load_50 double 64 regular  }
	{ activations2_load_51 double 64 regular  }
	{ activations2_load_52 double 64 regular  }
	{ activations2_load_53 double 64 regular  }
	{ activations2_load_54 double 64 regular  }
	{ activations2_load_55 double 64 regular  }
	{ activations2_load_56 double 64 regular  }
	{ activations2_load_57 double 64 regular  }
	{ activations2_load_58 double 64 regular  }
	{ activations2_load_59 double 64 regular  }
	{ activations2_load_60 double 64 regular  }
	{ activations2_load_61 double 64 regular  }
	{ activations2_load_62 double 64 regular  }
	{ activations2_load_63 double 64 regular  }
	{ activations2_load_64 double 64 regular  }
	{ activations2_load_65 double 64 regular  }
	{ activations2_load_66 double 64 regular  }
	{ activations3_2_4_out double 64 regular {pointer 1}  }
	{ activations3_1_4_out double 64 regular {pointer 1}  }
	{ activations3_0_41_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "activations3_2_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations3_1_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations3_0_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "weights3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_6", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_7", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_8", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_9", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_10", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_11", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_12", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_13", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_14", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_15", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_16", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_17", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_18", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_19", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_20", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_21", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_22", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_23", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_24", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_25", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_26", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_27", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_28", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_29", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_30", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_31", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_32", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_33", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_34", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_35", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_36", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_37", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_38", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_39", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_40", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_41", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_42", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_43", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_44", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_45", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_46", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_47", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_48", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_49", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_50", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_51", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_52", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_53", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_54", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_55", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_56", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_57", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_58", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_59", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_60", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_61", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_62", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_63", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_64", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_65", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations2_load_66", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations3_2_4_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "activations3_1_4_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "activations3_0_41_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 103
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ activations3_2_1_reload sc_in sc_lv 64 signal 0 } 
	{ activations3_1_1_reload sc_in sc_lv 64 signal 1 } 
	{ activations3_0_1_reload sc_in sc_lv 64 signal 2 } 
	{ weights3_address0 sc_out sc_lv 8 signal 3 } 
	{ weights3_ce0 sc_out sc_logic 1 signal 3 } 
	{ weights3_q0 sc_in sc_lv 64 signal 3 } 
	{ weights3_address1 sc_out sc_lv 8 signal 3 } 
	{ weights3_ce1 sc_out sc_logic 1 signal 3 } 
	{ weights3_q1 sc_in sc_lv 64 signal 3 } 
	{ activations2_load_2 sc_in sc_lv 64 signal 4 } 
	{ activations2_load_4 sc_in sc_lv 64 signal 5 } 
	{ activations2_load_5 sc_in sc_lv 64 signal 6 } 
	{ activations2_load_6 sc_in sc_lv 64 signal 7 } 
	{ activations2_load_7 sc_in sc_lv 64 signal 8 } 
	{ activations2_load_8 sc_in sc_lv 64 signal 9 } 
	{ activations2_load_9 sc_in sc_lv 64 signal 10 } 
	{ activations2_load_10 sc_in sc_lv 64 signal 11 } 
	{ activations2_load_11 sc_in sc_lv 64 signal 12 } 
	{ activations2_load_12 sc_in sc_lv 64 signal 13 } 
	{ activations2_load_13 sc_in sc_lv 64 signal 14 } 
	{ activations2_load_14 sc_in sc_lv 64 signal 15 } 
	{ activations2_load_15 sc_in sc_lv 64 signal 16 } 
	{ activations2_load_16 sc_in sc_lv 64 signal 17 } 
	{ activations2_load_17 sc_in sc_lv 64 signal 18 } 
	{ activations2_load_18 sc_in sc_lv 64 signal 19 } 
	{ activations2_load_19 sc_in sc_lv 64 signal 20 } 
	{ activations2_load_20 sc_in sc_lv 64 signal 21 } 
	{ activations2_load_21 sc_in sc_lv 64 signal 22 } 
	{ activations2_load_22 sc_in sc_lv 64 signal 23 } 
	{ activations2_load_23 sc_in sc_lv 64 signal 24 } 
	{ activations2_load_24 sc_in sc_lv 64 signal 25 } 
	{ activations2_load_25 sc_in sc_lv 64 signal 26 } 
	{ activations2_load_26 sc_in sc_lv 64 signal 27 } 
	{ activations2_load_27 sc_in sc_lv 64 signal 28 } 
	{ activations2_load_28 sc_in sc_lv 64 signal 29 } 
	{ activations2_load_29 sc_in sc_lv 64 signal 30 } 
	{ activations2_load_30 sc_in sc_lv 64 signal 31 } 
	{ activations2_load_31 sc_in sc_lv 64 signal 32 } 
	{ activations2_load_32 sc_in sc_lv 64 signal 33 } 
	{ activations2_load_33 sc_in sc_lv 64 signal 34 } 
	{ activations2_load_34 sc_in sc_lv 64 signal 35 } 
	{ activations2_load_35 sc_in sc_lv 64 signal 36 } 
	{ activations2_load_36 sc_in sc_lv 64 signal 37 } 
	{ activations2_load_37 sc_in sc_lv 64 signal 38 } 
	{ activations2_load_38 sc_in sc_lv 64 signal 39 } 
	{ activations2_load_39 sc_in sc_lv 64 signal 40 } 
	{ activations2_load_40 sc_in sc_lv 64 signal 41 } 
	{ activations2_load_41 sc_in sc_lv 64 signal 42 } 
	{ activations2_load_42 sc_in sc_lv 64 signal 43 } 
	{ activations2_load_43 sc_in sc_lv 64 signal 44 } 
	{ activations2_load_44 sc_in sc_lv 64 signal 45 } 
	{ activations2_load_45 sc_in sc_lv 64 signal 46 } 
	{ activations2_load_46 sc_in sc_lv 64 signal 47 } 
	{ activations2_load_47 sc_in sc_lv 64 signal 48 } 
	{ activations2_load_48 sc_in sc_lv 64 signal 49 } 
	{ activations2_load_49 sc_in sc_lv 64 signal 50 } 
	{ activations2_load_50 sc_in sc_lv 64 signal 51 } 
	{ activations2_load_51 sc_in sc_lv 64 signal 52 } 
	{ activations2_load_52 sc_in sc_lv 64 signal 53 } 
	{ activations2_load_53 sc_in sc_lv 64 signal 54 } 
	{ activations2_load_54 sc_in sc_lv 64 signal 55 } 
	{ activations2_load_55 sc_in sc_lv 64 signal 56 } 
	{ activations2_load_56 sc_in sc_lv 64 signal 57 } 
	{ activations2_load_57 sc_in sc_lv 64 signal 58 } 
	{ activations2_load_58 sc_in sc_lv 64 signal 59 } 
	{ activations2_load_59 sc_in sc_lv 64 signal 60 } 
	{ activations2_load_60 sc_in sc_lv 64 signal 61 } 
	{ activations2_load_61 sc_in sc_lv 64 signal 62 } 
	{ activations2_load_62 sc_in sc_lv 64 signal 63 } 
	{ activations2_load_63 sc_in sc_lv 64 signal 64 } 
	{ activations2_load_64 sc_in sc_lv 64 signal 65 } 
	{ activations2_load_65 sc_in sc_lv 64 signal 66 } 
	{ activations2_load_66 sc_in sc_lv 64 signal 67 } 
	{ activations3_2_4_out sc_out sc_lv 64 signal 68 } 
	{ activations3_2_4_out_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ activations3_1_4_out sc_out sc_lv 64 signal 69 } 
	{ activations3_1_4_out_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ activations3_0_41_out sc_out sc_lv 64 signal 70 } 
	{ activations3_0_41_out_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ grp_fu_6768_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_6768_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6772_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6772_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6772_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_6772_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6772_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6776_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6780_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6780_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6780_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6780_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "activations3_2_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_2_1_reload", "role": "default" }} , 
 	{ "name": "activations3_1_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_1_1_reload", "role": "default" }} , 
 	{ "name": "activations3_0_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_0_1_reload", "role": "default" }} , 
 	{ "name": "weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address0" }} , 
 	{ "name": "weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce0" }} , 
 	{ "name": "weights3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q0" }} , 
 	{ "name": "weights3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address1" }} , 
 	{ "name": "weights3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce1" }} , 
 	{ "name": "weights3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q1" }} , 
 	{ "name": "activations2_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_2", "role": "default" }} , 
 	{ "name": "activations2_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_4", "role": "default" }} , 
 	{ "name": "activations2_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_5", "role": "default" }} , 
 	{ "name": "activations2_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_6", "role": "default" }} , 
 	{ "name": "activations2_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_7", "role": "default" }} , 
 	{ "name": "activations2_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_8", "role": "default" }} , 
 	{ "name": "activations2_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_9", "role": "default" }} , 
 	{ "name": "activations2_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_10", "role": "default" }} , 
 	{ "name": "activations2_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_11", "role": "default" }} , 
 	{ "name": "activations2_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_12", "role": "default" }} , 
 	{ "name": "activations2_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_13", "role": "default" }} , 
 	{ "name": "activations2_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_14", "role": "default" }} , 
 	{ "name": "activations2_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_15", "role": "default" }} , 
 	{ "name": "activations2_load_16", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_16", "role": "default" }} , 
 	{ "name": "activations2_load_17", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_17", "role": "default" }} , 
 	{ "name": "activations2_load_18", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_18", "role": "default" }} , 
 	{ "name": "activations2_load_19", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_19", "role": "default" }} , 
 	{ "name": "activations2_load_20", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_20", "role": "default" }} , 
 	{ "name": "activations2_load_21", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_21", "role": "default" }} , 
 	{ "name": "activations2_load_22", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_22", "role": "default" }} , 
 	{ "name": "activations2_load_23", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_23", "role": "default" }} , 
 	{ "name": "activations2_load_24", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_24", "role": "default" }} , 
 	{ "name": "activations2_load_25", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_25", "role": "default" }} , 
 	{ "name": "activations2_load_26", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_26", "role": "default" }} , 
 	{ "name": "activations2_load_27", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_27", "role": "default" }} , 
 	{ "name": "activations2_load_28", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_28", "role": "default" }} , 
 	{ "name": "activations2_load_29", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_29", "role": "default" }} , 
 	{ "name": "activations2_load_30", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_30", "role": "default" }} , 
 	{ "name": "activations2_load_31", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_31", "role": "default" }} , 
 	{ "name": "activations2_load_32", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_32", "role": "default" }} , 
 	{ "name": "activations2_load_33", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_33", "role": "default" }} , 
 	{ "name": "activations2_load_34", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_34", "role": "default" }} , 
 	{ "name": "activations2_load_35", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_35", "role": "default" }} , 
 	{ "name": "activations2_load_36", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_36", "role": "default" }} , 
 	{ "name": "activations2_load_37", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_37", "role": "default" }} , 
 	{ "name": "activations2_load_38", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_38", "role": "default" }} , 
 	{ "name": "activations2_load_39", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_39", "role": "default" }} , 
 	{ "name": "activations2_load_40", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_40", "role": "default" }} , 
 	{ "name": "activations2_load_41", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_41", "role": "default" }} , 
 	{ "name": "activations2_load_42", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_42", "role": "default" }} , 
 	{ "name": "activations2_load_43", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_43", "role": "default" }} , 
 	{ "name": "activations2_load_44", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_44", "role": "default" }} , 
 	{ "name": "activations2_load_45", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_45", "role": "default" }} , 
 	{ "name": "activations2_load_46", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_46", "role": "default" }} , 
 	{ "name": "activations2_load_47", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_47", "role": "default" }} , 
 	{ "name": "activations2_load_48", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_48", "role": "default" }} , 
 	{ "name": "activations2_load_49", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_49", "role": "default" }} , 
 	{ "name": "activations2_load_50", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_50", "role": "default" }} , 
 	{ "name": "activations2_load_51", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_51", "role": "default" }} , 
 	{ "name": "activations2_load_52", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_52", "role": "default" }} , 
 	{ "name": "activations2_load_53", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_53", "role": "default" }} , 
 	{ "name": "activations2_load_54", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_54", "role": "default" }} , 
 	{ "name": "activations2_load_55", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_55", "role": "default" }} , 
 	{ "name": "activations2_load_56", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_56", "role": "default" }} , 
 	{ "name": "activations2_load_57", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_57", "role": "default" }} , 
 	{ "name": "activations2_load_58", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_58", "role": "default" }} , 
 	{ "name": "activations2_load_59", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_59", "role": "default" }} , 
 	{ "name": "activations2_load_60", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_60", "role": "default" }} , 
 	{ "name": "activations2_load_61", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_61", "role": "default" }} , 
 	{ "name": "activations2_load_62", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_62", "role": "default" }} , 
 	{ "name": "activations2_load_63", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_63", "role": "default" }} , 
 	{ "name": "activations2_load_64", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_64", "role": "default" }} , 
 	{ "name": "activations2_load_65", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_65", "role": "default" }} , 
 	{ "name": "activations2_load_66", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations2_load_66", "role": "default" }} , 
 	{ "name": "activations3_2_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_2_4_out", "role": "default" }} , 
 	{ "name": "activations3_2_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "activations3_2_4_out", "role": "ap_vld" }} , 
 	{ "name": "activations3_1_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_1_4_out", "role": "default" }} , 
 	{ "name": "activations3_1_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "activations3_1_4_out", "role": "ap_vld" }} , 
 	{ "name": "activations3_0_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_0_41_out", "role": "default" }} , 
 	{ "name": "activations3_0_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "activations3_0_41_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_6768_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6768_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6768_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6772_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6772_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6772_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6772_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6772_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6776_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6780_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6780_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6780_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6780_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_66_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "392", "EstimateLatencyMax" : "392",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations3_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "activations2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations2_load_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_2_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_1_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_0_41_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_66_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backprop_Pipeline_VITIS_LOOP_66_1 {
		activations3_2_1_reload {Type I LastRead 0 FirstWrite -1}
		activations3_1_1_reload {Type I LastRead 0 FirstWrite -1}
		activations3_0_1_reload {Type I LastRead 0 FirstWrite -1}
		weights3 {Type I LastRead 32 FirstWrite -1}
		activations2_load_2 {Type I LastRead 0 FirstWrite -1}
		activations2_load_4 {Type I LastRead 0 FirstWrite -1}
		activations2_load_5 {Type I LastRead 0 FirstWrite -1}
		activations2_load_6 {Type I LastRead 0 FirstWrite -1}
		activations2_load_7 {Type I LastRead 0 FirstWrite -1}
		activations2_load_8 {Type I LastRead 0 FirstWrite -1}
		activations2_load_9 {Type I LastRead 0 FirstWrite -1}
		activations2_load_10 {Type I LastRead 0 FirstWrite -1}
		activations2_load_11 {Type I LastRead 0 FirstWrite -1}
		activations2_load_12 {Type I LastRead 0 FirstWrite -1}
		activations2_load_13 {Type I LastRead 0 FirstWrite -1}
		activations2_load_14 {Type I LastRead 0 FirstWrite -1}
		activations2_load_15 {Type I LastRead 0 FirstWrite -1}
		activations2_load_16 {Type I LastRead 0 FirstWrite -1}
		activations2_load_17 {Type I LastRead 0 FirstWrite -1}
		activations2_load_18 {Type I LastRead 0 FirstWrite -1}
		activations2_load_19 {Type I LastRead 0 FirstWrite -1}
		activations2_load_20 {Type I LastRead 0 FirstWrite -1}
		activations2_load_21 {Type I LastRead 0 FirstWrite -1}
		activations2_load_22 {Type I LastRead 0 FirstWrite -1}
		activations2_load_23 {Type I LastRead 0 FirstWrite -1}
		activations2_load_24 {Type I LastRead 0 FirstWrite -1}
		activations2_load_25 {Type I LastRead 0 FirstWrite -1}
		activations2_load_26 {Type I LastRead 0 FirstWrite -1}
		activations2_load_27 {Type I LastRead 0 FirstWrite -1}
		activations2_load_28 {Type I LastRead 0 FirstWrite -1}
		activations2_load_29 {Type I LastRead 0 FirstWrite -1}
		activations2_load_30 {Type I LastRead 0 FirstWrite -1}
		activations2_load_31 {Type I LastRead 0 FirstWrite -1}
		activations2_load_32 {Type I LastRead 0 FirstWrite -1}
		activations2_load_33 {Type I LastRead 0 FirstWrite -1}
		activations2_load_34 {Type I LastRead 0 FirstWrite -1}
		activations2_load_35 {Type I LastRead 0 FirstWrite -1}
		activations2_load_36 {Type I LastRead 0 FirstWrite -1}
		activations2_load_37 {Type I LastRead 0 FirstWrite -1}
		activations2_load_38 {Type I LastRead 0 FirstWrite -1}
		activations2_load_39 {Type I LastRead 0 FirstWrite -1}
		activations2_load_40 {Type I LastRead 0 FirstWrite -1}
		activations2_load_41 {Type I LastRead 0 FirstWrite -1}
		activations2_load_42 {Type I LastRead 0 FirstWrite -1}
		activations2_load_43 {Type I LastRead 0 FirstWrite -1}
		activations2_load_44 {Type I LastRead 0 FirstWrite -1}
		activations2_load_45 {Type I LastRead 0 FirstWrite -1}
		activations2_load_46 {Type I LastRead 0 FirstWrite -1}
		activations2_load_47 {Type I LastRead 0 FirstWrite -1}
		activations2_load_48 {Type I LastRead 0 FirstWrite -1}
		activations2_load_49 {Type I LastRead 0 FirstWrite -1}
		activations2_load_50 {Type I LastRead 0 FirstWrite -1}
		activations2_load_51 {Type I LastRead 0 FirstWrite -1}
		activations2_load_52 {Type I LastRead 0 FirstWrite -1}
		activations2_load_53 {Type I LastRead 0 FirstWrite -1}
		activations2_load_54 {Type I LastRead 0 FirstWrite -1}
		activations2_load_55 {Type I LastRead 0 FirstWrite -1}
		activations2_load_56 {Type I LastRead 0 FirstWrite -1}
		activations2_load_57 {Type I LastRead 0 FirstWrite -1}
		activations2_load_58 {Type I LastRead 0 FirstWrite -1}
		activations2_load_59 {Type I LastRead 0 FirstWrite -1}
		activations2_load_60 {Type I LastRead 0 FirstWrite -1}
		activations2_load_61 {Type I LastRead 0 FirstWrite -1}
		activations2_load_62 {Type I LastRead 0 FirstWrite -1}
		activations2_load_63 {Type I LastRead 0 FirstWrite -1}
		activations2_load_64 {Type I LastRead 0 FirstWrite -1}
		activations2_load_65 {Type I LastRead 0 FirstWrite -1}
		activations2_load_66 {Type I LastRead 0 FirstWrite -1}
		activations3_2_4_out {Type O LastRead -1 FirstWrite 294}
		activations3_1_4_out {Type O LastRead -1 FirstWrite 294}
		activations3_0_41_out {Type O LastRead -1 FirstWrite 294}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "392", "Max" : "392"}
	, {"Name" : "Interval", "Min" : "392", "Max" : "392"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	activations3_2_1_reload { ap_none {  { activations3_2_1_reload in_data 0 64 } } }
	activations3_1_1_reload { ap_none {  { activations3_1_1_reload in_data 0 64 } } }
	activations3_0_1_reload { ap_none {  { activations3_0_1_reload in_data 0 64 } } }
	weights3 { ap_memory {  { weights3_address0 mem_address 1 8 }  { weights3_ce0 mem_ce 1 1 }  { weights3_q0 mem_dout 0 64 }  { weights3_address1 MemPortADDR2 1 8 }  { weights3_ce1 MemPortCE2 1 1 }  { weights3_q1 MemPortDOUT2 0 64 } } }
	activations2_load_2 { ap_none {  { activations2_load_2 in_data 0 64 } } }
	activations2_load_4 { ap_none {  { activations2_load_4 in_data 0 64 } } }
	activations2_load_5 { ap_none {  { activations2_load_5 in_data 0 64 } } }
	activations2_load_6 { ap_none {  { activations2_load_6 in_data 0 64 } } }
	activations2_load_7 { ap_none {  { activations2_load_7 in_data 0 64 } } }
	activations2_load_8 { ap_none {  { activations2_load_8 in_data 0 64 } } }
	activations2_load_9 { ap_none {  { activations2_load_9 in_data 0 64 } } }
	activations2_load_10 { ap_none {  { activations2_load_10 in_data 0 64 } } }
	activations2_load_11 { ap_none {  { activations2_load_11 in_data 0 64 } } }
	activations2_load_12 { ap_none {  { activations2_load_12 in_data 0 64 } } }
	activations2_load_13 { ap_none {  { activations2_load_13 in_data 0 64 } } }
	activations2_load_14 { ap_none {  { activations2_load_14 in_data 0 64 } } }
	activations2_load_15 { ap_none {  { activations2_load_15 in_data 0 64 } } }
	activations2_load_16 { ap_none {  { activations2_load_16 in_data 0 64 } } }
	activations2_load_17 { ap_none {  { activations2_load_17 in_data 0 64 } } }
	activations2_load_18 { ap_none {  { activations2_load_18 in_data 0 64 } } }
	activations2_load_19 { ap_none {  { activations2_load_19 in_data 0 64 } } }
	activations2_load_20 { ap_none {  { activations2_load_20 in_data 0 64 } } }
	activations2_load_21 { ap_none {  { activations2_load_21 in_data 0 64 } } }
	activations2_load_22 { ap_none {  { activations2_load_22 in_data 0 64 } } }
	activations2_load_23 { ap_none {  { activations2_load_23 in_data 0 64 } } }
	activations2_load_24 { ap_none {  { activations2_load_24 in_data 0 64 } } }
	activations2_load_25 { ap_none {  { activations2_load_25 in_data 0 64 } } }
	activations2_load_26 { ap_none {  { activations2_load_26 in_data 0 64 } } }
	activations2_load_27 { ap_none {  { activations2_load_27 in_data 0 64 } } }
	activations2_load_28 { ap_none {  { activations2_load_28 in_data 0 64 } } }
	activations2_load_29 { ap_none {  { activations2_load_29 in_data 0 64 } } }
	activations2_load_30 { ap_none {  { activations2_load_30 in_data 0 64 } } }
	activations2_load_31 { ap_none {  { activations2_load_31 in_data 0 64 } } }
	activations2_load_32 { ap_none {  { activations2_load_32 in_data 0 64 } } }
	activations2_load_33 { ap_none {  { activations2_load_33 in_data 0 64 } } }
	activations2_load_34 { ap_none {  { activations2_load_34 in_data 0 64 } } }
	activations2_load_35 { ap_none {  { activations2_load_35 in_data 0 64 } } }
	activations2_load_36 { ap_none {  { activations2_load_36 in_data 0 64 } } }
	activations2_load_37 { ap_none {  { activations2_load_37 in_data 0 64 } } }
	activations2_load_38 { ap_none {  { activations2_load_38 in_data 0 64 } } }
	activations2_load_39 { ap_none {  { activations2_load_39 in_data 0 64 } } }
	activations2_load_40 { ap_none {  { activations2_load_40 in_data 0 64 } } }
	activations2_load_41 { ap_none {  { activations2_load_41 in_data 0 64 } } }
	activations2_load_42 { ap_none {  { activations2_load_42 in_data 0 64 } } }
	activations2_load_43 { ap_none {  { activations2_load_43 in_data 0 64 } } }
	activations2_load_44 { ap_none {  { activations2_load_44 in_data 0 64 } } }
	activations2_load_45 { ap_none {  { activations2_load_45 in_data 0 64 } } }
	activations2_load_46 { ap_none {  { activations2_load_46 in_data 0 64 } } }
	activations2_load_47 { ap_none {  { activations2_load_47 in_data 0 64 } } }
	activations2_load_48 { ap_none {  { activations2_load_48 in_data 0 64 } } }
	activations2_load_49 { ap_none {  { activations2_load_49 in_data 0 64 } } }
	activations2_load_50 { ap_none {  { activations2_load_50 in_data 0 64 } } }
	activations2_load_51 { ap_none {  { activations2_load_51 in_data 0 64 } } }
	activations2_load_52 { ap_none {  { activations2_load_52 in_data 0 64 } } }
	activations2_load_53 { ap_none {  { activations2_load_53 in_data 0 64 } } }
	activations2_load_54 { ap_none {  { activations2_load_54 in_data 0 64 } } }
	activations2_load_55 { ap_none {  { activations2_load_55 in_data 0 64 } } }
	activations2_load_56 { ap_none {  { activations2_load_56 in_data 0 64 } } }
	activations2_load_57 { ap_none {  { activations2_load_57 in_data 0 64 } } }
	activations2_load_58 { ap_none {  { activations2_load_58 in_data 0 64 } } }
	activations2_load_59 { ap_none {  { activations2_load_59 in_data 0 64 } } }
	activations2_load_60 { ap_none {  { activations2_load_60 in_data 0 64 } } }
	activations2_load_61 { ap_none {  { activations2_load_61 in_data 0 64 } } }
	activations2_load_62 { ap_none {  { activations2_load_62 in_data 0 64 } } }
	activations2_load_63 { ap_none {  { activations2_load_63 in_data 0 64 } } }
	activations2_load_64 { ap_none {  { activations2_load_64 in_data 0 64 } } }
	activations2_load_65 { ap_none {  { activations2_load_65 in_data 0 64 } } }
	activations2_load_66 { ap_none {  { activations2_load_66 in_data 0 64 } } }
	activations3_2_4_out { ap_vld {  { activations3_2_4_out out_data 1 64 }  { activations3_2_4_out_ap_vld out_vld 1 1 } } }
	activations3_1_4_out { ap_vld {  { activations3_1_4_out out_data 1 64 }  { activations3_1_4_out_ap_vld out_vld 1 1 } } }
	activations3_0_41_out { ap_vld {  { activations3_0_41_out out_data 1 64 }  { activations3_0_41_out_ap_vld out_vld 1 1 } } }
}
