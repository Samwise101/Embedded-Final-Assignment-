// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Nov 19 15:28:29 2024
// Host        : nicklas-PC running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u96v2_sbc_mp4d_nn_ctrl_0_0_stub.v
// Design      : u96v2_sbc_mp4d_nn_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "nn_ctrl,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_Clk, ap_ready, ap_start, ap_done, ap_idle, 
  ap_rst, rstb_busy, led_ctrl1, led_ctrl2, led_ctrl3, led_ctrl4, i_BRAM_addr, i_BRAM_ce, 
  o_BRAM_addr, o_BRAM_ce, o_BRAM_wr, o_BRAM_din, nn_res_in)
/* synthesis syn_black_box black_box_pad_pin="i_Clk,ap_ready,ap_start,ap_done,ap_idle,ap_rst,rstb_busy,led_ctrl1,led_ctrl2,led_ctrl3,led_ctrl4,i_BRAM_addr[31:0],i_BRAM_ce,o_BRAM_addr[31:0],o_BRAM_ce,o_BRAM_wr[3:0],o_BRAM_din[31:0],nn_res_in[31:0]" */;
  input i_Clk;
  input ap_ready;
  output ap_start;
  input ap_done;
  input ap_idle;
  output ap_rst;
  input rstb_busy;
  output led_ctrl1;
  output led_ctrl2;
  output led_ctrl3;
  output led_ctrl4;
  input [31:0]i_BRAM_addr;
  input i_BRAM_ce;
  output [31:0]o_BRAM_addr;
  output o_BRAM_ce;
  output [3:0]o_BRAM_wr;
  output [31:0]o_BRAM_din;
  input [31:0]nn_res_in;
endmodule
