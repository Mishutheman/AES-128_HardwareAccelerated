

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end reg;

architecture Behavioral of reg is

begin

process(clk)
begin
    if clk'event and clk='1' then
        output<=input;
    end if;
end process;

end Behavioral;
