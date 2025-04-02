
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_rows is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end shift_rows;

architecture Behavioral of shift_rows is
begin


--pasul de shiftare de randuri, matrice column-major order (cica nu mi-s bine puse in ordine)

output(7 downto 0)<=input(7 downto 0); --0 - 0
output(15 downto 8)<=input(47 downto 40); --1 - 5
output(23 downto 16)<=input(87 downto 80); --2 - 10
output(31 downto 24)<=input(127 downto 120); --3 - 15
output(39 downto 32)<=input(39 downto 32); --4 - 4
output(47 downto 40)<=input(79 downto 72); --5 - 9
output(55 downto 48)<=input(119 downto 112); --6 - 14
output(63 downto 56)<=input(31 downto 24); --7 - 3
output(71 downto 64)<=input(71 downto 64); --8 - 8
output(79 downto 72)<=input(111 downto 104); --9 - 13
output(87 downto 80)<=input(23 downto 16); --10 - 2
output(95 downto 88)<=input(63 downto 56); --11 - 7
output(103 downto 96)<=input(103 downto 96); --12 - 12 
output(111 downto 104)<=input(15 downto 8); --13 - 1
output(119 downto 112)<=input(55 downto 48); --14 - 6
output(127 downto 120)<=input(95 downto 88); --15 - 11

end Behavioral;
