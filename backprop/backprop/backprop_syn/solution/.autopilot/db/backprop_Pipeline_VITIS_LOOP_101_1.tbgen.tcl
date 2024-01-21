set moduleName backprop_Pipeline_VITIS_LOOP_101_1
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
set C_modelName {backprop_Pipeline_VITIS_LOOP_101_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ oracle_activations2 double 64 regular {array 64 { 0 3 } 0 1 }  }
	{ weights3 int 64 regular {array 192 { 1 1 } 1 1 }  }
	{ output_difference_0_1_reload double 64 regular  }
	{ output_difference_1_1_reload double 64 regular  }
	{ output_difference_2_1_reload double 64 regular  }
	{ dactivations2 double 64 regular {array 64 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "oracle_activations2", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weights3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_difference_0_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_difference_1_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_difference_2_1_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dactivations2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ oracle_activations2_address0 sc_out sc_lv 6 signal 0 } 
	{ oracle_activations2_ce0 sc_out sc_logic 1 signal 0 } 
	{ oracle_activations2_we0 sc_out sc_logic 1 signal 0 } 
	{ oracle_activations2_d0 sc_out sc_lv 64 signal 0 } 
	{ weights3_address0 sc_out sc_lv 8 signal 1 } 
	{ weights3_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights3_q0 sc_in sc_lv 64 signal 1 } 
	{ weights3_address1 sc_out sc_lv 8 signal 1 } 
	{ weights3_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights3_q1 sc_in sc_lv 64 signal 1 } 
	{ output_difference_0_1_reload sc_in sc_lv 64 signal 2 } 
	{ output_difference_1_1_reload sc_in sc_lv 64 signal 3 } 
	{ output_difference_2_1_reload sc_in sc_lv 64 signal 4 } 
	{ dactivations2_address0 sc_out sc_lv 6 signal 5 } 
	{ dactivations2_ce0 sc_out sc_logic 1 signal 5 } 
	{ dactivations2_q0 sc_in sc_lv 64 signal 5 } 
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
 	{ "name": "oracle_activations2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "oracle_activations2", "role": "address0" }} , 
 	{ "name": "oracle_activations2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oracle_activations2", "role": "ce0" }} , 
 	{ "name": "oracle_activations2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "oracle_activations2", "role": "we0" }} , 
 	{ "name": "oracle_activations2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "oracle_activations2", "role": "d0" }} , 
 	{ "name": "weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address0" }} , 
 	{ "name": "weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce0" }} , 
 	{ "name": "weights3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q0" }} , 
 	{ "name": "weights3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address1" }} , 
 	{ "name": "weights3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce1" }} , 
 	{ "name": "weights3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q1" }} , 
 	{ "name": "output_difference_0_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_difference_0_1_reload", "role": "default" }} , 
 	{ "name": "output_difference_1_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_difference_1_1_reload", "role": "default" }} , 
 	{ "name": "output_difference_2_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_difference_2_1_reload", "role": "default" }} , 
 	{ "name": "dactivations2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dactivations2", "role": "address0" }} , 
 	{ "name": "dactivations2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dactivations2", "role": "ce0" }} , 
 	{ "name": "dactivations2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations2", "role": "q0" }} , 
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
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_101_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "156", "EstimateLatencyMax" : "156",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "oracle_activations2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_difference_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_difference_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_difference_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter14", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter14", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backprop_Pipeline_VITIS_LOOP_101_1 {
		oracle_activations2 {Type O LastRead -1 FirstWrite 28}
		weights3 {Type I LastRead 2 FirstWrite -1}
		output_difference_0_1_reload {Type I LastRead 0 FirstWrite -1}
		output_difference_1_1_reload {Type I LastRead 0 FirstWrite -1}
		output_difference_2_1_reload {Type I LastRead 0 FirstWrite -1}
		dactivations2 {Type I LastRead 20 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "156", "Max" : "156"}
	, {"Name" : "Interval", "Min" : "156", "Max" : "156"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	oracle_activations2 { ap_memory {  { oracle_activations2_address0 mem_address 1 6 }  { oracle_activations2_ce0 mem_ce 1 1 }  { oracle_activations2_we0 mem_we 1 1 }  { oracle_activations2_d0 mem_din 1 64 } } }
	weights3 { ap_memory {  { weights3_address0 mem_address 1 8 }  { weights3_ce0 mem_ce 1 1 }  { weights3_q0 mem_dout 0 64 }  { weights3_address1 MemPortADDR2 1 8 }  { weights3_ce1 MemPortCE2 1 1 }  { weights3_q1 MemPortDOUT2 0 64 } } }
	output_difference_0_1_reload { ap_none {  { output_difference_0_1_reload in_data 0 64 } } }
	output_difference_1_1_reload { ap_none {  { output_difference_1_1_reload in_data 0 64 } } }
	output_difference_2_1_reload { ap_none {  { output_difference_2_1_reload in_data 0 64 } } }
	dactivations2 { ap_memory {  { dactivations2_address0 mem_address 1 6 }  { dactivations2_ce0 mem_ce 1 1 }  { dactivations2_q0 mem_dout 0 64 } } }
}
