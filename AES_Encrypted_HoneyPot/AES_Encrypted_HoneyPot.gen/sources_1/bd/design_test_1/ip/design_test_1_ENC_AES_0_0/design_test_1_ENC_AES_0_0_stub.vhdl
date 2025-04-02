-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Dec 17 16:57:19 2024
-- Host        : DESKTOP-R2G1951 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/innfe/Proiect_SSC/AES_Encrypted_HoneyPot/AES_Encrypted_HoneyPot.gen/sources_1/bd/design_test_1/ip/design_test_1_ENC_AES_0_0/design_test_1_ENC_AES_0_0_stub.vhdl
-- Design      : design_test_1_ENC_AES_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_test_1_ENC_AES_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    start : in STD_LOGIC;
    plaintext : in STD_LOGIC_VECTOR ( 127 downto 0 );
    cypher_key : in STD_LOGIC_VECTOR ( 127 downto 0 );
    cyphertext : out STD_LOGIC_VECTOR ( 127 downto 0 );
    done : out STD_LOGIC
  );

end design_test_1_ENC_AES_0_0;

architecture stub of design_test_1_ENC_AES_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,start,plaintext[127:0],cypher_key[127:0],cyphertext[127:0],done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ENC_AES,Vivado 2024.1";
begin
end;
