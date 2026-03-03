--------------------------------------------------------------------------------
--
-- dwc ECE441 adapted from:
--
--  Gazi&Arli, “State Machines using VHDL
--              FPGA Implementation of Serial Communication and Display Protocols”
--              ©2021 The Editor(s) (if applicable) and The Author(s)
--              under exclusive license to Springer Nature Switzerland AG
--
--    P6.31, p.263
--    
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_square is
	port(
	clk: in std_logic;
	blank_in: in std_logic; -- signal telling the display to turn off the pixel output during the horizontal and verticle blanking period
	set_red, set_green, set_blue: in std_logic_vector(3 downto 0); -- the input switch values
	hpos, vpos: in positive range 1 to 1024; -- input signals representing the current horizontal and vertical pixel position on the screen
	vga_red, vga_green, vga_blue: out std_logic_vector(3 downto 0) -- 4-bit color per channel
	);
end vga_square;

architecture logic_flow of vga_square is 
	signal size: positive range 1 to 1024:=100;-- the size of the square in pixels (default 100)
	signal obj_X_pos: positive range 1 to 1024:=320; -- the x position of the square on screen (default 320)
	signal obj_Y_pos: positive range 1 to 1024:=240; -- the y position of the square on screen (default 240)

begin

square_draw :process(clk)
	begin

	if(rising_edge(clk)) then
	if(blank_in = '0') then -- if there is not blanking 
	if    ( (0<= hpos + size - obj_X_pos) -- if the current horizontal pixel position is not too far left
	    and (obj_X_pos + size-hpos >= 0) -- if the current position is not too far right of the square
		and (0 <= vpos + size - obj_Y_pos) -- if vpos is not too far above the square
		and (obj_Y_pos + size - vpos >= 0) ) then -- if vpos is not too far bellow the 
	vga_red   <= x"f";
	vga_green <= x"0";
	vga_blue  <= x"0";
	else -- it is the background
	vga_red    <=set_red; -- assign the switch color to it
	vga_green  <=set_green;
	vga_blue   <=set_blue;
	end if;
	else
	vga_red    <=x"0";
	vga_green  <=x"0";
	vga_blue   <=x"0";
	end if;
	end if;

end process;

end logic_flow;
