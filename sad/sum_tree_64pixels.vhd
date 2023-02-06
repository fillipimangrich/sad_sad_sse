library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity sum_tree is
   PORT (clk, enb, rst : IN STD_LOGIC;
       d : IN std_logic_vector(511 DOWNTO 0);
       q : OUT std_logic_vector(19 DOWNTO 0));
end sum_tree;

architecture arch of sum_tree is
signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');
signal reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28, reg29, reg30, reg31, reg32 : std_logic_vector(65 downto 0);
signal reg33, reg34, reg35, reg36, reg37, reg38, reg39, reg40, reg41, reg42, reg43, reg44, reg45, reg46, reg47, reg48 : std_logic_vector(66 downto 0);
signal reg49, reg50, reg51, reg52, reg53, reg54, reg55, reg56, reg57, reg58 : std_logic_vector(67 downto 0);
signal reg59, reg60, reg61, reg62, reg63, reg64, reg65, reg66 : std_logic_vector(68 downto 0);
signal reg67, reg68, reg69, reg70, reg71, reg72 : std_logic_vector(69 downto 0);
signal reg73, reg74, reg75, reg76, reg77 : std_logic_vector(70 downto 0);
BEGIN
   PROCESS(clk)
   BEGIN

       IF (rst = 1)THEN
           q <= (others => '0');
       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= '0'&d(15 downto 8) + '0'&d(7 downto 0);
            reg2 <= '0'&d(143 downto 136) + '0'&d(135 downto 128);
            reg3 <= '0'&d(271 downto 264) + '0'&d(263 downto 256);
            reg4 <= '0'&d(399 downto 392) + '0'&d(391 downto 384);
            reg5 <= '0'&d(527 downto 520) + '0'&d(519 downto 512);
            reg6 <= '0'&d(655 downto 648) + '0'&d(647 downto 640);
            reg7 <= '0'&d(783 downto 776) + '0'&d(775 downto 768);
            reg8 <= '0'&d(911 downto 904) + '0'&d(903 downto 896);
            reg9 <= '0'&d(1039 downto 1032) + '0'&d(1031 downto 1024);
            reg10 <= '0'&d(1167 downto 1160) + '0'&d(1159 downto 1152);
            reg11 <= '0'&d(1295 downto 1288) + '0'&d(1287 downto 1280);
            reg12 <= '0'&d(1423 downto 1416) + '0'&d(1415 downto 1408);
            reg13 <= '0'&d(1551 downto 1544) + '0'&d(1543 downto 1536);
            reg14 <= '0'&d(1679 downto 1672) + '0'&d(1671 downto 1664);
            reg15 <= '0'&d(1807 downto 1800) + '0'&d(1799 downto 1792);
            reg16 <= '0'&d(1935 downto 1928) + '0'&d(1927 downto 1920);
            reg17 <= '0'&d(2063 downto 2056) + '0'&d(2055 downto 2048);
            reg18 <= '0'&d(2191 downto 2184) + '0'&d(2183 downto 2176);
            reg19 <= '0'&d(2319 downto 2312) + '0'&d(2311 downto 2304);
            reg20 <= '0'&d(2447 downto 2440) + '0'&d(2439 downto 2432);
            reg21 <= '0'&d(2575 downto 2568) + '0'&d(2567 downto 2560);
            reg22 <= '0'&d(2703 downto 2696) + '0'&d(2695 downto 2688);
            reg23 <= '0'&d(2831 downto 2824) + '0'&d(2823 downto 2816);
            reg24 <= '0'&d(2959 downto 2952) + '0'&d(2951 downto 2944);
            reg25 <= '0'&d(3087 downto 3080) + '0'&d(3079 downto 3072);
            reg26 <= '0'&d(3215 downto 3208) + '0'&d(3207 downto 3200);
            reg27 <= '0'&d(3343 downto 3336) + '0'&d(3335 downto 3328);
            reg28 <= '0'&d(3471 downto 3464) + '0'&d(3463 downto 3456);
            reg29 <= '0'&d(3599 downto 3592) + '0'&d(3591 downto 3584);
            reg30 <= '0'&d(3727 downto 3720) + '0'&d(3719 downto 3712);
            reg31 <= '0'&d(3855 downto 3848) + '0'&d(3847 downto 3840);
            reg32 <= '0'&d(3983 downto 3976) + '0'&d(3975 downto 3968);
            reg33 <= reg1 + reg2;
            reg34 <= reg3 + reg4;
            reg35 <= reg5 + reg6;
            reg36 <= reg7 + reg8;
            reg37 <= reg9 + reg10;
            reg38 <= reg11 + reg12;
            reg39 <= reg13 + reg14;
            reg40 <= reg15 + reg16;
            reg41 <= reg17 + reg18;
            reg42 <= reg19 + reg20;
            reg43 <= reg21 + reg22;
            reg44 <= reg23 + reg24;
            reg45 <= reg25 + reg26;
            reg46 <= reg27 + reg28;
            reg47 <= reg29 + reg30;
            reg48 <= reg31 + reg32;
            reg49 <= reg33 + reg34;
            reg50 <= reg35 + reg36;
            reg51 <= reg37 + reg38;
            reg52 <= reg39 + reg40;
            reg53 <= reg41 + reg42;
            reg54 <= reg43 + reg44;
            reg55 <= reg45 + reg46;
            reg56 <= reg47 + reg48;
            reg57 <= reg49 + reg50;
            reg58 <= reg51 + reg52;
            reg59 <= reg53 + reg54;
            reg60 <= reg55 + reg56;
            reg61 <= reg57 + reg58;
            reg62 <= reg59 + reg60;
            reg63 <= reg63 + reg61 + reg62;
        END IF;
	END PROCESS;
q <= reg63;
END arch;