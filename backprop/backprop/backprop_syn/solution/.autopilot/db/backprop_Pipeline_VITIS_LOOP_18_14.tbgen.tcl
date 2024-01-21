set moduleName backprop_Pipeline_VITIS_LOOP_18_14
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
set C_modelName {backprop_Pipeline_VITIS_LOOP_18_14}
set C_modelType { void 0 }
set C_modelArgList {
	{ dactivations3_2_06 double 64 regular  }
	{ dactivations3_1_05 double 64 regular  }
	{ dactivations3_0_04 double 64 regular  }
	{ activations3_2_6_reload double 64 regular  }
	{ activations3_1_6_reload double 64 regular  }
	{ activations3_0_63_reload double 64 regular  }
	{ dactivations3_2_1_out double 64 regular {pointer 1}  }
	{ dactivations3_1_1_out double 64 regular {pointer 1}  }
	{ dactivations3_0_1_out double 64 regular {pointer 1}  }
	{ activations3_2_8_out double 64 regular {pointer 1}  }
	{ activations3_1_8_out double 64 regular {pointer 1}  }
	{ activations3_0_8_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dactivations3_2_06", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dactivations3_1_05", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dactivations3_0_04", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations3_2_6_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations3_1_6_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "activations3_0_63_reload", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dactivations3_2_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dactivations3_1_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dactivations3_0_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "activations3_2_8_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "activations3_1_8_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "activations3_0_8_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dactivations3_2_06 sc_in sc_lv 64 signal 0 } 
	{ dactivations3_1_05 sc_in sc_lv 64 signal 1 } 
	{ dactivations3_0_04 sc_in sc_lv 64 signal 2 } 
	{ activations3_2_6_reload sc_in sc_lv 64 signal 3 } 
	{ activations3_1_6_reload sc_in sc_lv 64 signal 4 } 
	{ activations3_0_63_reload sc_in sc_lv 64 signal 5 } 
	{ dactivations3_2_1_out sc_out sc_lv 64 signal 6 } 
	{ dactivations3_2_1_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ dactivations3_1_1_out sc_out sc_lv 64 signal 7 } 
	{ dactivations3_1_1_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ dactivations3_0_1_out sc_out sc_lv 64 signal 8 } 
	{ dactivations3_0_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ activations3_2_8_out sc_out sc_lv 64 signal 9 } 
	{ activations3_2_8_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ activations3_1_8_out sc_out sc_lv 64 signal 10 } 
	{ activations3_1_8_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ activations3_0_8_out sc_out sc_lv 64 signal 11 } 
	{ activations3_0_8_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ grp_fu_6768_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_6768_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6776_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6784_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6784_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6784_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6784_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6788_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6788_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6788_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6788_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dactivations3_2_06", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations3_2_06", "role": "default" }} , 
 	{ "name": "dactivations3_1_05", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations3_1_05", "role": "default" }} , 
 	{ "name": "dactivations3_0_04", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations3_0_04", "role": "default" }} , 
 	{ "name": "activations3_2_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_2_6_reload", "role": "default" }} , 
 	{ "name": "activations3_1_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_1_6_reload", "role": "default" }} , 
 	{ "name": "activations3_0_63_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_0_63_reload", "role": "default" }} , 
 	{ "name": "dactivations3_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations3_2_1_out", "role": "default" }} , 
 	{ "name": "dactivations3_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dactivations3_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "dactivations3_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations3_1_1_out", "role": "default" }} , 
 	{ "name": "dactivations3_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dactivations3_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "dactivations3_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dactivations3_0_1_out", "role": "default" }} , 
 	{ "name": "dactivations3_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dactivations3_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "activations3_2_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_2_8_out", "role": "default" }} , 
 	{ "name": "activations3_2_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "activations3_2_8_out", "role": "ap_vld" }} , 
 	{ "name": "activations3_1_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_1_8_out", "role": "default" }} , 
 	{ "name": "activations3_1_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "activations3_1_8_out", "role": "ap_vld" }} , 
 	{ "name": "activations3_0_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "activations3_0_8_out", "role": "default" }} , 
 	{ "name": "activations3_0_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "activations3_0_8_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_6768_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_6768_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6768_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6776_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6784_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6784_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6784_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6784_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6788_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6788_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6788_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6788_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6788_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6788_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6788_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6788_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_18_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125", "EstimateLatencyMax" : "125",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dactivations3_2_06", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations3_1_05", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations3_0_04", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_2_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_1_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_0_63_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations3_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dactivations3_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dactivations3_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_2_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_1_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_0_8_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "41", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_64_1_1_U209", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backprop_Pipeline_VITIS_LOOP_18_14 {
		dactivations3_2_06 {Type I LastRead 0 FirstWrite -1}
		dactivations3_1_05 {Type I LastRead 0 FirstWrite -1}
		dactivations3_0_04 {Type I LastRead 0 FirstWrite -1}
		activations3_2_6_reload {Type I LastRead 0 FirstWrite -1}
		activations3_1_6_reload {Type I LastRead 0 FirstWrite -1}
		activations3_0_63_reload {Type I LastRead 0 FirstWrite -1}
		dactivations3_2_1_out {Type O LastRead -1 FirstWrite 1}
		dactivations3_1_1_out {Type O LastRead -1 FirstWrite 1}
		dactivations3_0_1_out {Type O LastRead -1 FirstWrite 1}
		activations3_2_8_out {Type O LastRead -1 FirstWrite 1}
		activations3_1_8_out {Type O LastRead -1 FirstWrite 1}
		activations3_0_8_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "125", "Max" : "125"}
	, {"Name" : "Interval", "Min" : "125", "Max" : "125"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dactivations3_2_06 { ap_none {  { dactivations3_2_06 in_data 0 64 } } }
	dactivations3_1_05 { ap_none {  { dactivations3_1_05 in_data 0 64 } } }
	dactivations3_0_04 { ap_none {  { dactivations3_0_04 in_data 0 64 } } }
	activations3_2_6_reload { ap_none {  { activations3_2_6_reload in_data 0 64 } } }
	activations3_1_6_reload { ap_none {  { activations3_1_6_reload in_data 0 64 } } }
	activations3_0_63_reload { ap_none {  { activations3_0_63_reload in_data 0 64 } } }
	dactivations3_2_1_out { ap_vld {  { dactivations3_2_1_out out_data 1 64 }  { dactivations3_2_1_out_ap_vld out_vld 1 1 } } }
	dactivations3_1_1_out { ap_vld {  { dactivations3_1_1_out out_data 1 64 }  { dactivations3_1_1_out_ap_vld out_vld 1 1 } } }
	dactivations3_0_1_out { ap_vld {  { dactivations3_0_1_out out_data 1 64 }  { dactivations3_0_1_out_ap_vld out_vld 1 1 } } }
	activations3_2_8_out { ap_vld {  { activations3_2_8_out out_data 1 64 }  { activations3_2_8_out_ap_vld out_vld 1 1 } } }
	activations3_1_8_out { ap_vld {  { activations3_1_8_out out_data 1 64 }  { activations3_1_8_out_ap_vld out_vld 1 1 } } }
	activations3_0_8_out { ap_vld {  { activations3_0_8_out out_data 1 64 }  { activations3_0_8_out_ap_vld out_vld 1 1 } } }
}
