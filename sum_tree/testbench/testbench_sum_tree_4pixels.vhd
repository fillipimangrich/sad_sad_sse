library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity testbench is
end testbench;

architecture tb of testbench is
signal clk, enb, rst : IN STD_LOGIC;
signal d : std_logic_vector(31 DOWNTO 0);
signal q : std_logic_vector(9 DOWNTO 0));
begin
UUT : entity work.sum_tree_4pixels port map (clk => clk, enb => enb, rst => rst, d => d, q => q);
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
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "0000000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "0000000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "0000000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000001000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000010000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000011000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000100000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000101000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000110000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "000111000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001001000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001010000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001011000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001100000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001101000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001110000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "001111000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010001000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010010000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010011000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010100000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010101000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010110000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "010111000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "011000000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "011001000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '1';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "011010000")  -- expected output
            report "test failed for input combination " severity error;

            clk <= '0';
            enb <= '1';
            rst <= '0';
            d <= "00000010000000100000001000000010";
            wait for period;
            assert (q = "011011000")  -- expected output
            report "test failed for input combination " severity error;

            wait; -- indefinitely suspend process
        end process;
end tb;
