// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Feb 10 14:00:58 2026
// Host        : ws11-04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ line_buffer_sim_netlist.v
// Design      : line_buffer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "line_buffer,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43200)
`pragma protect data_block
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
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
