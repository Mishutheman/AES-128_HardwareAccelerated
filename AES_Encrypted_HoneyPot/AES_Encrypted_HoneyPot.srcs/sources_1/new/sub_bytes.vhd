

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sub_bytes is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end sub_bytes;

architecture Behavioral of sub_bytes is

component Rijndael_s_box is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;

begin

--generate_sub_bytes: for i in 0 to 15 generate 
--    R_sbox: Rijndael_s_box port map(input())
    R_sbox0: Rijndael_s_box port map(input(7 downto 0), output(7 downto 0));
    R_sbox1: Rijndael_s_box port map(input(15 downto 8), output(15 downto 8));
    R_sbox2: Rijndael_s_box port map(input(23 downto 16), output(23 downto 16));
    R_sbox3: Rijndael_s_box port map(input(31 downto 24), output(31 downto 24));
    R_sbox4: Rijndael_s_box port map(input(39 downto 32), output(39 downto 32));
    R_sbox5: Rijndael_s_box port map(input(47 downto 40), output(47 downto 40));
    R_sbox6: Rijndael_s_box port map(input(55 downto 48), output(55 downto 48));
    R_sbox7: Rijndael_s_box port map(input(63 downto 56), output(63 downto 56));
    R_sbox8: Rijndael_s_box port map(input(71 downto 64), output(71 downto 64));
    R_sbox9: Rijndael_s_box port map(input(79 downto 72), output(79 downto 72));
    R_sbox10: Rijndael_s_box port map(input(87 downto 80), output(87 downto 80));
    R_sbox11: Rijndael_s_box port map(input(95 downto 88), output(95 downto 88));
    R_sbox12: Rijndael_s_box port map(input(103 downto 96), output(103 downto 96));
    R_sbox13: Rijndael_s_box port map(input(111 downto 104), output(111 downto 104));
    R_sbox14: Rijndael_s_box port map(input(119 downto 112), output(119 downto 112));
    R_sbox15: Rijndael_s_box port map(input(127 downto 120), output(127 downto 120));
    
end Behavioral;
