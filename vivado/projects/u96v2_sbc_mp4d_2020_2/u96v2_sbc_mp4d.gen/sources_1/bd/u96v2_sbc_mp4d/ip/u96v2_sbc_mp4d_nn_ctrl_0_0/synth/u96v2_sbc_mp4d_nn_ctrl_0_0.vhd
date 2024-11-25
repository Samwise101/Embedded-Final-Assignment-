-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:nn_ctrl:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY u96v2_sbc_mp4d_nn_ctrl_0_0 IS
  PORT (
    i_Clk : IN STD_LOGIC;
    ap_ready : IN STD_LOGIC;
    ap_start : OUT STD_LOGIC;
    ap_done : IN STD_LOGIC;
    ap_idle : IN STD_LOGIC;
    ap_rst : OUT STD_LOGIC;
    rstb_busy : IN STD_LOGIC;
    led_ctrl1 : OUT STD_LOGIC;
    led_ctrl2 : OUT STD_LOGIC;
    led_ctrl3 : OUT STD_LOGIC;
    led_ctrl4 : OUT STD_LOGIC;
    i_BRAM_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    i_BRAM_ce : IN STD_LOGIC;
    o_BRAM_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    o_BRAM_ce : OUT STD_LOGIC;
    o_BRAM_wr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    o_BRAM_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    nn_res_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END u96v2_sbc_mp4d_nn_ctrl_0_0;

ARCHITECTURE u96v2_sbc_mp4d_nn_ctrl_0_0_arch OF u96v2_sbc_mp4d_nn_ctrl_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF u96v2_sbc_mp4d_nn_ctrl_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT nn_ctrl IS
    PORT (
      i_Clk : IN STD_LOGIC;
      ap_ready : IN STD_LOGIC;
      ap_start : OUT STD_LOGIC;
      ap_done : IN STD_LOGIC;
      ap_idle : IN STD_LOGIC;
      ap_rst : OUT STD_LOGIC;
      rstb_busy : IN STD_LOGIC;
      led_ctrl1 : OUT STD_LOGIC;
      led_ctrl2 : OUT STD_LOGIC;
      led_ctrl3 : OUT STD_LOGIC;
      led_ctrl4 : OUT STD_LOGIC;
      i_BRAM_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      i_BRAM_ce : IN STD_LOGIC;
      o_BRAM_addr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      o_BRAM_ce : OUT STD_LOGIC;
      o_BRAM_wr : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      o_BRAM_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      nn_res_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT nn_ctrl;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF u96v2_sbc_mp4d_nn_ctrl_0_0_arch: ARCHITECTURE IS "nn_ctrl,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF u96v2_sbc_mp4d_nn_ctrl_0_0_arch : ARCHITECTURE IS "u96v2_sbc_mp4d_nn_ctrl_0_0,nn_ctrl,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF u96v2_sbc_mp4d_nn_ctrl_0_0_arch: ARCHITECTURE IS "u96v2_sbc_mp4d_nn_ctrl_0_0,nn_ctrl,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=nn_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF u96v2_sbc_mp4d_nn_ctrl_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst: SIGNAL IS "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_Clk: SIGNAL IS "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN u96v2_sbc_mp4d_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_Clk CLK";
BEGIN
  U0 : nn_ctrl
    PORT MAP (
      i_Clk => i_Clk,
      ap_ready => ap_ready,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_rst => ap_rst,
      rstb_busy => rstb_busy,
      led_ctrl1 => led_ctrl1,
      led_ctrl2 => led_ctrl2,
      led_ctrl3 => led_ctrl3,
      led_ctrl4 => led_ctrl4,
      i_BRAM_addr => i_BRAM_addr,
      i_BRAM_ce => i_BRAM_ce,
      o_BRAM_addr => o_BRAM_addr,
      o_BRAM_ce => o_BRAM_ce,
      o_BRAM_wr => o_BRAM_wr,
      o_BRAM_din => o_BRAM_din,
      nn_res_in => nn_res_in
    );
END u96v2_sbc_mp4d_nn_ctrl_0_0_arch;
