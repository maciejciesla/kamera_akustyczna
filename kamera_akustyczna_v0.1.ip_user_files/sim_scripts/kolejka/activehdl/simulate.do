onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+kolejka -L xil_defaultlib -L xpm -L axis_infrastructure_v1_1_0 -L fifo_generator_v13_2_0 -L axis_data_fifo_v1_1_15 -L blk_mem_gen_v8_4_0 -L xlconstant_v1_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.kolejka xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {kolejka.udo}

run -all

endsim

quit -force
