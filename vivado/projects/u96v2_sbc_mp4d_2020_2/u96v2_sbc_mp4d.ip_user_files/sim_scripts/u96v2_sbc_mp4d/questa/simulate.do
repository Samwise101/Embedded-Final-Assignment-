onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib u96v2_sbc_mp4d_opt

do {wave.do}

view wave
view structure
view signals

do {u96v2_sbc_mp4d.udo}

run -all

quit -force
