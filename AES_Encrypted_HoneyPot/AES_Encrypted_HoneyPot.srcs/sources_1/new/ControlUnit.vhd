
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
    Port ( clk : in STD_LOGIC;
           reset: in std_logic;
           final_round : out STD_LOGIC;
           round_constant : out STD_LOGIC_VECTOR (7 downto 0);
           done : out STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is

component reg_8 is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;

--type rc_array is array (0 to 9) of std_logic_vector(7 downto 0);
signal reg_in, reg_out:std_logic_vector(7 downto 0);
signal round_done : std_logic := '0';
signal tempx2: std_logic_vector(7 downto 0);
signal feedback : std_logic_vector(7 downto 0);

begin

reg_in<=x"01" when reset='0' else feedback;

rgs_comp: reg_8 port map(clk, reg_in, reg_out);

tempx2<=reg_out(6 downto 0) & '0';
feedback<= tempx2 xor x"1b" when reg_out(7)='1' else tempx2;


round_constant <= reg_out;
final_round <= '1' when reg_out = x"36" else '0';
done <= '1' when reg_out = x"6c" else '0';
end Behavioral;
