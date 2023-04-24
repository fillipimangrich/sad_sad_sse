library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity sad128pixels is
   PORT (
       v1,v2 : IN std_logic_vector(1023 DOWNTO 0);
       q : OUT std_logic_vector(2047 DOWNTO 0));
end sad128pixels;

architecture arch of sad128pixels is
signal s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, s33, s34, s35, s36, s37, s38, s39, s40, s41, s42, s43, s44, s45, s46, s47, s48, s49, s50, s51, s52, s53, s54, s55, s56, s57, s58, s59, s60, s61, s62, s63, s64, s65, s66, s67, s68, s69, s70, s71, s72, s73, s74, s75, s76, s77, s78, s79, s80, s81, s82, s83, s84, s85, s86, s87, s88, s89, s90, s91, s92, s93, s94, s95, s96, s97, s98, s99, s100, s101, s102, s103, s104, s105, s106, s107, s108, s109, s110, s111, s112, s113, s114, s115, s116, s117, s118, s119, s120, s121, s122, s123, s124, s125, s126, s127, s128 : std_logic_vector(15 downto 0);
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
 s65<= std_logic_vector(abs(signed(v1(519 downto 512)) - signed(v2(519 downto 512))));
 s66<= std_logic_vector(abs(signed(v1(527 downto 520)) - signed(v2(527 downto 520))));
 s67<= std_logic_vector(abs(signed(v1(535 downto 528)) - signed(v2(535 downto 528))));
 s68<= std_logic_vector(abs(signed(v1(543 downto 536)) - signed(v2(543 downto 536))));
 s69<= std_logic_vector(abs(signed(v1(551 downto 544)) - signed(v2(551 downto 544))));
 s70<= std_logic_vector(abs(signed(v1(559 downto 552)) - signed(v2(559 downto 552))));
 s71<= std_logic_vector(abs(signed(v1(567 downto 560)) - signed(v2(567 downto 560))));
 s72<= std_logic_vector(abs(signed(v1(575 downto 568)) - signed(v2(575 downto 568))));
 s73<= std_logic_vector(abs(signed(v1(583 downto 576)) - signed(v2(583 downto 576))));
 s74<= std_logic_vector(abs(signed(v1(591 downto 584)) - signed(v2(591 downto 584))));
 s75<= std_logic_vector(abs(signed(v1(599 downto 592)) - signed(v2(599 downto 592))));
 s76<= std_logic_vector(abs(signed(v1(607 downto 600)) - signed(v2(607 downto 600))));
 s77<= std_logic_vector(abs(signed(v1(615 downto 608)) - signed(v2(615 downto 608))));
 s78<= std_logic_vector(abs(signed(v1(623 downto 616)) - signed(v2(623 downto 616))));
 s79<= std_logic_vector(abs(signed(v1(631 downto 624)) - signed(v2(631 downto 624))));
 s80<= std_logic_vector(abs(signed(v1(639 downto 632)) - signed(v2(639 downto 632))));
 s81<= std_logic_vector(abs(signed(v1(647 downto 640)) - signed(v2(647 downto 640))));
 s82<= std_logic_vector(abs(signed(v1(655 downto 648)) - signed(v2(655 downto 648))));
 s83<= std_logic_vector(abs(signed(v1(663 downto 656)) - signed(v2(663 downto 656))));
 s84<= std_logic_vector(abs(signed(v1(671 downto 664)) - signed(v2(671 downto 664))));
 s85<= std_logic_vector(abs(signed(v1(679 downto 672)) - signed(v2(679 downto 672))));
 s86<= std_logic_vector(abs(signed(v1(687 downto 680)) - signed(v2(687 downto 680))));
 s87<= std_logic_vector(abs(signed(v1(695 downto 688)) - signed(v2(695 downto 688))));
 s88<= std_logic_vector(abs(signed(v1(703 downto 696)) - signed(v2(703 downto 696))));
 s89<= std_logic_vector(abs(signed(v1(711 downto 704)) - signed(v2(711 downto 704))));
 s90<= std_logic_vector(abs(signed(v1(719 downto 712)) - signed(v2(719 downto 712))));
 s91<= std_logic_vector(abs(signed(v1(727 downto 720)) - signed(v2(727 downto 720))));
 s92<= std_logic_vector(abs(signed(v1(735 downto 728)) - signed(v2(735 downto 728))));
 s93<= std_logic_vector(abs(signed(v1(743 downto 736)) - signed(v2(743 downto 736))));
 s94<= std_logic_vector(abs(signed(v1(751 downto 744)) - signed(v2(751 downto 744))));
 s95<= std_logic_vector(abs(signed(v1(759 downto 752)) - signed(v2(759 downto 752))));
 s96<= std_logic_vector(abs(signed(v1(767 downto 760)) - signed(v2(767 downto 760))));
 s97<= std_logic_vector(abs(signed(v1(775 downto 768)) - signed(v2(775 downto 768))));
 s98<= std_logic_vector(abs(signed(v1(783 downto 776)) - signed(v2(783 downto 776))));
 s99<= std_logic_vector(abs(signed(v1(791 downto 784)) - signed(v2(791 downto 784))));
 s100<= std_logic_vector(abs(signed(v1(799 downto 792)) - signed(v2(799 downto 792))));
 s101<= std_logic_vector(abs(signed(v1(807 downto 800)) - signed(v2(807 downto 800))));
 s102<= std_logic_vector(abs(signed(v1(815 downto 808)) - signed(v2(815 downto 808))));
 s103<= std_logic_vector(abs(signed(v1(823 downto 816)) - signed(v2(823 downto 816))));
 s104<= std_logic_vector(abs(signed(v1(831 downto 824)) - signed(v2(831 downto 824))));
 s105<= std_logic_vector(abs(signed(v1(839 downto 832)) - signed(v2(839 downto 832))));
 s106<= std_logic_vector(abs(signed(v1(847 downto 840)) - signed(v2(847 downto 840))));
 s107<= std_logic_vector(abs(signed(v1(855 downto 848)) - signed(v2(855 downto 848))));
 s108<= std_logic_vector(abs(signed(v1(863 downto 856)) - signed(v2(863 downto 856))));
 s109<= std_logic_vector(abs(signed(v1(871 downto 864)) - signed(v2(871 downto 864))));
 s110<= std_logic_vector(abs(signed(v1(879 downto 872)) - signed(v2(879 downto 872))));
 s111<= std_logic_vector(abs(signed(v1(887 downto 880)) - signed(v2(887 downto 880))));
 s112<= std_logic_vector(abs(signed(v1(895 downto 888)) - signed(v2(895 downto 888))));
 s113<= std_logic_vector(abs(signed(v1(903 downto 896)) - signed(v2(903 downto 896))));
 s114<= std_logic_vector(abs(signed(v1(911 downto 904)) - signed(v2(911 downto 904))));
 s115<= std_logic_vector(abs(signed(v1(919 downto 912)) - signed(v2(919 downto 912))));
 s116<= std_logic_vector(abs(signed(v1(927 downto 920)) - signed(v2(927 downto 920))));
 s117<= std_logic_vector(abs(signed(v1(935 downto 928)) - signed(v2(935 downto 928))));
 s118<= std_logic_vector(abs(signed(v1(943 downto 936)) - signed(v2(943 downto 936))));
 s119<= std_logic_vector(abs(signed(v1(951 downto 944)) - signed(v2(951 downto 944))));
 s120<= std_logic_vector(abs(signed(v1(959 downto 952)) - signed(v2(959 downto 952))));
 s121<= std_logic_vector(abs(signed(v1(967 downto 960)) - signed(v2(967 downto 960))));
 s122<= std_logic_vector(abs(signed(v1(975 downto 968)) - signed(v2(975 downto 968))));
 s123<= std_logic_vector(abs(signed(v1(983 downto 976)) - signed(v2(983 downto 976))));
 s124<= std_logic_vector(abs(signed(v1(991 downto 984)) - signed(v2(991 downto 984))));
 s125<= std_logic_vector(abs(signed(v1(999 downto 992)) - signed(v2(999 downto 992))));
 s126<= std_logic_vector(abs(signed(v1(1007 downto 1000)) - signed(v2(1007 downto 1000))));
 s127<= std_logic_vector(abs(signed(v1(1015 downto 1008)) - signed(v2(1015 downto 1008))));
 s128<= std_logic_vector(abs(signed(v1(1023 downto 1016)) - signed(v2(1023 downto 1016))));
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
  q(1039 downto 1024) <= s65*s65 when s65 > 127 else square(to_integer(unsigned(s65)));
  q(1055 downto 1040) <= s66*s66 when s66 > 127 else square(to_integer(unsigned(s66)));
  q(1071 downto 1056) <= s67*s67 when s67 > 127 else square(to_integer(unsigned(s67)));
  q(1087 downto 1072) <= s68*s68 when s68 > 127 else square(to_integer(unsigned(s68)));
  q(1103 downto 1088) <= s69*s69 when s69 > 127 else square(to_integer(unsigned(s69)));
  q(1119 downto 1104) <= s70*s70 when s70 > 127 else square(to_integer(unsigned(s70)));
  q(1135 downto 1120) <= s71*s71 when s71 > 127 else square(to_integer(unsigned(s71)));
  q(1151 downto 1136) <= s72*s72 when s72 > 127 else square(to_integer(unsigned(s72)));
  q(1167 downto 1152) <= s73*s73 when s73 > 127 else square(to_integer(unsigned(s73)));
  q(1183 downto 1168) <= s74*s74 when s74 > 127 else square(to_integer(unsigned(s74)));
  q(1199 downto 1184) <= s75*s75 when s75 > 127 else square(to_integer(unsigned(s75)));
  q(1215 downto 1200) <= s76*s76 when s76 > 127 else square(to_integer(unsigned(s76)));
  q(1231 downto 1216) <= s77*s77 when s77 > 127 else square(to_integer(unsigned(s77)));
  q(1247 downto 1232) <= s78*s78 when s78 > 127 else square(to_integer(unsigned(s78)));
  q(1263 downto 1248) <= s79*s79 when s79 > 127 else square(to_integer(unsigned(s79)));
  q(1279 downto 1264) <= s80*s80 when s80 > 127 else square(to_integer(unsigned(s80)));
  q(1295 downto 1280) <= s81*s81 when s81 > 127 else square(to_integer(unsigned(s81)));
  q(1311 downto 1296) <= s82*s82 when s82 > 127 else square(to_integer(unsigned(s82)));
  q(1327 downto 1312) <= s83*s83 when s83 > 127 else square(to_integer(unsigned(s83)));
  q(1343 downto 1328) <= s84*s84 when s84 > 127 else square(to_integer(unsigned(s84)));
  q(1359 downto 1344) <= s85*s85 when s85 > 127 else square(to_integer(unsigned(s85)));
  q(1375 downto 1360) <= s86*s86 when s86 > 127 else square(to_integer(unsigned(s86)));
  q(1391 downto 1376) <= s87*s87 when s87 > 127 else square(to_integer(unsigned(s87)));
  q(1407 downto 1392) <= s88*s88 when s88 > 127 else square(to_integer(unsigned(s88)));
  q(1423 downto 1408) <= s89*s89 when s89 > 127 else square(to_integer(unsigned(s89)));
  q(1439 downto 1424) <= s90*s90 when s90 > 127 else square(to_integer(unsigned(s90)));
  q(1455 downto 1440) <= s91*s91 when s91 > 127 else square(to_integer(unsigned(s91)));
  q(1471 downto 1456) <= s92*s92 when s92 > 127 else square(to_integer(unsigned(s92)));
  q(1487 downto 1472) <= s93*s93 when s93 > 127 else square(to_integer(unsigned(s93)));
  q(1503 downto 1488) <= s94*s94 when s94 > 127 else square(to_integer(unsigned(s94)));
  q(1519 downto 1504) <= s95*s95 when s95 > 127 else square(to_integer(unsigned(s95)));
  q(1535 downto 1520) <= s96*s96 when s96 > 127 else square(to_integer(unsigned(s96)));
  q(1551 downto 1536) <= s97*s97 when s97 > 127 else square(to_integer(unsigned(s97)));
  q(1567 downto 1552) <= s98*s98 when s98 > 127 else square(to_integer(unsigned(s98)));
  q(1583 downto 1568) <= s99*s99 when s99 > 127 else square(to_integer(unsigned(s99)));
  q(1599 downto 1584) <= s100*s100 when s100 > 127 else square(to_integer(unsigned(s100)));
  q(1615 downto 1600) <= s101*s101 when s101 > 127 else square(to_integer(unsigned(s101)));
  q(1631 downto 1616) <= s102*s102 when s102 > 127 else square(to_integer(unsigned(s102)));
  q(1647 downto 1632) <= s103*s103 when s103 > 127 else square(to_integer(unsigned(s103)));
  q(1663 downto 1648) <= s104*s104 when s104 > 127 else square(to_integer(unsigned(s104)));
  q(1679 downto 1664) <= s105*s105 when s105 > 127 else square(to_integer(unsigned(s105)));
  q(1695 downto 1680) <= s106*s106 when s106 > 127 else square(to_integer(unsigned(s106)));
  q(1711 downto 1696) <= s107*s107 when s107 > 127 else square(to_integer(unsigned(s107)));
  q(1727 downto 1712) <= s108*s108 when s108 > 127 else square(to_integer(unsigned(s108)));
  q(1743 downto 1728) <= s109*s109 when s109 > 127 else square(to_integer(unsigned(s109)));
  q(1759 downto 1744) <= s110*s110 when s110 > 127 else square(to_integer(unsigned(s110)));
  q(1775 downto 1760) <= s111*s111 when s111 > 127 else square(to_integer(unsigned(s111)));
  q(1791 downto 1776) <= s112*s112 when s112 > 127 else square(to_integer(unsigned(s112)));
  q(1807 downto 1792) <= s113*s113 when s113 > 127 else square(to_integer(unsigned(s113)));
  q(1823 downto 1808) <= s114*s114 when s114 > 127 else square(to_integer(unsigned(s114)));
  q(1839 downto 1824) <= s115*s115 when s115 > 127 else square(to_integer(unsigned(s115)));
  q(1855 downto 1840) <= s116*s116 when s116 > 127 else square(to_integer(unsigned(s116)));
  q(1871 downto 1856) <= s117*s117 when s117 > 127 else square(to_integer(unsigned(s117)));
  q(1887 downto 1872) <= s118*s118 when s118 > 127 else square(to_integer(unsigned(s118)));
  q(1903 downto 1888) <= s119*s119 when s119 > 127 else square(to_integer(unsigned(s119)));
  q(1919 downto 1904) <= s120*s120 when s120 > 127 else square(to_integer(unsigned(s120)));
  q(1935 downto 1920) <= s121*s121 when s121 > 127 else square(to_integer(unsigned(s121)));
  q(1951 downto 1936) <= s122*s122 when s122 > 127 else square(to_integer(unsigned(s122)));
  q(1967 downto 1952) <= s123*s123 when s123 > 127 else square(to_integer(unsigned(s123)));
  q(1983 downto 1968) <= s124*s124 when s124 > 127 else square(to_integer(unsigned(s124)));
  q(1999 downto 1984) <= s125*s125 when s125 > 127 else square(to_integer(unsigned(s125)));
  q(2015 downto 2000) <= s126*s126 when s126 > 127 else square(to_integer(unsigned(s126)));
  q(2031 downto 2016) <= s127*s127 when s127 > 127 else square(to_integer(unsigned(s127)));
  q(2047 downto 2032) <= s128*s128 when s128 > 127 else square(to_integer(unsigned(s128)));
end arch;