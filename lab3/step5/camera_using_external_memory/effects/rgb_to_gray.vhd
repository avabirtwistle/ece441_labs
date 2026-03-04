----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: RGBtoGray - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RGBtoGray is
    Port ( RGBin : in STD_LOGIC_VECTOR (11 downto 0);
           GrayOut : out STD_LOGIC_VECTOR (11 downto 0));
end RGBtoGray;

architecture Behavioral of RGBtoGray is

signal GrayOut_4bit_tmp,red_temp,blue_temp,green_temp : STD_LOGIC_VECTOR (3 downto 0);
signal red_div,blue_div,green_div : STD_LOGIC_VECTOR (11 downto 0);
begin


-- Red:   RGBin(11:8) ÷ 4   = prepend "00", keep top 2 bits
red_temp   <= "00" & RGBin(11 downto 10);

-- Green: RGBin(7:4)  ÷ 2   = prepend "0",  keep top 3 bits
green_temp <= "0"  & RGBin(7 downto 5);

-- Blue:  RGBin(3:0)  ÷ 8   = prepend "000", keep top 1 bit
blue_temp  <= "000" & RGBin(3 downto 3);

GrayOut_4bit_tmp <= red_temp + green_temp+ blue_temp;
GrayOut <= GrayOut_4bit_tmp & GrayOut_4bit_tmp & GrayOut_4bit_tmp; --- 0.25 x red + 0.5 x green + 0.125 x blue

end Behavioral;
