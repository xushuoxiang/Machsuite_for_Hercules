set moduleName update_weights_1
set isTopModule 0
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
set C_modelName {update_weights.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ weights1 int 64 regular {array 832 { 0 1 } 1 1 }  }
	{ weights2 int 64 regular {array 4096 { 0 1 } 1 1 }  }
	{ weights3 int 64 regular {array 192 { 0 1 } 1 1 }  }
	{ d_weights1 double 64 regular {array 832 { 1 3 } 1 1 }  }
	{ d_weights2 double 64 regular {array 4096 { 1 3 } 1 1 }  }
	{ d_weights3 double 64 regular {array 192 { 1 3 } 1 1 }  }
	{ biases1 int 64 regular {array 64 { 0 1 } 1 1 }  }
	{ biases2 int 64 regular {array 64 { 0 1 } 1 1 }  }
	{ biases3 int 64 regular {array 3 { 2 1 } 1 1 }  }
	{ d_biases1 double 64 regular {array 64 { 1 3 } 1 1 }  }
	{ d_biases2 double 64 regular {array 64 { 1 3 } 1 1 }  }
	{ p_read double 64 regular  }
	{ p_read1 double 64 regular  }
	{ p_read2 double 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "weights2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "weights3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "d_weights1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "d_weights2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "d_weights3", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "biases1", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "biases2", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "biases3", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "d_biases1", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "d_biases2", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 101
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
	{ weights1_address1 sc_out sc_lv 10 signal 0 } 
	{ weights1_ce1 sc_out sc_logic 1 signal 0 } 
	{ weights1_q1 sc_in sc_lv 64 signal 0 } 
	{ weights2_address0 sc_out sc_lv 12 signal 1 } 
	{ weights2_ce0 sc_out sc_logic 1 signal 1 } 
	{ weights2_we0 sc_out sc_logic 1 signal 1 } 
	{ weights2_d0 sc_out sc_lv 64 signal 1 } 
	{ weights2_address1 sc_out sc_lv 12 signal 1 } 
	{ weights2_ce1 sc_out sc_logic 1 signal 1 } 
	{ weights2_q1 sc_in sc_lv 64 signal 1 } 
	{ weights3_address0 sc_out sc_lv 8 signal 2 } 
	{ weights3_ce0 sc_out sc_logic 1 signal 2 } 
	{ weights3_we0 sc_out sc_logic 1 signal 2 } 
	{ weights3_d0 sc_out sc_lv 64 signal 2 } 
	{ weights3_address1 sc_out sc_lv 8 signal 2 } 
	{ weights3_ce1 sc_out sc_logic 1 signal 2 } 
	{ weights3_q1 sc_in sc_lv 64 signal 2 } 
	{ d_weights1_address0 sc_out sc_lv 10 signal 3 } 
	{ d_weights1_ce0 sc_out sc_logic 1 signal 3 } 
	{ d_weights1_q0 sc_in sc_lv 64 signal 3 } 
	{ d_weights2_address0 sc_out sc_lv 12 signal 4 } 
	{ d_weights2_ce0 sc_out sc_logic 1 signal 4 } 
	{ d_weights2_q0 sc_in sc_lv 64 signal 4 } 
	{ d_weights3_address0 sc_out sc_lv 8 signal 5 } 
	{ d_weights3_ce0 sc_out sc_logic 1 signal 5 } 
	{ d_weights3_q0 sc_in sc_lv 64 signal 5 } 
	{ biases1_address0 sc_out sc_lv 6 signal 6 } 
	{ biases1_ce0 sc_out sc_logic 1 signal 6 } 
	{ biases1_we0 sc_out sc_logic 1 signal 6 } 
	{ biases1_d0 sc_out sc_lv 64 signal 6 } 
	{ biases1_address1 sc_out sc_lv 6 signal 6 } 
	{ biases1_ce1 sc_out sc_logic 1 signal 6 } 
	{ biases1_q1 sc_in sc_lv 64 signal 6 } 
	{ biases2_address0 sc_out sc_lv 6 signal 7 } 
	{ biases2_ce0 sc_out sc_logic 1 signal 7 } 
	{ biases2_we0 sc_out sc_logic 1 signal 7 } 
	{ biases2_d0 sc_out sc_lv 64 signal 7 } 
	{ biases2_address1 sc_out sc_lv 6 signal 7 } 
	{ biases2_ce1 sc_out sc_logic 1 signal 7 } 
	{ biases2_q1 sc_in sc_lv 64 signal 7 } 
	{ biases3_address0 sc_out sc_lv 2 signal 8 } 
	{ biases3_ce0 sc_out sc_logic 1 signal 8 } 
	{ biases3_we0 sc_out sc_logic 1 signal 8 } 
	{ biases3_d0 sc_out sc_lv 64 signal 8 } 
	{ biases3_q0 sc_in sc_lv 64 signal 8 } 
	{ biases3_address1 sc_out sc_lv 2 signal 8 } 
	{ biases3_ce1 sc_out sc_logic 1 signal 8 } 
	{ biases3_q1 sc_in sc_lv 64 signal 8 } 
	{ d_biases1_address0 sc_out sc_lv 6 signal 9 } 
	{ d_biases1_ce0 sc_out sc_logic 1 signal 9 } 
	{ d_biases1_q0 sc_in sc_lv 64 signal 9 } 
	{ d_biases2_address0 sc_out sc_lv 6 signal 10 } 
	{ d_biases2_ce0 sc_out sc_logic 1 signal 10 } 
	{ d_biases2_q0 sc_in sc_lv 64 signal 10 } 
	{ p_read sc_in sc_lv 64 signal 11 } 
	{ p_read1 sc_in sc_lv 64 signal 12 } 
	{ p_read2 sc_in sc_lv 64 signal 13 } 
	{ grp_fu_6768_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_6768_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6768_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6776_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6776_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6772_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6772_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6772_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_6772_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6772_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6780_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6780_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6780_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6780_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6784_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6784_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6784_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6784_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6792_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6792_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6792_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6792_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6796_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6796_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6796_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6796_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_6800_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6800_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_6800_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_6800_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "weights1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "weights1", "role": "address1" }} , 
 	{ "name": "weights1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights1", "role": "ce1" }} , 
 	{ "name": "weights1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights1", "role": "q1" }} , 
 	{ "name": "weights2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights2", "role": "address0" }} , 
 	{ "name": "weights2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce0" }} , 
 	{ "name": "weights2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "we0" }} , 
 	{ "name": "weights2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights2", "role": "d0" }} , 
 	{ "name": "weights2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weights2", "role": "address1" }} , 
 	{ "name": "weights2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights2", "role": "ce1" }} , 
 	{ "name": "weights2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights2", "role": "q1" }} , 
 	{ "name": "weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address0" }} , 
 	{ "name": "weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce0" }} , 
 	{ "name": "weights3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "we0" }} , 
 	{ "name": "weights3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "d0" }} , 
 	{ "name": "weights3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weights3", "role": "address1" }} , 
 	{ "name": "weights3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights3", "role": "ce1" }} , 
 	{ "name": "weights3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights3", "role": "q1" }} , 
 	{ "name": "d_weights1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_weights1", "role": "address0" }} , 
 	{ "name": "d_weights1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_weights1", "role": "ce0" }} , 
 	{ "name": "d_weights1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d_weights1", "role": "q0" }} , 
 	{ "name": "d_weights2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "d_weights2", "role": "address0" }} , 
 	{ "name": "d_weights2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_weights2", "role": "ce0" }} , 
 	{ "name": "d_weights2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d_weights2", "role": "q0" }} , 
 	{ "name": "d_weights3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "d_weights3", "role": "address0" }} , 
 	{ "name": "d_weights3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_weights3", "role": "ce0" }} , 
 	{ "name": "d_weights3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d_weights3", "role": "q0" }} , 
 	{ "name": "biases1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases1", "role": "address0" }} , 
 	{ "name": "biases1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases1", "role": "ce0" }} , 
 	{ "name": "biases1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases1", "role": "we0" }} , 
 	{ "name": "biases1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases1", "role": "d0" }} , 
 	{ "name": "biases1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases1", "role": "address1" }} , 
 	{ "name": "biases1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases1", "role": "ce1" }} , 
 	{ "name": "biases1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases1", "role": "q1" }} , 
 	{ "name": "biases2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "biases2", "role": "address0" }} , 
 	{ "name": "biases2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases2", "role": "ce0" }} , 
 	{ "name": "biases2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "biases2", "role": "we0" }} , 
 	{ "name": "biases2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "biases2", "role": "d0" }} , 
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
 	{ "name": "d_biases1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "d_biases1", "role": "address0" }} , 
 	{ "name": "d_biases1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_biases1", "role": "ce0" }} , 
 	{ "name": "d_biases1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d_biases1", "role": "q0" }} , 
 	{ "name": "d_biases2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "d_biases2", "role": "address0" }} , 
 	{ "name": "d_biases2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_biases2", "role": "ce0" }} , 
 	{ "name": "d_biases2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "d_biases2", "role": "q0" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_6768_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6768_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6768_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6768_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6776_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6776_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6776_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6772_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6772_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_6772_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6772_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6772_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6772_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6780_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6780_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6780_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6780_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6780_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6784_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6784_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6784_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6784_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6784_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6792_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6792_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6792_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6792_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6792_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6792_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6792_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6792_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6796_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6796_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6796_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6796_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6796_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6796_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6796_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6796_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_6800_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6800_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_6800_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6800_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_6800_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_6800_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_6800_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_6800_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "8", "11", "14", "19", "21", "24", "27", "30", "33", "36", "37", "38", "39", "40", "41"],
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
					{"ID" : "19", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5_fu_168", "Port" : "weights1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "1", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110", "Port" : "weights1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "weights2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128", "Port" : "weights2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "24", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182", "Port" : "weights2", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "weights3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196", "Port" : "weights3", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "11", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146", "Port" : "weights3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_weights1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110", "Port" : "d_weights1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_weights2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128", "Port" : "d_weights2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_weights3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146", "Port" : "d_weights3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "biases1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119", "Port" : "biases1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "21", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175", "Port" : "biases1", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "biases2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137", "Port" : "biases2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "27", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189", "Port" : "biases2", "Inst_start_state" : "23", "Inst_end_state" : "24"}]},
			{"Name" : "biases3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203", "Port" : "biases3", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "14", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155", "Port" : "biases3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_biases1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119", "Port" : "d_biases1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "d_biases2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137", "Port" : "d_biases2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_163_1_VITIS_LOOP_164_2_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_169_3_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128", "Parent" : "0", "Child" : ["6", "7"],
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128.dadddsub_64ns_64ns_64_5_full_dsp_1_U502", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_189_7_VITIS_LOOP_190_8_fu_128.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137", "Parent" : "0", "Child" : ["9", "10"],
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137.dadddsub_64ns_64ns_64_5_full_dsp_1_U507", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_195_9_fu_137.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146", "Parent" : "0", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146.dadddsub_64ns_64ns_64_5_full_dsp_1_U518", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_215_13_VITIS_LOOP_216_14_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155", "Parent" : "0", "Child" : ["15", "16", "17", "18"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.dadddsub_64ns_64ns_64_5_full_dsp_1_U523", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.dmul_64ns_64ns_64_5_max_dsp_1_U524", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.mux_32_64_1_1_U525", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_221_15_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5_fu_168", "Parent" : "0", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_177_4_VITIS_LOOP_178_5_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175", "Parent" : "0", "Child" : ["22", "23"],
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
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175.ddiv_64ns_64ns_64_22_no_dsp_1_U499", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_182_6_fu_175.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182", "Parent" : "0", "Child" : ["25", "26"],
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
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182.ddiv_64ns_64ns_64_22_no_dsp_1_U512", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_203_10_VITIS_LOOP_204_11_fu_182.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189", "Parent" : "0", "Child" : ["28", "29"],
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189.ddiv_64ns_64ns_64_22_no_dsp_1_U515", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_208_12_fu_189.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196", "Parent" : "0", "Child" : ["31", "32"],
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
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196.ddiv_64ns_64ns_64_22_no_dsp_1_U531", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_229_16_VITIS_LOOP_230_17_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203", "Parent" : "0", "Child" : ["34", "35"],
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
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203.ddiv_64ns_64ns_64_22_no_dsp_1_U534", "Parent" : "33"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_update_weights_1_Pipeline_VITIS_LOOP_234_18_fu_203.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U537", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U538", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U539", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U540", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U541", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsqrt_64ns_64ns_64_21_no_dsp_1_U542", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "20547", "Max" : "20547"}
	, {"Name" : "Interval", "Min" : "20547", "Max" : "20547"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weights1 { ap_memory {  { weights1_address0 mem_address 1 10 }  { weights1_ce0 mem_ce 1 1 }  { weights1_we0 mem_we 1 1 }  { weights1_d0 mem_din 1 64 }  { weights1_address1 MemPortADDR2 1 10 }  { weights1_ce1 MemPortCE2 1 1 }  { weights1_q1 MemPortDOUT2 0 64 } } }
	weights2 { ap_memory {  { weights2_address0 mem_address 1 12 }  { weights2_ce0 mem_ce 1 1 }  { weights2_we0 mem_we 1 1 }  { weights2_d0 mem_din 1 64 }  { weights2_address1 MemPortADDR2 1 12 }  { weights2_ce1 MemPortCE2 1 1 }  { weights2_q1 MemPortDOUT2 0 64 } } }
	weights3 { ap_memory {  { weights3_address0 mem_address 1 8 }  { weights3_ce0 mem_ce 1 1 }  { weights3_we0 mem_we 1 1 }  { weights3_d0 mem_din 1 64 }  { weights3_address1 MemPortADDR2 1 8 }  { weights3_ce1 MemPortCE2 1 1 }  { weights3_q1 MemPortDOUT2 0 64 } } }
	d_weights1 { ap_memory {  { d_weights1_address0 mem_address 1 10 }  { d_weights1_ce0 mem_ce 1 1 }  { d_weights1_q0 mem_dout 0 64 } } }
	d_weights2 { ap_memory {  { d_weights2_address0 mem_address 1 12 }  { d_weights2_ce0 mem_ce 1 1 }  { d_weights2_q0 mem_dout 0 64 } } }
	d_weights3 { ap_memory {  { d_weights3_address0 mem_address 1 8 }  { d_weights3_ce0 mem_ce 1 1 }  { d_weights3_q0 mem_dout 0 64 } } }
	biases1 { ap_memory {  { biases1_address0 mem_address 1 6 }  { biases1_ce0 mem_ce 1 1 }  { biases1_we0 mem_we 1 1 }  { biases1_d0 mem_din 1 64 }  { biases1_address1 MemPortADDR2 1 6 }  { biases1_ce1 MemPortCE2 1 1 }  { biases1_q1 MemPortDOUT2 0 64 } } }
	biases2 { ap_memory {  { biases2_address0 mem_address 1 6 }  { biases2_ce0 mem_ce 1 1 }  { biases2_we0 mem_we 1 1 }  { biases2_d0 mem_din 1 64 }  { biases2_address1 MemPortADDR2 1 6 }  { biases2_ce1 MemPortCE2 1 1 }  { biases2_q1 MemPortDOUT2 0 64 } } }
	biases3 { ap_memory {  { biases3_address0 mem_address 1 2 }  { biases3_ce0 mem_ce 1 1 }  { biases3_we0 mem_we 1 1 }  { biases3_d0 mem_din 1 64 }  { biases3_q0 mem_dout 0 64 }  { biases3_address1 MemPortADDR2 1 2 }  { biases3_ce1 MemPortCE2 1 1 }  { biases3_q1 MemPortDOUT2 0 64 } } }
	d_biases1 { ap_memory {  { d_biases1_address0 mem_address 1 6 }  { d_biases1_ce0 mem_ce 1 1 }  { d_biases1_q0 mem_dout 0 64 } } }
	d_biases2 { ap_memory {  { d_biases2_address0 mem_address 1 6 }  { d_biases2_ce0 mem_ce 1 1 }  { d_biases2_q0 mem_dout 0 64 } } }
	p_read { ap_none {  { p_read in_data 0 64 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 64 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 64 } } }
}
