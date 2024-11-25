-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 19 15:28:29 2024
-- Host        : nicklas-PC running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u96v2_sbc_mp4d_fix_address_0_0_sim_netlist.vhdl
-- Design      : u96v2_sbc_mp4d_fix_address_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    addr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "u96v2_sbc_mp4d_fix_address_0_0,fix_address,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fix_address,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr_in\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  \^addr_in\(6 downto 0) <= addr_in(6 downto 0);
  addr_out(31) <= \<const0>\;
  addr_out(30) <= \<const0>\;
  addr_out(29) <= \<const0>\;
  addr_out(28) <= \<const0>\;
  addr_out(27) <= \<const0>\;
  addr_out(26) <= \<const0>\;
  addr_out(25) <= \<const0>\;
  addr_out(24) <= \<const0>\;
  addr_out(23) <= \<const0>\;
  addr_out(22) <= \<const0>\;
  addr_out(21) <= \<const0>\;
  addr_out(20) <= \<const0>\;
  addr_out(19) <= \<const0>\;
  addr_out(18) <= \<const0>\;
  addr_out(17) <= \<const0>\;
  addr_out(16) <= \<const0>\;
  addr_out(15) <= \<const0>\;
  addr_out(14) <= \<const0>\;
  addr_out(13) <= \<const0>\;
  addr_out(12) <= \<const0>\;
  addr_out(11) <= \<const0>\;
  addr_out(10) <= \<const0>\;
  addr_out(9) <= \<const0>\;
  addr_out(8 downto 2) <= \^addr_in\(6 downto 0);
  addr_out(1) <= \<const0>\;
  addr_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
