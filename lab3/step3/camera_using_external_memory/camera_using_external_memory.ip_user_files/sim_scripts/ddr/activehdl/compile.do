vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_std.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \

vcom -work xil_defaultlib -93 \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.vhd" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr_mig_sim.vhd" \
"../../../../camera_using_external_memory.srcs/sources_1/ip/ddr/ddr/user_design/rtl/ddr.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

