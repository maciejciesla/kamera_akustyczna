vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/fifo_generator_v13_2_0
vlib activehdl/axis_data_fifo_v1_1_15
vlib activehdl/blk_mem_gen_v8_4_0
vlib activehdl/xlconstant_v1_1_3

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap fifo_generator_v13_2_0 activehdl/fifo_generator_v13_2_0
vmap axis_data_fifo_v1_1_15 activehdl/axis_data_fifo_v1_1_15
vmap blk_mem_gen_v8_4_0 activehdl/blk_mem_gen_v8_4_0
vmap xlconstant_v1_1_3 activehdl/xlconstant_v1_1_3

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/kolejka/ip/kolejka_zad1_0_6/sim/kolejka_zad1_0_6.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../bd/kolejka/ipshared/68f7/hdl/sim_clk_gen.v" \
"../../../bd/kolejka/ip/kolejka_sim_clk_gen_0_1/sim/kolejka_sim_clk_gen_0_1.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_0  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0798/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_0 -93 \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0798/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_0  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0798/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axis_data_fifo_v1_1_15  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/f1e5/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../bd/kolejka/ip/kolejka_axis_data_fifo_0_0_1/sim/kolejka_axis_data_fifo_0_0.v" \

vlog -work blk_mem_gen_v8_4_0  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../bd/kolejka/ip/kolejka_blk_mem_gen_0_0/sim/kolejka_blk_mem_gen_0_0.v" \

vlog -work xlconstant_v1_1_3  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" "+incdir+../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl" \
"../../../bd/kolejka/ip/kolejka_xlconstant_0_0/sim/kolejka_xlconstant_0_0.v" \
"../../../bd/kolejka/ip/kolejka_xlconstant_0_2/sim/kolejka_xlconstant_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/kolejka/sim/kolejka.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

