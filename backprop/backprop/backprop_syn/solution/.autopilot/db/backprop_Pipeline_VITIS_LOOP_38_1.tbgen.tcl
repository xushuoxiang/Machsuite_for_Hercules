set moduleName backprop_Pipeline_VITIS_LOOP_38_1
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
set C_modelName {backprop_Pipeline_VITIS_LOOP_38_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ activations1 double 64 regular {array 64 { 0 3 } 0 1 }  }
	{ weights1 int 64 regular {array 832 { 1 1 } 1 1 }  }
	{ bitcast_ln41_1 double 64 regular  }
	{ bitcast_ln41_14 double 64 regular  }
	{ bitcast_ln41_15 double 64 regular  }
	{ bitcast_ln41_16 double 64 regular  }
	{ bitcast_ln41_17 double 64 regular  }
	{ bitcast_ln41_18 double 64 regular  }
	{ bitcast_ln41_19 double 64 regular  }
	{ bitcast_ln41_20 double 64 regular  }
	{ bitcast_ln41_21 double 64 regular  }
	{ bitcast_ln41_22 double 64 regular  }
	{ bitcast_ln41_23 double 64 regular  }
	{ bitcast_ln41_24 double 64 regular  }
	{ bitcast_ln41_25 double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "activations1", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_14", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_15", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_16", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_17", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_18", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_19", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_20", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_21", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_22", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_23", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_24", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "bitcast_ln41_25", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ activations1_address0 sc_out sc_lv 6 signal 0 } 
	{ activations1_ce0 sc_out sc_logic 1 signal 0 } 
	{ activations1_we0 sc_out sc_logic 1 signal 0 } 
	{ activations1_d0 sc_out sc_lv 64 signal 0 } 
	{ weights1_address0 sc_out sc_lv 10 signal 1 } 
	{ weights1_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights1_q0 sc_in sc_lv 64 signal 1 } 
	{ weights1_address1 sc_out sc_lv 10 signal 1 } 
	{ weights1_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights1_q1 sc_in sc_lv 64 signal 1 } 
	{ bitcast_ln41_1 sc_in sc_lv 64 signal 2 } 
	{ bitcast_ln41_14 sc_in sc_lv 64 signal 3 } 
	{ bitcast_ln41_15 sc_in sc_lv 64 signal 4 } 
	{ bitcast_ln41_16 sc_in sc_lv 64 signal 5 } 
	{ bitcast_ln41_17 sc_in sc_lv 64 signal 6 } 
	{ bitcast_ln41_18 sc_in sc_lv 64 signal 7 } 
	{ bitcast_ln41_19 sc_in sc_lv 64 signal 8 } 
	{ bitcast_ln41_20 sc_in sc_lv 64 signal 9 } 
	{ bitcast_ln41_21 sc_in sc_lv 64 signal 10 } 
	{ bitcast_ln41_22 sc_in sc_lv 64 signal 11 } 
	{ bitcast_ln41_23 sc_in sc_lv 64 signal 12 } 
	{ bitcast_ln41_24 sc_in sc_lv 64 signal 13 } 
	{ bitcast_ln41_25 sc_in sc_lv 64 signal 14 } 
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
 	{ "name": "activations1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "activations1", "role": "address0" }} , 
 	{ "name": "activations1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "activations1", "role": "ce0" }} , 
 	{ "name": "activations1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "activations1", "role": "we0" }} , 
 	{ "name": "activations1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations1", "role": "d0" }} , 
 	{ "name": "weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address0" }} , 
 	{ "name": "weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce0" }} , 
 	{ "name": "weights1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "q0" }} , 
 	{ "name": "weights1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address1" }} , 
 	{ "name": "weights1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce1" }} , 
 	{ "name": "weights1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "q1" }} , 
 	{ "name": "bitcast_ln41_1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_1", "role": "default" }} , 
 	{ "name": "bitcast_ln41_14", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_14", "role": "default" }} , 
 	{ "name": "bitcast_ln41_15", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_15", "role": "default" }} , 
 	{ "name": "bitcast_ln41_16", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_16", "role": "default" }} , 
 	{ "name": "bitcast_ln41_17", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_17", "role": "default" }} , 
 	{ "name": "bitcast_ln41_18", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_18", "role": "default" }} , 
 	{ "name": "bitcast_ln41_19", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_19", "role": "default" }} , 
 	{ "name": "bitcast_ln41_20", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_20", "role": "default" }} , 
 	{ "name": "bitcast_ln41_21", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_21", "role": "default" }} , 
 	{ "name": "bitcast_ln41_22", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_22", "role": "default" }} , 
 	{ "name": "bitcast_ln41_23", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_23", "role": "default" }} , 
 	{ "name": "bitcast_ln41_24", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_24", "role": "default" }} , 
 	{ "name": "bitcast_ln41_25", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bitcast_ln41_25", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_38_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln41_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln41_25", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_38_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_5ns_10_1_1_U13", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backprop_Pipeline_VITIS_LOOP_38_1 {
		activations1 {Type O LastRead -1 FirstWrite 72}
		weights1 {Type I LastRead 7 FirstWrite -1}
		bitcast_ln41_1 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_14 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_15 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_16 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_17 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_18 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_19 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_20 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_21 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_22 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_23 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_24 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln41_25 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "515", "Max" : "515"}
	, {"Name" : "Interval", "Min" : "515", "Max" : "515"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	activations1 { ap_memory {  { activations1_address0 mem_address 1 6 }  { activations1_ce0 mem_ce 1 1 }  { activations1_we0 mem_we 1 1 }  { activations1_d0 mem_din 1 64 } } }
	weights1 { ap_memory {  { weights1_address0 mem_address 1 10 }  { weights1_ce0 mem_ce 1 1 }  { weights1_q0 mem_dout 0 64 }  { weights1_address1 MemPortADDR2 1 10 }  { weights1_ce1 MemPortCE2 1 1 }  { weights1_q1 MemPortDOUT2 0 64 } } }
	bitcast_ln41_1 { ap_none {  { bitcast_ln41_1 in_data 0 64 } } }
	bitcast_ln41_14 { ap_none {  { bitcast_ln41_14 in_data 0 64 } } }
	bitcast_ln41_15 { ap_none {  { bitcast_ln41_15 in_data 0 64 } } }
	bitcast_ln41_16 { ap_none {  { bitcast_ln41_16 in_data 0 64 } } }
	bitcast_ln41_17 { ap_none {  { bitcast_ln41_17 in_data 0 64 } } }
	bitcast_ln41_18 { ap_none {  { bitcast_ln41_18 in_data 0 64 } } }
	bitcast_ln41_19 { ap_none {  { bitcast_ln41_19 in_data 0 64 } } }
	bitcast_ln41_20 { ap_none {  { bitcast_ln41_20 in_data 0 64 } } }
	bitcast_ln41_21 { ap_none {  { bitcast_ln41_21 in_data 0 64 } } }
	bitcast_ln41_22 { ap_none {  { bitcast_ln41_22 in_data 0 64 } } }
	bitcast_ln41_23 { ap_none {  { bitcast_ln41_23 in_data 0 64 } } }
	bitcast_ln41_24 { ap_none {  { bitcast_ln41_24 in_data 0 64 } } }
	bitcast_ln41_25 { ap_none {  { bitcast_ln41_25 in_data 0 64 } } }
}
