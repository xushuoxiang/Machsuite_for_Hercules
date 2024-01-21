set moduleName update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2
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
set C_modelName {update_weights.1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_weights1 double 64 regular {array 832 { 1 3 } 1 1 }  }
	{ weights1 int 64 regular {array 832 { 0 1 } 1 1 }  }
	{ norm_2_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_weights1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "weights1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "norm_2_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_weights1_address0 sc_out sc_lv 10 signal 0 } 
	{ d_weights1_ce0 sc_out sc_logic 1 signal 0 } 
	{ d_weights1_q0 sc_in sc_lv 64 signal 0 } 
	{ weights1_address0 sc_out sc_lv 10 signal 1 } 
	{ weights1_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights1_we0 sc_out sc_logic 1 signal 1 } 
	{ weights1_d0 sc_out sc_lv 64 signal 1 } 
	{ weights1_address1 sc_out sc_lv 10 signal 1 } 
	{ weights1_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights1_q1 sc_in sc_lv 64 signal 1 } 
	{ norm_2_out sc_out sc_lv 64 signal 2 } 
	{ norm_2_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ grp_fu_369_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_369_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_369_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_369_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_369_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_373_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_373_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_373_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_373_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_weights1", "role": "address0" }} , 
 	{ "name": "d_weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_weights1", "role": "ce0" }} , 
 	{ "name": "d_weights1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d_weights1", "role": "q0" }} , 
 	{ "name": "weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address0" }} , 
 	{ "name": "weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce0" }} , 
 	{ "name": "weights1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "we0" }} , 
 	{ "name": "weights1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "d0" }} , 
 	{ "name": "weights1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address1" }} , 
 	{ "name": "weights1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce1" }} , 
 	{ "name": "weights1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "q1" }} , 
 	{ "name": "norm_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "norm_2_out", "role": "default" }} , 
 	{ "name": "norm_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_2_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_369_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_369_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_369_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_369_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_369_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_369_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_373_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_373_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_373_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_373_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3347", "EstimateLatencyMax" : "3347",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_weights1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_163_1_VITIS_LOOP_164_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2 {
		d_weights1 {Type I LastRead 0 FirstWrite -1}
		weights1 {Type IO LastRead 4 FirstWrite 12}
		norm_2_out {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3347", "Max" : "3347"}
	, {"Name" : "Interval", "Min" : "3347", "Max" : "3347"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	d_weights1 { ap_memory {  { d_weights1_address0 mem_address 1 10 }  { d_weights1_ce0 mem_ce 1 1 }  { d_weights1_q0 mem_dout 0 64 } } }
	weights1 { ap_memory {  { weights1_address0 mem_address 1 10 }  { weights1_ce0 mem_ce 1 1 }  { weights1_we0 mem_we 1 1 }  { weights1_d0 mem_din 1 64 }  { weights1_address1 MemPortADDR2 1 10 }  { weights1_ce1 MemPortCE2 1 1 }  { weights1_q1 MemPortDOUT2 0 64 } } }
	norm_2_out { ap_vld {  { norm_2_out out_data 1 64 }  { norm_2_out_ap_vld out_vld 1 1 } } }
}
