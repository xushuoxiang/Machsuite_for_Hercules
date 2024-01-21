set moduleName ss_sort
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
set C_modelName {ss_sort}
set C_modelType { void 0 }
set C_modelArgList {
	{ a int 32 regular {array 2048 { 2 1 } 1 1 }  }
	{ b int 32 regular {array 2048 { 2 1 } 1 1 }  }
	{ bucket int 32 regular {array 2048 { 2 } 1 1 }  }
	{ sum int 32 regular {array 128 { 2 3 } 1 1 }  }
	{ checkdata int 128 regular {array 2097152 { 0 0 } 0 1 }  }
	{ hercules_buffer_size int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "b", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "bucket", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bucket","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sum", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sum","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "checkdata", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "checkdata","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "hercules_buffer_size", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "hercules_buffer_size","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 42
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
	{ a_address1 sc_out sc_lv 11 signal 0 } 
	{ a_ce1 sc_out sc_logic 1 signal 0 } 
	{ a_q1 sc_in sc_lv 32 signal 0 } 
	{ b_address0 sc_out sc_lv 11 signal 1 } 
	{ b_ce0 sc_out sc_logic 1 signal 1 } 
	{ b_we0 sc_out sc_logic 1 signal 1 } 
	{ b_d0 sc_out sc_lv 32 signal 1 } 
	{ b_q0 sc_in sc_lv 32 signal 1 } 
	{ b_address1 sc_out sc_lv 11 signal 1 } 
	{ b_ce1 sc_out sc_logic 1 signal 1 } 
	{ b_q1 sc_in sc_lv 32 signal 1 } 
	{ bucket_address0 sc_out sc_lv 11 signal 2 } 
	{ bucket_ce0 sc_out sc_logic 1 signal 2 } 
	{ bucket_we0 sc_out sc_logic 1 signal 2 } 
	{ bucket_d0 sc_out sc_lv 32 signal 2 } 
	{ bucket_q0 sc_in sc_lv 32 signal 2 } 
	{ sum_address0 sc_out sc_lv 7 signal 3 } 
	{ sum_ce0 sc_out sc_logic 1 signal 3 } 
	{ sum_we0 sc_out sc_logic 1 signal 3 } 
	{ sum_d0 sc_out sc_lv 32 signal 3 } 
	{ sum_q0 sc_in sc_lv 32 signal 3 } 
	{ checkdata_address0 sc_out sc_lv 21 signal 4 } 
	{ checkdata_ce0 sc_out sc_logic 1 signal 4 } 
	{ checkdata_we0 sc_out sc_lv 16 signal 4 } 
	{ checkdata_d0 sc_out sc_lv 128 signal 4 } 
	{ checkdata_address1 sc_out sc_lv 21 signal 4 } 
	{ checkdata_ce1 sc_out sc_logic 1 signal 4 } 
	{ checkdata_we1 sc_out sc_lv 16 signal 4 } 
	{ checkdata_d1 sc_out sc_lv 128 signal 4 } 
	{ hercules_buffer_size sc_out sc_lv 32 signal 5 } 
	{ hercules_buffer_size_ap_vld sc_out sc_logic 1 outvld 5 } 
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
 	{ "name": "a_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "a", "role": "address1" }} , 
 	{ "name": "a_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a", "role": "ce1" }} , 
 	{ "name": "a_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "q1" }} , 
 	{ "name": "b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b", "role": "address0" }} , 
 	{ "name": "b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce0" }} , 
 	{ "name": "b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "we0" }} , 
 	{ "name": "b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "d0" }} , 
 	{ "name": "b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "q0" }} , 
 	{ "name": "b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "b", "role": "address1" }} , 
 	{ "name": "b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b", "role": "ce1" }} , 
 	{ "name": "b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "q1" }} , 
 	{ "name": "bucket_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "bucket", "role": "address0" }} , 
 	{ "name": "bucket_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bucket", "role": "ce0" }} , 
 	{ "name": "bucket_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bucket", "role": "we0" }} , 
 	{ "name": "bucket_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bucket", "role": "d0" }} , 
 	{ "name": "bucket_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bucket", "role": "q0" }} , 
 	{ "name": "sum_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "sum", "role": "address0" }} , 
 	{ "name": "sum_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum", "role": "ce0" }} , 
 	{ "name": "sum_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sum", "role": "we0" }} , 
 	{ "name": "sum_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum", "role": "d0" }} , 
 	{ "name": "sum_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum", "role": "q0" }} , 
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
		"CDFG" : "ss_sort",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "330001", "EstimateLatencyMax" : "330001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_1227", "Port" : "a"}]},
			{"Name" : "b", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_1227", "Port" : "b"}]},
			{"Name" : "bucket", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_1227", "Port" : "bucket"}]},
			{"Name" : "sum", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "checkdata", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_1227", "Port" : "checkdata"}]},
			{"Name" : "hercules_buffer_size", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "global_time_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_1_fu_1227", "Port" : "global_time_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_1_fu_1227", "Parent" : "0",
		"CDFG" : "update_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4100", "EstimateLatencyMax" : "4100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "bucket", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "checkdata", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "exp", "Type" : "None", "Direction" : "I"},
			{"Name" : "mark_a", "Type" : "None", "Direction" : "I"},
			{"Name" : "global_time_1", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ss_sort {
		a {Type IO LastRead 6 FirstWrite -1}
		b {Type IO LastRead 6 FirstWrite -1}
		bucket {Type IO LastRead 27 FirstWrite 2}
		sum {Type IO LastRead 11 FirstWrite 8}
		checkdata {Type O LastRead -1 FirstWrite 2}
		hercules_buffer_size {Type O LastRead -1 FirstWrite 1}
		global_time_1 {Type IO LastRead -1 FirstWrite -1}}
	update_1 {
		a {Type O LastRead -1 FirstWrite 3}
		bucket {Type IO LastRead 8 FirstWrite 3}
		b {Type I LastRead 3 FirstWrite -1}
		checkdata {Type O LastRead -1 FirstWrite 3}
		exp {Type I LastRead 0 FirstWrite -1}
		mark_a {Type I LastRead 0 FirstWrite -1}
		global_time_1 {Type IO LastRead 0 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "330001", "Max" : "330001"}
	, {"Name" : "Interval", "Min" : "330002", "Max" : "330002"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	a { ap_memory {  { a_address0 mem_address 1 11 }  { a_ce0 mem_ce 1 1 }  { a_we0 mem_we 1 1 }  { a_d0 mem_din 1 32 }  { a_q0 mem_dout 0 32 }  { a_address1 MemPortADDR2 1 11 }  { a_ce1 MemPortCE2 1 1 }  { a_q1 MemPortDOUT2 0 32 } } }
	b { ap_memory {  { b_address0 mem_address 1 11 }  { b_ce0 mem_ce 1 1 }  { b_we0 mem_we 1 1 }  { b_d0 mem_din 1 32 }  { b_q0 mem_dout 0 32 }  { b_address1 MemPortADDR2 1 11 }  { b_ce1 MemPortCE2 1 1 }  { b_q1 MemPortDOUT2 0 32 } } }
	bucket { ap_memory {  { bucket_address0 mem_address 1 11 }  { bucket_ce0 mem_ce 1 1 }  { bucket_we0 mem_we 1 1 }  { bucket_d0 mem_din 1 32 }  { bucket_q0 mem_dout 0 32 } } }
	sum { ap_memory {  { sum_address0 mem_address 1 7 }  { sum_ce0 mem_ce 1 1 }  { sum_we0 mem_we 1 1 }  { sum_d0 mem_din 1 32 }  { sum_q0 mem_dout 0 32 } } }
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
