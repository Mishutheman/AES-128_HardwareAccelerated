-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Nov 27 14:46:50 2024
-- Host        : DESKTOP-R2G1951 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Mihai Man/Desktop/Faculta/AN III/Sem
--               I/SSC/PROIECT/AES_Encrypted_HoneyPot/AES_Encrypted_HoneyPot.gen/sources_1/bd/design_test_1/ip/design_test_1_D_latch_0_0/design_test_1_D_latch_0_0_sim_netlist.vhdl}
-- Design      : design_test_1_D_latch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_test_1_D_latch_0_0_D_latch is
  port (
    output_val : out STD_LOGIC_VECTOR ( 31 downto 0 );
    input_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_test_1_D_latch_0_0_D_latch : entity is "D_latch";
end design_test_1_D_latch_0_0_D_latch;

architecture STRUCTURE of design_test_1_D_latch_0_0_D_latch is
begin
\output_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(0),
      Q => output_val(0),
      R => '0'
    );
\output_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(10),
      Q => output_val(10),
      R => '0'
    );
\output_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(11),
      Q => output_val(11),
      R => '0'
    );
\output_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(12),
      Q => output_val(12),
      R => '0'
    );
\output_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(13),
      Q => output_val(13),
      R => '0'
    );
\output_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(14),
      Q => output_val(14),
      R => '0'
    );
\output_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(15),
      Q => output_val(15),
      R => '0'
    );
\output_val_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(16),
      Q => output_val(16),
      R => '0'
    );
\output_val_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(17),
      Q => output_val(17),
      R => '0'
    );
\output_val_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(18),
      Q => output_val(18),
      R => '0'
    );
\output_val_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(19),
      Q => output_val(19),
      R => '0'
    );
\output_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(1),
      Q => output_val(1),
      R => '0'
    );
\output_val_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(20),
      Q => output_val(20),
      R => '0'
    );
\output_val_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(21),
      Q => output_val(21),
      R => '0'
    );
\output_val_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(22),
      Q => output_val(22),
      R => '0'
    );
\output_val_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(23),
      Q => output_val(23),
      R => '0'
    );
\output_val_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(24),
      Q => output_val(24),
      R => '0'
    );
\output_val_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(25),
      Q => output_val(25),
      R => '0'
    );
\output_val_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(26),
      Q => output_val(26),
      R => '0'
    );
\output_val_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(27),
      Q => output_val(27),
      R => '0'
    );
\output_val_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(28),
      Q => output_val(28),
      R => '0'
    );
\output_val_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(29),
      Q => output_val(29),
      R => '0'
    );
\output_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(2),
      Q => output_val(2),
      R => '0'
    );
\output_val_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(30),
      Q => output_val(30),
      R => '0'
    );
\output_val_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(31),
      Q => output_val(31),
      R => '0'
    );
\output_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(3),
      Q => output_val(3),
      R => '0'
    );
\output_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(4),
      Q => output_val(4),
      R => '0'
    );
\output_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(5),
      Q => output_val(5),
      R => '0'
    );
\output_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(6),
      Q => output_val(6),
      R => '0'
    );
\output_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(7),
      Q => output_val(7),
      R => '0'
    );
\output_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(8),
      Q => output_val(8),
      R => '0'
    );
\output_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => input_val(9),
      Q => output_val(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_test_1_D_latch_0_0 is
  port (
    clk : in STD_LOGIC;
    input_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    output_val : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_test_1_D_latch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_test_1_D_latch_0_0 : entity is "design_test_1_D_latch_0_0,D_latch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_test_1_D_latch_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_test_1_D_latch_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_test_1_D_latch_0_0 : entity is "D_latch,Vivado 2024.1";
end design_test_1_D_latch_0_0;

architecture STRUCTURE of design_test_1_D_latch_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_test_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_test_1_D_latch_0_0_D_latch
     port map (
      clk => clk,
      input_val(31 downto 0) => input_val(31 downto 0),
      output_val(31 downto 0) => output_val(31 downto 0)
    );
end STRUCTURE;
