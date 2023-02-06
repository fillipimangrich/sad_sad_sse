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
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8 : std_logic_vector(17 downto 0);
signal reg9, reg10, reg11, reg12 : std_logic_vector(18 downto 0);
signal reg13, reg14 : std_logic_vector(19 downto 0);
signal reg15, reg16 : std_logic_vector(20 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = 1)THEN
           q <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= '0'&d(15 downto 8) + '0'&d(7 downto 0);
            reg2 <= '0'&d(47 downto 40) + '0'&d(39 downto 32);
            reg3 <= '0'&d(79 downto 72) + '0'&d(71 downto 64);
            reg4 <= '0'&d(111 downto 104) + '0'&d(103 downto 96);
            reg5 <= '0'&d(143 downto 136) + '0'&d(135 downto 128);
            reg6 <= '0'&d(175 downto 168) + '0'&d(167 downto 160);
            reg7 <= '0'&d(207 downto 200) + '0'&d(199 downto 192);
            reg8 <= '0'&d(239 downto 232) + '0'&d(231 downto 224);
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