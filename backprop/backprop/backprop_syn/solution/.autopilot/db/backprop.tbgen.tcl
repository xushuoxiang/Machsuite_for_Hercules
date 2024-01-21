set moduleName backprop
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {backprop}
set C_modelType { void 0 }
set C_modelArgList {
	{ weights1 int 64 regular {array 832 { 2 1 } 1 1 }  }
	{ weights2 int 64 regular {array 4096 { 2 1 } 1 1 }  }
	{ weights3 int 64 regular {array 192 { 2 1 } 1 1 }  }
	{ biases1 int 64 regular {array 64 { 2 1 } 1 1 }  }
	{ biases2 int 64 regular {array 64 { 2 1 } 1 1 }  }
	{ biases3 int 64 regular {array 3 { 2 1 } 1 1 }  }
	{ training_data int 64 regular {array 2119 { 1 1 } 1 1 }  }
	{ training_targets int 64 regular {array 489 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "weights2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "weights3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "biases1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "biases2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "biases3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "training_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "training_targets", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weights1_address0 sc_out sc_lv 10 signal 0 } 
	{ weights1_ce0 sc_out sc_logic 1 signal 0 } 
	{ weights1_we0 sc_out sc_logic 1 signal 0 } 
	{ weights1_d0 sc_out sc_lv 64 signal 0 } 
	{ weights1_q0 sc_in sc_lv 64 signal 0 } 
	{ weights1_address1 sc_out sc_lv 10 signal 0 } 
	{ weights1_ce1 sc_out sc_logic 1 signal 0 } 
	{ weights1_q1 sc_in sc_lv 64 signal 0 } 
	{ weights2_address0 sc_out sc_lv 12 signal 1 } 
	{ weights2_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights2_we0 sc_out sc_logic 1 signal 1 } 
	{ weights2_d0 sc_out sc_lv 64 signal 1 } 
	{ weights2_q0 sc_in sc_lv 64 signal 1 } 
	{ weights2_address1 sc_out sc_lv 12 signal 1 } 
	{ weights2_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights2_q1 sc_in sc_lv 64 signal 1 } 
	{ weights3_address0 sc_out sc_lv 8 signal 2 } 
	{ weights3_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights3_we0 sc_out sc_logic 1 signal 2 } 
	{ weights3_d0 sc_out sc_lv 64 signal 2 } 
	{ weights3_q0 sc_in sc_lv 64 signal 2 } 
	{ weights3_address1 sc_out sc_lv 8 signal 2 } 
	{ weights3_ce1 sc_out sc_logic 1 signal 2 } 
	{ weights3_q1 sc_in sc_lv 64 signal 2 } 
	{ biases1_address0 sc_out sc_lv 6 signal 3 } 
	{ biases1_ce0 sc_out sc_logic 1 signal 3 } 
	{ biases1_we0 sc_out sc_logic 1 signal 3 } 
	{ biases1_d0 sc_out sc_lv 64 signal 3 } 
	{ biases1_q0 sc_in sc_lv 64 signal 3 } 
	{ biases1_address1 sc_out sc_lv 6 signal 3 } 
	{ biases1_ce1 sc_out sc_logic 1 signal 3 } 
	{ biases1_q1 sc_in sc_lv 64 signal 3 } 
	{ biases2_address0 sc_out sc_lv 6 signal 4 } 
	{ biases2_ce0 sc_out sc_logic 1 signal 4 } 
	{ biases2_we0 sc_out sc_logic 1 signal 4 } 
	{ biases2_d0 sc_out sc_lv 64 signal 4 } 
	{ biases2_q0 sc_in sc_lv 64 signal 4 } 
	{ biases2_address1 sc_out sc_lv 6 signal 4 } 
	{ biases2_ce1 sc_out sc_logic 1 signal 4 } 
	{ biases2_q1 sc_in sc_lv 64 signal 4 } 
	{ biases3_address0 sc_out sc_lv 2 signal 5 } 
	{ biases3_ce0 sc_out sc_logic 1 signal 5 } 
	{ biases3_we0 sc_out sc_logic 1 signal 5 } 
	{ biases3_d0 sc_out sc_lv 64 signal 5 } 
	{ biases3_q0 sc_in sc_lv 64 signal 5 } 
	{ biases3_address1 sc_out sc_lv 2 signal 5 } 
	{ biases3_ce1 sc_out sc_logic 1 signal 5 } 
	{ biases3_q1 sc_in sc_lv 64 signal 5 } 
	{ training_data_address0 sc_out sc_lv 12 signal 6 } 
	{ training_data_ce0 sc_out sc_logic 1 signal 6 } 
	{ training_data_q0 sc_in sc_lv 64 signal 6 } 
	{ training_data_address1 sc_out sc_lv 12 signal 6 } 
	{ training_data_ce1 sc_out sc_logic 1 signal 6 } 
	{ training_data_q1 sc_in sc_lv 64 signal 6 } 
	{ training_targets_address0 sc_out sc_lv 9 signal 7 } 
	{ training_targets_ce0 sc_out sc_logic 1 signal 7 } 
	{ training_targets_q0 sc_in sc_lv 64 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address0" }} , 
 	{ "name": "weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce0" }} , 
 	{ "name": "weights1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "we0" }} , 
 	{ "name": "weights1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "d0" }} , 
 	{ "name": "weights1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "q0" }} , 
 	{ "name": "weights1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address1" }} , 
 	{ "name": "weights1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce1" }} , 
 	{ "name": "weights1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "q1" }} , 
 	{ "name": "weights2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights2", "role": "address0" }} , 
 	{ "name": "weights2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce0" }} , 
 	{ "name": "weights2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "we0" }} , 
 	{ "name": "weights2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights2", "role": "d0" }} , 
 	{ "name": "weights2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights2", "role": "q0" }} , 
 	{ "name": "weights2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights2", "role": "address1" }} , 
 	{ "name": "weights2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce1" }} , 
 	{ "name": "weights2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights2", "role": "q1" }} , 
 	{ "name": "weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address0" }} , 
 	{ "name": "weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce0" }} , 
 	{ "name": "weights3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "we0" }} , 
 	{ "name": "weights3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "d0" }} , 
 	{ "name": "weights3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q0" }} , 
 	{ "name": "weights3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address1" }} , 
 	{ "name": "weights3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce1" }} , 
 	{ "name": "weights3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q1" }} , 
 	{ "name": "biases1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases1", "role": "address0" }} , 
 	{ "name": "biases1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases1", "role": "ce0" }} , 
 	{ "name": "biases1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases1", "role": "we0" }} , 
 	{ "name": "biases1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases1", "role": "d0" }} , 
 	{ "name": "biases1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases1", "role": "q0" }} , 
 	{ "name": "biases1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases1", "role": "address1" }} , 
 	{ "name": "biases1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases1", "role": "ce1" }} , 
 	{ "name": "biases1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases1", "role": "q1" }} , 
 	{ "name": "biases2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases2", "role": "address0" }} , 
 	{ "name": "biases2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases2", "role": "ce0" }} , 
 	{ "name": "biases2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases2", "role": "we0" }} , 
 	{ "name": "biases2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases2", "role": "d0" }} , 
 	{ "name": "biases2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases2", "role": "q0" }} , 
 	{ "name": "biases2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases2", "role": "address1" }} , 
 	{ "name": "biases2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases2", "role": "ce1" }} , 
 	{ "name": "biases2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases2", "role": "q1" }} , 
 	{ "name": "biases3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "biases3", "role": "address0" }} , 
 	{ "name": "biases3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases3", "role": "ce0" }} , 
 	{ "name": "biases3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases3", "role": "we0" }} , 
 	{ "name": "biases3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases3", "role": "d0" }} , 
 	{ "name": "biases3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases3", "role": "q0" }} , 
 	{ "name": "biases3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "biases3", "role": "address1" }} , 
 	{ "name": "biases3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases3", "role": "ce1" }} , 
 	{ "name": "biases3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases3", "role": "q1" }} , 
 	{ "name": "training_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "training_data", "role": "address0" }} , 
 	{ "name": "training_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "training_data", "role": "ce0" }} , 
 	{ "name": "training_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "training_data", "role": "q0" }} , 
 	{ "name": "training_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "training_data", "role": "address1" }} , 
 	{ "name": "training_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "training_data", "role": "ce1" }} , 
 	{ "name": "training_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "training_data", "role": "q1" }} , 
 	{ "name": "training_targets_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "training_targets", "role": "address0" }} , 
 	{ "name": "training_targets_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "training_targets", "role": "ce0" }} , 
 	{ "name": "training_targets_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "training_targets", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "12", "15", "17", "19", "21", "23", "25", "27", "30", "33", "36", "39", "43", "45", "47", "49", "51", "53", "95", "96", "97", "98", "99", "100", "101", "102", "103"],
		"CDFG" : "backprop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4489999", "EstimateLatencyMax" : "4489999",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_update_weights_1_fu_3141", "Port" : "weights1", "Inst_start_state" : "167", "Inst_end_state" : "168"},
					{"ID" : "12", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_38_1_fu_2635", "Port" : "weights1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_52_1_fu_2668", "Port" : "weights2", "Inst_start_state" : "47", "Inst_end_state" : "48"},
					{"ID" : "49", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_126_1_fu_2993", "Port" : "weights2", "Inst_start_state" : "131", "Inst_end_state" : "132"},
					{"ID" : "53", "SubInstance" : "grp_update_weights_1_fu_3141", "Port" : "weights2", "Inst_start_state" : "167", "Inst_end_state" : "168"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2754", "Port" : "weights3", "Inst_start_state" : "85", "Inst_end_state" : "86"},
					{"ID" : "53", "SubInstance" : "grp_update_weights_1_fu_3141", "Port" : "weights3", "Inst_start_state" : "167", "Inst_end_state" : "168"},
					{"ID" : "45", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_101_1_fu_2910", "Port" : "weights3", "Inst_start_state" : "97", "Inst_end_state" : "98"}]},
			{"Name" : "biases1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_update_weights_1_fu_3141", "Port" : "biases1", "Inst_start_state" : "167", "Inst_end_state" : "168"},
					{"ID" : "15", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_28_1_fu_2655", "Port" : "biases1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "biases2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_update_weights_1_fu_3141", "Port" : "biases2", "Inst_start_state" : "167", "Inst_end_state" : "168"},
					{"ID" : "21", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_28_11_fu_2741", "Port" : "biases2", "Inst_start_state" : "49", "Inst_end_state" : "50"}]},
			{"Name" : "biases3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_update_weights_1_fu_3141", "Port" : "biases3", "Inst_start_state" : "167", "Inst_end_state" : "168"},
					{"ID" : "27", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_28_13_fu_2832", "Port" : "biases3", "Inst_start_state" : "87", "Inst_end_state" : "88"}]},
			{"Name" : "training_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_139_1_fu_3067", "Port" : "training_data", "Inst_start_state" : "165", "Inst_end_state" : "166"}]},
			{"Name" : "training_targets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_backprop_Pipeline_VITIS_LOOP_80_1_fu_2882", "Port" : "training_targets", "Inst_start_state" : "95", "Inst_end_state" : "96"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_264_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "168", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state168"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.activations1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.activations2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dactivations1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dactivations2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delta_weights1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delta_weights2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delta_weights3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.oracle_activations1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.oracle_activations2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_265_2_fu_2623", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_265_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations3_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "activations2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "activations3_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_265_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_265_2_fu_2623.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_38_1_fu_2635", "Parent" : "0", "Child" : ["13", "14"],
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
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_38_1_fu_2635.mul_6ns_5ns_10_1_1_U13", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_38_1_fu_2635.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_1_fu_2655", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "biases1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_1_fu_2655.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2662", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_18_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dactivations1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter42", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter42", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2662.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_52_1_fu_2668", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_52_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2345", "EstimateLatencyMax" : "2345",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "activations1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations1_load_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_52_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_52_1_fu_2668.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_11_fu_2741", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_28_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "biases2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_11_fu_2741.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2748", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_18_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "107",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dactivations2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter42", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter42", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2748.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2754", "Parent" : "0", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2754.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_13_fu_2832", "Parent" : "0", "Child" : ["28", "29"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_28_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations3_2_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_1_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_0_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "activations3_2_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_1_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "activations3_0_63_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_13_fu_2832.mux_32_64_1_1_U196", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_28_13_fu_2832.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2844", "Parent" : "0", "Child" : ["31", "32"],
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
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2844.mux_32_64_1_1_U209", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2844.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2860", "Parent" : "0", "Child" : ["34", "35"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_8_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations3_0_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_1_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_2_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_8_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2860.mux_32_64_1_1_U224", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2860.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2868", "Parent" : "0", "Child" : ["37", "38"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_11_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "net_outputs_2_09", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_outputs_1_08", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_outputs_0_07", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_0_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_1_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "activations3_2_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_outputs_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "net_outputs_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "net_outputs_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_11_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter35", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter35", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2868.mux_32_64_1_1_U231", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2868.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_80_1_fu_2882", "Parent" : "0", "Child" : ["40", "41", "42"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_80_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_difference_2_025", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_difference_1_024", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_difference_0_023", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_outputs_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_outputs_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "net_outputs_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln81", "Type" : "None", "Direction" : "I"},
			{"Name" : "training_targets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dactivations3_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations3_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations3_2_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_difference_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_difference_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_difference_0_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_80_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_80_1_fu_2882.mux_32_64_1_1_U244", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_80_1_fu_2882.mux_32_64_1_1_U245", "Parent" : "39"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_80_1_fu_2882.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_89_1_fu_2901", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_89_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "136", "EstimateLatencyMax" : "136",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_difference_0_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_weights3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_difference_1_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_difference_2_1_reload", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_89_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_89_1_fu_2901.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_101_1_fu_2910", "Parent" : "0", "Child" : ["46"],
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
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_101_1_fu_2910.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_114_1_fu_2921", "Parent" : "0", "Child" : ["48"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_114_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2056", "EstimateLatencyMax" : "2056",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "activations1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oracle_activations2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_weights2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "oracle_activations2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_114_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_114_1_fu_2921.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_126_1_fu_2993", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_126_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2350", "EstimateLatencyMax" : "2350",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "oracle_activations1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oracle_activations2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations2_load_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "dactivations1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_126_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage12", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage12_subdone", "QuitState" : "ap_ST_fsm_pp0_stage12", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage12_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_126_1_fu_2993.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_139_1_fu_3067", "Parent" : "0", "Child" : ["52"],
		"CDFG" : "backprop_Pipeline_VITIS_LOOP_139_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "424", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "phi_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "training_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oracle_activations1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_weights1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "oracle_activations1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "oracle_activations1_load_63", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_139_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_backprop_Pipeline_VITIS_LOOP_139_1_fu_3067.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141", "Parent" : "0", "Child" : ["54", "56", "58", "61", "64", "67", "72", "74", "77", "80", "83", "86", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "update_weights_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20547", "EstimateLatencyMax" : "20547",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5_fu_168", "Port" : "weights1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "54", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110", "Port" : "weights1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128", "Port" : "weights2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "77", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182", "Port" : "weights2", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196", "Port" : "weights3", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "64", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146", "Port" : "weights3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_weights1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110", "Port" : "d_weights1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_weights2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128", "Port" : "d_weights2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_weights3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146", "Port" : "d_weights3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "biases1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119", "Port" : "biases1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "74", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175", "Port" : "biases1", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "biases2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137", "Port" : "biases2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "80", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189", "Port" : "biases2", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "biases3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203", "Port" : "biases3", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "67", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155", "Port" : "biases3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_biases1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119", "Port" : "d_biases1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_biases2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137", "Port" : "d_biases2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110", "Parent" : "53", "Child" : ["55"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119", "Parent" : "53", "Child" : ["57"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_169_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "275", "EstimateLatencyMax" : "275",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_biases1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_norm_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_169_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128", "Parent" : "53", "Child" : ["59", "60"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16403", "EstimateLatencyMax" : "16403",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_weights2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_7_VITIS_LOOP_190_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128.dadddsub_64ns_64ns_64_5_full_dsp_1_U502", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137", "Parent" : "53", "Child" : ["62", "63"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_195_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "275", "EstimateLatencyMax" : "275",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_biases2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_norm_4_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_195_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137.dadddsub_64ns_64ns_64_5_full_dsp_1_U507", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "61"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146", "Parent" : "53", "Child" : ["65", "66"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "787", "EstimateLatencyMax" : "787",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "d_weights3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_13_VITIS_LOOP_216_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146.dadddsub_64ns_64ns_64_5_full_dsp_1_U518", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155", "Parent" : "53", "Child" : ["68", "69", "70", "71"],
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
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.dadddsub_64ns_64ns_64_5_full_dsp_1_U523", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.dmul_64ns_64ns_64_5_max_dsp_1_U524", "Parent" : "67"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.mux_32_64_1_1_U525", "Parent" : "67"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5_fu_168", "Parent" : "53", "Child" : ["73"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "857", "EstimateLatencyMax" : "857",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_177_4_VITIS_LOOP_178_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175", "Parent" : "53", "Child" : ["75", "76"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_182_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "89",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "biases1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_norm", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175.ddiv_64ns_64ns_64_22_no_dsp_1_U499", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182", "Parent" : "53", "Child" : ["78", "79"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4121", "EstimateLatencyMax" : "4121",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_5", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_203_10_VITIS_LOOP_204_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182.ddiv_64ns_64ns_64_22_no_dsp_1_U512", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189", "Parent" : "53", "Child" : ["81", "82"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_208_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "89",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "biases2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_norm_3", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_208_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189.ddiv_64ns_64ns_64_22_no_dsp_1_U515", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196", "Parent" : "53", "Child" : ["84", "85"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "217", "EstimateLatencyMax" : "217",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_8", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_229_16_VITIS_LOOP_230_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196.ddiv_64ns_64ns_64_22_no_dsp_1_U531", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203", "Parent" : "53", "Child" : ["87", "88"],
		"CDFG" : "update_weights_1_Pipeline_VITIS_LOOP_234_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "biases3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bias_norm_6", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_234_18", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203.ddiv_64ns_64ns_64_22_no_dsp_1_U534", "Parent" : "86"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.dsqrt_64ns_64ns_64_21_no_dsp_1_U537", "Parent" : "53"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.dsqrt_64ns_64ns_64_21_no_dsp_1_U538", "Parent" : "53"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.dsqrt_64ns_64ns_64_21_no_dsp_1_U539", "Parent" : "53"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.dsqrt_64ns_64ns_64_21_no_dsp_1_U540", "Parent" : "53"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.dsqrt_64ns_64ns_64_21_no_dsp_1_U541", "Parent" : "53"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_fu_3141.dsqrt_64ns_64ns_64_21_no_dsp_1_U542", "Parent" : "53"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U566", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_5_full_dsp_1_U567", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U568", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U569", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_22_no_dsp_1_U570", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_13_full_dsp_1_U571", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U572", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U573", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U574", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	backprop {
		weights1 {Type IO LastRead 7 FirstWrite -1}
		weights2 {Type IO LastRead 32 FirstWrite -1}
		weights3 {Type IO LastRead 32 FirstWrite -1}
		biases1 {Type IO LastRead 4 FirstWrite -1}
		biases2 {Type IO LastRead 4 FirstWrite -1}
		biases3 {Type IO LastRead 4 FirstWrite -1}
		training_data {Type I LastRead 8 FirstWrite -1}
		training_targets {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_265_2 {
		activations3_2_0 {Type I LastRead 0 FirstWrite -1}
		activations3_1_0 {Type I LastRead 0 FirstWrite -1}
		activations3_0_0 {Type I LastRead 0 FirstWrite -1}
		activations1 {Type O LastRead -1 FirstWrite 1}
		activations2 {Type O LastRead -1 FirstWrite 1}
		activations3_2_1_out {Type O LastRead -1 FirstWrite 1}
		activations3_1_1_out {Type O LastRead -1 FirstWrite 1}
		activations3_0_1_out {Type O LastRead -1 FirstWrite 1}}
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
		bitcast_ln41_25 {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_28_1 {
		activations1 {Type IO LastRead 0 FirstWrite 7}
		biases1 {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_18_1 {
		activations1 {Type IO LastRead 0 FirstWrite 42}
		dactivations1 {Type O LastRead -1 FirstWrite 12}}
	backprop_Pipeline_VITIS_LOOP_52_1 {
		activations2 {Type O LastRead -1 FirstWrite 327}
		weights2 {Type I LastRead 32 FirstWrite -1}
		activations1_load {Type I LastRead 0 FirstWrite -1}
		activations1_load_1 {Type I LastRead 0 FirstWrite -1}
		activations1_load_2 {Type I LastRead 0 FirstWrite -1}
		activations1_load_3 {Type I LastRead 0 FirstWrite -1}
		activations1_load_4 {Type I LastRead 0 FirstWrite -1}
		activations1_load_5 {Type I LastRead 0 FirstWrite -1}
		activations1_load_6 {Type I LastRead 0 FirstWrite -1}
		activations1_load_7 {Type I LastRead 0 FirstWrite -1}
		activations1_load_8 {Type I LastRead 0 FirstWrite -1}
		activations1_load_9 {Type I LastRead 0 FirstWrite -1}
		activations1_load_10 {Type I LastRead 0 FirstWrite -1}
		activations1_load_11 {Type I LastRead 0 FirstWrite -1}
		activations1_load_12 {Type I LastRead 0 FirstWrite -1}
		activations1_load_13 {Type I LastRead 0 FirstWrite -1}
		activations1_load_14 {Type I LastRead 0 FirstWrite -1}
		activations1_load_15 {Type I LastRead 0 FirstWrite -1}
		activations1_load_16 {Type I LastRead 0 FirstWrite -1}
		activations1_load_17 {Type I LastRead 0 FirstWrite -1}
		activations1_load_18 {Type I LastRead 0 FirstWrite -1}
		activations1_load_19 {Type I LastRead 0 FirstWrite -1}
		activations1_load_20 {Type I LastRead 0 FirstWrite -1}
		activations1_load_21 {Type I LastRead 0 FirstWrite -1}
		activations1_load_22 {Type I LastRead 0 FirstWrite -1}
		activations1_load_23 {Type I LastRead 0 FirstWrite -1}
		activations1_load_24 {Type I LastRead 0 FirstWrite -1}
		activations1_load_25 {Type I LastRead 0 FirstWrite -1}
		activations1_load_26 {Type I LastRead 0 FirstWrite -1}
		activations1_load_27 {Type I LastRead 0 FirstWrite -1}
		activations1_load_28 {Type I LastRead 0 FirstWrite -1}
		activations1_load_29 {Type I LastRead 0 FirstWrite -1}
		activations1_load_30 {Type I LastRead 0 FirstWrite -1}
		activations1_load_31 {Type I LastRead 0 FirstWrite -1}
		activations1_load_32 {Type I LastRead 0 FirstWrite -1}
		activations1_load_33 {Type I LastRead 0 FirstWrite -1}
		activations1_load_34 {Type I LastRead 0 FirstWrite -1}
		activations1_load_35 {Type I LastRead 0 FirstWrite -1}
		activations1_load_36 {Type I LastRead 0 FirstWrite -1}
		activations1_load_37 {Type I LastRead 0 FirstWrite -1}
		activations1_load_38 {Type I LastRead 0 FirstWrite -1}
		activations1_load_39 {Type I LastRead 0 FirstWrite -1}
		activations1_load_40 {Type I LastRead 0 FirstWrite -1}
		activations1_load_41 {Type I LastRead 0 FirstWrite -1}
		activations1_load_42 {Type I LastRead 0 FirstWrite -1}
		activations1_load_43 {Type I LastRead 0 FirstWrite -1}
		activations1_load_44 {Type I LastRead 0 FirstWrite -1}
		activations1_load_45 {Type I LastRead 0 FirstWrite -1}
		activations1_load_46 {Type I LastRead 0 FirstWrite -1}
		activations1_load_47 {Type I LastRead 0 FirstWrite -1}
		activations1_load_48 {Type I LastRead 0 FirstWrite -1}
		activations1_load_49 {Type I LastRead 0 FirstWrite -1}
		activations1_load_50 {Type I LastRead 0 FirstWrite -1}
		activations1_load_51 {Type I LastRead 0 FirstWrite -1}
		activations1_load_52 {Type I LastRead 0 FirstWrite -1}
		activations1_load_53 {Type I LastRead 0 FirstWrite -1}
		activations1_load_54 {Type I LastRead 0 FirstWrite -1}
		activations1_load_55 {Type I LastRead 0 FirstWrite -1}
		activations1_load_56 {Type I LastRead 0 FirstWrite -1}
		activations1_load_57 {Type I LastRead 0 FirstWrite -1}
		activations1_load_58 {Type I LastRead 0 FirstWrite -1}
		activations1_load_59 {Type I LastRead 0 FirstWrite -1}
		activations1_load_60 {Type I LastRead 0 FirstWrite -1}
		activations1_load_61 {Type I LastRead 0 FirstWrite -1}
		activations1_load_62 {Type I LastRead 0 FirstWrite -1}
		activations1_load_63 {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_28_11 {
		activations2 {Type IO LastRead 0 FirstWrite 7}
		biases2 {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_18_12 {
		activations2 {Type IO LastRead 0 FirstWrite 42}
		dactivations2 {Type O LastRead -1 FirstWrite 12}}
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
		activations3_0_41_out {Type O LastRead -1 FirstWrite 294}}
	backprop_Pipeline_VITIS_LOOP_28_13 {
		activations3_2_4_reload {Type I LastRead 0 FirstWrite -1}
		activations3_1_4_reload {Type I LastRead 0 FirstWrite -1}
		activations3_0_41_reload {Type I LastRead 0 FirstWrite -1}
		biases3 {Type I LastRead 0 FirstWrite -1}
		activations3_2_6_out {Type O LastRead -1 FirstWrite 1}
		activations3_1_6_out {Type O LastRead -1 FirstWrite 1}
		activations3_0_63_out {Type O LastRead -1 FirstWrite 1}}
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
		activations3_0_8_out {Type O LastRead -1 FirstWrite 1}}
	backprop_Pipeline_VITIS_LOOP_8_1 {
		activations3_0_8_reload {Type I LastRead 0 FirstWrite -1}
		activations3_1_8_reload {Type I LastRead 0 FirstWrite -1}
		activations3_2_8_reload {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 14}}
	backprop_Pipeline_VITIS_LOOP_11_2 {
		net_outputs_2_09 {Type I LastRead 0 FirstWrite -1}
		net_outputs_1_08 {Type I LastRead 0 FirstWrite -1}
		net_outputs_0_07 {Type I LastRead 0 FirstWrite -1}
		activations3_0_8_reload {Type I LastRead 0 FirstWrite -1}
		activations3_1_8_reload {Type I LastRead 0 FirstWrite -1}
		activations3_2_8_reload {Type I LastRead 0 FirstWrite -1}
		sum_reload {Type I LastRead 0 FirstWrite -1}
		net_outputs_2_1_out {Type O LastRead -1 FirstWrite 34}
		net_outputs_1_1_out {Type O LastRead -1 FirstWrite 34}
		net_outputs_0_1_out {Type O LastRead -1 FirstWrite 34}}
	backprop_Pipeline_VITIS_LOOP_80_1 {
		output_difference_2_025 {Type I LastRead 0 FirstWrite -1}
		output_difference_1_024 {Type I LastRead 0 FirstWrite -1}
		output_difference_0_023 {Type I LastRead 0 FirstWrite -1}
		net_outputs_0_1_reload {Type I LastRead 0 FirstWrite -1}
		net_outputs_1_1_reload {Type I LastRead 0 FirstWrite -1}
		net_outputs_2_1_reload {Type I LastRead 0 FirstWrite -1}
		sub_ln81 {Type I LastRead 0 FirstWrite -1}
		training_targets {Type I LastRead 0 FirstWrite -1}
		dactivations3_0_1_reload {Type I LastRead 0 FirstWrite -1}
		dactivations3_1_1_reload {Type I LastRead 0 FirstWrite -1}
		dactivations3_2_1_reload {Type I LastRead 0 FirstWrite -1}
		output_difference_2_1_out {Type O LastRead -1 FirstWrite 11}
		output_difference_1_1_out {Type O LastRead -1 FirstWrite 11}
		output_difference_0_1_out {Type O LastRead -1 FirstWrite 11}}
	backprop_Pipeline_VITIS_LOOP_89_1 {
		activations2 {Type I LastRead 0 FirstWrite -1}
		output_difference_0_1_reload {Type I LastRead 0 FirstWrite -1}
		delta_weights3 {Type O LastRead -1 FirstWrite 7}
		output_difference_1_1_reload {Type I LastRead 0 FirstWrite -1}
		output_difference_2_1_reload {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_101_1 {
		oracle_activations2 {Type O LastRead -1 FirstWrite 28}
		weights3 {Type I LastRead 2 FirstWrite -1}
		output_difference_0_1_reload {Type I LastRead 0 FirstWrite -1}
		output_difference_1_1_reload {Type I LastRead 0 FirstWrite -1}
		output_difference_2_1_reload {Type I LastRead 0 FirstWrite -1}
		dactivations2 {Type I LastRead 20 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_114_1 {
		activations1 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load {Type I LastRead 0 FirstWrite -1}
		delta_weights2 {Type O LastRead -1 FirstWrite 7}
		oracle_activations2_load_1 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_2 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_3 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_4 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_5 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_6 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_7 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_8 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_9 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_10 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_11 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_12 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_13 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_14 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_15 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_16 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_17 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_18 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_19 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_20 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_21 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_22 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_23 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_24 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_25 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_26 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_27 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_28 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_29 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_30 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_31 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_32 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_33 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_34 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_35 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_36 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_37 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_38 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_39 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_40 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_41 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_42 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_43 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_44 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_45 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_46 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_47 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_48 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_49 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_50 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_51 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_52 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_53 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_54 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_55 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_56 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_57 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_58 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_59 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_60 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_61 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_62 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_63 {Type I LastRead 0 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_126_1 {
		oracle_activations1 {Type O LastRead -1 FirstWrite 332}
		weights2 {Type I LastRead 32 FirstWrite -1}
		oracle_activations2_load {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_1 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_2 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_3 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_4 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_5 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_6 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_7 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_8 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_9 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_10 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_11 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_12 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_13 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_14 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_15 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_16 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_17 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_18 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_19 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_20 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_21 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_22 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_23 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_24 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_25 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_26 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_27 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_28 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_29 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_30 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_31 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_32 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_33 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_34 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_35 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_36 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_37 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_38 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_39 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_40 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_41 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_42 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_43 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_44 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_45 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_46 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_47 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_48 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_49 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_50 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_51 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_52 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_53 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_54 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_55 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_56 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_57 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_58 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_59 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_60 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_61 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_62 {Type I LastRead 0 FirstWrite -1}
		oracle_activations2_load_63 {Type I LastRead 0 FirstWrite -1}
		dactivations1 {Type I LastRead 320 FirstWrite -1}}
	backprop_Pipeline_VITIS_LOOP_139_1 {
		phi_mul {Type I LastRead 0 FirstWrite -1}
		training_data {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load {Type I LastRead 0 FirstWrite -1}
		delta_weights1 {Type O LastRead -1 FirstWrite 7}
		oracle_activations1_load_1 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_2 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_3 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_4 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_5 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_6 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_7 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_8 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_9 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_10 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_11 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_12 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_13 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_14 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_15 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_16 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_17 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_18 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_19 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_20 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_21 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_22 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_23 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_24 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_25 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_26 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_27 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_28 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_29 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_30 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_31 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_32 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_33 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_34 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_35 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_36 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_37 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_38 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_39 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_40 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_41 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_42 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_43 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_44 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_45 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_46 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_47 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_48 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_49 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_50 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_51 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_52 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_53 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_54 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_55 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_56 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_57 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_58 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_59 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_60 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_61 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_62 {Type I LastRead 0 FirstWrite -1}
		oracle_activations1_load_63 {Type I LastRead 0 FirstWrite -1}}
	update_weights_1 {
		weights1 {Type IO LastRead 4 FirstWrite 12}
		weights2 {Type IO LastRead 4 FirstWrite 12}
		weights3 {Type IO LastRead 4 FirstWrite 12}
		d_weights1 {Type I LastRead 0 FirstWrite -1}
		d_weights2 {Type I LastRead 0 FirstWrite -1}
		d_weights3 {Type I LastRead 0 FirstWrite -1}
		biases1 {Type IO LastRead 4 FirstWrite 12}
		biases2 {Type IO LastRead 4 FirstWrite 12}
		biases3 {Type IO LastRead 4 FirstWrite 10}
		d_biases1 {Type I LastRead 0 FirstWrite -1}
		d_biases2 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}}
	update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2 {
		d_weights1 {Type I LastRead 0 FirstWrite -1}
		weights1 {Type IO LastRead 4 FirstWrite 12}
		norm_2_out {Type O LastRead -1 FirstWrite 17}}
	update_weights_1_Pipeline_VITIS_LOOP_169_3 {
		d_biases1 {Type I LastRead 0 FirstWrite -1}
		biases1 {Type IO LastRead 4 FirstWrite 12}
		bias_norm_1_out {Type O LastRead -1 FirstWrite 17}}
	update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8 {
		d_weights2 {Type I LastRead 0 FirstWrite -1}
		weights2 {Type IO LastRead 4 FirstWrite 12}
		norm_4_out {Type O LastRead -1 FirstWrite 17}}
	update_weights_1_Pipeline_VITIS_LOOP_195_9 {
		d_biases2 {Type I LastRead 0 FirstWrite -1}
		biases2 {Type IO LastRead 4 FirstWrite 12}
		bias_norm_4_out {Type O LastRead -1 FirstWrite 17}}
	update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14 {
		d_weights3 {Type I LastRead 0 FirstWrite -1}
		weights3 {Type IO LastRead 4 FirstWrite 12}
		norm_7_out {Type O LastRead -1 FirstWrite 17}}
	update_weights_1_Pipeline_VITIS_LOOP_221_15 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		biases3 {Type IO LastRead 4 FirstWrite 10}
		bias_norm_7_out {Type O LastRead -1 FirstWrite 16}}
	update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5 {
		weights1 {Type IO LastRead 0 FirstWrite 24}
		norm_1 {Type I LastRead 0 FirstWrite -1}}
	update_weights_1_Pipeline_VITIS_LOOP_182_6 {
		biases1 {Type IO LastRead 0 FirstWrite 24}
		bias_norm {Type I LastRead 0 FirstWrite -1}}
	update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11 {
		weights2 {Type IO LastRead 0 FirstWrite 24}
		norm_5 {Type I LastRead 0 FirstWrite -1}}
	update_weights_1_Pipeline_VITIS_LOOP_208_12 {
		biases2 {Type IO LastRead 0 FirstWrite 24}
		bias_norm_3 {Type I LastRead 0 FirstWrite -1}}
	update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17 {
		weights3 {Type IO LastRead 0 FirstWrite 24}
		norm_8 {Type I LastRead 0 FirstWrite -1}}
	update_weights_1_Pipeline_VITIS_LOOP_234_18 {
		biases3 {Type IO LastRead 0 FirstWrite 24}
		bias_norm_6 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4489999", "Max" : "4489999"}
	, {"Name" : "Interval", "Min" : "4490000", "Max" : "4490000"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weights1 { ap_memory {  { weights1_address0 mem_address 1 10 }  { weights1_ce0 mem_ce 1 1 }  { weights1_we0 mem_we 1 1 }  { weights1_d0 mem_din 1 64 }  { weights1_q0 mem_dout 0 64 }  { weights1_address1 MemPortADDR2 1 10 }  { weights1_ce1 MemPortCE2 1 1 }  { weights1_q1 MemPortDOUT2 0 64 } } }
	weights2 { ap_memory {  { weights2_address0 mem_address 1 12 }  { weights2_ce0 mem_ce 1 1 }  { weights2_we0 mem_we 1 1 }  { weights2_d0 mem_din 1 64 }  { weights2_q0 mem_dout 0 64 }  { weights2_address1 MemPortADDR2 1 12 }  { weights2_ce1 MemPortCE2 1 1 }  { weights2_q1 MemPortDOUT2 0 64 } } }
	weights3 { ap_memory {  { weights3_address0 mem_address 1 8 }  { weights3_ce0 mem_ce 1 1 }  { weights3_we0 mem_we 1 1 }  { weights3_d0 mem_din 1 64 }  { weights3_q0 mem_dout 0 64 }  { weights3_address1 MemPortADDR2 1 8 }  { weights3_ce1 MemPortCE2 1 1 }  { weights3_q1 MemPortDOUT2 0 64 } } }
	biases1 { ap_memory {  { biases1_address0 mem_address 1 6 }  { biases1_ce0 mem_ce 1 1 }  { biases1_we0 mem_we 1 1 }  { biases1_d0 mem_din 1 64 }  { biases1_q0 mem_dout 0 64 }  { biases1_address1 MemPortADDR2 1 6 }  { biases1_ce1 MemPortCE2 1 1 }  { biases1_q1 MemPortDOUT2 0 64 } } }
	biases2 { ap_memory {  { biases2_address0 mem_address 1 6 }  { biases2_ce0 mem_ce 1 1 }  { biases2_we0 mem_we 1 1 }  { biases2_d0 mem_din 1 64 }  { biases2_q0 mem_dout 0 64 }  { biases2_address1 MemPortADDR2 1 6 }  { biases2_ce1 MemPortCE2 1 1 }  { biases2_q1 MemPortDOUT2 0 64 } } }
	biases3 { ap_memory {  { biases3_address0 mem_address 1 2 }  { biases3_ce0 mem_ce 1 1 }  { biases3_we0 mem_we 1 1 }  { biases3_d0 mem_din 1 64 }  { biases3_q0 mem_dout 0 64 }  { biases3_address1 MemPortADDR2 1 2 }  { biases3_ce1 MemPortCE2 1 1 }  { biases3_q1 MemPortDOUT2 0 64 } } }
	training_data { ap_memory {  { training_data_address0 mem_address 1 12 }  { training_data_ce0 mem_ce 1 1 }  { training_data_q0 in_data 0 64 }  { training_data_address1 MemPortADDR2 1 12 }  { training_data_ce1 MemPortCE2 1 1 }  { training_data_q1 in_data 0 64 } } }
	training_targets { ap_memory {  { training_targets_address0 mem_address 1 9 }  { training_targets_ce0 mem_ce 1 1 }  { training_targets_q0 mem_dout 0 64 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
