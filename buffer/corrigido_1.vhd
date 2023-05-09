library ieee;
use ieee.std_logic_1164.all;
entity top_level_sad is
	port(clk,rst: in std_logic;
	     op_en : in std_logic;
		wr_en: in std_logic;
		data_in_orig: in std_logic_vector(7 downto 0);
		data_in_cand: in std_logic_vector(7 downto 0);
		data_out: out std_logic_vector(10 downto 0)
		);end top_level_sad;
    
architecture rtl of top_level_sad is

signal row_out_orig0: std_logic_vector(7 downto 0);
signal row_out_orig1: std_logic_vector(7 downto 0);
signal row_out_orig2: std_logic_vector(7 downto 0);
signal row_out_orig3: std_logic_vector(7 downto 0);
signal row_out_orig4: std_logic_vector(7 downto 0);
signal row_out_orig5: std_logic_vector(7 downto 0);
signal row_out_orig6: std_logic_vector(7 downto 0);
signal row_out_orig7: std_logic_vector(7 downto 0);
signal row_out_cand0: std_logic_vector(7 downto 0);
signal row_out_cand1: std_logic_vector(7 downto 0);
signal row_out_cand2: std_logic_vector(7 downto 0);
signal row_out_cand3: std_logic_vector(7 downto 0);
signal row_out_cand4: std_logic_vector(7 downto 0);
signal row_out_cand5: std_logic_vector(7 downto 0);
signal row_out_cand6: std_logic_vector(7 downto 0);
signal row_out_cand7: std_logic_vector(7 downto 0);
signal row_out_orig: std_logic_vector(63 downto 0);
signal row_out_cand: std_logic_vector(63 downto 0);
begin    
row_out_orig <= row_out_orig0 & row_out_orig1 & row_out_orig2 & row_out_orig3 & row_out_orig4 & row_out_orig5 & row_out_orig6 & row_out_orig7;
row_out_cand <= row_out_cand0 & row_out_cand1 & row_out_cand2 & row_out_cand3 & row_out_cand4 & row_out_cand5 & row_out_cand6 & row_out_cand7;

    U_BUFF: entity work.io_buffer port map(clk, rst, wr_en, data_in_orig, data_in_cand,
				row_out_orig0, row_out_orig1, row_out_orig2, row_out_orig3, row_out_orig4, row_out_orig5, row_out_orig6, row_out_orig7,
				row_out_cand0, row_out_cand1, row_out_cand2, row_out_cand3, row_out_cand4, row_out_cand5, row_out_cand6, row_out_cand7);
	U_PU: entity work.sad8 port map(clk, op_en, rst,
				row_out_orig,
				row_out_cand,
				data_out);
				
end architecture;