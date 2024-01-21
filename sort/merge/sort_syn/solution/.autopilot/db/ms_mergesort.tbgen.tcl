set moduleName ms_mergesort
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
set C_modelName {ms_mergesort}
set C_modelType { void 0 }
set C_modelArgList {
	{ a int 32 regular {array 2048 { 2 3 } 1 1 }  }
	{ checkdata int 128 regular {array 2097152 { 0 0 } 0 1 }  }
	{ hercules_buffer_size int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "checkdata", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "checkdata","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "hercules_buffer_size", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "hercules_buffer_size","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ a_address0 sc_out sc_lv 11 signal 0 } 
	{ a_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_we0 sc_out sc_logic 1 signal 0 } 
	{ a_d0 sc_out sc_lv 32 signal 0 } 
	{ a_q0 sc_in sc_lv 32 signal 0 } 
	{ checkdata_address0 sc_out sc_lv 21 signal 1 } 
	{ checkdata_ce0 sc_out sc_logic 1 signal 1 } 
	{ checkdata_we0 sc_out sc_lv 16 signal 1 } 
	{ checkdata_d0 sc_out sc_lv 128 signal 1 } 
	{ checkdata_address1 sc_out sc_lv 21 signal 1 } 
	{ checkdata_ce1 sc_out sc_logic 1 signal 1 } 
	{ checkdata_we1 sc_out sc_lv 16 signal 1 } 
	{ checkdata_d1 sc_out sc_lv 128 signal 1 } 
	{ hercules_buffer_size sc_out sc_lv 32 signal 2 } 
	{ hercules_buffer_size_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "a_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a", "role": "address0" }} , 
 	{ "name": "a_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce0" }} , 
 	{ "name": "a_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "we0" }} , 
 	{ "name": "a_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "d0" }} , 
 	{ "name": "a_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q0" }} , 
 	{ "name": "checkdata_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "checkdata", "role": "address0" }} , 
 	{ "name": "checkdata_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checkdata", "role": "ce0" }} , 
 	{ "name": "checkdata_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checkdata", "role": "we0" }} , 
 	{ "name": "checkdata_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "checkdata", "role": "d0" }} , 
 	{ "name": "checkdata_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "checkdata", "role": "address1" }} , 
 	{ "name": "checkdata_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "checkdata", "role": "ce1" }} , 
 	{ "name": "checkdata_we1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "checkdata", "role": "we1" }} , 
 	{ "name": "checkdata_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "checkdata", "role": "d1" }} , 
 	{ "name": "hercules_buffer_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hercules_buffer_size", "role": "default" }} , 
 	{ "name": "hercules_buffer_size_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hercules_buffer_size", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ms_mergesort",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_1_fu_124", "Port" : "a"}]},
			{"Name" : "checkdata", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_1_fu_124", "Port" : "checkdata"}]},
			{"Name" : "hercules_buffer_size", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "global_time_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_merge_1_fu_124", "Port" : "global_time_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_merge_1_fu_124", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "merge_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "checkdata", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "start_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "m", "Type" : "None", "Direction" : "I"},
			{"Name" : "stop", "Type" : "None", "Direction" : "I"},
			{"Name" : "global_time_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_merge_1_fu_124.temp_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	ms_mergesort {
		a {Type IO LastRead 3 FirstWrite 6}
		checkdata {Type O LastRead -1 FirstWrite 2}
		hercules_buffer_size {Type O LastRead -1 FirstWrite 1}
		global_time_1 {Type IO LastRead -1 FirstWrite -1}}
	merge_1 {
		a {Type IO LastRead 3 FirstWrite 6}
		checkdata {Type O LastRead -1 FirstWrite 2}
		start_r {Type I LastRead 0 FirstWrite -1}
		m {Type I LastRead 0 FirstWrite -1}
		stop {Type I LastRead 0 FirstWrite -1}
		global_time_1 {Type IO LastRead 6 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 11 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 32 }  { a_q0 mem_dout 0 32 } } }
	checkdata { ap_memory {  { checkdata_address0 mem_address 1 21 }  { checkdata_ce0 mem_ce 1 1 }  { checkdata_we0 mem_we 1 16 }  { checkdata_d0 mem_din 1 128 }  { checkdata_address1 MemPortADDR2 1 21 }  { checkdata_ce1 MemPortCE2 1 1 }  { checkdata_we1 MemPortWE2 1 16 }  { checkdata_d1 MemPortDIN2 1 128 } } }
	hercules_buffer_size { ap_vld {  { hercules_buffer_size out_data 1 32 }  { hercules_buffer_size_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

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
