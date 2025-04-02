// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Dec 17 16:57:19 2024
// Host        : DESKTOP-R2G1951 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/innfe/Proiect_SSC/AES_Encrypted_HoneyPot/AES_Encrypted_HoneyPot.gen/sources_1/bd/design_test_1/ip/design_test_1_ENC_AES_0_0/design_test_1_ENC_AES_0_0_stub.v
// Design      : design_test_1_ENC_AES_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ENC_AES,Vivado 2024.1" *)
module design_test_1_ENC_AES_0_0(clk, rst, start, plaintext, cypher_key, cyphertext, 
  done)
/* synthesis syn_black_box black_box_pad_pin="rst,start,plaintext[127:0],cypher_key[127:0],cyphertext[127:0],done" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input start;
  input [127:0]plaintext;
  input [127:0]cypher_key;
  output [127:0]cyphertext;
  output done;
endmodule
