
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( clk : in std_logic;
           reset: in std_logic;
--           start: in std_logic;
           input : in STD_LOGIC_VECTOR (127 downto 0);
           key : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0);
           done: out std_logic);
end main;

architecture Behavioral of main is

component add_round_key is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           round_key : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component sub_bytes is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component shift_rows is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component mix_columns is
    Port ( input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component generate_round_keys is
  Port (
        clk : in std_logic;
		reset : in std_logic;
        cypher_key : in std_logic_vector(127 downto 0);
        round_const: in std_logic_vector(7 downto 0);
        round_key: out std_logic_vector(127 downto 0) 
  );
end component;

component reg is
    Port ( clk : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0));
end component;

component ControlUnit is
    Port ( clk : in STD_LOGIC;
           reset: in std_logic;
           final_round : out STD_LOGIC;
           round_constant : out STD_LOGIC_VECTOR (7 downto 0);
           done : out STD_LOGIC);
end component;

signal sub_bytes_out, sft_rows_out, mix_cols_out, add_rd_key_out, reg_in, reg_out, feedback, round_key : std_logic_vector(127 downto 0);
signal fin_round : std_logic;
signal round_const : std_logic_vector(7 downto 0);
signal done_cyphertext: std_logic;
begin

-- trb sa tin cont de faptul ca textul pe care il primesc ii inversat deci orice operatie trebuie sa tina cont de asta

reg_in<=input when reset='0' else feedback;

rgs_comp: reg port map(clk, reg_in, reg_out);
roundkey: add_round_key port map (reg_out,round_key, add_rd_key_out);
substitute_bytes: sub_bytes port map (add_rd_key_out, sub_bytes_out);
shift_rows_step: shift_rows port map (sub_bytes_out, sft_rows_out);
mixing_columns: mix_columns port map (sft_rows_out, mix_cols_out);


feedback<=mix_cols_out when fin_round='0' else sft_rows_out;

output<=add_rd_key_out;

generate_rk: generate_round_keys port map (clk, reset, key, round_const,round_key);
control_unit: ControlUnit port map(clk,reset, fin_round, round_const, done_cyphertext);

done<='1' when done_cyphertext='1' else '0';


end Behavioral;
