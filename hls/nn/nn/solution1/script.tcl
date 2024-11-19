############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nn
set_top nn_inference
add_files nn.cpp
add_files nn.hpp
add_files -tb nn_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
source "./nn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
