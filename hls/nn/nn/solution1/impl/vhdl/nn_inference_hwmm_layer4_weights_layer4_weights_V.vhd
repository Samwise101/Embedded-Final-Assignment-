-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity nn_inference_hwmm_layer4_weights_layer4_weights_V_rom is 
    generic(
             DWIDTH     : integer := 12; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 160
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of nn_inference_hwmm_layer4_weights_layer4_weights_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111111001011", 1 => "000010101001", 2 => "111000011100", 
    3 => "111111111000", 4 => "000010011001", 5 => "000010111111", 
    6 => "111101011111", 7 => "000001000011", 8 => "111011001011", 
    9 => "000010000111", 10 => "111110111000", 11 => "111101001101", 
    12 => "000000001111", 13 => "111101111110", 14 => "000000010001", 
    15 => "000001010100", 16 => "111111101101", 17 => "111000110001", 
    18 => "000010000001", 19 => "111101110100", 20 => "110110110100", 
    21 => "111011110010", 22 => "000010111000", 23 => "000000011100", 
    24 => "000000100100", 25 => "111101011010", 26 => "111010100100", 
    27 => "000000110101", 28 => "111111101011", 29 => "000100011000", 
    30 => "000001011011", 31 => "111110000001", 32 => "111111110010", 
    33 => "111110111001", 34 => "000000010101", 35 => "111111001000", 
    36 => "111110001011", 37 => "111110111111", 38 => "111110001111", 
    39 => "111110100000", 40 => "111110001110", 41 => "111101101000", 
    42 => "000011011011", 43 => "000101010110", 44 => "111011001111", 
    45 => "000000000011", 46 => "000000001111", 47 => "000011001000", 
    48 => "000001011101", 49 => "111011011110", 50 => "111000100101", 
    51 => "111011010110", 52 => "000001110010", 53 => "000001111011", 
    54 => "111100101010", 55 => "111110011101", 56 => "111111100101", 
    57 => "000100111111", 58 => "000010011011", 59 => "111011011100", 
    60 => "110110000110", 61 => "000001010011", 62 => "111011110100", 
    63 => "111100001001", 64 => "000100110010", 65 => "111110100100", 
    66 => "000010111001", 67 => "000010011001", 68 => "111110011001", 
    69 => "111111000100", 70 => "110100000000", 71 => "111110110100", 
    72 => "000001110110", 73 => "000000100111", 74 => "111110110000", 
    75 => "000011111011", 76 => "000010100000", 77 => "111100000100", 
    78 => "111111011100", 79 => "111111010111", 80 => "101100001000", 
    81 => "111110000110", 82 => "111010010011", 83 => "000000111000", 
    84 => "000000001010", 85 => "000011000000", 86 => "111110111001", 
    87 => "111101010100", 88 => "000001100111", 89 => "000001111001", 
    90 => "111110101011", 91 => "000010010001", 92 => "000010001010", 
    93 => "000000110110", 94 => "000001010010", 95 => "111011010101", 
    96 => "111000111001", 97 => "111101000000", 98 => "111101000001", 
    99 => "000000111100", 100 => "111010100010", 101 => "111111000010", 
    102 => "111110110111", 103 => "111011000100", 104 => "111101101110", 
    105 => "111101011110", 106 => "000001111111", 107 => "111101010101", 
    108 => "000011111110", 109 => "111110000011", 110 => "000000110101", 
    111 => "111010001001", 112 => "110111110011", 113 => "000000010010", 
    114 => "000100111110", 115 => "000000001101", 116 => "111110100111", 
    117 => "111011100001", 118 => "111110110010", 119 => "000001111001", 
    120 => "110100011110", 121 => "000110101011", 122 => "111111100101", 
    123 => "000010000100", 124 => "111100110111", 125 => "111111001011", 
    126 => "111010110100", 127 => "111110111111", 128 => "111110000101", 
    129 => "000000101110", 130 => "111111110111", 131 => "000000011010", 
    132 => "111111110011", 133 => "000001000010", 134 => "000001100010", 
    135 => "111111010001", 136 => "111110110101", 137 => "000000000011", 
    138 => "000000001010", 139 => "111110101110", 140 => "000000011110", 
    141 => "000100010100", 142 => "000000001001", 143 => "111010101100", 
    144 => "111111100001", 145 => "111111101001", 146 => "111101010100", 
    147 => "000010001101", 148 => "111100111101", 149 => "000000000000", 
    150 => "110111010100", 151 => "000000010010", 152 => "111111111100", 
    153 => "111100111000", 154 => "000100111111", 155 => "111011000010", 
    156 => "000000111110", 157 => "000011011000", 158 => "111011011110", 
    159 => "111111010000" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(addr1_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity nn_inference_hwmm_layer4_weights_layer4_weights_V is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 160;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of nn_inference_hwmm_layer4_weights_layer4_weights_V is
    component nn_inference_hwmm_layer4_weights_layer4_weights_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    nn_inference_hwmm_layer4_weights_layer4_weights_V_rom_U :  component nn_inference_hwmm_layer4_weights_layer4_weights_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1);

end architecture;


