
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ENC_AES is
  Port ( 
    clk : in std_logic;
    rst: in std_logic;
    start: in std_logic;
    plaintext: in STD_LOGIC_VECTOR (127 downto 0);
    cypher_key: in STD_LOGIC_VECTOR (127 downto 0);
    cyphertext: out STD_LOGIC_VECTOR (127 downto 0);
    done: out std_logic
  );
end ENC_AES;

architecture Behavioral of ENC_AES is
component main is
    Port ( clk : in std_logic;
           reset: in std_logic;
           input : in STD_LOGIC_VECTOR (127 downto 0);
           key : in STD_LOGIC_VECTOR (127 downto 0);
           output : out STD_LOGIC_VECTOR (127 downto 0);
           done: out std_logic);
end component;

type enc_states is (idle, working, stop);
signal state: enc_states:=idle;
signal done_enc, reset_anc: std_logic;
signal input, key, result: std_logic_vector (127 downto 0);

begin


encryption_AES: main 
                    port map (
                                clk,
                                reset_anc,
                                input,
                                key,
                                result,
                                done_enc
                            );


process(clk,rst, done_enc)
begin

if rst='1' then
    state<=idle;
    cyphertext<=(others=>'0');
end if;

if rising_edge(clk) then
    case state is
        when idle => if start='1' then 
                        state<=working;
                     else 
                        input<=plaintext;
                        key<=cypher_key;
                        reset_anc<='0';
                     end if;
        when working => if done_enc='1' then
                            done<='1';
                            cyphertext<=result;
                            state<=stop;
                        else
                            reset_anc<='1';
                            state<=working;
                        end if;
        when stop => 
                done<='0';
                state<=idle;
    end case;
end if;
end process;

end Behavioral;


