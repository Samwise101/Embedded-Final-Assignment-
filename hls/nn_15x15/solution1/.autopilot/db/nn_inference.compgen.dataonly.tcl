# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_img { 
	dir I
	width 32
	depth 225
	mode ap_memory
	offset 1024
	offset_end 2047
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


