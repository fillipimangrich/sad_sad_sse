library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree4pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(63 DOWNTO 0);
       q : OUT std_logic_vector(17 DOWNTO 0));
end sum_tree4pixels;

architecture arch of sum_tree4pixels is
signal reg1, reg2 : std_logic_vector(16 downto 0);
signal reg3 : std_logic_vector(17 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = '1')THEN
           q <= (others => '0');
           reg1 <= (others => '0');
           reg2 <= (others => '0');
           reg3 <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= ('0'&d(31 downto 16)) + ('0'&d(15 downto 0));
            reg2 <= ('0'&d(63 downto 48)) + ('0'&d(47 downto 32));
            reg3 <= reg3 + ('0'&reg1) + ('0'&reg2);
        END IF;
          q <= reg3;
	END PROCESS;
END arch;