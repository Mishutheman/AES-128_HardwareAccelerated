// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 27 14:46:50 2024
// Host        : DESKTOP-R2G1951 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Mihai Man/Desktop/Faculta/AN III/Sem
//               I/SSC/PROIECT/AES_Encrypted_HoneyPot/AES_Encrypted_HoneyPot.gen/sources_1/bd/design_test_1/ip/design_test_1_D_latch_0_0/design_test_1_D_latch_0_0_sim_netlist.v}
// Design      : design_test_1_D_latch_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_test_1_D_latch_0_0,D_latch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "D_latch,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_test_1_D_latch_0_0
   (clk,
    input_val,
    output_val);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_test_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [31:0]input_val;
  output [31:0]output_val;

  wire clk;
  wire [31:0]input_val;
  wire [31:0]output_val;

  design_test_1_D_latch_0_0_D_latch inst
       (.clk(clk),
        .input_val(input_val),
        .output_val(output_val));
endmodule

(* ORIG_REF_NAME = "D_latch" *) 
module design_test_1_D_latch_0_0_D_latch
   (output_val,
    input_val,
    clk);
  output [31:0]output_val;
  input [31:0]input_val;
  input clk;

  wire clk;
  wire [31:0]input_val;
  wire [31:0]output_val;

  FDRE \output_val_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[0]),
        .Q(output_val[0]),
        .R(1'b0));
  FDRE \output_val_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[10]),
        .Q(output_val[10]),
        .R(1'b0));
  FDRE \output_val_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[11]),
        .Q(output_val[11]),
        .R(1'b0));
  FDRE \output_val_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[12]),
        .Q(output_val[12]),
        .R(1'b0));
  FDRE \output_val_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[13]),
        .Q(output_val[13]),
        .R(1'b0));
  FDRE \output_val_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[14]),
        .Q(output_val[14]),
        .R(1'b0));
  FDRE \output_val_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[15]),
        .Q(output_val[15]),
        .R(1'b0));
  FDRE \output_val_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[16]),
        .Q(output_val[16]),
        .R(1'b0));
  FDRE \output_val_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[17]),
        .Q(output_val[17]),
        .R(1'b0));
  FDRE \output_val_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[18]),
        .Q(output_val[18]),
        .R(1'b0));
  FDRE \output_val_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[19]),
        .Q(output_val[19]),
        .R(1'b0));
  FDRE \output_val_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[1]),
        .Q(output_val[1]),
        .R(1'b0));
  FDRE \output_val_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[20]),
        .Q(output_val[20]),
        .R(1'b0));
  FDRE \output_val_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[21]),
        .Q(output_val[21]),
        .R(1'b0));
  FDRE \output_val_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[22]),
        .Q(output_val[22]),
        .R(1'b0));
  FDRE \output_val_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[23]),
        .Q(output_val[23]),
        .R(1'b0));
  FDRE \output_val_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[24]),
        .Q(output_val[24]),
        .R(1'b0));
  FDRE \output_val_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[25]),
        .Q(output_val[25]),
        .R(1'b0));
  FDRE \output_val_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[26]),
        .Q(output_val[26]),
        .R(1'b0));
  FDRE \output_val_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[27]),
        .Q(output_val[27]),
        .R(1'b0));
  FDRE \output_val_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[28]),
        .Q(output_val[28]),
        .R(1'b0));
  FDRE \output_val_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[29]),
        .Q(output_val[29]),
        .R(1'b0));
  FDRE \output_val_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[2]),
        .Q(output_val[2]),
        .R(1'b0));
  FDRE \output_val_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[30]),
        .Q(output_val[30]),
        .R(1'b0));
  FDRE \output_val_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[31]),
        .Q(output_val[31]),
        .R(1'b0));
  FDRE \output_val_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[3]),
        .Q(output_val[3]),
        .R(1'b0));
  FDRE \output_val_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[4]),
        .Q(output_val[4]),
        .R(1'b0));
  FDRE \output_val_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[5]),
        .Q(output_val[5]),
        .R(1'b0));
  FDRE \output_val_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[6]),
        .Q(output_val[6]),
        .R(1'b0));
  FDRE \output_val_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[7]),
        .Q(output_val[7]),
        .R(1'b0));
  FDRE \output_val_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[8]),
        .Q(output_val[8]),
        .R(1'b0));
  FDRE \output_val_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(input_val[9]),
        .Q(output_val[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
