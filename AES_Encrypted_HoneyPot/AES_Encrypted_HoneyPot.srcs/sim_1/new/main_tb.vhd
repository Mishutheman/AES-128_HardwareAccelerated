library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_tb is
    -- Testbench has no ports
end main_tb;

architecture Behavioral of main_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component main
        Port (
            clk     : in std_logic;
            reset   : in std_logic;
            input   : in STD_LOGIC_VECTOR (127 downto 0);
            key     : in STD_LOGIC_VECTOR (127 downto 0);
            output  : out STD_LOGIC_VECTOR (127 downto 0);
            done    : out std_logic
        );
    end component;
-- Input signals
	signal clk : std_logic := '0';
	signal rst : std_logic := '0';
	signal plaintext : std_logic_vector(127 downto 0);
	signal key : std_logic_vector(127 downto 0);	
	
	-- Output signals
	signal done : std_logic;
	signal ciphertext : std_logic_vector(127 downto 0);	
	
	-- Clock period definition
	constant clk_period : time := 10 ns;
	
begin
	enc_inst : main
		port map(
			clk        => clk,
			reset      => rst,
			input      => plaintext,
			key        => key,
			output     => ciphertext,
			done       => done
		);	
	-- clock process definitions
	clk_process : process is
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process clk_process;
	
	-- Simulation process
	sim_proc : process is
	begin
	
		-- Initialize Inputs
		plaintext <= x"00112233445566778899aabbccddeeff";
		key <= x"0f1571c947d9e8590cb7add6af7f6798";
		rst <= '0';
		-- Hold reset state for one cycle		
		wait for clk_period * 1;
		rst <= '1';
		wait until done = '1';
		wait for clk_period/2;

		-- Initialize Inputs	
		rst <= '1';
		-- Hold reset state for one cycle		
		wait for clk_period/2;
		plaintext <= x"00000000000000000000000000000000";
		key <= x"00000000000000000000000000000000";
		rst <= '0';
		-- Hold reset state for one cycle		
		wait for clk_period * 1;
		rst <= '1';
		wait until done = '1';
		wait for clk_period/2;		
		if (ciphertext = x"2e2b34ca59fa4c883b2c8aefd44be966") then
			report "---------- Passed ----------";
		else
			report "---------- Failed ----------";
		end if;
		report "---------- Output must be: -------";
		report "2e2b34ca59fa4c883b2c8aefd44be966";
		--------------------------------------------
		
			
		plaintext <= x"2a179373117e3de9969f402ee2bec16b";
		key <= x"3c4fcf098815f7aba6d2ae2816157e2b";
		rst <= '0';
		-- Hold reset state for one cycle		
		wait for clk_period * 1;
		rst <= '1';
		wait until done = '1';
		wait for clk_period/2;			
		if (ciphertext = x"97ef6624f3ca9ea860367a0db47bd73a") then
			report "---------- Passed ----------";
		else
			report "---------- Failed ----------";
		end if;
		report "---------- Output must be: -------";
		report "97ef6624f3ca9ea860367a0db47bd73a";
		wait;
	end process sim_proc;
end Behavioral;
