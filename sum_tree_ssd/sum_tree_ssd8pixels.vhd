library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree_ssd8pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(127 DOWNTO 0);
       q : OUT std_logic_vector(18 DOWNTO 0));
end sum_tree_ssd8pixels;

architecture arch of sum_tree_ssd8pixels is
signal reg1, reg2, reg3, reg4 : std_logic_vector(16 downto 0);
signal reg5, reg6 : std_logic_vector(17 downto 0);
signal reg7 : std_logic_vector(18 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = '1')THEN
           q <= (others => '0');
           reg1 <= (others => '0');
           reg2 <= (others => '0');
           reg3 <= (others => '0');
           reg4 <= (others => '0');
           reg5 <= (others => '0');
           reg6 <= (others => '0');
           reg7 <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= ('0'&d(31 downto 16)) + ('0'&d(15 downto 0));
            reg2 <= ('0'&d(63 downto 48)) + ('0'&d(47 downto 32));
            reg3 <= ('0'&d(95 downto 80)) + ('0'&d(79 downto 64));
            reg4 <= ('0'&d(127 downto 112)) + ('0'&d(111 downto 96));
            reg5 <= ('0'&reg1) + ('0'&reg2);
            reg6 <= ('0'&reg3) + ('0'&reg4);
            reg7 <= reg7 + ('0'&reg5) + ('0'&reg6);
        END IF;
          q <= reg7;
	END PROCESS;
END arch;