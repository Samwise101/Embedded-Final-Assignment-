-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 19 15:28:31 2024
-- Host        : nicklas-PC running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /tools/Xilinx/MPSoC4Drones/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_nn_ctrl_0_0/u96v2_sbc_mp4d_nn_ctrl_0_0_sim_netlist.vhdl
-- Design      : u96v2_sbc_mp4d_nn_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity u96v2_sbc_mp4d_nn_ctrl_0_0_nn_ctrl is
  port (
    ap_start : out STD_LOGIC;
    led_ctrl4 : out STD_LOGIC;
    led_ctrl1 : out STD_LOGIC;
    led_ctrl2 : out STD_LOGIC;
    led_ctrl3 : out STD_LOGIC;
    o_BRAM_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_done : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    rstb_busy : in STD_LOGIC;
    nn_res_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_Clk : in STD_LOGIC;
    i_BRAM_addr : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of u96v2_sbc_mp4d_nn_ctrl_0_0_nn_ctrl : entity is "nn_ctrl";
end u96v2_sbc_mp4d_nn_ctrl_0_0_nn_ctrl;

architecture STRUCTURE of u96v2_sbc_mp4d_nn_ctrl_0_0_nn_ctrl is
  signal \cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \cnt0_carry__0_n_7\ : STD_LOGIC;
  signal cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt0_carry_i_5_n_0 : STD_LOGIC;
  signal cnt0_carry_i_6_n_0 : STD_LOGIC;
  signal cnt0_carry_i_7_n_0 : STD_LOGIC;
  signal cnt0_carry_i_8_n_0 : STD_LOGIC;
  signal cnt0_carry_i_9_n_0 : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal cnt0_carry_n_4 : STD_LOGIC;
  signal cnt0_carry_n_5 : STD_LOGIC;
  signal cnt0_carry_n_6 : STD_LOGIC;
  signal cnt0_carry_n_7 : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal led_ctrl1_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_8_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_8_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_9_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_8_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal start_signal : STD_LOGIC;
  signal \start_signal1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_1\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_2\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_3\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_4\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_5\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_6\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_7\ : STD_LOGIC;
  signal start_signal1_carry_i_10_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_11_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_12_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_13_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_14_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_15_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_16_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_1_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_2_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_3_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_4_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_5_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_6_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_7_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_8_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_9_n_0 : STD_LOGIC;
  signal start_signal1_carry_n_0 : STD_LOGIC;
  signal start_signal1_carry_n_1 : STD_LOGIC;
  signal start_signal1_carry_n_2 : STD_LOGIC;
  signal start_signal1_carry_n_3 : STD_LOGIC;
  signal start_signal1_carry_n_4 : STD_LOGIC;
  signal start_signal1_carry_n_5 : STD_LOGIC;
  signal start_signal1_carry_n_6 : STD_LOGIC;
  signal start_signal1_carry_n_7 : STD_LOGIC;
  signal start_signal_reg_i_1_n_0 : STD_LOGIC;
  signal NLW_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_start_signal1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_start_signal1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair3";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cnt0_carry : label is 14;
  attribute COMPARATOR_THRESHOLD of \cnt0_carry__0\ : label is 14;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of led_ctrl1_INST_0_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of led_ctrl1_INST_0_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of led_ctrl2_INST_0_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of led_ctrl3_INST_0_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of led_ctrl3_INST_0_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of led_ctrl4_INST_0_i_7 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_BRAM_addr[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_BRAM_addr[10]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_BRAM_addr[11]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_BRAM_addr[12]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_BRAM_addr[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_BRAM_addr[14]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_BRAM_addr[15]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_BRAM_addr[16]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_BRAM_addr[17]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_BRAM_addr[18]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_BRAM_addr[19]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_BRAM_addr[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_BRAM_addr[20]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_BRAM_addr[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_BRAM_addr[22]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_BRAM_addr[23]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_BRAM_addr[24]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_BRAM_addr[25]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_BRAM_addr[26]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_BRAM_addr[27]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_BRAM_addr[28]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_BRAM_addr[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_BRAM_addr[2]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_BRAM_addr[30]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \o_BRAM_addr[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_BRAM_addr[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_BRAM_addr[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_BRAM_addr[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_BRAM_addr[7]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_BRAM_addr[8]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_BRAM_addr[9]_INST_0\ : label is "soft_lutpair8";
  attribute COMPARATOR_THRESHOLD of start_signal1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_signal1_carry__0\ : label is 11;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of start_signal_reg : label is "LD";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \start_signal1_carry__0_n_0\,
      I1 => ap_done,
      I2 => ap_idle,
      O => start_signal
    );
cnt0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => cnt0_carry_n_0,
      CO(6) => cnt0_carry_n_1,
      CO(5) => cnt0_carry_n_2,
      CO(4) => cnt0_carry_n_3,
      CO(3) => cnt0_carry_n_4,
      CO(2) => cnt0_carry_n_5,
      CO(1) => cnt0_carry_n_6,
      CO(0) => cnt0_carry_n_7,
      DI(7 downto 1) => B"0000000",
      DI(0) => cnt0_carry_i_1_n_0,
      O(7 downto 0) => NLW_cnt0_carry_O_UNCONNECTED(7 downto 0),
      S(7) => cnt0_carry_i_2_n_0,
      S(6) => cnt0_carry_i_3_n_0,
      S(5) => cnt0_carry_i_4_n_0,
      S(4) => cnt0_carry_i_5_n_0,
      S(3) => cnt0_carry_i_6_n_0,
      S(2) => cnt0_carry_i_7_n_0,
      S(1) => cnt0_carry_i_8_n_0,
      S(0) => cnt0_carry_i_9_n_0
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => cnt0_carry_n_0,
      CI_TOP => '0',
      CO(7) => sel,
      CO(6) => \cnt0_carry__0_n_1\,
      CO(5) => \cnt0_carry__0_n_2\,
      CO(4) => \cnt0_carry__0_n_3\,
      CO(3) => \cnt0_carry__0_n_4\,
      CO(2) => \cnt0_carry__0_n_5\,
      CO(1) => \cnt0_carry__0_n_6\,
      CO(0) => \cnt0_carry__0_n_7\,
      DI(7) => cnt_reg(31),
      DI(6 downto 0) => B"0000000",
      O(7 downto 0) => \NLW_cnt0_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \cnt0_carry__0_i_1_n_0\,
      S(6) => \cnt0_carry__0_i_2_n_0\,
      S(5) => \cnt0_carry__0_i_3_n_0\,
      S(4) => \cnt0_carry__0_i_4_n_0\,
      S(3) => \cnt0_carry__0_i_5_n_0\,
      S(2) => \cnt0_carry__0_i_6_n_0\,
      S(1) => \cnt0_carry__0_i_7_n_0\,
      S(0) => \cnt0_carry__0_i_8_n_0\
    );
\cnt0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => cnt_reg(31),
      O => \cnt0_carry__0_i_1_n_0\
    );
\cnt0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => cnt_reg(29),
      O => \cnt0_carry__0_i_2_n_0\
    );
\cnt0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(27),
      O => \cnt0_carry__0_i_3_n_0\
    );
\cnt0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => cnt_reg(25),
      O => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(23),
      O => \cnt0_carry__0_i_5_n_0\
    );
\cnt0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => cnt_reg(21),
      O => \cnt0_carry__0_i_6_n_0\
    );
\cnt0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => cnt_reg(19),
      O => \cnt0_carry__0_i_7_n_0\
    );
\cnt0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      O => \cnt0_carry__0_i_8_n_0\
    );
cnt0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => cnt0_carry_i_1_n_0
    );
cnt0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(15),
      O => cnt0_carry_i_2_n_0
    );
cnt0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(13),
      O => cnt0_carry_i_3_n_0
    );
cnt0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      O => cnt0_carry_i_4_n_0
    );
cnt0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(9),
      O => cnt0_carry_i_5_n_0
    );
cnt0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      O => cnt0_carry_i_6_n_0
    );
cnt0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      O => cnt0_carry_i_7_n_0
    );
cnt0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => cnt0_carry_i_8_n_0
    );
cnt0_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => cnt0_carry_i_9_n_0
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_15\,
      Q => cnt_reg(0),
      R => '0'
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \cnt_reg[0]_i_1_n_0\,
      CO(6) => \cnt_reg[0]_i_1_n_1\,
      CO(5) => \cnt_reg[0]_i_1_n_2\,
      CO(4) => \cnt_reg[0]_i_1_n_3\,
      CO(3) => \cnt_reg[0]_i_1_n_4\,
      CO(2) => \cnt_reg[0]_i_1_n_5\,
      CO(1) => \cnt_reg[0]_i_1_n_6\,
      CO(0) => \cnt_reg[0]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \cnt_reg[0]_i_1_n_8\,
      O(6) => \cnt_reg[0]_i_1_n_9\,
      O(5) => \cnt_reg[0]_i_1_n_10\,
      O(4) => \cnt_reg[0]_i_1_n_11\,
      O(3) => \cnt_reg[0]_i_1_n_12\,
      O(2) => \cnt_reg[0]_i_1_n_13\,
      O(1) => \cnt_reg[0]_i_1_n_14\,
      O(0) => \cnt_reg[0]_i_1_n_15\,
      S(7 downto 1) => cnt_reg(7 downto 1),
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_13\,
      Q => cnt_reg(10),
      R => '0'
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_12\,
      Q => cnt_reg(11),
      R => '0'
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_11\,
      Q => cnt_reg(12),
      R => '0'
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_10\,
      Q => cnt_reg(13),
      R => '0'
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_9\,
      Q => cnt_reg(14),
      R => '0'
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_8\,
      Q => cnt_reg(15),
      R => '0'
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_15\,
      Q => cnt_reg(16),
      R => '0'
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \cnt_reg[16]_i_1_n_0\,
      CO(6) => \cnt_reg[16]_i_1_n_1\,
      CO(5) => \cnt_reg[16]_i_1_n_2\,
      CO(4) => \cnt_reg[16]_i_1_n_3\,
      CO(3) => \cnt_reg[16]_i_1_n_4\,
      CO(2) => \cnt_reg[16]_i_1_n_5\,
      CO(1) => \cnt_reg[16]_i_1_n_6\,
      CO(0) => \cnt_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \cnt_reg[16]_i_1_n_8\,
      O(6) => \cnt_reg[16]_i_1_n_9\,
      O(5) => \cnt_reg[16]_i_1_n_10\,
      O(4) => \cnt_reg[16]_i_1_n_11\,
      O(3) => \cnt_reg[16]_i_1_n_12\,
      O(2) => \cnt_reg[16]_i_1_n_13\,
      O(1) => \cnt_reg[16]_i_1_n_14\,
      O(0) => \cnt_reg[16]_i_1_n_15\,
      S(7 downto 0) => cnt_reg(23 downto 16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_14\,
      Q => cnt_reg(17),
      R => '0'
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_13\,
      Q => cnt_reg(18),
      R => '0'
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_12\,
      Q => cnt_reg(19),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_14\,
      Q => cnt_reg(1),
      R => '0'
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_11\,
      Q => cnt_reg(20),
      R => '0'
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_10\,
      Q => cnt_reg(21),
      R => '0'
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_9\,
      Q => cnt_reg(22),
      R => '0'
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_8\,
      Q => cnt_reg(23),
      R => '0'
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_15\,
      Q => cnt_reg(24),
      R => '0'
    );
\cnt_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_cnt_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \cnt_reg[24]_i_1_n_1\,
      CO(5) => \cnt_reg[24]_i_1_n_2\,
      CO(4) => \cnt_reg[24]_i_1_n_3\,
      CO(3) => \cnt_reg[24]_i_1_n_4\,
      CO(2) => \cnt_reg[24]_i_1_n_5\,
      CO(1) => \cnt_reg[24]_i_1_n_6\,
      CO(0) => \cnt_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \cnt_reg[24]_i_1_n_8\,
      O(6) => \cnt_reg[24]_i_1_n_9\,
      O(5) => \cnt_reg[24]_i_1_n_10\,
      O(4) => \cnt_reg[24]_i_1_n_11\,
      O(3) => \cnt_reg[24]_i_1_n_12\,
      O(2) => \cnt_reg[24]_i_1_n_13\,
      O(1) => \cnt_reg[24]_i_1_n_14\,
      O(0) => \cnt_reg[24]_i_1_n_15\,
      S(7 downto 0) => cnt_reg(31 downto 24)
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_14\,
      Q => cnt_reg(25),
      R => '0'
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_13\,
      Q => cnt_reg(26),
      R => '0'
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_12\,
      Q => cnt_reg(27),
      R => '0'
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_11\,
      Q => cnt_reg(28),
      R => '0'
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_10\,
      Q => cnt_reg(29),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_13\,
      Q => cnt_reg(2),
      R => '0'
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_9\,
      Q => cnt_reg(30),
      R => '0'
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_8\,
      Q => cnt_reg(31),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_12\,
      Q => cnt_reg(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_11\,
      Q => cnt_reg(4),
      R => '0'
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_10\,
      Q => cnt_reg(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_9\,
      Q => cnt_reg(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_8\,
      Q => cnt_reg(7),
      R => '0'
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_15\,
      Q => cnt_reg(8),
      R => '0'
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \cnt_reg[8]_i_1_n_0\,
      CO(6) => \cnt_reg[8]_i_1_n_1\,
      CO(5) => \cnt_reg[8]_i_1_n_2\,
      CO(4) => \cnt_reg[8]_i_1_n_3\,
      CO(3) => \cnt_reg[8]_i_1_n_4\,
      CO(2) => \cnt_reg[8]_i_1_n_5\,
      CO(1) => \cnt_reg[8]_i_1_n_6\,
      CO(0) => \cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \cnt_reg[8]_i_1_n_8\,
      O(6) => \cnt_reg[8]_i_1_n_9\,
      O(5) => \cnt_reg[8]_i_1_n_10\,
      O(4) => \cnt_reg[8]_i_1_n_11\,
      O(3) => \cnt_reg[8]_i_1_n_12\,
      O(2) => \cnt_reg[8]_i_1_n_13\,
      O(1) => \cnt_reg[8]_i_1_n_14\,
      O(0) => \cnt_reg[8]_i_1_n_15\,
      S(7 downto 0) => cnt_reg(15 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_14\,
      Q => cnt_reg(9),
      R => '0'
    );
led_ctrl1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000009F"
    )
        port map (
      I0 => nn_res_in(1),
      I1 => nn_res_in(2),
      I2 => nn_res_in(3),
      I3 => led_ctrl1_INST_0_i_1_n_0,
      I4 => led_ctrl1_INST_0_i_2_n_0,
      I5 => led_ctrl1_INST_0_i_3_n_0,
      O => led_ctrl1
    );
led_ctrl1_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => nn_res_in(17),
      I1 => nn_res_in(16),
      I2 => nn_res_in(19),
      I3 => nn_res_in(18),
      I4 => led_ctrl1_INST_0_i_4_n_0,
      O => led_ctrl1_INST_0_i_1_n_0
    );
led_ctrl1_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => nn_res_in(9),
      I1 => nn_res_in(8),
      I2 => nn_res_in(11),
      I3 => nn_res_in(10),
      I4 => led_ctrl1_INST_0_i_5_n_0,
      O => led_ctrl1_INST_0_i_2_n_0
    );
led_ctrl1_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => led_ctrl1_INST_0_i_6_n_0,
      I1 => led_ctrl1_INST_0_i_7_n_0,
      I2 => nn_res_in(26),
      I3 => nn_res_in(27),
      I4 => nn_res_in(24),
      I5 => nn_res_in(25),
      O => led_ctrl1_INST_0_i_3_n_0
    );
led_ctrl1_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nn_res_in(14),
      I1 => nn_res_in(15),
      I2 => nn_res_in(12),
      I3 => nn_res_in(13),
      O => led_ctrl1_INST_0_i_4_n_0
    );
led_ctrl1_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nn_res_in(6),
      I1 => nn_res_in(7),
      I2 => nn_res_in(4),
      I3 => nn_res_in(5),
      O => led_ctrl1_INST_0_i_5_n_0
    );
led_ctrl1_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => nn_res_in(0),
      I1 => nn_res_in(29),
      I2 => nn_res_in(28),
      I3 => nn_res_in(30),
      I4 => nn_res_in(31),
      O => led_ctrl1_INST_0_i_6_n_0
    );
led_ctrl1_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nn_res_in(22),
      I1 => nn_res_in(23),
      I2 => nn_res_in(20),
      I3 => nn_res_in(21),
      O => led_ctrl1_INST_0_i_7_n_0
    );
led_ctrl2_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => led_ctrl2_INST_0_i_1_n_0,
      I1 => led_ctrl2_INST_0_i_2_n_0,
      I2 => led_ctrl2_INST_0_i_3_n_0,
      I3 => led_ctrl2_INST_0_i_4_n_0,
      O => led_ctrl2
    );
led_ctrl2_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(21),
      I1 => nn_res_in(22),
      I2 => nn_res_in(23),
      I3 => nn_res_in(24),
      I4 => nn_res_in(25),
      I5 => led_ctrl2_INST_0_i_5_n_0,
      O => led_ctrl2_INST_0_i_1_n_0
    );
led_ctrl2_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFE"
    )
        port map (
      I0 => nn_res_in(28),
      I1 => nn_res_in(27),
      I2 => led_ctrl2_INST_0_i_6_n_0,
      I3 => nn_res_in(29),
      I4 => nn_res_in(30),
      I5 => nn_res_in(31),
      O => led_ctrl2_INST_0_i_2_n_0
    );
led_ctrl2_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(5),
      I1 => nn_res_in(6),
      I2 => nn_res_in(7),
      I3 => nn_res_in(8),
      I4 => nn_res_in(9),
      I5 => led_ctrl2_INST_0_i_7_n_0,
      O => led_ctrl2_INST_0_i_3_n_0
    );
led_ctrl2_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(13),
      I1 => nn_res_in(14),
      I2 => nn_res_in(15),
      I3 => nn_res_in(16),
      I4 => nn_res_in(17),
      I5 => led_ctrl2_INST_0_i_8_n_0,
      O => led_ctrl2_INST_0_i_4_n_0
    );
led_ctrl2_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(21),
      I1 => nn_res_in(20),
      I2 => nn_res_in(19),
      I3 => nn_res_in(18),
      I4 => nn_res_in(17),
      O => led_ctrl2_INST_0_i_5_n_0
    );
led_ctrl2_INST_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => nn_res_in(25),
      I1 => nn_res_in(26),
      I2 => nn_res_in(27),
      O => led_ctrl2_INST_0_i_6_n_0
    );
led_ctrl2_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BFBFFFBFFFBFFFA"
    )
        port map (
      I0 => nn_res_in(5),
      I1 => nn_res_in(1),
      I2 => nn_res_in(4),
      I3 => nn_res_in(3),
      I4 => nn_res_in(2),
      I5 => nn_res_in(0),
      O => led_ctrl2_INST_0_i_7_n_0
    );
led_ctrl2_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(13),
      I1 => nn_res_in(12),
      I2 => nn_res_in(11),
      I3 => nn_res_in(10),
      I4 => nn_res_in(9),
      O => led_ctrl2_INST_0_i_8_n_0
    );
led_ctrl3_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => led_ctrl3_INST_0_i_1_n_0,
      I1 => led_ctrl3_INST_0_i_2_n_0,
      I2 => led_ctrl3_INST_0_i_3_n_0,
      O => led_ctrl3
    );
led_ctrl3_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBEFF"
    )
        port map (
      I0 => led_ctrl3_INST_0_i_4_n_0,
      I1 => nn_res_in(31),
      I2 => nn_res_in(30),
      I3 => nn_res_in(2),
      I4 => led_ctrl3_INST_0_i_5_n_0,
      I5 => led_ctrl3_INST_0_i_6_n_0,
      O => led_ctrl3_INST_0_i_1_n_0
    );
led_ctrl3_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFE"
    )
        port map (
      I0 => led_ctrl3_INST_0_i_7_n_0,
      I1 => led_ctrl3_INST_0_i_8_n_0,
      I2 => nn_res_in(26),
      I3 => nn_res_in(27),
      I4 => nn_res_in(28),
      O => led_ctrl3_INST_0_i_2_n_0
    );
led_ctrl3_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(12),
      I1 => nn_res_in(13),
      I2 => nn_res_in(14),
      I3 => nn_res_in(15),
      I4 => nn_res_in(16),
      I5 => led_ctrl3_INST_0_i_9_n_0,
      O => led_ctrl3_INST_0_i_3_n_0
    );
led_ctrl3_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFFFFFFFFFFFF7E"
    )
        port map (
      I0 => nn_res_in(30),
      I1 => nn_res_in(29),
      I2 => nn_res_in(28),
      I3 => nn_res_in(26),
      I4 => nn_res_in(25),
      I5 => nn_res_in(24),
      O => led_ctrl3_INST_0_i_4_n_0
    );
led_ctrl3_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(20),
      I1 => nn_res_in(19),
      I2 => nn_res_in(18),
      I3 => nn_res_in(17),
      I4 => nn_res_in(16),
      O => led_ctrl3_INST_0_i_5_n_0
    );
led_ctrl3_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(24),
      I1 => nn_res_in(23),
      I2 => nn_res_in(22),
      I3 => nn_res_in(21),
      I4 => nn_res_in(20),
      O => led_ctrl3_INST_0_i_6_n_0
    );
led_ctrl3_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(8),
      I1 => nn_res_in(7),
      I2 => nn_res_in(6),
      I3 => nn_res_in(5),
      I4 => nn_res_in(4),
      O => led_ctrl3_INST_0_i_7_n_0
    );
led_ctrl3_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => nn_res_in(0),
      I1 => nn_res_in(1),
      I2 => nn_res_in(3),
      I3 => nn_res_in(4),
      O => led_ctrl3_INST_0_i_8_n_0
    );
led_ctrl3_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(12),
      I1 => nn_res_in(11),
      I2 => nn_res_in(10),
      I3 => nn_res_in(9),
      I4 => nn_res_in(8),
      O => led_ctrl3_INST_0_i_9_n_0
    );
led_ctrl4_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => led_ctrl4_INST_0_i_1_n_0,
      I1 => led_ctrl4_INST_0_i_2_n_0,
      I2 => led_ctrl4_INST_0_i_3_n_0,
      I3 => led_ctrl4_INST_0_i_4_n_0,
      I4 => led_ctrl4_INST_0_i_5_n_0,
      O => led_ctrl4
    );
led_ctrl4_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(19),
      I1 => nn_res_in(20),
      I2 => nn_res_in(21),
      I3 => nn_res_in(22),
      I4 => nn_res_in(23),
      I5 => led_ctrl4_INST_0_i_6_n_0,
      O => led_ctrl4_INST_0_i_1_n_0
    );
led_ctrl4_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FF4"
    )
        port map (
      I0 => nn_res_in(3),
      I1 => nn_res_in(0),
      I2 => nn_res_in(1),
      I3 => nn_res_in(2),
      I4 => led_ctrl4_INST_0_i_7_n_0,
      O => led_ctrl4_INST_0_i_2_n_0
    );
led_ctrl4_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFFFFFFFFFFFF7E"
    )
        port map (
      I0 => nn_res_in(7),
      I1 => nn_res_in(6),
      I2 => nn_res_in(5),
      I3 => nn_res_in(31),
      I4 => nn_res_in(30),
      I5 => nn_res_in(29),
      O => led_ctrl4_INST_0_i_3_n_0
    );
led_ctrl4_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFFFF7EFFFFFF7E"
    )
        port map (
      I0 => nn_res_in(29),
      I1 => nn_res_in(28),
      I2 => nn_res_in(27),
      I3 => nn_res_in(5),
      I4 => nn_res_in(4),
      I5 => nn_res_in(2),
      O => led_ctrl4_INST_0_i_4_n_0
    );
led_ctrl4_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(11),
      I1 => nn_res_in(12),
      I2 => nn_res_in(13),
      I3 => nn_res_in(14),
      I4 => nn_res_in(15),
      I5 => led_ctrl4_INST_0_i_8_n_0,
      O => led_ctrl4_INST_0_i_5_n_0
    );
led_ctrl4_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(19),
      I1 => nn_res_in(18),
      I2 => nn_res_in(17),
      I3 => nn_res_in(16),
      I4 => nn_res_in(15),
      O => led_ctrl4_INST_0_i_6_n_0
    );
led_ctrl4_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(27),
      I1 => nn_res_in(26),
      I2 => nn_res_in(25),
      I3 => nn_res_in(24),
      I4 => nn_res_in(23),
      O => led_ctrl4_INST_0_i_7_n_0
    );
led_ctrl4_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(11),
      I1 => nn_res_in(10),
      I2 => nn_res_in(9),
      I3 => nn_res_in(8),
      I4 => nn_res_in(7),
      O => led_ctrl4_INST_0_i_8_n_0
    );
\o_BRAM_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(0),
      I1 => ap_done,
      O => o_BRAM_addr(0)
    );
\o_BRAM_addr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(10),
      I1 => ap_done,
      O => o_BRAM_addr(10)
    );
\o_BRAM_addr[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(11),
      I1 => ap_done,
      O => o_BRAM_addr(11)
    );
\o_BRAM_addr[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(12),
      I1 => ap_done,
      O => o_BRAM_addr(12)
    );
\o_BRAM_addr[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(13),
      I1 => ap_done,
      O => o_BRAM_addr(13)
    );
\o_BRAM_addr[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(14),
      I1 => ap_done,
      O => o_BRAM_addr(14)
    );
\o_BRAM_addr[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(15),
      I1 => ap_done,
      O => o_BRAM_addr(15)
    );
\o_BRAM_addr[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(16),
      I1 => ap_done,
      O => o_BRAM_addr(16)
    );
\o_BRAM_addr[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(17),
      I1 => ap_done,
      O => o_BRAM_addr(17)
    );
\o_BRAM_addr[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(18),
      I1 => ap_done,
      O => o_BRAM_addr(18)
    );
\o_BRAM_addr[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(19),
      I1 => ap_done,
      O => o_BRAM_addr(19)
    );
\o_BRAM_addr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(1),
      I1 => ap_done,
      O => o_BRAM_addr(1)
    );
\o_BRAM_addr[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(20),
      I1 => ap_done,
      O => o_BRAM_addr(20)
    );
\o_BRAM_addr[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(21),
      I1 => ap_done,
      O => o_BRAM_addr(21)
    );
\o_BRAM_addr[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(22),
      I1 => ap_done,
      O => o_BRAM_addr(22)
    );
\o_BRAM_addr[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(23),
      I1 => ap_done,
      O => o_BRAM_addr(23)
    );
\o_BRAM_addr[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(24),
      I1 => ap_done,
      O => o_BRAM_addr(24)
    );
\o_BRAM_addr[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(25),
      I1 => ap_done,
      O => o_BRAM_addr(25)
    );
\o_BRAM_addr[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(26),
      I1 => ap_done,
      O => o_BRAM_addr(26)
    );
\o_BRAM_addr[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(27),
      I1 => ap_done,
      O => o_BRAM_addr(27)
    );
\o_BRAM_addr[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(28),
      I1 => ap_done,
      O => o_BRAM_addr(28)
    );
\o_BRAM_addr[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(29),
      I1 => ap_done,
      O => o_BRAM_addr(29)
    );
\o_BRAM_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(2),
      I1 => ap_done,
      O => o_BRAM_addr(2)
    );
\o_BRAM_addr[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_BRAM_addr(30),
      I1 => ap_done,
      O => o_BRAM_addr(30)
    );
\o_BRAM_addr[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(31),
      I1 => ap_done,
      O => o_BRAM_addr(31)
    );
\o_BRAM_addr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(3),
      I1 => ap_done,
      O => o_BRAM_addr(3)
    );
\o_BRAM_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(4),
      I1 => ap_done,
      O => o_BRAM_addr(4)
    );
\o_BRAM_addr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(5),
      I1 => ap_done,
      O => o_BRAM_addr(5)
    );
\o_BRAM_addr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(6),
      I1 => ap_done,
      O => o_BRAM_addr(6)
    );
\o_BRAM_addr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(7),
      I1 => ap_done,
      O => o_BRAM_addr(7)
    );
\o_BRAM_addr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_BRAM_addr(8),
      I1 => ap_done,
      O => o_BRAM_addr(8)
    );
\o_BRAM_addr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_BRAM_addr(9),
      I1 => ap_done,
      O => o_BRAM_addr(9)
    );
start_signal1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => start_signal1_carry_n_0,
      CO(6) => start_signal1_carry_n_1,
      CO(5) => start_signal1_carry_n_2,
      CO(4) => start_signal1_carry_n_3,
      CO(3) => start_signal1_carry_n_4,
      CO(2) => start_signal1_carry_n_5,
      CO(1) => start_signal1_carry_n_6,
      CO(0) => start_signal1_carry_n_7,
      DI(7) => start_signal1_carry_i_1_n_0,
      DI(6) => start_signal1_carry_i_2_n_0,
      DI(5) => start_signal1_carry_i_3_n_0,
      DI(4) => start_signal1_carry_i_4_n_0,
      DI(3) => start_signal1_carry_i_5_n_0,
      DI(2) => start_signal1_carry_i_6_n_0,
      DI(1) => start_signal1_carry_i_7_n_0,
      DI(0) => start_signal1_carry_i_8_n_0,
      O(7 downto 0) => NLW_start_signal1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => start_signal1_carry_i_9_n_0,
      S(6) => start_signal1_carry_i_10_n_0,
      S(5) => start_signal1_carry_i_11_n_0,
      S(4) => start_signal1_carry_i_12_n_0,
      S(3) => start_signal1_carry_i_13_n_0,
      S(2) => start_signal1_carry_i_14_n_0,
      S(1) => start_signal1_carry_i_15_n_0,
      S(0) => start_signal1_carry_i_16_n_0
    );
\start_signal1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => start_signal1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \start_signal1_carry__0_n_0\,
      CO(6) => \start_signal1_carry__0_n_1\,
      CO(5) => \start_signal1_carry__0_n_2\,
      CO(4) => \start_signal1_carry__0_n_3\,
      CO(3) => \start_signal1_carry__0_n_4\,
      CO(2) => \start_signal1_carry__0_n_5\,
      CO(1) => \start_signal1_carry__0_n_6\,
      CO(0) => \start_signal1_carry__0_n_7\,
      DI(7) => \start_signal1_carry__0_i_1_n_0\,
      DI(6) => \start_signal1_carry__0_i_2_n_0\,
      DI(5) => \start_signal1_carry__0_i_3_n_0\,
      DI(4) => \start_signal1_carry__0_i_4_n_0\,
      DI(3) => \start_signal1_carry__0_i_5_n_0\,
      DI(2) => \start_signal1_carry__0_i_6_n_0\,
      DI(1) => \start_signal1_carry__0_i_7_n_0\,
      DI(0) => \start_signal1_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_start_signal1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \start_signal1_carry__0_i_9_n_0\,
      S(6) => \start_signal1_carry__0_i_10_n_0\,
      S(5) => \start_signal1_carry__0_i_11_n_0\,
      S(4) => \start_signal1_carry__0_i_12_n_0\,
      S(3) => \start_signal1_carry__0_i_13_n_0\,
      S(2) => \start_signal1_carry__0_i_14_n_0\,
      S(1) => \start_signal1_carry__0_i_15_n_0\,
      S(0) => \start_signal1_carry__0_i_16_n_0\
    );
\start_signal1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => cnt_reg(31),
      O => \start_signal1_carry__0_i_1_n_0\
    );
\start_signal1_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => cnt_reg(29),
      O => \start_signal1_carry__0_i_10_n_0\
    );
\start_signal1_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(27),
      O => \start_signal1_carry__0_i_11_n_0\
    );
\start_signal1_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => cnt_reg(25),
      O => \start_signal1_carry__0_i_12_n_0\
    );
\start_signal1_carry__0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(23),
      O => \start_signal1_carry__0_i_13_n_0\
    );
\start_signal1_carry__0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => cnt_reg(21),
      O => \start_signal1_carry__0_i_14_n_0\
    );
\start_signal1_carry__0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => cnt_reg(19),
      O => \start_signal1_carry__0_i_15_n_0\
    );
\start_signal1_carry__0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      O => \start_signal1_carry__0_i_16_n_0\
    );
\start_signal1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => cnt_reg(29),
      O => \start_signal1_carry__0_i_2_n_0\
    );
\start_signal1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(27),
      O => \start_signal1_carry__0_i_3_n_0\
    );
\start_signal1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => cnt_reg(25),
      O => \start_signal1_carry__0_i_4_n_0\
    );
\start_signal1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(23),
      O => \start_signal1_carry__0_i_5_n_0\
    );
\start_signal1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => cnt_reg(21),
      O => \start_signal1_carry__0_i_6_n_0\
    );
\start_signal1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => cnt_reg(19),
      O => \start_signal1_carry__0_i_7_n_0\
    );
\start_signal1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      O => \start_signal1_carry__0_i_8_n_0\
    );
\start_signal1_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => cnt_reg(31),
      O => \start_signal1_carry__0_i_9_n_0\
    );
start_signal1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(15),
      O => start_signal1_carry_i_1_n_0
    );
start_signal1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(13),
      O => start_signal1_carry_i_10_n_0
    );
start_signal1_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      O => start_signal1_carry_i_11_n_0
    );
start_signal1_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(9),
      O => start_signal1_carry_i_12_n_0
    );
start_signal1_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      O => start_signal1_carry_i_13_n_0
    );
start_signal1_carry_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      O => start_signal1_carry_i_14_n_0
    );
start_signal1_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => start_signal1_carry_i_15_n_0
    );
start_signal1_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      O => start_signal1_carry_i_16_n_0
    );
start_signal1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(13),
      O => start_signal1_carry_i_2_n_0
    );
start_signal1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      O => start_signal1_carry_i_3_n_0
    );
start_signal1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(9),
      O => start_signal1_carry_i_4_n_0
    );
start_signal1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      O => start_signal1_carry_i_5_n_0
    );
start_signal1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      O => start_signal1_carry_i_6_n_0
    );
start_signal1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => start_signal1_carry_i_7_n_0
    );
start_signal1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => start_signal1_carry_i_8_n_0
    );
start_signal1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(15),
      O => start_signal1_carry_i_9_n_0
    );
start_signal_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => start_signal_reg_i_1_n_0,
      G => start_signal,
      GE => '1',
      Q => ap_start
    );
start_signal_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstb_busy,
      O => start_signal_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity u96v2_sbc_mp4d_nn_ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of u96v2_sbc_mp4d_nn_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u96v2_sbc_mp4d_nn_ctrl_0_0 : entity is "u96v2_sbc_mp4d_nn_ctrl_0_0,nn_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of u96v2_sbc_mp4d_nn_ctrl_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of u96v2_sbc_mp4d_nn_ctrl_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of u96v2_sbc_mp4d_nn_ctrl_0_0 : entity is "nn_ctrl,Vivado 2020.2";
end u96v2_sbc_mp4d_nn_ctrl_0_0;

architecture STRUCTURE of u96v2_sbc_mp4d_nn_ctrl_0_0 is
  signal \<const1>\ : STD_LOGIC;
  signal \^ap_done\ : STD_LOGIC;
  signal \^nn_res_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of i_Clk : signal is "xilinx.com:signal:clock:1.0 i_Clk CLK";
  attribute x_interface_parameter of i_Clk : signal is "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN u96v2_sbc_mp4d_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
  \^ap_done\ <= ap_done;
  \^nn_res_in\(31 downto 0) <= nn_res_in(31 downto 0);
  ap_rst <= \<const1>\;
  o_BRAM_din(31 downto 0) <= \^nn_res_in\(31 downto 0);
  o_BRAM_wr(3) <= \^ap_done\;
  o_BRAM_wr(2) <= \^ap_done\;
  o_BRAM_wr(1) <= \^ap_done\;
  o_BRAM_wr(0) <= \^ap_done\;
U0: entity work.u96v2_sbc_mp4d_nn_ctrl_0_0_nn_ctrl
     port map (
      ap_done => \^ap_done\,
      ap_idle => ap_idle,
      ap_start => ap_start,
      i_BRAM_addr(31 downto 0) => i_BRAM_addr(31 downto 0),
      i_Clk => i_Clk,
      led_ctrl1 => led_ctrl1,
      led_ctrl2 => led_ctrl2,
      led_ctrl3 => led_ctrl3,
      led_ctrl4 => led_ctrl4,
      nn_res_in(31 downto 0) => \^nn_res_in\(31 downto 0),
      o_BRAM_addr(31 downto 0) => o_BRAM_addr(31 downto 0),
      rstb_busy => rstb_busy
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
o_BRAM_ce_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ap_done\,
      I1 => i_BRAM_ce,
      O => o_BRAM_ce
    );
end STRUCTURE;
