library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sum_tree_ssd16pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(255 DOWNTO 0);
       q : OUT std_logic_vector(19 DOWNTO 0));
end sum_tree_ssd16pixels;

architecture arch of sum_tree_ssd16pixels is
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8 : std_logic_vector(16 downto 0);
signal reg9, reg10, reg11, reg12 : std_logic_vector(17 downto 0);
signal reg13, reg14 : std_logic_vector(18 downto 0);
signal reg15 : std_logic_vector(19 downto 0);
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
           reg8 <= (others => '0');
           reg9 <= (others => '0');
           reg10 <= (others => '0');
           reg11 <= (others => '0');
           reg12 <= (others => '0');
           reg13 <= (others => '0');
           reg14 <= (others => '0');
           reg15 <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= ('0'&d(31 downto 16)) + ('0'&d(15 downto 0));
            reg2 <= ('0'&d(63 downto 48)) + ('0'&d(47 downto 32));
            reg3 <= ('0'&d(95 downto 80)) + ('0'&d(79 downto 64));
            reg4 <= ('0'&d(127 downto 112)) + ('0'&d(111 downto 96));
            reg5 <= ('0'&d(159 downto 144)) + ('0'&d(143 downto 128));
            reg6 <= ('0'&d(191 downto 176)) + ('0'&d(175 downto 160));
            reg7 <= ('0'&d(223 downto 208)) + ('0'&d(207 downto 192));
            reg8 <= ('0'&d(255 downto 240)) + ('0'&d(239 downto 224));
            reg9 <= ('0'&reg1) + ('0'&reg2);
            reg10 <= ('0'&reg3) + ('0'&reg4);
            reg11 <= ('0'&reg5) + ('0'&reg6);
            reg12 <= ('0'&reg7) + ('0'&reg8);
            reg13 <= ('0'&reg9) + ('0'&reg10);
            reg14 <= ('0'&reg11) + ('0'&reg12);
            reg15 <= reg15 + ('0'&reg13) + ('0'&reg14);
        END IF;
          q <= reg15;
	END PROCESS;
END arch;