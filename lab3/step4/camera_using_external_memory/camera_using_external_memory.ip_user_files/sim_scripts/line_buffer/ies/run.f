-makelib ies_lib/xil_defaultlib -sv \
  "/CMC/tools/xilinx/SDx_2017.4/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/project/CMC/tools/xilinx/SDx_2017.4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../camera_using_external_memory.srcs/sources_1/ip/line_buffer/sim/line_buffer.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

