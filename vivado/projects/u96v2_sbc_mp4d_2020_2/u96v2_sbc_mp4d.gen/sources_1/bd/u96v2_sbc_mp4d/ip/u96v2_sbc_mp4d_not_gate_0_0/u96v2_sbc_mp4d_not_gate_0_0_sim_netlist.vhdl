-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Nov 19 15:28:30 2024
-- Host        : nicklas-PC running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /tools/Xilinx/MPSoC4Drones/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_not_gate_0_0/u96v2_sbc_mp4d_not_gate_0_0_sim_netlist.vhdl
-- Design      : u96v2_sbc_mp4d_not_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity u96v2_sbc_mp4d_not_gate_0_0 is
  port (
    i_in : in STD_LOGIC;
    o_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of u96v2_sbc_mp4d_not_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of u96v2_sbc_mp4d_not_gate_0_0 : entity is "u96v2_sbc_mp4d_not_gate_0_0,not_gate,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of u96v2_sbc_mp4d_not_gate_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of u96v2_sbc_mp4d_not_gate_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of u96v2_sbc_mp4d_not_gate_0_0 : entity is "not_gate,Vivado 2020.2";
end u96v2_sbc_mp4d_not_gate_0_0;

architecture STRUCTURE of u96v2_sbc_mp4d_not_gate_0_0 is
begin
o_out_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_in,
      O => o_out
    );
end STRUCTURE;
