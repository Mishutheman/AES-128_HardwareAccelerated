library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Split_128_32 is
    Port ( input_bytes : in STD_LOGIC_VECTOR (127 downto 0);
           out0 : out STD_LOGIC_VECTOR (31 downto 0);
           out1 : out STD_LOGIC_VECTOR (31 downto 0);
           out2 : out STD_LOGIC_VECTOR (31 downto 0);
           out3 : out STD_LOGIC_VECTOR (31 downto 0));
end Split_128_32;

architecture Behavioral of Split_128_32 is

begin

out0<=input_bytes(31 downto 0);
out1<=input_bytes(63 downto 32);
out2<=input_bytes(95 downto 64);
out3<=input_bytes(127 downto 96);
end Behavioral;
