library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sum_tree is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(255 DOWNTO 0);
       q : OUT std_logic_vector(17 DOWNTO 0));
end sum_tree;

architecture arch of sum_tree is
signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16 : std_logic_vector(33 downto 0);
signal reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24 : std_logic_vector(34 downto 0);
signal reg25, reg26, reg27, reg28, reg29 : std_logic_vector(35 downto 0);
signal reg30, reg31, reg32, reg33 : std_logic_vector(36 downto 0);
signal reg34, reg35, reg36 : std_logic_vector(37 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = 1)THEN
           q <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= '0'&d(15 downto 8) + '0'&d(7 downto 0);
            reg2 <= '0'&d(79 downto 72) + '0'&d(71 downto 64);
            reg3 <= '0'&d(143 downto 136) + '0'&d(135 downto 128);
            reg4 <= '0'&d(207 downto 200) + '0'&d(199 downto 192);
            reg5 <= '0'&d(271 downto 264) + '0'&d(263 downto 256);
            reg6 <= '0'&d(335 downto 328) + '0'&d(327 downto 320);
            reg7 <= '0'&d(399 downto 392) + '0'&d(391 downto 384);
            reg8 <= '0'&d(463 downto 456) + '0'&d(455 downto 448);
            reg9 <= '0'&d(527 downto 520) + '0'&d(519 downto 512);
            reg10 <= '0'&d(591 downto 584) + '0'&d(583 downto 576);
            reg11 <= '0'&d(655 downto 648) + '0'&d(647 downto 640);
            reg12 <= '0'&d(719 downto 712) + '0'&d(711 downto 704);
            reg13 <= '0'&d(783 downto 776) + '0'&d(775 downto 768);
            reg14 <= '0'&d(847 downto 840) + '0'&d(839 downto 832);
            reg15 <= '0'&d(911 downto 904) + '0'&d(903 downto 896);
            reg16 <= '0'&d(975 downto 968) + '0'&d(967 downto 960);
            reg17 <= reg1 + reg2;
            reg18 <= reg3 + reg4;
            reg19 <= reg5 + reg6;
            reg20 <= reg7 + reg8;
            reg21 <= reg9 + reg10;
            reg22 <= reg11 + reg12;
            reg23 <= reg13 + reg14;
            reg24 <= reg15 + reg16;
            reg25 <= reg17 + reg18;
            reg26 <= reg19 + reg20;
            reg27 <= reg21 + reg22;
            reg28 <= reg23 + reg24;
            reg29 <= reg25 + reg26;
            reg30 <= reg27 + reg28;
            reg31 <= reg31 + reg29 + reg30;
        END IF;
	END PROCESS;
q <= reg31;
END arch;