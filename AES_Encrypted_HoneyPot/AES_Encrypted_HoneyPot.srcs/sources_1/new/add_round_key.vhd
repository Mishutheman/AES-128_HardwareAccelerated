
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add_round_key is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           round_key : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end add_round_key;

architecture Behavioral of add_round_key is

begin

output<=input xor round_key;

end Behavioral;
