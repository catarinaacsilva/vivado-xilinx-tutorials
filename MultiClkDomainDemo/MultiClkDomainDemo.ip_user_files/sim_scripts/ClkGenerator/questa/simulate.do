onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ClkGenerator_opt

do {wave.do}

view wave
view structure
view signals

do {ClkGenerator.udo}

run -all

quit -force
