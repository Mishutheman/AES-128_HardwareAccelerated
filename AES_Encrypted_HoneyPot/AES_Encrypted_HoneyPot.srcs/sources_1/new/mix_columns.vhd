
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mix_columns is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end mix_columns;

architecture Behavioral of mix_columns is
component lin_transf is
    Port ( A_in : in STD_LOGIC_VECTOR (31 downto 0);
           B_out : out STD_LOGIC_VECTOR (31 downto 0));
end component;

begin

-- nu o sa mearga cum trebuie daca nu rezolv cu lin_transf

transf_liniara0:lin_transf port map(input(31 downto 0),output(31 downto 0));
transf_liniara1:lin_transf port map(input(63 downto 32),output(63 downto 32));
transf_liniara2:lin_transf port map(input(95 downto 64),output(95 downto 64));
transf_liniara3:lin_transf port map(input(127 downto 96),output(127 downto 96));

end Behavioral;
