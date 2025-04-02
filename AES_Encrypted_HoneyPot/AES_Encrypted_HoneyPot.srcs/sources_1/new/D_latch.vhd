
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_latch is
    Port ( clk : in STD_LOGIC;
           input_val : in STD_LOGIC_VECTOR (31 downto 0);
           output_val : out STD_LOGIC_VECTOR (31 downto 0));
end D_latch;

architecture Behavioral of D_latch is

begin
process(clk)
begin
    
    if rising_edge(clk) then
        output_val<=input_val;
    end if;
    
end process;

end Behavioral;
