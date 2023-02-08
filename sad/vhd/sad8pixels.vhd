library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity sad8pixels is
   PORT (clk, enb, rst : IN STD_LOGIC;
       v1,v2 : IN std_logic_vector(63 DOWNTO 0);
       q : OUT std_logic_vector(63 DOWNTO 0));
end sad8pixels;

architecture arch of sad8pixels is
  q(7 downto 0) <= std_logic_vector(abs(signed(v1(7 downto 0)) - signed(v2(7 downto 0))));
  q(15 downto 8) <= std_logic_vector(abs(signed(v1(15 downto 8)) - signed(v2(15 downto 8))));
  q(23 downto 16) <= std_logic_vector(abs(signed(v1(23 downto 16)) - signed(v2(23 downto 16))));
  q(31 downto 24) <= std_logic_vector(abs(signed(v1(31 downto 24)) - signed(v2(31 downto 24))));
  q(39 downto 32) <= std_logic_vector(abs(signed(v1(39 downto 32)) - signed(v2(39 downto 32))));
  q(47 downto 40) <= std_logic_vector(abs(signed(v1(47 downto 40)) - signed(v2(47 downto 40))));
  q(55 downto 48) <= std_logic_vector(abs(signed(v1(55 downto 48)) - signed(v2(55 downto 48))));
  q(63 downto 56) <= std_logic_vector(abs(signed(v1(63 downto 56)) - signed(v2(63 downto 56))));
end arch;