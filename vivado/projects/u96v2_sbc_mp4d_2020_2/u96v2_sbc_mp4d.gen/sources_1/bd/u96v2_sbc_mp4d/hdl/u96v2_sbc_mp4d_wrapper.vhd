--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Nov 19 15:26:24 2024
--Host        : nicklas-PC running 64-bit Ubuntu 20.04.6 LTS
--Command     : generate_target u96v2_sbc_mp4d_wrapper.bd
--Design      : u96v2_sbc_mp4d_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity u96v2_sbc_mp4d_wrapper is
end u96v2_sbc_mp4d_wrapper;

architecture STRUCTURE of u96v2_sbc_mp4d_wrapper is
  component u96v2_sbc_mp4d is
  end component u96v2_sbc_mp4d;
begin
u96v2_sbc_mp4d_i: component u96v2_sbc_mp4d
 ;
end STRUCTURE;
