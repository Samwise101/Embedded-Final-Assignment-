-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 19 15:28:30 2024
-- Host        : nicklas-PC running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u96v2_sbc_mp4d_nn_ctrl_0_0_stub.vhdl
-- Design      : u96v2_sbc_mp4d_nn_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_Clk : in STD_LOGIC;
    ap_ready : in STD_LOGIC;
    ap_start : out STD_LOGIC;
    ap_done : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_rst : out STD_LOGIC;
    rstb_busy : in STD_LOGIC;
    led_ctrl1 : out STD_LOGIC;
    led_ctrl2 : out STD_LOGIC;
    led_ctrl3 : out STD_LOGIC;
    led_ctrl4 : out STD_LOGIC;
    i_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_BRAM_ce : in STD_LOGIC;
    o_BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_BRAM_ce : out STD_LOGIC;
    o_BRAM_wr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_BRAM_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    nn_res_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_Clk,ap_ready,ap_start,ap_done,ap_idle,ap_rst,rstb_busy,led_ctrl1,led_ctrl2,led_ctrl3,led_ctrl4,i_BRAM_addr[31:0],i_BRAM_ce,o_BRAM_addr[31:0],o_BRAM_ce,o_BRAM_wr[3:0],o_BRAM_din[31:0],nn_res_in[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "nn_ctrl,Vivado 2020.2";
begin
end;
