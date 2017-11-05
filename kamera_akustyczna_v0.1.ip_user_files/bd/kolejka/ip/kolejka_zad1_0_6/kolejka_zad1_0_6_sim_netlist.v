// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Sat Nov  4 19:36:41 2017
// Host        : DESKTOP-QHJIUEA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/makiv2/kamera_akustyczna_v0.1/kamera_akustyczna_v0.1.srcs/sources_1/bd/kolejka/ip/kolejka_zad1_0_6/kolejka_zad1_0_6_sim_netlist.v
// Design      : kolejka_zad1_0_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "kolejka_zad1_0_6,zad1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "zad1,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module kolejka_zad1_0_6
   (LED,
    CLK100MHZ);
  output [15:0]LED;
  input CLK100MHZ;

  wire CLK100MHZ;
  wire [15:0]LED;

  kolejka_zad1_0_6_zad1 U0
       (.CLK100MHZ(CLK100MHZ),
        .LED(LED));
endmodule

(* ORIG_REF_NAME = "zad1" *) 
module kolejka_zad1_0_6_zad1
   (LED,
    CLK100MHZ);
  output [15:0]LED;
  input CLK100MHZ;

  wire \BINAR[0]_i_2_n_0 ;
  wire [15:0]BINAR_reg;
  wire \BINAR_reg[0]_i_1_n_0 ;
  wire \BINAR_reg[0]_i_1_n_1 ;
  wire \BINAR_reg[0]_i_1_n_2 ;
  wire \BINAR_reg[0]_i_1_n_3 ;
  wire \BINAR_reg[0]_i_1_n_4 ;
  wire \BINAR_reg[0]_i_1_n_5 ;
  wire \BINAR_reg[0]_i_1_n_6 ;
  wire \BINAR_reg[0]_i_1_n_7 ;
  wire \BINAR_reg[12]_i_1_n_1 ;
  wire \BINAR_reg[12]_i_1_n_2 ;
  wire \BINAR_reg[12]_i_1_n_3 ;
  wire \BINAR_reg[12]_i_1_n_4 ;
  wire \BINAR_reg[12]_i_1_n_5 ;
  wire \BINAR_reg[12]_i_1_n_6 ;
  wire \BINAR_reg[12]_i_1_n_7 ;
  wire \BINAR_reg[4]_i_1_n_0 ;
  wire \BINAR_reg[4]_i_1_n_1 ;
  wire \BINAR_reg[4]_i_1_n_2 ;
  wire \BINAR_reg[4]_i_1_n_3 ;
  wire \BINAR_reg[4]_i_1_n_4 ;
  wire \BINAR_reg[4]_i_1_n_5 ;
  wire \BINAR_reg[4]_i_1_n_6 ;
  wire \BINAR_reg[4]_i_1_n_7 ;
  wire \BINAR_reg[8]_i_1_n_0 ;
  wire \BINAR_reg[8]_i_1_n_1 ;
  wire \BINAR_reg[8]_i_1_n_2 ;
  wire \BINAR_reg[8]_i_1_n_3 ;
  wire \BINAR_reg[8]_i_1_n_4 ;
  wire \BINAR_reg[8]_i_1_n_5 ;
  wire \BINAR_reg[8]_i_1_n_6 ;
  wire \BINAR_reg[8]_i_1_n_7 ;
  wire CLK100MHZ;
  wire [15:0]LED;
  wire [3:3]\NLW_BINAR_reg[12]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \BINAR[0]_i_2 
       (.I0(BINAR_reg[0]),
        .O(\BINAR[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[0]_i_1_n_7 ),
        .Q(BINAR_reg[0]),
        .R(1'b0));
  CARRY4 \BINAR_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\BINAR_reg[0]_i_1_n_0 ,\BINAR_reg[0]_i_1_n_1 ,\BINAR_reg[0]_i_1_n_2 ,\BINAR_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\BINAR_reg[0]_i_1_n_4 ,\BINAR_reg[0]_i_1_n_5 ,\BINAR_reg[0]_i_1_n_6 ,\BINAR_reg[0]_i_1_n_7 }),
        .S({BINAR_reg[3:1],\BINAR[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[10] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[8]_i_1_n_5 ),
        .Q(BINAR_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[11] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[8]_i_1_n_4 ),
        .Q(BINAR_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[12] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[12]_i_1_n_7 ),
        .Q(BINAR_reg[12]),
        .R(1'b0));
  CARRY4 \BINAR_reg[12]_i_1 
       (.CI(\BINAR_reg[8]_i_1_n_0 ),
        .CO({\NLW_BINAR_reg[12]_i_1_CO_UNCONNECTED [3],\BINAR_reg[12]_i_1_n_1 ,\BINAR_reg[12]_i_1_n_2 ,\BINAR_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BINAR_reg[12]_i_1_n_4 ,\BINAR_reg[12]_i_1_n_5 ,\BINAR_reg[12]_i_1_n_6 ,\BINAR_reg[12]_i_1_n_7 }),
        .S(BINAR_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[13] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[12]_i_1_n_6 ),
        .Q(BINAR_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[14] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[12]_i_1_n_5 ),
        .Q(BINAR_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[15] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[12]_i_1_n_4 ),
        .Q(BINAR_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[0]_i_1_n_6 ),
        .Q(BINAR_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[0]_i_1_n_5 ),
        .Q(BINAR_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[0]_i_1_n_4 ),
        .Q(BINAR_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[4]_i_1_n_7 ),
        .Q(BINAR_reg[4]),
        .R(1'b0));
  CARRY4 \BINAR_reg[4]_i_1 
       (.CI(\BINAR_reg[0]_i_1_n_0 ),
        .CO({\BINAR_reg[4]_i_1_n_0 ,\BINAR_reg[4]_i_1_n_1 ,\BINAR_reg[4]_i_1_n_2 ,\BINAR_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BINAR_reg[4]_i_1_n_4 ,\BINAR_reg[4]_i_1_n_5 ,\BINAR_reg[4]_i_1_n_6 ,\BINAR_reg[4]_i_1_n_7 }),
        .S(BINAR_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[4]_i_1_n_6 ),
        .Q(BINAR_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[4]_i_1_n_5 ),
        .Q(BINAR_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[4]_i_1_n_4 ),
        .Q(BINAR_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[8] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[8]_i_1_n_7 ),
        .Q(BINAR_reg[8]),
        .R(1'b0));
  CARRY4 \BINAR_reg[8]_i_1 
       (.CI(\BINAR_reg[4]_i_1_n_0 ),
        .CO({\BINAR_reg[8]_i_1_n_0 ,\BINAR_reg[8]_i_1_n_1 ,\BINAR_reg[8]_i_1_n_2 ,\BINAR_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\BINAR_reg[8]_i_1_n_4 ,\BINAR_reg[8]_i_1_n_5 ,\BINAR_reg[8]_i_1_n_6 ,\BINAR_reg[8]_i_1_n_7 }),
        .S(BINAR_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \BINAR_reg[9] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(\BINAR_reg[8]_i_1_n_6 ),
        .Q(BINAR_reg[9]),
        .R(1'b0));
  FDRE \LED_reg[0] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[0]),
        .Q(LED[0]),
        .R(1'b0));
  FDRE \LED_reg[10] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[10]),
        .Q(LED[10]),
        .R(1'b0));
  FDRE \LED_reg[11] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[11]),
        .Q(LED[11]),
        .R(1'b0));
  FDRE \LED_reg[12] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[12]),
        .Q(LED[12]),
        .R(1'b0));
  FDRE \LED_reg[13] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[13]),
        .Q(LED[13]),
        .R(1'b0));
  FDRE \LED_reg[14] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[14]),
        .Q(LED[14]),
        .R(1'b0));
  FDRE \LED_reg[15] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[15]),
        .Q(LED[15]),
        .R(1'b0));
  FDRE \LED_reg[1] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[1]),
        .Q(LED[1]),
        .R(1'b0));
  FDRE \LED_reg[2] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[2]),
        .Q(LED[2]),
        .R(1'b0));
  FDRE \LED_reg[3] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[3]),
        .Q(LED[3]),
        .R(1'b0));
  FDRE \LED_reg[4] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[4]),
        .Q(LED[4]),
        .R(1'b0));
  FDRE \LED_reg[5] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[5]),
        .Q(LED[5]),
        .R(1'b0));
  FDRE \LED_reg[6] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[6]),
        .Q(LED[6]),
        .R(1'b0));
  FDRE \LED_reg[7] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[7]),
        .Q(LED[7]),
        .R(1'b0));
  FDRE \LED_reg[8] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[8]),
        .Q(LED[8]),
        .R(1'b0));
  FDRE \LED_reg[9] 
       (.C(CLK100MHZ),
        .CE(1'b1),
        .D(BINAR_reg[9]),
        .Q(LED[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
