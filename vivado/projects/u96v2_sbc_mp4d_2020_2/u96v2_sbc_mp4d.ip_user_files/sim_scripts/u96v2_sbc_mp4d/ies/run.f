-makelib ies_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/sim/bd_53ee.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_0/sim/bd_53ee_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_1/sim/bd_53ee_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_2/sim/bd_53ee_arsw_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_3/sim/bd_53ee_rsw_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_4/sim/bd_53ee_awsw_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_5/sim/bd_53ee_wsw_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_6/sim/bd_53ee_bsw_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_7/sim/bd_53ee_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_8/sim/bd_53ee_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_9/sim/bd_53ee_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_10/sim/bd_53ee_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_11/sim/bd_53ee_sarn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_12/sim/bd_53ee_srn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_13/sim/bd_53ee_sawn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_14/sim/bd_53ee_swn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_15/sim/bd_53ee_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_16/sim/bd_53ee_m01s2a_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_17/sim/bd_53ee_m01arn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_18/sim/bd_53ee_m01rn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_19/sim/bd_53ee_m01awn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_20/sim/bd_53ee_m01wn_0.sv" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_21/sim/bd_53ee_m01bn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/bd_0/ip/ip_22/sim/bd_53ee_m01e_0.sv" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_22 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_smc_0/sim/u96v2_sbc_mp4d_axi_smc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_rst_ps8_0_100M_0/sim/u96v2_sbc_mp4d_rst_ps8_0_100M_0.vhd" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_8 -sv \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_zynq_ultra_ps_e_0_0/sim/u96v2_sbc_mp4d_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_1_4 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/c9f0/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_bram_ctrl_0_0/sim/u96v2_sbc_mp4d_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_axi_bram_ctrl_0_bram_0/sim/u96v2_sbc_mp4d_axi_bram_ctrl_0_bram_0.v" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_xlconstant_1_0/sim/u96v2_sbc_mp4d_xlconstant_1_0.v" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_10 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_6 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_6 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_6 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_16 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_1_11 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/b0c0/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_1_11 \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/b0c0/hdl/floating_point_v7_1_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_dcmp_64ns_64ns_1_2_no_dsp_1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_fp_input_img_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_fpext_32ns_64_2_no_dsp_1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hw_act_layer1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hw_act_layer2.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hw_act_layer3.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer1_weights_layer1_weights_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer2.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer2_weights_layer2_weights_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer3.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer3_weights_layer3_weights_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer4.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_hwmm_layer4_weights_layer4_weights_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_mul_10s_32s_40_1_1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_mul_11s_32s_40_1_1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_mul_12s_32s_40_1_1.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_temp_output2_0_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_temp_output3_0_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_temp_output4_0_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference_temp_output_0_V.vhd" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/vhdl/nn_inference.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/ip/nn_inference_ap_dcmp_0_no_dsp_64.v" \
  "../../../../u96v2_sbc_mp4d.gen/sources_1/bd/u96v2_sbc_mp4d/ipshared/91d3/hdl/ip/nn_inference_ap_fpext_0_no_dsp_32.v" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_nn_inference_0_1/sim/u96v2_sbc_mp4d_nn_inference_0_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_nn_ctrl_0_0/sim/u96v2_sbc_mp4d_nn_ctrl_0_0.vhd" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_fix_address_0_0/sim/u96v2_sbc_mp4d_fix_address_0_0.vhd" \
  "../../../bd/u96v2_sbc_mp4d/ip/u96v2_sbc_mp4d_not_gate_0_0/sim/u96v2_sbc_mp4d_not_gate_0_0.vhd" \
  "../../../bd/u96v2_sbc_mp4d/sim/u96v2_sbc_mp4d.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib
