onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mb_design_1_opt

do {wave.do}

view wave
view structure
view signals

do {mb_design_1.udo}

run -all

quit -force
