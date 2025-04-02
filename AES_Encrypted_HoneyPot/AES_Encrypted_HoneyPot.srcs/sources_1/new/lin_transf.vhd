

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lin_transf is
    Port ( A_in : in STD_LOGIC_VECTOR (31 downto 0);
           B_out : out STD_LOGIC_VECTOR (31 downto 0));
end lin_transf;

architecture Behavioral of lin_transf is


signal b0, b1, b2, b3, a0, a1, a2, a3: std_logic_vector(7 downto 0);
signal temp0x2, temp1x2, temp2x2, temp3x2: std_logic_vector(7 downto 0);
signal temp0, temp1, temp2, temp3: std_logic_vector(7 downto 0);

begin

a0<= A_in(7 downto 0);
a1<= A_in(15 downto 8);
a2<=A_in(23 downto 16);
a3<=A_in(31 downto 24);


--probleme rezolvate la partea asta, merge cum trebuie

temp0x2<=a0(6 downto 0) & '0';
temp1x2<=a1(6 downto 0) & '0';
temp2x2<=a2(6 downto 0) & '0';
temp3x2<=a3(6 downto 0) & '0';

temp0<=temp0x2 xor x"1b" when a0(7)='1' else temp0x2;
temp1<=temp1x2 xor x"1b" when a1(7)='1' else temp1x2;
temp2<=temp2x2 xor x"1b" when a2(7)='1' else temp2x2;
temp3<=temp3x2 xor x"1b" when a3(7)='1' else temp3x2;


b0 <= temp0 xor a3 xor a2 xor temp1 xor a1;
b1 <= temp1 xor a0 xor a3 xor temp2 xor a2;
b2 <= temp2 xor a1 xor a0 xor temp3 xor a3;
b3 <= temp3 xor a2 xor a1 xor temp0 xor a0;

B_out <= std_logic_vector(b3 & b2 & b1 & b0);

end Behavioral;
