// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module nn_inference_hw_act_layer1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_0_V_address0,
        output_0_V_ce0,
        output_0_V_we0,
        output_0_V_d0,
        output_0_V_q0,
        output_0_V_address1,
        output_0_V_ce1,
        output_0_V_we1,
        output_0_V_d1,
        output_0_V_q1,
        grp_fu_880_p_din0,
        grp_fu_880_p_din1,
        grp_fu_880_p_opcode,
        grp_fu_880_p_dout0,
        grp_fu_880_p_ce
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state8 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] output_0_V_address0;
output   output_0_V_ce0;
output   output_0_V_we0;
output  [31:0] output_0_V_d0;
input  [31:0] output_0_V_q0;
output  [5:0] output_0_V_address1;
output   output_0_V_ce1;
output   output_0_V_we1;
output  [31:0] output_0_V_d1;
input  [31:0] output_0_V_q1;
output  [63:0] grp_fu_880_p_din0;
output  [63:0] grp_fu_880_p_din1;
output  [4:0] grp_fu_880_p_opcode;
input  [0:0] grp_fu_880_p_dout0;
output   grp_fu_880_p_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] output_0_V_address0;
reg output_0_V_ce0;
reg output_0_V_we0;
reg[5:0] output_0_V_address1;
reg output_0_V_ce1;
reg output_0_V_we1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] i_reg_107;
wire   [0:0] tmp_41_fu_124_p3;
reg   [0:0] tmp_41_reg_818;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_41_reg_818_pp0_iter1_reg;
reg   [0:0] tmp_41_reg_818_pp0_iter2_reg;
reg   [5:0] output_0_V_addr_reg_822;
reg   [5:0] output_0_V_addr_reg_822_pp0_iter1_reg;
reg   [5:0] output_0_V_addr_3_reg_827;
reg   [5:0] output_0_V_addr_3_reg_827_pp0_iter1_reg;
reg   [5:0] output_0_V_addr_3_reg_827_pp0_iter2_reg;
wire   [6:0] add_ln93_fu_152_p2;
reg   [6:0] add_ln93_reg_832;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_state7_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] p_Val2_s_reg_837;
wire   [0:0] p_Result_37_fu_158_p3;
reg   [0:0] p_Result_37_reg_843;
wire   [31:0] tmp_V_14_fu_172_p3;
reg   [31:0] tmp_V_14_reg_848;
wire   [0:0] icmp_ln908_fu_292_p2;
reg   [0:0] icmp_ln908_reg_853;
wire   [31:0] add_ln908_fu_306_p2;
reg   [31:0] add_ln908_reg_858;
wire   [31:0] sub_ln909_fu_318_p2;
reg   [31:0] sub_ln909_reg_863;
wire   [0:0] select_ln908_fu_324_p3;
reg   [0:0] select_ln908_reg_868;
wire   [10:0] trunc_ln893_fu_332_p1;
reg   [10:0] trunc_ln893_reg_873;
reg   [31:0] p_Val2_14_reg_878;
reg   [31:0] p_Val2_14_reg_878_pp0_iter1_reg;
wire   [0:0] p_Result_41_fu_336_p3;
reg   [0:0] p_Result_41_reg_884;
wire   [31:0] tmp_V_15_fu_350_p3;
reg   [31:0] tmp_V_15_reg_889;
wire   [31:0] sub_ln894_3_fu_376_p2;
reg   [31:0] sub_ln894_3_reg_894;
wire   [0:0] icmp_ln908_3_fu_470_p2;
reg   [0:0] icmp_ln908_3_reg_900;
wire   [0:0] select_ln908_8_fu_490_p3;
reg   [0:0] select_ln908_8_reg_905;
wire   [10:0] trunc_ln893_3_fu_498_p1;
reg   [10:0] trunc_ln893_3_reg_910;
wire   [63:0] bitcast_ln734_fu_599_p1;
wire   [0:0] icmp_ln1506_fu_614_p2;
reg   [0:0] icmp_ln1506_reg_920;
wire   [0:0] icmp_ln1506_7_fu_620_p2;
reg   [0:0] icmp_ln1506_7_reg_925;
wire   [63:0] p_Result_44_fu_723_p5;
reg   [63:0] p_Result_44_reg_930;
wire   [0:0] icmp_ln1506_8_fu_745_p2;
reg   [0:0] icmp_ln1506_8_reg_935;
wire   [0:0] icmp_ln1506_9_fu_751_p2;
reg   [0:0] icmp_ln1506_9_reg_940;
wire   [63:0] bitcast_ln734_3_fu_786_p1;
wire   [31:0] select_ln1506_3_fu_811_p3;
reg   [31:0] select_ln1506_3_reg_950;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter2;
reg   [6:0] ap_phi_mux_i_phi_fu_111_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] i_cast29_fu_132_p1;
wire   [63:0] zext_ln885_fu_147_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_119_p0;
wire   [63:0] grp_fu_119_p1;
wire   [5:0] empty_56_fu_137_p1;
wire   [5:0] or_ln93_fu_141_p2;
wire   [31:0] tmp_V_fu_166_p2;
reg   [31:0] p_Result_38_fu_180_p4;
reg   [31:0] l_fu_190_p3;
wire   [31:0] sub_ln894_fu_198_p2;
wire   [31:0] lsb_index_fu_204_p2;
wire   [30:0] tmp_43_fu_210_p4;
wire   [5:0] trunc_ln897_fu_226_p1;
wire   [5:0] sub_ln897_fu_230_p2;
wire   [31:0] zext_ln897_fu_236_p1;
wire   [31:0] lshr_ln897_fu_240_p2;
wire   [31:0] shl_ln899_fu_246_p2;
wire   [31:0] or_ln899_4_fu_252_p2;
wire   [31:0] and_ln899_fu_258_p2;
wire   [0:0] tmp_44_fu_270_p3;
wire   [0:0] icmp_ln896_fu_220_p2;
wire   [0:0] icmp_ln899_fu_264_p2;
wire   [0:0] p_Result_39_fu_284_p3;
wire   [0:0] xor_ln899_fu_278_p2;
wire   [0:0] select_ln896_fu_298_p3;
wire   [0:0] and_ln899_6_fu_312_p2;
wire   [31:0] tmp_V_12_fu_344_p2;
reg   [31:0] p_Result_42_fu_358_p4;
reg   [31:0] l_3_fu_368_p3;
wire   [31:0] lsb_index_3_fu_382_p2;
wire   [30:0] tmp_47_fu_388_p4;
wire   [5:0] trunc_ln897_3_fu_404_p1;
wire   [5:0] sub_ln897_3_fu_408_p2;
wire   [31:0] zext_ln897_3_fu_414_p1;
wire   [31:0] lshr_ln897_3_fu_418_p2;
wire   [31:0] shl_ln899_3_fu_424_p2;
wire   [31:0] or_ln899_fu_430_p2;
wire   [31:0] and_ln899_8_fu_436_p2;
wire   [0:0] tmp_48_fu_448_p3;
wire   [0:0] icmp_ln896_3_fu_398_p2;
wire   [0:0] icmp_ln899_3_fu_442_p2;
wire   [0:0] p_Result_43_fu_462_p3;
wire   [0:0] xor_ln899_3_fu_456_p2;
wire   [0:0] select_ln896_3_fu_476_p3;
wire   [0:0] and_ln899_7_fu_484_p2;
wire   [63:0] zext_ln907_fu_502_p1;
wire   [63:0] zext_ln908_fu_505_p1;
wire   [63:0] zext_ln909_fu_514_p1;
wire   [63:0] lshr_ln908_fu_508_p2;
wire   [63:0] shl_ln909_fu_517_p2;
wire   [63:0] m_18_fu_523_p3;
wire   [63:0] zext_ln911_fu_530_p1;
wire   [63:0] m_19_fu_533_p2;
wire   [62:0] m_24_fu_539_p4;
wire   [0:0] p_Result_s_fu_553_p3;
wire   [10:0] sub_ln915_fu_569_p2;
wire   [10:0] select_ln893_fu_561_p3;
wire   [10:0] add_ln915_fu_574_p2;
wire   [63:0] zext_ln912_fu_549_p1;
wire   [11:0] tmp_fu_580_p3;
wire   [63:0] p_Result_40_fu_587_p5;
wire   [51:0] trunc_ln9_fu_604_p4;
wire   [31:0] add_ln908_3_fu_629_p2;
wire   [63:0] zext_ln907_3_fu_626_p1;
wire   [63:0] zext_ln908_3_fu_634_p1;
wire   [31:0] sub_ln909_3_fu_644_p2;
wire   [63:0] zext_ln909_3_fu_649_p1;
wire   [63:0] lshr_ln908_3_fu_638_p2;
wire   [63:0] shl_ln909_3_fu_653_p2;
wire   [63:0] m_20_fu_659_p3;
wire   [63:0] zext_ln911_3_fu_666_p1;
wire   [63:0] m_21_fu_669_p2;
wire   [62:0] m_fu_675_p4;
wire   [0:0] p_Result_35_fu_689_p3;
wire   [10:0] sub_ln915_3_fu_705_p2;
wire   [10:0] select_ln893_3_fu_697_p3;
wire   [10:0] add_ln915_3_fu_710_p2;
wire   [63:0] zext_ln912_3_fu_685_p1;
wire   [11:0] tmp_3_fu_716_p3;
wire   [51:0] trunc_ln1506_3_fu_735_p4;
wire   [0:0] or_ln1506_fu_757_p2;
wire   [0:0] grp_fu_119_p2;
wire   [0:0] icmp_ln885_fu_767_p2;
wire   [0:0] and_ln1506_fu_761_p2;
wire   [0:0] and_ln1506_7_fu_772_p2;
wire   [0:0] or_ln1506_3_fu_790_p2;
wire   [0:0] icmp_ln885_3_fu_800_p2;
wire   [0:0] and_ln1506_8_fu_794_p2;
wire   [0:0] and_ln1506_9_fu_805_p2;
wire    grp_fu_119_ce;
wire   [4:0] grp_fu_119_opcode;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_CS_fsm_state8;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_107 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_41_reg_818 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_107 <= add_ln93_reg_832;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (tmp_41_reg_818 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln908_reg_858 <= add_ln908_fu_306_p2;
        icmp_ln908_3_reg_900 <= icmp_ln908_3_fu_470_p2;
        icmp_ln908_reg_853 <= icmp_ln908_fu_292_p2;
        p_Result_37_reg_843 <= output_0_V_q1[32'd31];
        p_Result_41_reg_884 <= output_0_V_q0[32'd31];
        select_ln908_8_reg_905 <= select_ln908_8_fu_490_p3;
        select_ln908_reg_868 <= select_ln908_fu_324_p3;
        sub_ln894_3_reg_894 <= sub_ln894_3_fu_376_p2;
        sub_ln909_reg_863 <= sub_ln909_fu_318_p2;
        tmp_V_14_reg_848 <= tmp_V_14_fu_172_p3;
        tmp_V_15_reg_889 <= tmp_V_15_fu_350_p3;
        trunc_ln893_3_reg_910 <= trunc_ln893_3_fu_498_p1;
        trunc_ln893_reg_873 <= trunc_ln893_fu_332_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (tmp_41_reg_818 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln93_reg_832 <= add_ln93_fu_152_p2;
        p_Val2_14_reg_878 <= output_0_V_q0;
        p_Val2_s_reg_837 <= output_0_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_41_reg_818 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln1506_7_reg_925 <= icmp_ln1506_7_fu_620_p2;
        icmp_ln1506_8_reg_935 <= icmp_ln1506_8_fu_745_p2;
        icmp_ln1506_9_reg_940 <= icmp_ln1506_9_fu_751_p2;
        icmp_ln1506_reg_920 <= icmp_ln1506_fu_614_p2;
        p_Result_44_reg_930 <= p_Result_44_fu_723_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_41_fu_124_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_0_V_addr_3_reg_827[5 : 1] <= zext_ln885_fu_147_p1[5 : 1];
        output_0_V_addr_reg_822 <= i_cast29_fu_132_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_0_V_addr_3_reg_827_pp0_iter1_reg[5 : 1] <= output_0_V_addr_3_reg_827[5 : 1];
        output_0_V_addr_3_reg_827_pp0_iter2_reg[5 : 1] <= output_0_V_addr_3_reg_827_pp0_iter1_reg[5 : 1];
        output_0_V_addr_reg_822_pp0_iter1_reg <= output_0_V_addr_reg_822;
        tmp_41_reg_818 <= ap_phi_mux_i_phi_fu_111_p4[32'd6];
        tmp_41_reg_818_pp0_iter1_reg <= tmp_41_reg_818;
        tmp_41_reg_818_pp0_iter2_reg <= tmp_41_reg_818_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_Val2_14_reg_878_pp0_iter1_reg <= p_Val2_14_reg_878;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_41_reg_818_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln1506_3_reg_950 <= select_ln1506_3_fu_811_p3;
    end
end

always @ (*) begin
    if ((tmp_41_fu_124_p3 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (tmp_41_reg_818 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_phi_fu_111_p4 = add_ln93_reg_832;
    end else begin
        ap_phi_mux_i_phi_fu_111_p4 = i_reg_107;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_119_p0 = bitcast_ln734_3_fu_786_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_119_p0 = bitcast_ln734_fu_599_p1;
        end else begin
            grp_fu_119_p0 = 'bx;
        end
    end else begin
        grp_fu_119_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_0_V_address0 = output_0_V_addr_3_reg_827_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_0_V_address0 = zext_ln885_fu_147_p1;
    end else begin
        output_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        output_0_V_address1 = output_0_V_addr_reg_822_pp0_iter1_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_0_V_address1 = i_cast29_fu_132_p1;
    end else begin
        output_0_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        output_0_V_ce0 = 1'b1;
    end else begin
        output_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        output_0_V_ce1 = 1'b1;
    end else begin
        output_0_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_41_reg_818_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_0_V_we0 = 1'b1;
    end else begin
        output_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_41_reg_818_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        output_0_V_we1 = 1'b1;
    end else begin
        output_0_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_41_fu_124_p3 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (tmp_41_fu_124_p3 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln908_3_fu_629_p2 = ($signed(sub_ln894_3_reg_894) + $signed(32'd4294967242));

assign add_ln908_fu_306_p2 = ($signed(sub_ln894_fu_198_p2) + $signed(32'd4294967242));

assign add_ln915_3_fu_710_p2 = (sub_ln915_3_fu_705_p2 + select_ln893_3_fu_697_p3);

assign add_ln915_fu_574_p2 = (sub_ln915_fu_569_p2 + select_ln893_fu_561_p3);

assign add_ln93_fu_152_p2 = (i_reg_107 + 7'd2);

assign and_ln1506_7_fu_772_p2 = (icmp_ln885_fu_767_p2 & and_ln1506_fu_761_p2);

assign and_ln1506_8_fu_794_p2 = (or_ln1506_3_fu_790_p2 & grp_fu_880_p_dout0);

assign and_ln1506_9_fu_805_p2 = (icmp_ln885_3_fu_800_p2 & and_ln1506_8_fu_794_p2);

assign and_ln1506_fu_761_p2 = (or_ln1506_fu_757_p2 & grp_fu_880_p_dout0);

assign and_ln899_6_fu_312_p2 = (xor_ln899_fu_278_p2 & p_Result_39_fu_284_p3);

assign and_ln899_7_fu_484_p2 = (xor_ln899_3_fu_456_p2 & p_Result_43_fu_462_p3);

assign and_ln899_8_fu_436_p2 = (tmp_V_15_fu_350_p3 & or_ln899_fu_430_p2);

assign and_ln899_fu_258_p2 = (tmp_V_14_fu_172_p3 & or_ln899_4_fu_252_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bitcast_ln734_3_fu_786_p1 = p_Result_44_reg_930;

assign bitcast_ln734_fu_599_p1 = p_Result_40_fu_587_p5;

assign empty_56_fu_137_p1 = ap_phi_mux_i_phi_fu_111_p4[5:0];

assign grp_fu_119_ce = 1'b1;

assign grp_fu_119_opcode = 5'd4;

assign grp_fu_119_p1 = 64'd0;

assign grp_fu_119_p2 = grp_fu_880_p_dout0;

assign grp_fu_880_p_ce = 1'b1;

assign grp_fu_880_p_din0 = grp_fu_119_p0;

assign grp_fu_880_p_din1 = 64'd0;

assign grp_fu_880_p_opcode = 5'd4;

assign i_cast29_fu_132_p1 = ap_phi_mux_i_phi_fu_111_p4;

assign icmp_ln1506_7_fu_620_p2 = ((trunc_ln9_fu_604_p4 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln1506_8_fu_745_p2 = ((add_ln915_3_fu_710_p2 != 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln1506_9_fu_751_p2 = ((trunc_ln1506_3_fu_735_p4 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln1506_fu_614_p2 = ((add_ln915_fu_574_p2 != 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln885_3_fu_800_p2 = ((p_Val2_14_reg_878_pp0_iter1_reg != 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln885_fu_767_p2 = ((p_Val2_s_reg_837 != 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln896_3_fu_398_p2 = (($signed(tmp_47_fu_388_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln896_fu_220_p2 = (($signed(tmp_43_fu_210_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln899_3_fu_442_p2 = ((and_ln899_8_fu_436_p2 != 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln899_fu_264_p2 = ((and_ln899_fu_258_p2 != 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln908_3_fu_470_p2 = (($signed(lsb_index_3_fu_382_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln908_fu_292_p2 = (($signed(lsb_index_fu_204_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);


always @ (p_Result_42_fu_358_p4) begin
    if (p_Result_42_fu_358_p4[0] == 1'b1) begin
        l_3_fu_368_p3 = 32'd0;
    end else if (p_Result_42_fu_358_p4[1] == 1'b1) begin
        l_3_fu_368_p3 = 32'd1;
    end else if (p_Result_42_fu_358_p4[2] == 1'b1) begin
        l_3_fu_368_p3 = 32'd2;
    end else if (p_Result_42_fu_358_p4[3] == 1'b1) begin
        l_3_fu_368_p3 = 32'd3;
    end else if (p_Result_42_fu_358_p4[4] == 1'b1) begin
        l_3_fu_368_p3 = 32'd4;
    end else if (p_Result_42_fu_358_p4[5] == 1'b1) begin
        l_3_fu_368_p3 = 32'd5;
    end else if (p_Result_42_fu_358_p4[6] == 1'b1) begin
        l_3_fu_368_p3 = 32'd6;
    end else if (p_Result_42_fu_358_p4[7] == 1'b1) begin
        l_3_fu_368_p3 = 32'd7;
    end else if (p_Result_42_fu_358_p4[8] == 1'b1) begin
        l_3_fu_368_p3 = 32'd8;
    end else if (p_Result_42_fu_358_p4[9] == 1'b1) begin
        l_3_fu_368_p3 = 32'd9;
    end else if (p_Result_42_fu_358_p4[10] == 1'b1) begin
        l_3_fu_368_p3 = 32'd10;
    end else if (p_Result_42_fu_358_p4[11] == 1'b1) begin
        l_3_fu_368_p3 = 32'd11;
    end else if (p_Result_42_fu_358_p4[12] == 1'b1) begin
        l_3_fu_368_p3 = 32'd12;
    end else if (p_Result_42_fu_358_p4[13] == 1'b1) begin
        l_3_fu_368_p3 = 32'd13;
    end else if (p_Result_42_fu_358_p4[14] == 1'b1) begin
        l_3_fu_368_p3 = 32'd14;
    end else if (p_Result_42_fu_358_p4[15] == 1'b1) begin
        l_3_fu_368_p3 = 32'd15;
    end else if (p_Result_42_fu_358_p4[16] == 1'b1) begin
        l_3_fu_368_p3 = 32'd16;
    end else if (p_Result_42_fu_358_p4[17] == 1'b1) begin
        l_3_fu_368_p3 = 32'd17;
    end else if (p_Result_42_fu_358_p4[18] == 1'b1) begin
        l_3_fu_368_p3 = 32'd18;
    end else if (p_Result_42_fu_358_p4[19] == 1'b1) begin
        l_3_fu_368_p3 = 32'd19;
    end else if (p_Result_42_fu_358_p4[20] == 1'b1) begin
        l_3_fu_368_p3 = 32'd20;
    end else if (p_Result_42_fu_358_p4[21] == 1'b1) begin
        l_3_fu_368_p3 = 32'd21;
    end else if (p_Result_42_fu_358_p4[22] == 1'b1) begin
        l_3_fu_368_p3 = 32'd22;
    end else if (p_Result_42_fu_358_p4[23] == 1'b1) begin
        l_3_fu_368_p3 = 32'd23;
    end else if (p_Result_42_fu_358_p4[24] == 1'b1) begin
        l_3_fu_368_p3 = 32'd24;
    end else if (p_Result_42_fu_358_p4[25] == 1'b1) begin
        l_3_fu_368_p3 = 32'd25;
    end else if (p_Result_42_fu_358_p4[26] == 1'b1) begin
        l_3_fu_368_p3 = 32'd26;
    end else if (p_Result_42_fu_358_p4[27] == 1'b1) begin
        l_3_fu_368_p3 = 32'd27;
    end else if (p_Result_42_fu_358_p4[28] == 1'b1) begin
        l_3_fu_368_p3 = 32'd28;
    end else if (p_Result_42_fu_358_p4[29] == 1'b1) begin
        l_3_fu_368_p3 = 32'd29;
    end else if (p_Result_42_fu_358_p4[30] == 1'b1) begin
        l_3_fu_368_p3 = 32'd30;
    end else if (p_Result_42_fu_358_p4[31] == 1'b1) begin
        l_3_fu_368_p3 = 32'd31;
    end else begin
        l_3_fu_368_p3 = 32'd32;
    end
end


always @ (p_Result_38_fu_180_p4) begin
    if (p_Result_38_fu_180_p4[0] == 1'b1) begin
        l_fu_190_p3 = 32'd0;
    end else if (p_Result_38_fu_180_p4[1] == 1'b1) begin
        l_fu_190_p3 = 32'd1;
    end else if (p_Result_38_fu_180_p4[2] == 1'b1) begin
        l_fu_190_p3 = 32'd2;
    end else if (p_Result_38_fu_180_p4[3] == 1'b1) begin
        l_fu_190_p3 = 32'd3;
    end else if (p_Result_38_fu_180_p4[4] == 1'b1) begin
        l_fu_190_p3 = 32'd4;
    end else if (p_Result_38_fu_180_p4[5] == 1'b1) begin
        l_fu_190_p3 = 32'd5;
    end else if (p_Result_38_fu_180_p4[6] == 1'b1) begin
        l_fu_190_p3 = 32'd6;
    end else if (p_Result_38_fu_180_p4[7] == 1'b1) begin
        l_fu_190_p3 = 32'd7;
    end else if (p_Result_38_fu_180_p4[8] == 1'b1) begin
        l_fu_190_p3 = 32'd8;
    end else if (p_Result_38_fu_180_p4[9] == 1'b1) begin
        l_fu_190_p3 = 32'd9;
    end else if (p_Result_38_fu_180_p4[10] == 1'b1) begin
        l_fu_190_p3 = 32'd10;
    end else if (p_Result_38_fu_180_p4[11] == 1'b1) begin
        l_fu_190_p3 = 32'd11;
    end else if (p_Result_38_fu_180_p4[12] == 1'b1) begin
        l_fu_190_p3 = 32'd12;
    end else if (p_Result_38_fu_180_p4[13] == 1'b1) begin
        l_fu_190_p3 = 32'd13;
    end else if (p_Result_38_fu_180_p4[14] == 1'b1) begin
        l_fu_190_p3 = 32'd14;
    end else if (p_Result_38_fu_180_p4[15] == 1'b1) begin
        l_fu_190_p3 = 32'd15;
    end else if (p_Result_38_fu_180_p4[16] == 1'b1) begin
        l_fu_190_p3 = 32'd16;
    end else if (p_Result_38_fu_180_p4[17] == 1'b1) begin
        l_fu_190_p3 = 32'd17;
    end else if (p_Result_38_fu_180_p4[18] == 1'b1) begin
        l_fu_190_p3 = 32'd18;
    end else if (p_Result_38_fu_180_p4[19] == 1'b1) begin
        l_fu_190_p3 = 32'd19;
    end else if (p_Result_38_fu_180_p4[20] == 1'b1) begin
        l_fu_190_p3 = 32'd20;
    end else if (p_Result_38_fu_180_p4[21] == 1'b1) begin
        l_fu_190_p3 = 32'd21;
    end else if (p_Result_38_fu_180_p4[22] == 1'b1) begin
        l_fu_190_p3 = 32'd22;
    end else if (p_Result_38_fu_180_p4[23] == 1'b1) begin
        l_fu_190_p3 = 32'd23;
    end else if (p_Result_38_fu_180_p4[24] == 1'b1) begin
        l_fu_190_p3 = 32'd24;
    end else if (p_Result_38_fu_180_p4[25] == 1'b1) begin
        l_fu_190_p3 = 32'd25;
    end else if (p_Result_38_fu_180_p4[26] == 1'b1) begin
        l_fu_190_p3 = 32'd26;
    end else if (p_Result_38_fu_180_p4[27] == 1'b1) begin
        l_fu_190_p3 = 32'd27;
    end else if (p_Result_38_fu_180_p4[28] == 1'b1) begin
        l_fu_190_p3 = 32'd28;
    end else if (p_Result_38_fu_180_p4[29] == 1'b1) begin
        l_fu_190_p3 = 32'd29;
    end else if (p_Result_38_fu_180_p4[30] == 1'b1) begin
        l_fu_190_p3 = 32'd30;
    end else if (p_Result_38_fu_180_p4[31] == 1'b1) begin
        l_fu_190_p3 = 32'd31;
    end else begin
        l_fu_190_p3 = 32'd32;
    end
end

assign lsb_index_3_fu_382_p2 = ($signed(sub_ln894_3_fu_376_p2) + $signed(32'd4294967243));

assign lsb_index_fu_204_p2 = ($signed(sub_ln894_fu_198_p2) + $signed(32'd4294967243));

assign lshr_ln897_3_fu_418_p2 = 32'd4294967295 >> zext_ln897_3_fu_414_p1;

assign lshr_ln897_fu_240_p2 = 32'd4294967295 >> zext_ln897_fu_236_p1;

assign lshr_ln908_3_fu_638_p2 = zext_ln907_3_fu_626_p1 >> zext_ln908_3_fu_634_p1;

assign lshr_ln908_fu_508_p2 = zext_ln907_fu_502_p1 >> zext_ln908_fu_505_p1;

assign m_18_fu_523_p3 = ((icmp_ln908_reg_853[0:0] == 1'b1) ? lshr_ln908_fu_508_p2 : shl_ln909_fu_517_p2);

assign m_19_fu_533_p2 = (m_18_fu_523_p3 + zext_ln911_fu_530_p1);

assign m_20_fu_659_p3 = ((icmp_ln908_3_reg_900[0:0] == 1'b1) ? lshr_ln908_3_fu_638_p2 : shl_ln909_3_fu_653_p2);

assign m_21_fu_669_p2 = (m_20_fu_659_p3 + zext_ln911_3_fu_666_p1);

assign m_24_fu_539_p4 = {{m_19_fu_533_p2[63:1]}};

assign m_fu_675_p4 = {{m_21_fu_669_p2[63:1]}};

assign or_ln1506_3_fu_790_p2 = (icmp_ln1506_9_reg_940 | icmp_ln1506_8_reg_935);

assign or_ln1506_fu_757_p2 = (icmp_ln1506_reg_920 | icmp_ln1506_7_reg_925);

assign or_ln899_4_fu_252_p2 = (shl_ln899_fu_246_p2 | lshr_ln897_fu_240_p2);

assign or_ln899_fu_430_p2 = (shl_ln899_3_fu_424_p2 | lshr_ln897_3_fu_418_p2);

assign or_ln93_fu_141_p2 = (empty_56_fu_137_p1 | 6'd1);

assign output_0_V_d0 = select_ln1506_3_reg_950;

assign output_0_V_d1 = ((and_ln1506_7_fu_772_p2[0:0] == 1'b1) ? 32'd0 : p_Val2_s_reg_837);

assign p_Result_35_fu_689_p3 = m_21_fu_669_p2[32'd54];

assign p_Result_37_fu_158_p3 = output_0_V_q1[32'd31];

integer ap_tvar_int_0;

always @ (tmp_V_14_fu_172_p3) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            p_Result_38_fu_180_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_38_fu_180_p4[ap_tvar_int_0] = tmp_V_14_fu_172_p3[31 - ap_tvar_int_0];
        end
    end
end

assign p_Result_39_fu_284_p3 = tmp_V_14_fu_172_p3[lsb_index_fu_204_p2];

assign p_Result_40_fu_587_p5 = {{tmp_fu_580_p3}, {zext_ln912_fu_549_p1[51:0]}};

assign p_Result_41_fu_336_p3 = output_0_V_q0[32'd31];

integer ap_tvar_int_1;

always @ (tmp_V_15_fu_350_p3) begin
    for (ap_tvar_int_1 = 32 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 0) begin
            p_Result_42_fu_358_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            p_Result_42_fu_358_p4[ap_tvar_int_1] = tmp_V_15_fu_350_p3[31 - ap_tvar_int_1];
        end
    end
end

assign p_Result_43_fu_462_p3 = tmp_V_15_fu_350_p3[lsb_index_3_fu_382_p2];

assign p_Result_44_fu_723_p5 = {{tmp_3_fu_716_p3}, {zext_ln912_3_fu_685_p1[51:0]}};

assign p_Result_s_fu_553_p3 = m_19_fu_533_p2[32'd54];

assign select_ln1506_3_fu_811_p3 = ((and_ln1506_9_fu_805_p2[0:0] == 1'b1) ? 32'd0 : p_Val2_14_reg_878_pp0_iter1_reg);

assign select_ln893_3_fu_697_p3 = ((p_Result_35_fu_689_p3[0:0] == 1'b1) ? 11'd1023 : 11'd1022);

assign select_ln893_fu_561_p3 = ((p_Result_s_fu_553_p3[0:0] == 1'b1) ? 11'd1023 : 11'd1022);

assign select_ln896_3_fu_476_p3 = ((icmp_ln896_3_fu_398_p2[0:0] == 1'b1) ? icmp_ln899_3_fu_442_p2 : p_Result_43_fu_462_p3);

assign select_ln896_fu_298_p3 = ((icmp_ln896_fu_220_p2[0:0] == 1'b1) ? icmp_ln899_fu_264_p2 : p_Result_39_fu_284_p3);

assign select_ln908_8_fu_490_p3 = ((icmp_ln908_3_fu_470_p2[0:0] == 1'b1) ? select_ln896_3_fu_476_p3 : and_ln899_7_fu_484_p2);

assign select_ln908_fu_324_p3 = ((icmp_ln908_fu_292_p2[0:0] == 1'b1) ? select_ln896_fu_298_p3 : and_ln899_6_fu_312_p2);

assign shl_ln899_3_fu_424_p2 = 32'd1 << lsb_index_3_fu_382_p2;

assign shl_ln899_fu_246_p2 = 32'd1 << lsb_index_fu_204_p2;

assign shl_ln909_3_fu_653_p2 = zext_ln907_3_fu_626_p1 << zext_ln909_3_fu_649_p1;

assign shl_ln909_fu_517_p2 = zext_ln907_fu_502_p1 << zext_ln909_fu_514_p1;

assign sub_ln894_3_fu_376_p2 = (32'd32 - l_3_fu_368_p3);

assign sub_ln894_fu_198_p2 = (32'd32 - l_fu_190_p3);

assign sub_ln897_3_fu_408_p2 = (6'd22 - trunc_ln897_3_fu_404_p1);

assign sub_ln897_fu_230_p2 = (6'd22 - trunc_ln897_fu_226_p1);

assign sub_ln909_3_fu_644_p2 = (32'd54 - sub_ln894_3_reg_894);

assign sub_ln909_fu_318_p2 = (32'd54 - sub_ln894_fu_198_p2);

assign sub_ln915_3_fu_705_p2 = (11'd24 - trunc_ln893_3_reg_910);

assign sub_ln915_fu_569_p2 = (11'd24 - trunc_ln893_reg_873);

assign tmp_3_fu_716_p3 = {{p_Result_41_reg_884}, {add_ln915_3_fu_710_p2}};

assign tmp_41_fu_124_p3 = ap_phi_mux_i_phi_fu_111_p4[32'd6];

assign tmp_43_fu_210_p4 = {{lsb_index_fu_204_p2[31:1]}};

assign tmp_44_fu_270_p3 = lsb_index_fu_204_p2[32'd31];

assign tmp_47_fu_388_p4 = {{lsb_index_3_fu_382_p2[31:1]}};

assign tmp_48_fu_448_p3 = lsb_index_3_fu_382_p2[32'd31];

assign tmp_V_12_fu_344_p2 = (32'd0 - output_0_V_q0);

assign tmp_V_14_fu_172_p3 = ((p_Result_37_fu_158_p3[0:0] == 1'b1) ? tmp_V_fu_166_p2 : output_0_V_q1);

assign tmp_V_15_fu_350_p3 = ((p_Result_41_fu_336_p3[0:0] == 1'b1) ? tmp_V_12_fu_344_p2 : output_0_V_q0);

assign tmp_V_fu_166_p2 = (32'd0 - output_0_V_q1);

assign tmp_fu_580_p3 = {{p_Result_37_reg_843}, {add_ln915_fu_574_p2}};

assign trunc_ln1506_3_fu_735_p4 = {{m_21_fu_669_p2[52:1]}};

assign trunc_ln893_3_fu_498_p1 = l_3_fu_368_p3[10:0];

assign trunc_ln893_fu_332_p1 = l_fu_190_p3[10:0];

assign trunc_ln897_3_fu_404_p1 = sub_ln894_3_fu_376_p2[5:0];

assign trunc_ln897_fu_226_p1 = sub_ln894_fu_198_p2[5:0];

assign trunc_ln9_fu_604_p4 = {{m_19_fu_533_p2[52:1]}};

assign xor_ln899_3_fu_456_p2 = (tmp_48_fu_448_p3 ^ 1'd1);

assign xor_ln899_fu_278_p2 = (tmp_44_fu_270_p3 ^ 1'd1);

assign zext_ln885_fu_147_p1 = or_ln93_fu_141_p2;

assign zext_ln897_3_fu_414_p1 = sub_ln897_3_fu_408_p2;

assign zext_ln897_fu_236_p1 = sub_ln897_fu_230_p2;

assign zext_ln907_3_fu_626_p1 = tmp_V_15_reg_889;

assign zext_ln907_fu_502_p1 = tmp_V_14_reg_848;

assign zext_ln908_3_fu_634_p1 = add_ln908_3_fu_629_p2;

assign zext_ln908_fu_505_p1 = add_ln908_reg_858;

assign zext_ln909_3_fu_649_p1 = sub_ln909_3_fu_644_p2;

assign zext_ln909_fu_514_p1 = sub_ln909_reg_863;

assign zext_ln911_3_fu_666_p1 = select_ln908_8_reg_905;

assign zext_ln911_fu_530_p1 = select_ln908_reg_868;

assign zext_ln912_3_fu_685_p1 = m_fu_675_p4;

assign zext_ln912_fu_549_p1 = m_24_fu_539_p4;

always @ (posedge ap_clk) begin
    output_0_V_addr_3_reg_827[0] <= 1'b1;
    output_0_V_addr_3_reg_827_pp0_iter1_reg[0] <= 1'b1;
    output_0_V_addr_3_reg_827_pp0_iter2_reg[0] <= 1'b1;
end

endmodule //nn_inference_hw_act_layer1