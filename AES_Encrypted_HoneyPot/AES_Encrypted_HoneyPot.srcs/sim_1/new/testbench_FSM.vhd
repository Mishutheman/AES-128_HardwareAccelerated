library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity testbench_FSM is
end testbench_FSM;

architecture sim of testbench_FSM is
  -- Component Declaration for the Unit Under Test (UUT)
  component ENC_AES
    Port(
      clk : in std_logic;
      rst: in std_logic;
      start: in std_logic;
      plaintext: in STD_LOGIC_VECTOR(127 downto 0);
      cypher_key: in STD_LOGIC_VECTOR(127 downto 0);
      cyphertext: out STD_LOGIC_VECTOR(127 downto 0);
      done: out std_logic
    );
  end component;

  -- Testbench Signals
  signal clk_T: std_logic := '0';
  signal reset: std_logic := '1';
  signal start: std_logic := '0';
  signal done_enc: std_logic;
  signal plaintext: STD_LOGIC_VECTOR(127 downto 0) := (others => '0');
  signal cypher_key: STD_LOGIC_VECTOR(127 downto 0) := (others => '0');
  signal cyphertext: STD_LOGIC_VECTOR(127 downto 0);

  -- Clock period definition
  constant clk_period : time := 10 ns;

begin
--   Instantiate the Unit Under Test (UUT)
  uut: ENC_AES
    Port map (
      clk => clk_T,
      rst => reset,
      start => start,
      plaintext => plaintext,
      cypher_key => cypher_key,
      cyphertext => cyphertext,
      done => done_enc
    );

  -- Clock process definitions
  clk_process: process
  begin
    clk_T <= '0';
    wait for clk_period / 2;
    clk_T <= '1';
    wait for clk_period / 2;
  end process;

  -- Stimulus process
  stim_proc: process
  begin
    -- Initialize Inputs
    plaintext <= x"340737e0a29831318d305a88a8f64332";
    cypher_key <= x"3c4fcf098815f7aba6d2ae2816157e2b";
    -- out: 320b6a19978511dcfb09dc021d842539
    wait for 20 ns;
    reset <= '0';
    wait for 20 ns;
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    
    wait for clk_period;
    start <= '1';

    wait for clk_period;
    start <= '0';

    wait until done_enc='1';
    wait for clk_period*2;
    
----
--------
----

    plaintext <= x"00000000000000000000000000000000";
	cypher_key <= x"00000000000000000000000000000000";
	--out: 2e2b34ca59fa4c883b2c8aefd44be966
	wait for 20 ns;
    reset <= '0';
    wait for 20 ns;
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    
    wait for clk_period;
    start <= '1';

    wait for clk_period;
    start <= '0';

    wait until done_enc='1';
    wait for clk_period*2;

--    plaintext <= x"0000cccc000000000000000000000000";
--	cypher_key <= x"00000000000000000000000000000000";
--	--out: unknown
--	wait for 20 ns;
--    reset <= '0';
--    wait for 20 ns;
--    reset <= '1';
--    wait for 20 ns;
--    reset <= '0';
    
--    wait for clk_period;
--    start <= '1';

--    wait for clk_period;
--    start <= '0';

--    wait until done_enc='1';
--    wait for clk_period*2;


  end process;
end sim;
