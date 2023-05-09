library ieee;
use ieee.std_logic_1164.all;

entity top_level_ssd is
	port(clk,rst: in std_logic;
		 op_en : in std_logic;
		 wr_en: in std_logic;
		 data_in_orig: in std_logic_vector(7 downto 0);
		 data_in_cand: in std_logic_vector(7 downto 0);
		 data_out: out std_logic_vector(21 downto 0)
		);

end top_level_ssd;

architecture rtl of top_level_ssd is
signal row_out_orig0: std_logic_vector(7 downto 0); 
signal row_out_orig1: std_logic_vector(7 downto 0); 
signal row_out_orig2: std_logic_vector(7 downto 0); 
signal row_out_orig3: std_logic_vector(7 downto 0); 
signal row_out_orig4: std_logic_vector(7 downto 0); 
signal row_out_orig5: std_logic_vector(7 downto 0); 
signal row_out_orig6: std_logic_vector(7 downto 0); 
signal row_out_orig7: std_logic_vector(7 downto 0); 
signal row_out_orig8: std_logic_vector(7 downto 0); 
signal row_out_orig9: std_logic_vector(7 downto 0); 
signal row_out_orig10: std_logic_vector(7 downto 0); 
signal row_out_orig11: std_logic_vector(7 downto 0); 
signal row_out_orig12: std_logic_vector(7 downto 0); 
signal row_out_orig13: std_logic_vector(7 downto 0); 
signal row_out_orig14: std_logic_vector(7 downto 0); 
signal row_out_orig15: std_logic_vector(7 downto 0); 
signal row_out_orig16: std_logic_vector(7 downto 0); 
signal row_out_orig17: std_logic_vector(7 downto 0); 
signal row_out_orig18: std_logic_vector(7 downto 0); 
signal row_out_orig19: std_logic_vector(7 downto 0); 
signal row_out_orig20: std_logic_vector(7 downto 0); 
signal row_out_orig21: std_logic_vector(7 downto 0); 
signal row_out_orig22: std_logic_vector(7 downto 0); 
signal row_out_orig23: std_logic_vector(7 downto 0); 
signal row_out_orig24: std_logic_vector(7 downto 0); 
signal row_out_orig25: std_logic_vector(7 downto 0); 
signal row_out_orig26: std_logic_vector(7 downto 0); 
signal row_out_orig27: std_logic_vector(7 downto 0); 
signal row_out_orig28: std_logic_vector(7 downto 0); 
signal row_out_orig29: std_logic_vector(7 downto 0); 
signal row_out_orig30: std_logic_vector(7 downto 0); 
signal row_out_orig31: std_logic_vector(7 downto 0); 
signal row_out_orig32: std_logic_vector(7 downto 0); 
signal row_out_orig33: std_logic_vector(7 downto 0); 
signal row_out_orig34: std_logic_vector(7 downto 0); 
signal row_out_orig35: std_logic_vector(7 downto 0); 
signal row_out_orig36: std_logic_vector(7 downto 0); 
signal row_out_orig37: std_logic_vector(7 downto 0); 
signal row_out_orig38: std_logic_vector(7 downto 0); 
signal row_out_orig39: std_logic_vector(7 downto 0); 
signal row_out_orig40: std_logic_vector(7 downto 0); 
signal row_out_orig41: std_logic_vector(7 downto 0); 
signal row_out_orig42: std_logic_vector(7 downto 0); 
signal row_out_orig43: std_logic_vector(7 downto 0); 
signal row_out_orig44: std_logic_vector(7 downto 0); 
signal row_out_orig45: std_logic_vector(7 downto 0); 
signal row_out_orig46: std_logic_vector(7 downto 0); 
signal row_out_orig47: std_logic_vector(7 downto 0); 
signal row_out_orig48: std_logic_vector(7 downto 0); 
signal row_out_orig49: std_logic_vector(7 downto 0); 
signal row_out_orig50: std_logic_vector(7 downto 0); 
signal row_out_orig51: std_logic_vector(7 downto 0); 
signal row_out_orig52: std_logic_vector(7 downto 0); 
signal row_out_orig53: std_logic_vector(7 downto 0); 
signal row_out_orig54: std_logic_vector(7 downto 0); 
signal row_out_orig55: std_logic_vector(7 downto 0); 
signal row_out_orig56: std_logic_vector(7 downto 0); 
signal row_out_orig57: std_logic_vector(7 downto 0); 
signal row_out_orig58: std_logic_vector(7 downto 0); 
signal row_out_orig59: std_logic_vector(7 downto 0); 
signal row_out_orig60: std_logic_vector(7 downto 0); 
signal row_out_orig61: std_logic_vector(7 downto 0); 
signal row_out_orig62: std_logic_vector(7 downto 0); 
signal row_out_orig63: std_logic_vector(7 downto 0); 
signal row_out_cand0: std_logic_vector(7 downto 0); 
signal row_out_cand1: std_logic_vector(7 downto 0); 
signal row_out_cand2: std_logic_vector(7 downto 0); 
signal row_out_cand3: std_logic_vector(7 downto 0); 
signal row_out_cand4: std_logic_vector(7 downto 0); 
signal row_out_cand5: std_logic_vector(7 downto 0); 
signal row_out_cand6: std_logic_vector(7 downto 0); 
signal row_out_cand7: std_logic_vector(7 downto 0); 
signal row_out_cand8: std_logic_vector(7 downto 0); 
signal row_out_cand9: std_logic_vector(7 downto 0); 
signal row_out_cand10: std_logic_vector(7 downto 0); 
signal row_out_cand11: std_logic_vector(7 downto 0); 
signal row_out_cand12: std_logic_vector(7 downto 0); 
signal row_out_cand13: std_logic_vector(7 downto 0); 
signal row_out_cand14: std_logic_vector(7 downto 0); 
signal row_out_cand15: std_logic_vector(7 downto 0); 
signal row_out_cand16: std_logic_vector(7 downto 0); 
signal row_out_cand17: std_logic_vector(7 downto 0); 
signal row_out_cand18: std_logic_vector(7 downto 0); 
signal row_out_cand19: std_logic_vector(7 downto 0); 
signal row_out_cand20: std_logic_vector(7 downto 0); 
signal row_out_cand21: std_logic_vector(7 downto 0); 
signal row_out_cand22: std_logic_vector(7 downto 0); 
signal row_out_cand23: std_logic_vector(7 downto 0); 
signal row_out_cand24: std_logic_vector(7 downto 0); 
signal row_out_cand25: std_logic_vector(7 downto 0); 
signal row_out_cand26: std_logic_vector(7 downto 0); 
signal row_out_cand27: std_logic_vector(7 downto 0); 
signal row_out_cand28: std_logic_vector(7 downto 0); 
signal row_out_cand29: std_logic_vector(7 downto 0); 
signal row_out_cand30: std_logic_vector(7 downto 0); 
signal row_out_cand31: std_logic_vector(7 downto 0); 
signal row_out_cand32: std_logic_vector(7 downto 0); 
signal row_out_cand33: std_logic_vector(7 downto 0); 
signal row_out_cand34: std_logic_vector(7 downto 0); 
signal row_out_cand35: std_logic_vector(7 downto 0); 
signal row_out_cand36: std_logic_vector(7 downto 0); 
signal row_out_cand37: std_logic_vector(7 downto 0); 
signal row_out_cand38: std_logic_vector(7 downto 0); 
signal row_out_cand39: std_logic_vector(7 downto 0); 
signal row_out_cand40: std_logic_vector(7 downto 0); 
signal row_out_cand41: std_logic_vector(7 downto 0); 
signal row_out_cand42: std_logic_vector(7 downto 0); 
signal row_out_cand43: std_logic_vector(7 downto 0); 
signal row_out_cand44: std_logic_vector(7 downto 0); 
signal row_out_cand45: std_logic_vector(7 downto 0); 
signal row_out_cand46: std_logic_vector(7 downto 0); 
signal row_out_cand47: std_logic_vector(7 downto 0); 
signal row_out_cand48: std_logic_vector(7 downto 0); 
signal row_out_cand49: std_logic_vector(7 downto 0); 
signal row_out_cand50: std_logic_vector(7 downto 0); 
signal row_out_cand51: std_logic_vector(7 downto 0); 
signal row_out_cand52: std_logic_vector(7 downto 0); 
signal row_out_cand53: std_logic_vector(7 downto 0); 
signal row_out_cand54: std_logic_vector(7 downto 0); 
signal row_out_cand55: std_logic_vector(7 downto 0); 
signal row_out_cand56: std_logic_vector(7 downto 0); 
signal row_out_cand57: std_logic_vector(7 downto 0); 
signal row_out_cand58: std_logic_vector(7 downto 0); 
signal row_out_cand59: std_logic_vector(7 downto 0); 
signal row_out_cand60: std_logic_vector(7 downto 0); 
signal row_out_cand61: std_logic_vector(7 downto 0); 
signal row_out_cand62: std_logic_vector(7 downto 0); 
signal row_out_cand63: std_logic_vector(7 downto 0); 
signal row_out_orig: std_logic_vector(511 downto 0); 
signal row_out_cand: std_logic_vector(511 downto 0); 

begin

row_out_orig<= row_out_orig0 & row_out_orig1 & row_out_orig2 & row_out_orig3 & row_out_orig4 & row_out_orig5 & row_out_orig6 & row_out_orig7 & row_out_orig8 & row_out_orig9 & row_out_orig10 & row_out_orig11 & row_out_orig12 & row_out_orig13 & row_out_orig14 & row_out_orig15 & row_out_orig16 & row_out_orig17 & row_out_orig18 & row_out_orig19 & row_out_orig20 & row_out_orig21 & row_out_orig22 & row_out_orig23 & row_out_orig24 & row_out_orig25 & row_out_orig26 & row_out_orig27 & row_out_orig28 & row_out_orig29 & row_out_orig30 & row_out_orig31 & row_out_orig32 & row_out_orig33 & row_out_orig34 & row_out_orig35 & row_out_orig36 & row_out_orig37 & row_out_orig38 & row_out_orig39 & row_out_orig40 & row_out_orig41 & row_out_orig42 & row_out_orig43 & row_out_orig44 & row_out_orig45 & row_out_orig46 & row_out_orig47 & row_out_orig48 & row_out_orig49 & row_out_orig50 & row_out_orig51 & row_out_orig52 & row_out_orig53 & row_out_orig54 & row_out_orig55 & row_out_orig56 & row_out_orig57 & row_out_orig58 & row_out_orig59 & row_out_orig60 & row_out_orig61 & row_out_orig62 & row_out_orig63;
row_out_cand<= row_out_cand0 & row_out_cand1 & row_out_cand2 & row_out_cand3 & row_out_cand4 & row_out_cand5 & row_out_cand6 & row_out_cand7 & row_out_cand8 & row_out_cand9 & row_out_cand10 & row_out_cand11 & row_out_cand12 & row_out_cand13 & row_out_cand14 & row_out_cand15 & row_out_cand16 & row_out_cand17 & row_out_cand18 & row_out_cand19 & row_out_cand20 & row_out_cand21 & row_out_cand22 & row_out_cand23 & row_out_cand24 & row_out_cand25 & row_out_cand26 & row_out_cand27 & row_out_cand28 & row_out_cand29 & row_out_cand30 & row_out_cand31 & row_out_cand32 & row_out_cand33 & row_out_cand34 & row_out_cand35 & row_out_cand36 & row_out_cand37 & row_out_cand38 & row_out_cand39 & row_out_cand40 & row_out_cand41 & row_out_cand42 & row_out_cand43 & row_out_cand44 & row_out_cand45 & row_out_cand46 & row_out_cand47 & row_out_cand48 & row_out_cand49 & row_out_cand50 & row_out_cand51 & row_out_cand52 & row_out_cand53 & row_out_cand54 & row_out_cand55 & row_out_cand56 & row_out_cand57 & row_out_cand58 & row_out_cand59 & row_out_cand60 & row_out_cand61 & row_out_cand62 & row_out_cand63;

U_BUFF: entity work.io_buffer port map(clk, rst, wr_en, data_in_orig, data_in_cand,
				row_out_orig0, row_out_orig1, row_out_orig2, row_out_orig3, row_out_orig4, row_out_orig5, row_out_orig6, row_out_orig7, row_out_orig8, row_out_orig9, row_out_orig10, row_out_orig11, row_out_orig12, row_out_orig13, row_out_orig14, row_out_orig15, row_out_orig16, row_out_orig17, row_out_orig18, row_out_orig19, row_out_orig20, row_out_orig21, row_out_orig22, row_out_orig23, row_out_orig24, row_out_orig25, row_out_orig26, row_out_orig27, row_out_orig28, row_out_orig29, row_out_orig30, row_out_orig31, row_out_orig32, row_out_orig33, row_out_orig34, row_out_orig35, row_out_orig36, row_out_orig37, row_out_orig38, row_out_orig39, row_out_orig40, row_out_orig41, row_out_orig42, row_out_orig43, row_out_orig44, row_out_orig45, row_out_orig46, row_out_orig47, row_out_orig48, row_out_orig49, row_out_orig50, row_out_orig51, row_out_orig52, row_out_orig53, row_out_orig54, row_out_orig55, row_out_orig56, row_out_orig57, row_out_orig58, row_out_orig59, row_out_orig60, row_out_orig61, row_out_orig62, row_out_orig63, 
				row_out_cand0, row_out_cand1, row_out_cand2, row_out_cand3, row_out_cand4, row_out_cand5, row_out_cand6, row_out_cand7, row_out_cand8, row_out_cand9, row_out_cand10, row_out_cand11, row_out_cand12, row_out_cand13, row_out_cand14, row_out_cand15, row_out_cand16, row_out_cand17, row_out_cand18, row_out_cand19, row_out_cand20, row_out_cand21, row_out_cand22, row_out_cand23, row_out_cand24, row_out_cand25, row_out_cand26, row_out_cand27, row_out_cand28, row_out_cand29, row_out_cand30, row_out_cand31, row_out_cand32, row_out_cand33, row_out_cand34, row_out_cand35, row_out_cand36, row_out_cand37, row_out_cand38, row_out_cand39, row_out_cand40, row_out_cand41, row_out_cand42, row_out_cand43, row_out_cand44, row_out_cand45, row_out_cand46, row_out_cand47, row_out_cand48, row_out_cand49, row_out_cand50, row_out_cand51, row_out_cand52, row_out_cand53, row_out_cand54, row_out_cand55, row_out_cand56, row_out_cand57, row_out_cand58, row_out_cand59, row_out_cand60, row_out_cand61, row_out_cand62, row_out_cand63);
	U_PU: entity work.ssd64 port map(clk, op_en, rst,
				row_out_orig,
				row_out_cand,
				data_out);
				
end architecture;
