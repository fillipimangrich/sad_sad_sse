library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity sad32pixels is
   PORT (
       v1,v2 : IN std_logic_vector(255 DOWNTO 0);
       q : OUT std_logic_vector(255 DOWNTO 0));
end sad32pixels;

architecture arch of sad32pixels is
begin
  q(7 downto 0) <= std_logic_vector(abs(signed(v1(7 downto 0)) - signed(v2(7 downto 0))));
  q(15 downto 8) <= std_logic_vector(abs(signed(v1(15 downto 8)) - signed(v2(15 downto 8))));
  q(23 downto 16) <= std_logic_vector(abs(signed(v1(23 downto 16)) - signed(v2(23 downto 16))));
  q(31 downto 24) <= std_logic_vector(abs(signed(v1(31 downto 24)) - signed(v2(31 downto 24))));
  q(39 downto 32) <= std_logic_vector(abs(signed(v1(39 downto 32)) - signed(v2(39 downto 32))));
  q(47 downto 40) <= std_logic_vector(abs(signed(v1(47 downto 40)) - signed(v2(47 downto 40))));
  q(55 downto 48) <= std_logic_vector(abs(signed(v1(55 downto 48)) - signed(v2(55 downto 48))));
  q(63 downto 56) <= std_logic_vector(abs(signed(v1(63 downto 56)) - signed(v2(63 downto 56))));
  q(71 downto 64) <= std_logic_vector(abs(signed(v1(71 downto 64)) - signed(v2(71 downto 64))));
  q(79 downto 72) <= std_logic_vector(abs(signed(v1(79 downto 72)) - signed(v2(79 downto 72))));
  q(87 downto 80) <= std_logic_vector(abs(signed(v1(87 downto 80)) - signed(v2(87 downto 80))));
  q(95 downto 88) <= std_logic_vector(abs(signed(v1(95 downto 88)) - signed(v2(95 downto 88))));
  q(103 downto 96) <= std_logic_vector(abs(signed(v1(103 downto 96)) - signed(v2(103 downto 96))));
  q(111 downto 104) <= std_logic_vector(abs(signed(v1(111 downto 104)) - signed(v2(111 downto 104))));
  q(119 downto 112) <= std_logic_vector(abs(signed(v1(119 downto 112)) - signed(v2(119 downto 112))));
  q(127 downto 120) <= std_logic_vector(abs(signed(v1(127 downto 120)) - signed(v2(127 downto 120))));
  q(135 downto 128) <= std_logic_vector(abs(signed(v1(135 downto 128)) - signed(v2(135 downto 128))));
  q(143 downto 136) <= std_logic_vector(abs(signed(v1(143 downto 136)) - signed(v2(143 downto 136))));
  q(151 downto 144) <= std_logic_vector(abs(signed(v1(151 downto 144)) - signed(v2(151 downto 144))));
  q(159 downto 152) <= std_logic_vector(abs(signed(v1(159 downto 152)) - signed(v2(159 downto 152))));
  q(167 downto 160) <= std_logic_vector(abs(signed(v1(167 downto 160)) - signed(v2(167 downto 160))));
  q(175 downto 168) <= std_logic_vector(abs(signed(v1(175 downto 168)) - signed(v2(175 downto 168))));
  q(183 downto 176) <= std_logic_vector(abs(signed(v1(183 downto 176)) - signed(v2(183 downto 176))));
  q(191 downto 184) <= std_logic_vector(abs(signed(v1(191 downto 184)) - signed(v2(191 downto 184))));
  q(199 downto 192) <= std_logic_vector(abs(signed(v1(199 downto 192)) - signed(v2(199 downto 192))));
  q(207 downto 200) <= std_logic_vector(abs(signed(v1(207 downto 200)) - signed(v2(207 downto 200))));
  q(215 downto 208) <= std_logic_vector(abs(signed(v1(215 downto 208)) - signed(v2(215 downto 208))));
  q(223 downto 216) <= std_logic_vector(abs(signed(v1(223 downto 216)) - signed(v2(223 downto 216))));
  q(231 downto 224) <= std_logic_vector(abs(signed(v1(231 downto 224)) - signed(v2(231 downto 224))));
  q(239 downto 232) <= std_logic_vector(abs(signed(v1(239 downto 232)) - signed(v2(239 downto 232))));
  q(247 downto 240) <= std_logic_vector(abs(signed(v1(247 downto 240)) - signed(v2(247 downto 240))));
  q(255 downto 248) <= std_logic_vector(abs(signed(v1(255 downto 248)) - signed(v2(255 downto 248))));
end arch;