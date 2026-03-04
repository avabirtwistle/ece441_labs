// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Feb 10 14:00:58 2026
// Host        : ws11-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/brent/camera_using_external_memory/camera_using_external_memory.gen/sources_1/ip/line_buffer/line_buffer_sim_netlist.v
// Design      : line_buffer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_buffer,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module line_buffer
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [95:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [95:0]doutb;

  wire [6:0]addra;
  wire [6:0]addrb;
  wire clka;
  wire clkb;
  wire [95:0]dina;
  wire [95:0]doutb;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [95:0]NLW_U0_douta_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [95:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.67465 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "line_buffer.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "80" *) 
  (* C_READ_DEPTH_B = "80" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "96" *) 
  (* C_READ_WIDTH_B = "96" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "80" *) 
  (* C_WRITE_DEPTH_B = "80" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "96" *) 
  (* C_WRITE_WIDTH_B = "96" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  line_buffer_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[95:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[95:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43040)
`pragma protect data_block
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
fo5NzrI=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
