----------------------------------------------------------------------------------
-- Engineer: dwc
-- 
-- Module Name: top_level - Behavioral 
-- Description: Top level module MicroBlaze MCS microcontroller
--
-- July 2022
--
-- Lab #4, Step #1
--
-- ECE441/ECE543
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mcs_top is
    Port ( 
           clk_fpga         : in  STD_LOGIC;
           reset         : in  STD_LOGIC;
           rx            : in  STD_LOGIC;
           tx            : out  STD_LOGIC;
           sw             : in  STD_LOGIC_vector(7 downto 0);
           led      : out STD_LOGIC_VECTOR(7 downto 0 )
           );
                   
end mcs_top;

architecture Behavioral of mcs_top is

     component microblaze_mcs_0
     port(
     Clk : in STD_LOGIC;
     Reset : in STD_LOGIC;
     UART_rxd : in STD_LOGIC;
     UART_txd : out STD_LOGIC;
     GPIO1_tri_i : in STD_LOGIC_vector(7 downto 0);
     GPIO1_tri_o : out STD_LOGIC_VECTOR( 7 downto 0 )
     );
    end component;

begin

dwc:  microblaze_mcs_0 PORT MAP(
  Clk      => clk_fpga,
  Reset     => reset,
  UART_rxd  => rx,
  UART_txd  => tx,
  GPIO1_tri_i     => sw,
  GPIO1_tri_o     => led
 );

end Behavioral;
