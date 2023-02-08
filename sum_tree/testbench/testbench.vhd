library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity testbench is
end testbench;

architecture tb of testbench is
    signal clk, enb, rst : STD_LOGIC;
    signal d : std_logic_vector(31 DOWNTO 0);
    signal q : std_logic_vector(9 DOWNTO 0);
    
begin
    UUT : entity work.sad port map (clk => clk, enb => enb, rst => rst, d => d, q => q);

    tb1 : process
        constant period: time := 20 ns;
        begin
            clk <= '0';
            enb <= '0';
            rst <= '1';
            d <= (others => '0');
            wait for period;
            assert (q = "0000000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000000000000000000000100000001";
            wait for period;
            assert (q = "0000000000")  -- expected output
            -- error will be reported if sum or carry is not 0
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= (others => '0');
            wait for period;
            assert (q = "0000000000")  -- expected output
            -- error will be reported if sum or carry is not 0
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= (others => '0');
            wait for period;
            assert (q = "0000000010")  -- expected output
            -- error will be reported if sum or carry is not 0
            report "test failed for input combination " severity error;

            -- Fail test
            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= (others => '0');
            wait for period;
            assert (q = "0000000000")  -- expected output
            -- error will be reported if sum or carry is not 0
            report "test failed for input combination " severity error;


            wait; -- indefinitely suspend process
        end process;
end tb;