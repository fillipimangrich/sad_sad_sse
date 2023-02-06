library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sum_tree is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(127 DOWNTO 0);
       q : OUT std_logic_vector(15 DOWNTO 0));
end sum_tree;

architecture arch of sum_tree is
signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8 : std_logic_vector(9 downto 0);
signal reg9, reg10, reg11, reg12 : std_logic_vector(10 downto 0);
signal reg13, reg14 : std_logic_vector(11 downto 0);
signal reg15 : std_logic_vector(12 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = 1)THEN
           q <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= '0'&d(15 downto 8) + '0'&d(7 downto 0);
            reg2 <= '0'&d(31 downto 24) + '0'&d(23 downto 16);
            reg3 <= '0'&d(47 downto 40) + '0'&d(39 downto 32);
            reg4 <= '0'&d(63 downto 56) + '0'&d(55 downto 48);
            reg5 <= '0'&d(79 downto 72) + '0'&d(71 downto 64);
            reg6 <= '0'&d(95 downto 88) + '0'&d(87 downto 80);
            reg7 <= '0'&d(111 downto 104) + '0'&d(103 downto 96);
            reg8 <= '0'&d(127 downto 120) + '0'&d(119 downto 112);
            reg9 <= reg1 + reg2;
            reg10 <= reg3 + reg4;
            reg11 <= reg5 + reg6;
            reg12 <= reg7 + reg8;
            reg13 <= reg9 + reg10;
            reg14 <= reg11 + reg12;
            reg15 <= reg15 + reg13 + reg14;
        END IF;
	END PROCESS;
q <= reg15;
END arch;