onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib kolejka_opt

do {wave.do}

view wave
view structure
view signals

do {kolejka.udo}

run -all

quit -force
