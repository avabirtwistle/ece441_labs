----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2026 06:38:37 PM
-- Design Name: 
-- Module Name: booth_multiplier - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity booth_multiplier is
    port(
    a: in std_logic_vector(7 downto 0);
    b: in std_logic_vector(7 downto 0);
    p: out std_logic_vector(15 downto 0);
    clk: in std_logic
    );
end booth_multiplier;

architecture Behavioral of booth_multiplier is
    signal booth_curr: std_logic_vector(1 downto 0);
    signal booth_neg: signed(15 downto 0); 
    signal booth_pos: signed(15 downto 0);
    signal booth_acc: signed(15 downto 0);
begin

booth_curr <= b(0) & '0';
booth_pos <= resize(signed(a), 16);
booth_neg <= resize(- signed(a), 16);
booth_acc <= (others => '0');
process(clk)
begin
if rising_edge(clk) then 
booth_acc <= (others => '0');
for i in 0 to 6 loop
if booth_curr = "01" then 
    booth_acc <= booth_acc + shift_left(booth_pos, i);
    
elsif booth_curr = "10" then
    booth_acc <= booth_acc + shift_left(booth_neg, i);
end if;
booth_curr <= b(i+1)&b(i); -- go the next two bits 
end loop;
p <= std_logic_vector(booth_acc);
end if;
end process;
end Behavioral;
