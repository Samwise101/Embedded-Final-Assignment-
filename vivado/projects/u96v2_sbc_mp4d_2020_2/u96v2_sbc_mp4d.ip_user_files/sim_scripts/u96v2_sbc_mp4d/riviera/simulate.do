onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+u96v2_sbc_mp4d -L xilinx_vip -L xpm -L xil_defaultlib -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_22 -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L axi_bram_ctrl_v4_1_4 -L blk_mem_gen_v8_4_4 -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L floating_point_v7_1_11 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.u96v2_sbc_mp4d xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {u96v2_sbc_mp4d.udo}

run -all

endsim

quit -force