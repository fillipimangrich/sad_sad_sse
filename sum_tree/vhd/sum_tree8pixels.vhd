library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree8pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(63 DOWNTO 0);
       q : OUT std_logic_vector(10 DOWNTO 0));
end sum_tree8pixels;

architecture arch of sum_tree8pixels is
signal reg1, reg2, reg3, reg4 : std_logic_vector(8 downto 0);
signal reg5, reg6 : std_logic_vector(9 downto 0);
signal reg7 : std_logic_vector(10 downto 0);
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
            reg1 <= ('0'&d(15 downto 8)) + ('0'&d(7 downto 0));
            reg2 <= ('0'&d(31 downto 24)) + ('0'&d(23 downto 16));
            reg3 <= ('0'&d(47 downto 40)) + ('0'&d(39 downto 32));
            reg4 <= ('0'&d(63 downto 56)) + ('0'&d(55 downto 48));
            reg5 <= ('0'&reg1) + ('0'&reg2);
            reg6 <= ('0'&reg3) + ('0'&reg4);
            reg7 <= reg7 + ('0'&reg5) + ('0'&reg6);
        END IF;
          q <= reg7;
	END PROCESS;
END arch;