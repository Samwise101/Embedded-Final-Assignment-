############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nn_15x15
set_top nn_inference
add_files nn_15x15/nn.cpp
add_files nn_15x15/nn.hpp
add_files -tb nn_15x15/nn_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/samuel/MpSoc4Drones/ip/nn_inference_ap_vld_stream.zip -rtl vhdl
source "./nn_15x15/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/samuel/MpSoc4Drones/ip/nn_inference_ap_vld_stream.zip
