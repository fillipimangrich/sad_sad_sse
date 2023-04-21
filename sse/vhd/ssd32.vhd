library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity ssd32 is
   PORT (clk, enb, rst : IN STD_LOGIC;
       v1,v2 : IN std_logic_vector(511 DOWNTO 0);
       q : OUT std_logic_vector(20 DOWNTO 0));
end ssd32;

architecture arch of ssd32 is

COMPONENT ssd32pixels
    PORT(
        v1,v2 : IN std_logic_vector(511 DOWNTO 0);
        q : OUT std_logic_vector(511 DOWNTO 0));
END COMPONENT;

COMPONENT sum_tree_ssd32pixels
    PORT(clk, enb, rst : IN STD_LOGIC;
    d : IN std_logic_vector(511 DOWNTO 0);
    q : OUT std_logic_vector(20 DOWNTO 0));
END COMPONENT;

signal saida_sad: std_logic_vector(511 DOWNTO 0);
signal saida_sum: std_logic_vector(20 DOWNTO 0);
BEGIN
b2v_inst : sad32pixels
PORT MAP(v1 => v1,
         v2 => v2,
         q => saida_sad);


b2v_inst1 : sum_tree_32pixels
PORT MAP(clk => clk,
         enb => enb,
         rst => rst,
         d => saida_sad,
         q => saida_sum);

q <= saida_sum;        
END arch;