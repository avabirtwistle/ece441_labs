-----------------------------------------------------------
--
-- ECE441/ECE543
--
-- Heirarchical design of a full adder
--
-- (c)2022 Dr. D. Capson    Dept. of ECE
--                          University of Victoria
--
-----------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
  port (
        a,b,cin:  in std_logic; -- three inputs to the full adder
        sum,carry: out std_logic -- sum and carry out
    );
end FA;
      
        
architecture structural of FA is

-- intermediate signals (refer to logic circuit for FA)
signal p1,p2,p3 : std_logic;

component HA is
    port (
          x : in STD_LOGIC;
          y : in STD_LOGIC;
          s : out STD_LOGIC;
          c : out STD_LOGIC
      );
end component;
begin
    
--  instantiate two HAs
  HA0: HA port map(x => a, y => b, s => p1, c => p2);
  HA1: HA port map(x => p1, y => cin, s => sum, c => p3);

  carry <= p2 or p3;
   
end architecture structural;