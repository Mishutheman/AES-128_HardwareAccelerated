library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity generate_round_keys is
  Port (
        clk : in std_logic;
		reset : in std_logic;
        cypher_key : in std_logic_vector(127 downto 0);
        round_const: in std_logic_vector(7 downto 0);
        round_key: out std_logic_vector(127 downto 0) 
  );
end generate_round_keys;

architecture Behavioral of generate_round_keys is

component reg is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component key_schedule_func is
Port (  input_key : in std_logic_vector(127 downto 0);
		round_const : in std_logic_vector(7 downto 0);
		next_key : out std_logic_vector(127 downto 0)		
	);
end component;

signal reg_in, reg_out, key_feedback : std_logic_vector(127 downto 0);
begin

reg_in<=cypher_key when reset='0' else key_feedback;
rgs_comp: reg port map(clk, reg_in, reg_out);

--componenta de key schedule function
keySched_func: key_schedule_func port map(reg_out, round_const, key_feedback);

round_key<=reg_out;

end Behavioral;