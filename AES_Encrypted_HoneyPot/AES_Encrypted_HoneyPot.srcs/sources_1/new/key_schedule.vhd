

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity key_schedule_func is
Port (  input_key : in std_logic_vector(127 downto 0);
		round_const : in std_logic_vector(7 downto 0);
		next_key : out std_logic_vector(127 downto 0)		
	);
end key_schedule_func;

architecture Behavioral of key_schedule_func is

component Rijndael_s_box is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;

	signal substitued_sk : std_logic_vector(31 downto 0);
	signal shifted_sk : std_logic_vector(31 downto 0);
	signal w3, w2, w1, w0 : std_logic_vector(31 downto 0);
begin
	
    gen_sboxes : for i in 12 to 15 generate
		sbox_inst : Rijndael_s_box 
		      port map( 
                  input_key((i + 1)*8 - 1 downto i*8), 
                  substitued_sk((i + 1 - 12)*8 - 1 downto (i - 12)*8)
              );			
	end generate gen_sboxes;
	
	shifted_sk <= substitued_sk(7 downto 0) & substitued_sk(31 downto 8);
	w0(31 downto 8) <= input_key(31 downto 8) xor shifted_sk(31 downto 8);
    w0(7 downto 0) <= input_key(7 downto 0) xor round_const xor shifted_sk(7 downto 0);
    w1 <= input_key(63 downto 32) xor w0;
    w2 <= input_key(95 downto 64) xor w1;
    w3 <= input_key(127 downto 96) xor w2;
	next_key <= w3 & w2 & w1 & w0;

end Behavioral;
