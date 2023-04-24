library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity sad64pixels is
   PORT (
       v1,v2 : IN std_logic_vector(511 DOWNTO 0);
       q : OUT std_logic_vector(1023 DOWNTO 0));
end sad64pixels;

architecture arch of sad64pixels is
signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, s33, s34, s35, s36, s37, s38, s39, s40, s41, s42, s43, s44, s45, s46, s47, s48, s49, s50, s51, s52, s53, s54, s55, s56, s57, s58, s59, s60, s61, s62, s63, s64 : std_logic_vector(15 downto 0);
type rom_type is array (0 to 127) of std_logic_vector(15 downto 0);
signal square: rom_type := (
  "0000000000000000",
  "0000000000000001",
  "0000000000000100",
  "0000000000001001",
  "0000000000010000",
  "0000000000011001",
  "0000000000100100",
  "0000000000110001",
  "0000000001000000",
  "0000000001010001",
  "0000000001100100",
  "0000000001111001",
  "0000000010010000",
  "0000000010101001",
  "0000000011000100",
  "0000000011100001",
  "0000000100000000",
  "0000000100100001",
  "0000000101000100",
  "0000000101101001",
  "0000000110010000",
  "0000000110111001",
  "0000000111100100",
  "0000001000010001",
  "0000001001000000",
  "0000001001110001",
  "0000001010100100",
  "0000001011011001",
  "0000001100010000",
  "0000001101001001",
  "0000001110000100",
  "0000001111000001",
  "0000010000000000",
  "0000010001000001",
  "0000010010000100",
  "0000010011001001",
  "0000010100010000",
  "0000010101011001",
  "0000010110100100",
  "0000010111110001",
  "0000011001000000",
  "0000011010010001",
  "0000011011100100",
  "0000011100111001",
  "0000011110010000",
  "0000011111101001",
  "0000100001000100",
  "0000100010100001",
  "0000100100000000",
  "0000100101100001",
  "0000100111000100",
  "0000101000101001",
  "0000101010010000",
  "0000101011111001",
  "0000101101100100",
  "0000101111010001",
  "0000110001000000",
  "0000110010110001",
  "0000110100100100",
  "0000110110011001",
  "0000111000010000",
  "0000111010001001",
  "0000111100000100",
  "0000111110000001",
  "0001000000000000",
  "0001000010000001",
  "0001000100000100",
  "0001000110001001",
  "0001001000010000",
  "0001001010011001",
  "0001001100100100",
  "0001001110110001",
  "0001010001000000",
  "0001010011010001",
  "0001010101100100",
  "0001010111111001",
  "0001011010010000",
  "0001011100101001",
  "0001011111000100",
  "0001100001100001",
  "0001100100000000",
  "0001100110100001",
  "0001101001000100",
  "0001101011101001",
  "0001101110010000",
  "0001110000111001",
  "0001110011100100",
  "0001110110010001",
  "0001111001000000",
  "0001111011110001",
  "0001111110100100",
  "0010000001011001",
  "0010000100010000",
  "0010000111001001",
  "0010001010000100",
  "0010001101000001",
  "0010010000000000",
  "0010010011000001",
  "0010010110000100",
  "0010011001001001",
  "0010011100010000",
  "0010011111011001",
  "0010100010100100",
  "0010100101110001",
  "0010101001000000",
  "0010101100010001",
  "0010101111100100",
  "0010110010111001",
  "0010110110010000",
  "0010111001101001",
  "0010111101000100",
  "0011000000100001",
  "0011000100000000",
  "0011000111100001",
  "0011001011000100",
  "0011001110101001",
  "0011010010010000",
  "0011010101111001",
  "0011011001100100",
  "0011011101010001",
  "0011100001000000",
  "0011100100110001",
  "0011101000100100",
  "0011101100011001",
  "0011110000010000",
  "0011110100001001",
  "0011111000000100",
  "0011111100000001");
begin
 s1<= std_logic_vector(abs(signed(v1(7 downto 0)) - signed(v2(7 downto 0))));
 s2<= std_logic_vector(abs(signed(v1(15 downto 8)) - signed(v2(15 downto 8))));
 s3<= std_logic_vector(abs(signed(v1(23 downto 16)) - signed(v2(23 downto 16))));
 s4<= std_logic_vector(abs(signed(v1(31 downto 24)) - signed(v2(31 downto 24))));
 s5<= std_logic_vector(abs(signed(v1(39 downto 32)) - signed(v2(39 downto 32))));
 s6<= std_logic_vector(abs(signed(v1(47 downto 40)) - signed(v2(47 downto 40))));
 s7<= std_logic_vector(abs(signed(v1(55 downto 48)) - signed(v2(55 downto 48))));
 s8<= std_logic_vector(abs(signed(v1(63 downto 56)) - signed(v2(63 downto 56))));
 s9<= std_logic_vector(abs(signed(v1(71 downto 64)) - signed(v2(71 downto 64))));
 s10<= std_logic_vector(abs(signed(v1(79 downto 72)) - signed(v2(79 downto 72))));
 s11<= std_logic_vector(abs(signed(v1(87 downto 80)) - signed(v2(87 downto 80))));
 s12<= std_logic_vector(abs(signed(v1(95 downto 88)) - signed(v2(95 downto 88))));
 s13<= std_logic_vector(abs(signed(v1(103 downto 96)) - signed(v2(103 downto 96))));
 s14<= std_logic_vector(abs(signed(v1(111 downto 104)) - signed(v2(111 downto 104))));
 s15<= std_logic_vector(abs(signed(v1(119 downto 112)) - signed(v2(119 downto 112))));
 s16<= std_logic_vector(abs(signed(v1(127 downto 120)) - signed(v2(127 downto 120))));
 s17<= std_logic_vector(abs(signed(v1(135 downto 128)) - signed(v2(135 downto 128))));
 s18<= std_logic_vector(abs(signed(v1(143 downto 136)) - signed(v2(143 downto 136))));
 s19<= std_logic_vector(abs(signed(v1(151 downto 144)) - signed(v2(151 downto 144))));
 s20<= std_logic_vector(abs(signed(v1(159 downto 152)) - signed(v2(159 downto 152))));
 s21<= std_logic_vector(abs(signed(v1(167 downto 160)) - signed(v2(167 downto 160))));
 s22<= std_logic_vector(abs(signed(v1(175 downto 168)) - signed(v2(175 downto 168))));
 s23<= std_logic_vector(abs(signed(v1(183 downto 176)) - signed(v2(183 downto 176))));
 s24<= std_logic_vector(abs(signed(v1(191 downto 184)) - signed(v2(191 downto 184))));
 s25<= std_logic_vector(abs(signed(v1(199 downto 192)) - signed(v2(199 downto 192))));
 s26<= std_logic_vector(abs(signed(v1(207 downto 200)) - signed(v2(207 downto 200))));
 s27<= std_logic_vector(abs(signed(v1(215 downto 208)) - signed(v2(215 downto 208))));
 s28<= std_logic_vector(abs(signed(v1(223 downto 216)) - signed(v2(223 downto 216))));
 s29<= std_logic_vector(abs(signed(v1(231 downto 224)) - signed(v2(231 downto 224))));
 s30<= std_logic_vector(abs(signed(v1(239 downto 232)) - signed(v2(239 downto 232))));
 s31<= std_logic_vector(abs(signed(v1(247 downto 240)) - signed(v2(247 downto 240))));
 s32<= std_logic_vector(abs(signed(v1(255 downto 248)) - signed(v2(255 downto 248))));
 s33<= std_logic_vector(abs(signed(v1(263 downto 256)) - signed(v2(263 downto 256))));
 s34<= std_logic_vector(abs(signed(v1(271 downto 264)) - signed(v2(271 downto 264))));
 s35<= std_logic_vector(abs(signed(v1(279 downto 272)) - signed(v2(279 downto 272))));
 s36<= std_logic_vector(abs(signed(v1(287 downto 280)) - signed(v2(287 downto 280))));
 s37<= std_logic_vector(abs(signed(v1(295 downto 288)) - signed(v2(295 downto 288))));
 s38<= std_logic_vector(abs(signed(v1(303 downto 296)) - signed(v2(303 downto 296))));
 s39<= std_logic_vector(abs(signed(v1(311 downto 304)) - signed(v2(311 downto 304))));
 s40<= std_logic_vector(abs(signed(v1(319 downto 312)) - signed(v2(319 downto 312))));
 s41<= std_logic_vector(abs(signed(v1(327 downto 320)) - signed(v2(327 downto 320))));
 s42<= std_logic_vector(abs(signed(v1(335 downto 328)) - signed(v2(335 downto 328))));
 s43<= std_logic_vector(abs(signed(v1(343 downto 336)) - signed(v2(343 downto 336))));
 s44<= std_logic_vector(abs(signed(v1(351 downto 344)) - signed(v2(351 downto 344))));
 s45<= std_logic_vector(abs(signed(v1(359 downto 352)) - signed(v2(359 downto 352))));
 s46<= std_logic_vector(abs(signed(v1(367 downto 360)) - signed(v2(367 downto 360))));
 s47<= std_logic_vector(abs(signed(v1(375 downto 368)) - signed(v2(375 downto 368))));
 s48<= std_logic_vector(abs(signed(v1(383 downto 376)) - signed(v2(383 downto 376))));
 s49<= std_logic_vector(abs(signed(v1(391 downto 384)) - signed(v2(391 downto 384))));
 s50<= std_logic_vector(abs(signed(v1(399 downto 392)) - signed(v2(399 downto 392))));
 s51<= std_logic_vector(abs(signed(v1(407 downto 400)) - signed(v2(407 downto 400))));
 s52<= std_logic_vector(abs(signed(v1(415 downto 408)) - signed(v2(415 downto 408))));
 s53<= std_logic_vector(abs(signed(v1(423 downto 416)) - signed(v2(423 downto 416))));
 s54<= std_logic_vector(abs(signed(v1(431 downto 424)) - signed(v2(431 downto 424))));
 s55<= std_logic_vector(abs(signed(v1(439 downto 432)) - signed(v2(439 downto 432))));
 s56<= std_logic_vector(abs(signed(v1(447 downto 440)) - signed(v2(447 downto 440))));
 s57<= std_logic_vector(abs(signed(v1(455 downto 448)) - signed(v2(455 downto 448))));
 s58<= std_logic_vector(abs(signed(v1(463 downto 456)) - signed(v2(463 downto 456))));
 s59<= std_logic_vector(abs(signed(v1(471 downto 464)) - signed(v2(471 downto 464))));
 s60<= std_logic_vector(abs(signed(v1(479 downto 472)) - signed(v2(479 downto 472))));
 s61<= std_logic_vector(abs(signed(v1(487 downto 480)) - signed(v2(487 downto 480))));
 s62<= std_logic_vector(abs(signed(v1(495 downto 488)) - signed(v2(495 downto 488))));
 s63<= std_logic_vector(abs(signed(v1(503 downto 496)) - signed(v2(503 downto 496))));
 s64<= std_logic_vector(abs(signed(v1(511 downto 504)) - signed(v2(511 downto 504))));
  q(15 downto 0) <= s1*s1 when s1 > 127 else square(to_integer(unsigned(s1)));
  q(31 downto 16) <= s2*s2 when s2 > 127 else square(to_integer(unsigned(s2)));
  q(47 downto 32) <= s3*s3 when s3 > 127 else square(to_integer(unsigned(s3)));
  q(63 downto 48) <= s4*s4 when s4 > 127 else square(to_integer(unsigned(s4)));
  q(79 downto 64) <= s5*s5 when s5 > 127 else square(to_integer(unsigned(s5)));
  q(95 downto 80) <= s6*s6 when s6 > 127 else square(to_integer(unsigned(s6)));
  q(111 downto 96) <= s7*s7 when s7 > 127 else square(to_integer(unsigned(s7)));
  q(127 downto 112) <= s8*s8 when s8 > 127 else square(to_integer(unsigned(s8)));
  q(143 downto 128) <= s9*s9 when s9 > 127 else square(to_integer(unsigned(s9)));
  q(159 downto 144) <= s10*s10 when s10 > 127 else square(to_integer(unsigned(s10)));
  q(175 downto 160) <= s11*s11 when s11 > 127 else square(to_integer(unsigned(s11)));
  q(191 downto 176) <= s12*s12 when s12 > 127 else square(to_integer(unsigned(s12)));
  q(207 downto 192) <= s13*s13 when s13 > 127 else square(to_integer(unsigned(s13)));
  q(223 downto 208) <= s14*s14 when s14 > 127 else square(to_integer(unsigned(s14)));
  q(239 downto 224) <= s15*s15 when s15 > 127 else square(to_integer(unsigned(s15)));
  q(255 downto 240) <= s16*s16 when s16 > 127 else square(to_integer(unsigned(s16)));
  q(271 downto 256) <= s17*s17 when s17 > 127 else square(to_integer(unsigned(s17)));
  q(287 downto 272) <= s18*s18 when s18 > 127 else square(to_integer(unsigned(s18)));
  q(303 downto 288) <= s19*s19 when s19 > 127 else square(to_integer(unsigned(s19)));
  q(319 downto 304) <= s20*s20 when s20 > 127 else square(to_integer(unsigned(s20)));
  q(335 downto 320) <= s21*s21 when s21 > 127 else square(to_integer(unsigned(s21)));
  q(351 downto 336) <= s22*s22 when s22 > 127 else square(to_integer(unsigned(s22)));
  q(367 downto 352) <= s23*s23 when s23 > 127 else square(to_integer(unsigned(s23)));
  q(383 downto 368) <= s24*s24 when s24 > 127 else square(to_integer(unsigned(s24)));
  q(399 downto 384) <= s25*s25 when s25 > 127 else square(to_integer(unsigned(s25)));
  q(415 downto 400) <= s26*s26 when s26 > 127 else square(to_integer(unsigned(s26)));
  q(431 downto 416) <= s27*s27 when s27 > 127 else square(to_integer(unsigned(s27)));
  q(447 downto 432) <= s28*s28 when s28 > 127 else square(to_integer(unsigned(s28)));
  q(463 downto 448) <= s29*s29 when s29 > 127 else square(to_integer(unsigned(s29)));
  q(479 downto 464) <= s30*s30 when s30 > 127 else square(to_integer(unsigned(s30)));
  q(495 downto 480) <= s31*s31 when s31 > 127 else square(to_integer(unsigned(s31)));
  q(511 downto 496) <= s32*s32 when s32 > 127 else square(to_integer(unsigned(s32)));
  q(527 downto 512) <= s33*s33 when s33 > 127 else square(to_integer(unsigned(s33)));
  q(543 downto 528) <= s34*s34 when s34 > 127 else square(to_integer(unsigned(s34)));
  q(559 downto 544) <= s35*s35 when s35 > 127 else square(to_integer(unsigned(s35)));
  q(575 downto 560) <= s36*s36 when s36 > 127 else square(to_integer(unsigned(s36)));
  q(591 downto 576) <= s37*s37 when s37 > 127 else square(to_integer(unsigned(s37)));
  q(607 downto 592) <= s38*s38 when s38 > 127 else square(to_integer(unsigned(s38)));
  q(623 downto 608) <= s39*s39 when s39 > 127 else square(to_integer(unsigned(s39)));
  q(639 downto 624) <= s40*s40 when s40 > 127 else square(to_integer(unsigned(s40)));
  q(655 downto 640) <= s41*s41 when s41 > 127 else square(to_integer(unsigned(s41)));
  q(671 downto 656) <= s42*s42 when s42 > 127 else square(to_integer(unsigned(s42)));
  q(687 downto 672) <= s43*s43 when s43 > 127 else square(to_integer(unsigned(s43)));
  q(703 downto 688) <= s44*s44 when s44 > 127 else square(to_integer(unsigned(s44)));
  q(719 downto 704) <= s45*s45 when s45 > 127 else square(to_integer(unsigned(s45)));
  q(735 downto 720) <= s46*s46 when s46 > 127 else square(to_integer(unsigned(s46)));
  q(751 downto 736) <= s47*s47 when s47 > 127 else square(to_integer(unsigned(s47)));
  q(767 downto 752) <= s48*s48 when s48 > 127 else square(to_integer(unsigned(s48)));
  q(783 downto 768) <= s49*s49 when s49 > 127 else square(to_integer(unsigned(s49)));
  q(799 downto 784) <= s50*s50 when s50 > 127 else square(to_integer(unsigned(s50)));
  q(815 downto 800) <= s51*s51 when s51 > 127 else square(to_integer(unsigned(s51)));
  q(831 downto 816) <= s52*s52 when s52 > 127 else square(to_integer(unsigned(s52)));
  q(847 downto 832) <= s53*s53 when s53 > 127 else square(to_integer(unsigned(s53)));
  q(863 downto 848) <= s54*s54 when s54 > 127 else square(to_integer(unsigned(s54)));
  q(879 downto 864) <= s55*s55 when s55 > 127 else square(to_integer(unsigned(s55)));
  q(895 downto 880) <= s56*s56 when s56 > 127 else square(to_integer(unsigned(s56)));
  q(911 downto 896) <= s57*s57 when s57 > 127 else square(to_integer(unsigned(s57)));
  q(927 downto 912) <= s58*s58 when s58 > 127 else square(to_integer(unsigned(s58)));
  q(943 downto 928) <= s59*s59 when s59 > 127 else square(to_integer(unsigned(s59)));
  q(959 downto 944) <= s60*s60 when s60 > 127 else square(to_integer(unsigned(s60)));
  q(975 downto 960) <= s61*s61 when s61 > 127 else square(to_integer(unsigned(s61)));
  q(991 downto 976) <= s62*s62 when s62 > 127 else square(to_integer(unsigned(s62)));
  q(1007 downto 992) <= s63*s63 when s63 > 127 else square(to_integer(unsigned(s63)));
  q(1023 downto 1008) <= s64*s64 when s64 > 127 else square(to_integer(unsigned(s64)));
end arch;