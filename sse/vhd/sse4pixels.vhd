library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sad4pixels is
   PORT (
       v1,v2 : IN std_logic_vector(31 DOWNTO 0);
       q : OUT std_logic_vector(63 DOWNTO 0));
end sad4pixels;

architecture arch of sad4pixels is
  signal s1,s2,s3,s4 : std_logic_vector(63 downto 0);
  s1<= "00000000"&std_logic_vector(abs(signed(v1(7 downto 0)) - signed(v2(7 downto 0))));
  s2 <= "00000000"&std_logic_vector(abs(signed(v1(15 downto 8)) - signed(v2(15 downto 8))));
  s3 <= "00000000"&std_logic_vector(abs(signed(v1(23 downto 16)) - signed(v2(23 downto 16))));
  s4 <= "00000000"&std_logic_vector(abs(signed(v1(31 downto 24)) - signed(v2(31 downto 24))));
  q(15 downto 0) <= s1*s1;
  q(31 downto 16) <= s2*s2;
  q(47 downto 32) <= s3*s3;
  q(63 downto 48) <= s4*s4;
end arch;