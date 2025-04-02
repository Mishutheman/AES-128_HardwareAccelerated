// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec 17 16:58:38 2024
// Host        : DESKTOP-R2G1951 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/innfe/Proiect_SSC/AES_Encrypted_HoneyPot/AES_Encrypted_HoneyPot.gen/sources_1/bd/design_test_1/ip/design_test_1_Split_128_32_0_0/design_test_1_Split_128_32_0_0_stub.v
// Design      : design_test_1_Split_128_32_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Split_128_32,Vivado 2024.1" *)
module design_test_1_Split_128_32_0_0(input_bytes, out0, out1, out2, out3)
/* synthesis syn_black_box black_box_pad_pin="input_bytes[127:0],out0[31:0],out1[31:0],out2[31:0],out3[31:0]" */;
  input [127:0]input_bytes;
  output [31:0]out0;
  output [31:0]out1;
  output [31:0]out2;
  output [31:0]out3;
endmodule
