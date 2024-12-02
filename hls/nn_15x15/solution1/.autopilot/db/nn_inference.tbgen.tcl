set moduleName nn_inference
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
set C_modelName {nn_inference}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_img int 32 regular {axi_slave 0}  }
	{ bram_output int 32 regular {pointer 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_img", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_img","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":1024}, "offset_end" : {"in":2047}} , 
 	{ "Name" : "bram_output", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "bram_output","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ bram_output sc_out sc_lv 32 signal 1 } 
	{ bram_output_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"nn_inference","role":"start","value":"0","valid_bit":"0"},{"name":"nn_inference","role":"continue","value":"0","valid_bit":"4"},{"name":"nn_inference","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_img","role":"data","value":"1024"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"nn_inference","role":"start","value":"0","valid_bit":"0"},{"name":"nn_inference","role":"done","value":"0","valid_bit":"1"},{"name":"nn_inference","role":"idle","value":"0","valid_bit":"2"},{"name":"nn_inference","role":"ready","value":"0","valid_bit":"3"},{"name":"nn_inference","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "bram_output", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bram_output", "role": "default" }} , 
 	{ "name": "bram_output_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bram_output", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234"],
		"CDFG" : "nn_inference",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14910", "EstimateLatencyMax" : "14910",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_img", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bram_output", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "weights_layer1_weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer2_weights_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer3_weights_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer4_weights_V_15", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_layer1_weights_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_10_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_12_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_13_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_15_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_16_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_17_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_18_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_19_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_20_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_21_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_22_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_23_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_24_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_25_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_26_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_27_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_28_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_29_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_30_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_31_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_32_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_33_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_34_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_35_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_36_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_37_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_38_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_39_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_40_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_41_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_42_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_43_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_44_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_45_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_46_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_47_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_48_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_49_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_50_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_51_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_52_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_53_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_54_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_55_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_56_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_57_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_58_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_59_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_60_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_61_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_62_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_weights_V_63_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_0_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_1_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_2_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_3_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_4_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_5_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_6_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_7_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_8_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_9_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_10_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_11_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_12_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_13_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_14_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_15_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_16_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_17_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_18_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_19_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_20_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_21_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_22_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_23_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_24_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_25_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_26_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_27_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_28_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_29_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_30_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_weights_V_31_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_0_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_1_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_2_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_3_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_4_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_5_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_6_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_7_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_8_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_9_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_10_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_11_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_12_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_13_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_14_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_weights_V_15_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.new_input_V_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output_V_0_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output2_V_0_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output3_V_0_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output4_V_0_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U2", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U3", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U4", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U5", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U6", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U7", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U8", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U9", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U10", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U11", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U12", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U13", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U14", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U15", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U16", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U17", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U18", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U19", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U20", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U21", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U22", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U23", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U24", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U25", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U26", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U27", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U28", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U29", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U30", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U31", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U32", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U33", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U34", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U35", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U36", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U37", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U38", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U39", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U40", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U41", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U42", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U43", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U44", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U45", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U46", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U47", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U48", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U49", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U50", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U51", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U52", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U53", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U54", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U55", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U56", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U57", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U58", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U59", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U60", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U61", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U62", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U63", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U64", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U65", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U66", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7s_32s_39_1_1_U67", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U68", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U69", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U70", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U71", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U72", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U73", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U74", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U75", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U76", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U77", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U78", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U79", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U80", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U81", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U82", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U83", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U84", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U85", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U86", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U87", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U88", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U89", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U90", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U91", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U92", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U93", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U94", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U95", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_32s_40_1_1_U96", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U97", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U98", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U99", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U100", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12s_32s_40_1_1_U101", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U102", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U103", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U104", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U105", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U106", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U107", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U108", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_12s_32s_40_1_1_U109", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U110", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_32s_40_1_1_U111", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11s_32s_40_1_1_U112", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U113", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U114", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_32s_40_1_1_U115", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nn_inference {
		input_img {Type I LastRead 1 FirstWrite -1}
		bram_output {Type O LastRead -1 FirstWrite 75}
		weights_layer1_weights_V {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_0 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_1 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_2 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_3 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_4 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_5 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_6 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_7 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_8 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_9 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_10 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_11 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_12 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_13 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_14 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_15 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_16 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_17 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_18 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_19 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_20 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_21 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_22 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_23 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_24 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_25 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_26 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_27 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_28 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_29 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_30 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_31 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_32 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_33 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_34 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_35 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_36 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_37 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_38 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_39 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_40 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_41 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_42 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_43 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_44 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_45 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_46 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_47 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_48 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_49 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_50 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_51 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_52 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_53 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_54 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_55 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_56 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_57 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_58 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_59 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_60 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_61 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_62 {Type I LastRead -1 FirstWrite -1}
		layer2_weights_V_63 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_0 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_1 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_2 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_3 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_4 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_5 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_6 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_7 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_8 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_9 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_10 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_11 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_12 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_13 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_14 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_15 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_16 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_17 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_18 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_19 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_20 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_21 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_22 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_23 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_24 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_25 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_26 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_27 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_28 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_29 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_30 {Type I LastRead -1 FirstWrite -1}
		layer3_weights_V_31 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_0 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_1 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_2 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_3 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_4 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_5 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_6 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_7 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_8 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_9 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_10 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_11 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_12 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_13 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_14 {Type I LastRead -1 FirstWrite -1}
		layer4_weights_V_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14910", "Max" : "14910"}
	, {"Name" : "Interval", "Min" : "14911", "Max" : "14911"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
]}

set Spec2ImplPortList { 
	bram_output { ap_vld {  { bram_output out_data 1 32 }  { bram_output_ap_vld out_vld 1 1 } } }
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
