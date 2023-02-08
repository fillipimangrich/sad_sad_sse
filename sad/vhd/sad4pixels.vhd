library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sad4pixels is
   PORT (
       v1,v2 : IN std_logic_vector(31 DOWNTO 0);
       q : OUT std_logic_vector(31 DOWNTO 0));
end sad4pixels;

architecture arch of sad4pixels is
  q(7 downto 0) <= std_logic_vector(abs(signed(v1(7 downto 0)) - signed(v2(7 downto 0))));
  q(15 downto 8) <= std_logic_vector(abs(signed(v1(15 downto 8)) - signed(v2(15 downto 8))));
  q(23 downto 16) <= std_logic_vector(abs(signed(v1(23 downto 16)) - signed(v2(23 downto 16))));
  q(31 downto 24) <= std_logic_vector(abs(signed(v1(31 downto 24)) - signed(v2(31 downto 24))));
end arch;