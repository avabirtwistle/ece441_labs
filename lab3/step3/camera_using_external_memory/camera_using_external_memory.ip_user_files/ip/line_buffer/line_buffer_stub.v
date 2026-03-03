// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Jun 15 17:02:17 2023
// Host        : ugls10.ece.uvic.ca running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/brent/camera_using_external_memory/camera_using_external_memory.srcs/sources_1/ip/line_buffer/line_buffer_stub.v
// Design      : line_buffer
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module line_buffer(clka, ena, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[6:0],dina[95:0],clkb,addrb[6:0],doutb[95:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [6:0]addra;
  input [95:0]dina;
  input clkb;
  input [6:0]addrb;
  output [95:0]doutb;
endmodule
