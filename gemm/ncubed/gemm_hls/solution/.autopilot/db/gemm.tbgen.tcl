set moduleName gemm
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
set C_modelName {gemm}
set C_modelType { void 0 }
set C_modelArgList {
	{ m1 int 64 regular {array 4096 { 1 1 } 1 1 }  }
	{ m2 int 64 regular {array 4096 { 1 1 } 1 1 }  }
	{ prod int 64 regular {array 4096 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "m1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m1","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "m2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "m2","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "prod","cData": "long","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m1_address0 sc_out sc_lv 12 signal 0 } 
	{ m1_ce0 sc_out sc_logic 1 signal 0 } 
	{ m1_q0 sc_in sc_lv 64 signal 0 } 
	{ m1_address1 sc_out sc_lv 12 signal 0 } 
	{ m1_ce1 sc_out sc_logic 1 signal 0 } 
	{ m1_q1 sc_in sc_lv 64 signal 0 } 
	{ m2_address0 sc_out sc_lv 12 signal 1 } 
	{ m2_ce0 sc_out sc_logic 1 signal 1 } 
	{ m2_q0 sc_in sc_lv 64 signal 1 } 
	{ m2_address1 sc_out sc_lv 12 signal 1 } 
	{ m2_ce1 sc_out sc_logic 1 signal 1 } 
	{ m2_q1 sc_in sc_lv 64 signal 1 } 
	{ prod_address0 sc_out sc_lv 12 signal 2 } 
	{ prod_ce0 sc_out sc_logic 1 signal 2 } 
	{ prod_we0 sc_out sc_logic 1 signal 2 } 
	{ prod_d0 sc_out sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m1", "role": "address0" }} , 
 	{ "name": "m1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m1", "role": "ce0" }} , 
 	{ "name": "m1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m1", "role": "q0" }} , 
 	{ "name": "m1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m1", "role": "address1" }} , 
 	{ "name": "m1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m1", "role": "ce1" }} , 
 	{ "name": "m1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m1", "role": "q1" }} , 
 	{ "name": "m2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m2", "role": "address0" }} , 
 	{ "name": "m2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m2", "role": "ce0" }} , 
 	{ "name": "m2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m2", "role": "q0" }} , 
 	{ "name": "m2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m2", "role": "address1" }} , 
 	{ "name": "m2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m2", "role": "ce1" }} , 
 	{ "name": "m2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m2", "role": "q1" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prod", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "gemm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131369", "EstimateLatencyMax" : "131369",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "prod", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_5_max_dsp_1_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gemm {
		m1 {Type I LastRead 33 FirstWrite -1}
		m2 {Type I LastRead 33 FirstWrite -1}
		prod {Type O LastRead -1 FirstWrite 328}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "131369", "Max" : "131369"}
	, {"Name" : "Interval", "Min" : "131370", "Max" : "131370"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	m1 { ap_memory {  { m1_address0 mem_address 1 12 }  { m1_ce0 mem_ce 1 1 }  { m1_q0 mem_dout 0 64 }  { m1_address1 MemPortADDR2 1 12 }  { m1_ce1 MemPortCE2 1 1 }  { m1_q1 MemPortDOUT2 0 64 } } }
	m2 { ap_memory {  { m2_address0 mem_address 1 12 }  { m2_ce0 mem_ce 1 1 }  { m2_q0 mem_dout 0 64 }  { m2_address1 MemPortADDR2 1 12 }  { m2_ce1 MemPortCE2 1 1 }  { m2_q1 MemPortDOUT2 0 64 } } }
	prod { ap_memory {  { prod_address0 mem_address 1 12 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 64 } } }
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
