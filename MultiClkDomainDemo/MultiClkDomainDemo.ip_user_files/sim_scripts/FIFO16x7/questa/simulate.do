onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO16x7_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO16x7.udo}

run -all

quit -force
