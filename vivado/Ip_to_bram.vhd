----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/30/2024 04:52:56 AM
-- Design Name: 
-- Module Name: Ip_to_bram - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ip_to_bram is
    Port ( ip_output : in STD_LOGIC_VECTOR (31 downto 0);
           bram_output_vld : in STD_LOGIC;
           bram_address : out STD_LOGIC_VECTOR (31 downto 0);
           bram_enb : out STD_LOGIC;
           bram_web : out STD_LOGIC_VECTOR (3 downto 0);
           bram_in : out STD_LOGIC_VECTOR (31 downto 0);
           bram_rst : out STD_LOGIC);
end Ip_to_bram;

architecture Behavioral of Ip_to_bram is

begin
    bram_enb <= '1';
    bram_rst <= '0';
    bram_address <= "10100000000000000000000000000000";
    bram_in <= ip_output;
    process(bram_output_vld)
    begin
        if(bram_output_vld = '1') then
            bram_web <= "1111";
        else
            bram_web <= "0000";
        end if;
    end process;
end Behavioral;
