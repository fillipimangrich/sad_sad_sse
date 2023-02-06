library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sum_tree is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(31 DOWNTO 0);
       q : OUT std_logic_vector(11 DOWNTO 0));
end sum_tree;

architecture arch of sum_tree is
signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');
signal reg1, reg2 : std_logic_vector(5 downto 0);
signal reg3 : std_logic_vector(6 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = 1)THEN
           q <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= '0'&d(15 downto 8) + '0'&d(7 downto 0);
            reg2 <= '0'&d(23 downto 16) + '0'&d(15 downto 8);
            reg3 <= reg3 + reg1 + reg2;
        END IF;
	END PROCESS;
q <= reg3;
END arch;