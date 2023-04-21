library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sad is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(31 DOWNTO 0);
       q : OUT std_logic_vector(9 DOWNTO 0));
end sad;

architecture arch of sad is
signal reg1, reg2 : std_logic_vector(8 downto 0);
signal reg3 : std_logic_vector(9 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = '1')THEN
           q <= (others => '0');
           reg1 <= (others => '0');
           reg2 <= (others => '0');
           reg3 <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= ('0'&d(15 downto 8)) + ('0'&d(7 downto 0));
            reg2 <= ('0'&d(31 downto 24)) + ('0'&d(23 downto 16));
            reg3 <= reg3 + ('0'&reg1) + ('0'&reg2);
        END IF;
        q <= reg3;
	END PROCESS;
END arch;