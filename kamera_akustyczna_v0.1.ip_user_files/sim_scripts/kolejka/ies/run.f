-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kolejka/ip/kolejka_zad1_0_6/sim/kolejka_zad1_0_6.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kolejka/ipshared/68f7/hdl/sim_clk_gen.v" \
  "../../../bd/kolejka/ip/kolejka_sim_clk_gen_0_1/sim/kolejka_sim_clk_gen_0_1.v" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_0 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0798/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_0 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0798/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_0 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0798/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axis_data_fifo_v1_1_15 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/f1e5/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kolejka/ip/kolejka_axis_data_fifo_0_0_1/sim/kolejka_axis_data_fifo_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_0 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/e50b/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kolejka/ip/kolejka_blk_mem_gen_0_0/sim/kolejka_blk_mem_gen_0_0.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_3 \
  "../../../../kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kolejka/ip/kolejka_xlconstant_0_0/sim/kolejka_xlconstant_0_0.v" \
  "../../../bd/kolejka/ip/kolejka_xlconstant_0_2/sim/kolejka_xlconstant_0_2.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/kolejka/sim/kolejka.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

