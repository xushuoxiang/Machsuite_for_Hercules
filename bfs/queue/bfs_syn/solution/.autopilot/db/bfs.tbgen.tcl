set moduleName bfs
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
set C_modelName {bfs}
set C_modelType { void 0 }
set C_modelArgList {
	{ nodes int 128 regular {array 256 { 1 1 } 1 1 }  }
	{ edges int 64 regular {array 4096 { 1 3 } 1 1 }  }
	{ starting_node int 64 regular  }
	{ level int 8 regular {array 256 { 2 3 } 1 1 }  }
	{ level_counts int 64 regular {array 10 { 2 3 } 1 1 }  }
	{ checkdata int 128 regular {array 2097152 { 0 0 } 0 1 }  }
	{ hercules_buffer_size int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nodes", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "nodes","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "edges", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "edges","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "starting_node", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "starting_node","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "level", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "level","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "level_counts", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "level_counts","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "checkdata", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "checkdata","cData": "int128","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "hercules_buffer_size", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "hercules_buffer_size","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nodes_address0 sc_out sc_lv 8 signal 0 } 
	{ nodes_ce0 sc_out sc_logic 1 signal 0 } 
	{ nodes_q0 sc_in sc_lv 128 signal 0 } 
	{ nodes_address1 sc_out sc_lv 8 signal 0 } 
	{ nodes_ce1 sc_out sc_logic 1 signal 0 } 
	{ nodes_q1 sc_in sc_lv 128 signal 0 } 
	{ edges_address0 sc_out sc_lv 12 signal 1 } 
	{ edges_ce0 sc_out sc_logic 1 signal 1 } 
	{ edges_q0 sc_in sc_lv 64 signal 1 } 
	{ starting_node sc_in sc_lv 64 signal 2 } 
	{ level_address0 sc_out sc_lv 8 signal 3 } 
	{ level_ce0 sc_out sc_logic 1 signal 3 } 
	{ level_we0 sc_out sc_logic 1 signal 3 } 
	{ level_d0 sc_out sc_lv 8 signal 3 } 
	{ level_q0 sc_in sc_lv 8 signal 3 } 
	{ level_counts_address0 sc_out sc_lv 4 signal 4 } 
	{ level_counts_ce0 sc_out sc_logic 1 signal 4 } 
	{ level_counts_we0 sc_out sc_logic 1 signal 4 } 
	{ level_counts_d0 sc_out sc_lv 64 signal 4 } 
	{ level_counts_q0 sc_in sc_lv 64 signal 4 } 
	{ checkdata_address0 sc_out sc_lv 21 signal 5 } 
	{ checkdata_ce0 sc_out sc_logic 1 signal 5 } 
	{ checkdata_we0 sc_out sc_lv 16 signal 5 } 
	{ checkdata_d0 sc_out sc_lv 128 signal 5 } 
	{ checkdata_address1 sc_out sc_lv 21 signal 5 } 
	{ checkdata_ce1 sc_out sc_logic 1 signal 5 } 
	{ checkdata_we1 sc_out sc_lv 16 signal 5 } 
	{ checkdata_d1 sc_out sc_lv 128 signal 5 } 
	{ hercules_buffer_size sc_out sc_lv 32 signal 6 } 
	{ hercules_buffer_size_ap_vld sc_out sc_logic 1 outvld 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nodes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "nodes", "role": "address0" }} , 
 	{ "name": "nodes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes", "role": "ce0" }} , 
 	{ "name": "nodes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nodes", "role": "q0" }} , 
 	{ "name": "nodes_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "nodes", "role": "address1" }} , 
 	{ "name": "nodes_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes", "role": "ce1" }} , 
 	{ "name": "nodes_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "nodes", "role": "q1" }} , 
 	{ "name": "edges_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edges", "role": "address0" }} , 
 	{ "name": "edges_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edges", "role": "ce0" }} , 
 	{ "name": "edges_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "edges", "role": "q0" }} , 
 	{ "name": "starting_node", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "starting_node", "role": "default" }} , 
 	{ "name": "level_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "address0" }} , 
 	{ "name": "level_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level", "role": "ce0" }} , 
 	{ "name": "level_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level", "role": "we0" }} , 
 	{ "name": "level_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "d0" }} , 
 	{ "name": "level_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "level", "role": "q0" }} , 
 	{ "name": "level_counts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "level_counts", "role": "address0" }} , 
 	{ "name": "level_counts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level_counts", "role": "ce0" }} , 
 	{ "name": "level_counts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "level_counts", "role": "we0" }} , 
 	{ "name": "level_counts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "level_counts", "role": "d0" }} , 
 	{ "name": "level_counts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "level_counts", "role": "q0" }} , 
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
		"CDFG" : "bfs",
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
			{"Name" : "nodes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edges", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "starting_node", "Type" : "None", "Direction" : "I"},
			{"Name" : "level", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "level_counts", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "checkdata", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "hercules_buffer_size", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "global_time_1", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.queue_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bfs {
		nodes {Type I LastRead 3 FirstWrite -1}
		edges {Type I LastRead 4 FirstWrite -1}
		starting_node {Type I LastRead 0 FirstWrite -1}
		level {Type IO LastRead 6 FirstWrite 0}
		level_counts {Type IO LastRead 7 FirstWrite 0}
		checkdata {Type O LastRead -1 FirstWrite 3}
		hercules_buffer_size {Type O LastRead -1 FirstWrite 1}
		global_time_1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	nodes { ap_memory {  { nodes_address0 mem_address 1 8 }  { nodes_ce0 mem_ce 1 1 }  { nodes_q0 mem_dout 0 128 }  { nodes_address1 MemPortADDR2 1 8 }  { nodes_ce1 MemPortCE2 1 1 }  { nodes_q1 MemPortDOUT2 0 128 } } }
	edges { ap_memory {  { edges_address0 mem_address 1 12 }  { edges_ce0 mem_ce 1 1 }  { edges_q0 mem_dout 0 64 } } }
	starting_node { ap_none {  { starting_node in_data 0 64 } } }
	level { ap_memory {  { level_address0 mem_address 1 8 }  { level_ce0 mem_ce 1 1 }  { level_we0 mem_we 1 1 }  { level_d0 mem_din 1 8 }  { level_q0 mem_dout 0 8 } } }
	level_counts { ap_memory {  { level_counts_address0 mem_address 1 4 }  { level_counts_ce0 mem_ce 1 1 }  { level_counts_we0 mem_we 1 1 }  { level_counts_d0 mem_din 1 64 }  { level_counts_q0 mem_dout 0 64 } } }
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
