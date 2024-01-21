set moduleName update_weights_1_Pipeline_VITIS_LOOP_221_15
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
set C_modelName {update_weights.1_Pipeline_VITIS_LOOP_221_15}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read double 64 regular  }
	{ p_read1 double 64 regular  }
	{ p_read2 double 64 regular  }
	{ biases3 int 64 regular {array 3 { 2 3 } 1 1 }  }
	{ bias_norm_7_out double 64 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "biases3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "bias_norm_7_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 64 signal 0 } 
	{ p_read1 sc_in sc_lv 64 signal 1 } 
	{ p_read2 sc_in sc_lv 64 signal 2 } 
	{ biases3_address0 sc_out sc_lv 2 signal 3 } 
	{ biases3_ce0 sc_out sc_logic 1 signal 3 } 
	{ biases3_we0 sc_out sc_logic 1 signal 3 } 
	{ biases3_d0 sc_out sc_lv 64 signal 3 } 
	{ biases3_q0 sc_in sc_lv 64 signal 3 } 
	{ bias_norm_7_out sc_out sc_lv 64 signal 4 } 
	{ bias_norm_7_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "biases3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "biases3", "role": "address0" }} , 
 	{ "name": "biases3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases3", "role": "ce0" }} , 
 	{ "name": "biases3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases3", "role": "we0" }} , 
 	{ "name": "biases3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases3", "role": "d0" }} , 
 	{ "name": "biases3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases3", "role": "q0" }} , 
 	{ "name": "bias_norm_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias_norm_7_out", "role": "default" }} , 
 	{ "name": "bias_norm_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_norm_7_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_221_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_norm_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_221_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U523", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U524", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_64_1_1_U525", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	update_weights_1_Pipeline_VITIS_LOOP_221_15 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		biases3 {Type IO LastRead 4 FirstWrite 10}
		bias_norm_7_out {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "30", "Max" : "30"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "30"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 64 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 64 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 64 } } }
	biases3 { ap_memory {  { biases3_address0 mem_address 1 2 }  { biases3_ce0 mem_ce 1 1 }  { biases3_we0 mem_we 1 1 }  { biases3_d0 mem_din 1 64 }  { biases3_q0 mem_dout 0 64 } } }
	bias_norm_7_out { ap_vld {  { bias_norm_7_out out_data 1 64 }  { bias_norm_7_out_ap_vld out_vld 1 1 } } }
}
