------------------------------------------------------------------------------------------------
--
-- ECE441/ECE543 Summer 2022
--
-- 5x5 bit Wallace Tree Multiplier
--
-- this code is a corrected version
-- based on: https://vhdlguru.blogspot.com/2013/08/vhdl-code-for-wallace-tree.html
--
-------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Wallace5x5 is
    port ( A :    in  STD_LOGIC_VECTOR (4 downto 0);
           B :    in  STD_LOGIC_VECTOR (4 downto 0);
           prod : out  STD_LOGIC_VECTOR (9 downto 0));
end Wallace5x5;

architecture structural of Wallace5x5 is

component FullAdder is
    port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           SUM : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end component;

component HA is
    port ( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end component;

signal s11,s12,s13,s14_fa,s14_ha,s15,s16,s22,s23,s24,s25,s26,s27,s32,s33,s34,s35,s36,s37,s38,s39,s41,s42,s43,s44,s45,s46,s47,s48,s49 : std_logic;
signal c11,c12,c13,c14_fa, c14_ha,c15,c16,c22,c23,c24,c25,c26,c27,c32,c33,c34,c35,c36,c37,c38,c39,c41,c42,c43,c44,c45,c46,c47,c48,c49 : std_logic;
signal p0,p1,p2,p3,p4 : std_logic_vector(4 downto 0);

begin

process(A,B)


-- Stage 1 - generate the partial products
begin
    for i in 0 to 4 loop
        p0(i) <= A(i) and B(0);
        p1(i) <= A(i) and B(1);
        p2(i) <= A(i) and B(2);
        p3(i) <= A(i) and B(3);
    end loop;       
end process;


-- Stage 3 - final bits in the product    
prod(0) <= p0(0);
prod(1) <= s41;
prod(2) <= s42;
prod(3) <= s43;
prod(4) <= s44;
prod(5) <= s45;
prod(6) <= s46;
prod(7) <= s47;
prod(8) <= s48;
prod(9) <= s49;

-- note that all of the following port maps uses "positional port connections" rather than "explicit" connections which generally
-- makes code more readable - however in this case positional port connections is easier to follow!

-- Stage 2 - first iteration of compression
ha12 : HA port map(p0(3),p1(1),s12,c12);
fa13 : FullAdder port map(p0(3), p1(2), p2(1), s13, c13);
fa14 : FullAdder port map(p0(4), p1(3), p2(2), s14_fa, c14_fa);
ha14 : HA port map (p3(1), p4(0), s14_ha, c14_ha);
fa15 : FullAdder port map(p1(4), p2(3), p3(2), s15, c15);
fa16 : FullAdder port map(p2(4), p3(3), p4(2), s16, c16);

-- Stage 2 - second iteration of compression
ha23 : HA port map(c12,s13,s23,c23);
fa24 : FullAdder port map(c13,s14_fa, s14_ha,s24, c24);
fa25 : FullAdder port map(c14_fa,c14_ha,s15,s25,c25); 
ha26 : HA port map(c15, s16, s26,c26);
fa27 : FullAdder port map(c16,p4(3),p3(4),s27,c27);

-- Stage 2 - third iteration of compression
ha35 : HA port map(c24, s25, s35, c35);
ha36 : HA port map(c25, s26, s36, c36);
ha37 : HA port map(c26, s27, s37, c37);
ha38 : HA port map(c27, p4(4), s38, c38);

-- ripple carry adding
ha41 : HA port map(p0(1), p1(0), s41, c41);
fa42 : FullAdder port map(s12, p2(0), c41, s42, c42);
fa43 : FullAdder port map(s23, p3(0), c42, s43, c43);
fa44 : FullAdder port map(c23, s24, c43, s44, c44);
fa45 : FullAdder port map(s35, p4(2), c44, s45, c45);
fa46 : FullAdder port map(s36, c35, c45, s46, c46);
fa47 : FullAdder port map(s37, c36, c46, s47, c47);
fa48 : FullAdder port map(s38, c37, c47, s48, c48);
ha49 : HA port map(c38, c48, s49, c49);
end structural;
