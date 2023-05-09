library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity io_buffer is

	port (

	clk, rst, wr_en: in std_logic;

	data_in_orig: in std_logic_vector(7 downto 0);

	data_in_cand: in std_logic_vector(7 downto 0);


	row_out_orig0: out std_logic_vector(7 downto 0);
	row_out_orig1: out std_logic_vector(7 downto 0);
	row_out_orig2: out std_logic_vector(7 downto 0);
	row_out_orig3: out std_logic_vector(7 downto 0);
	row_out_orig4: out std_logic_vector(7 downto 0);
	row_out_orig5: out std_logic_vector(7 downto 0);
	row_out_orig6: out std_logic_vector(7 downto 0);
	row_out_orig7: out std_logic_vector(7 downto 0);
	row_out_orig8: out std_logic_vector(7 downto 0);
	row_out_orig9: out std_logic_vector(7 downto 0);
	row_out_orig10: out std_logic_vector(7 downto 0);
	row_out_orig11: out std_logic_vector(7 downto 0);
	row_out_orig12: out std_logic_vector(7 downto 0);
	row_out_orig13: out std_logic_vector(7 downto 0);
	row_out_orig14: out std_logic_vector(7 downto 0);
	row_out_orig15: out std_logic_vector(7 downto 0);
	row_out_orig16: out std_logic_vector(7 downto 0);
	row_out_orig17: out std_logic_vector(7 downto 0);
	row_out_orig18: out std_logic_vector(7 downto 0);
	row_out_orig19: out std_logic_vector(7 downto 0);
	row_out_orig20: out std_logic_vector(7 downto 0);
	row_out_orig21: out std_logic_vector(7 downto 0);
	row_out_orig22: out std_logic_vector(7 downto 0);
	row_out_orig23: out std_logic_vector(7 downto 0);
	row_out_orig24: out std_logic_vector(7 downto 0);
	row_out_orig25: out std_logic_vector(7 downto 0);
	row_out_orig26: out std_logic_vector(7 downto 0);
	row_out_orig27: out std_logic_vector(7 downto 0);
	row_out_orig28: out std_logic_vector(7 downto 0);
	row_out_orig29: out std_logic_vector(7 downto 0);
	row_out_orig30: out std_logic_vector(7 downto 0);
	row_out_orig31: out std_logic_vector(7 downto 0);
	row_out_orig32: out std_logic_vector(7 downto 0);
	row_out_orig33: out std_logic_vector(7 downto 0);
	row_out_orig34: out std_logic_vector(7 downto 0);
	row_out_orig35: out std_logic_vector(7 downto 0);
	row_out_orig36: out std_logic_vector(7 downto 0);
	row_out_orig37: out std_logic_vector(7 downto 0);
	row_out_orig38: out std_logic_vector(7 downto 0);
	row_out_orig39: out std_logic_vector(7 downto 0);
	row_out_orig40: out std_logic_vector(7 downto 0);
	row_out_orig41: out std_logic_vector(7 downto 0);
	row_out_orig42: out std_logic_vector(7 downto 0);
	row_out_orig43: out std_logic_vector(7 downto 0);
	row_out_orig44: out std_logic_vector(7 downto 0);
	row_out_orig45: out std_logic_vector(7 downto 0);
	row_out_orig46: out std_logic_vector(7 downto 0);
	row_out_orig47: out std_logic_vector(7 downto 0);
	row_out_orig48: out std_logic_vector(7 downto 0);
	row_out_orig49: out std_logic_vector(7 downto 0);
	row_out_orig50: out std_logic_vector(7 downto 0);
	row_out_orig51: out std_logic_vector(7 downto 0);
	row_out_orig52: out std_logic_vector(7 downto 0);
	row_out_orig53: out std_logic_vector(7 downto 0);
	row_out_orig54: out std_logic_vector(7 downto 0);
	row_out_orig55: out std_logic_vector(7 downto 0);
	row_out_orig56: out std_logic_vector(7 downto 0);
	row_out_orig57: out std_logic_vector(7 downto 0);
	row_out_orig58: out std_logic_vector(7 downto 0);
	row_out_orig59: out std_logic_vector(7 downto 0);
	row_out_orig60: out std_logic_vector(7 downto 0);
	row_out_orig61: out std_logic_vector(7 downto 0);
	row_out_orig62: out std_logic_vector(7 downto 0);
	row_out_orig63: out std_logic_vector(7 downto 0);
	row_out_cand0: out std_logic_vector(7 downto 0);
	row_out_cand1: out std_logic_vector(7 downto 0);
	row_out_cand2: out std_logic_vector(7 downto 0);
	row_out_cand3: out std_logic_vector(7 downto 0);
	row_out_cand4: out std_logic_vector(7 downto 0);
	row_out_cand5: out std_logic_vector(7 downto 0);
	row_out_cand6: out std_logic_vector(7 downto 0);
	row_out_cand7: out std_logic_vector(7 downto 0);
	row_out_cand8: out std_logic_vector(7 downto 0);
	row_out_cand9: out std_logic_vector(7 downto 0);
	row_out_cand10: out std_logic_vector(7 downto 0);
	row_out_cand11: out std_logic_vector(7 downto 0);
	row_out_cand12: out std_logic_vector(7 downto 0);
	row_out_cand13: out std_logic_vector(7 downto 0);
	row_out_cand14: out std_logic_vector(7 downto 0);
	row_out_cand15: out std_logic_vector(7 downto 0);
	row_out_cand16: out std_logic_vector(7 downto 0);
	row_out_cand17: out std_logic_vector(7 downto 0);
	row_out_cand18: out std_logic_vector(7 downto 0);
	row_out_cand19: out std_logic_vector(7 downto 0);
	row_out_cand20: out std_logic_vector(7 downto 0);
	row_out_cand21: out std_logic_vector(7 downto 0);
	row_out_cand22: out std_logic_vector(7 downto 0);
	row_out_cand23: out std_logic_vector(7 downto 0);
	row_out_cand24: out std_logic_vector(7 downto 0);
	row_out_cand25: out std_logic_vector(7 downto 0);
	row_out_cand26: out std_logic_vector(7 downto 0);
	row_out_cand27: out std_logic_vector(7 downto 0);
	row_out_cand28: out std_logic_vector(7 downto 0);
	row_out_cand29: out std_logic_vector(7 downto 0);
	row_out_cand30: out std_logic_vector(7 downto 0);
	row_out_cand31: out std_logic_vector(7 downto 0);
	row_out_cand32: out std_logic_vector(7 downto 0);
	row_out_cand33: out std_logic_vector(7 downto 0);
	row_out_cand34: out std_logic_vector(7 downto 0);
	row_out_cand35: out std_logic_vector(7 downto 0);
	row_out_cand36: out std_logic_vector(7 downto 0);
	row_out_cand37: out std_logic_vector(7 downto 0);
	row_out_cand38: out std_logic_vector(7 downto 0);
	row_out_cand39: out std_logic_vector(7 downto 0);
	row_out_cand40: out std_logic_vector(7 downto 0);
	row_out_cand41: out std_logic_vector(7 downto 0);
	row_out_cand42: out std_logic_vector(7 downto 0);
	row_out_cand43: out std_logic_vector(7 downto 0);
	row_out_cand44: out std_logic_vector(7 downto 0);
	row_out_cand45: out std_logic_vector(7 downto 0);
	row_out_cand46: out std_logic_vector(7 downto 0);
	row_out_cand47: out std_logic_vector(7 downto 0);
	row_out_cand48: out std_logic_vector(7 downto 0);
	row_out_cand49: out std_logic_vector(7 downto 0);
	row_out_cand50: out std_logic_vector(7 downto 0);
	row_out_cand51: out std_logic_vector(7 downto 0);
	row_out_cand52: out std_logic_vector(7 downto 0);
	row_out_cand53: out std_logic_vector(7 downto 0);
	row_out_cand54: out std_logic_vector(7 downto 0);
	row_out_cand55: out std_logic_vector(7 downto 0);
	row_out_cand56: out std_logic_vector(7 downto 0);
	row_out_cand57: out std_logic_vector(7 downto 0);
	row_out_cand58: out std_logic_vector(7 downto 0);
	row_out_cand59: out std_logic_vector(7 downto 0);
	row_out_cand60: out std_logic_vector(7 downto 0);
	row_out_cand61: out std_logic_vector(7 downto 0);
	row_out_cand62: out std_logic_vector(7 downto 0);
	row_out_cand63: out std_logic_vector(7 downto 0));
end io_buffer;

architecture behav of io_buffer is

type buff_type is array (0 to 63) of std_logic_vector(7 downto 0);

signal buff_orig, buff_cand: buff_type;

signal row_counter_size: unsigned(6 downto 0);
begin

process(clk, rst)
begin
	if rst = '1' then
		buff_orig <= (others => (others => '0'));
		buff_cand <= (others => (others => '0'));
	elsif clk'event and clk = '1' then
		if wr_en = '1' then -- write
			buff_orig(to_integer(row_counter_size)) <= data_in_orig;
			buff_cand(to_integer(row_counter_size)) <= data_in_cand;
			row_counter_size <= row_counter_size + 1;
		end if;
	end if;
end process;

row_out_orig0 <= buff_orig(0);
row_out_orig1 <= buff_orig(1);
row_out_orig2 <= buff_orig(2);
row_out_orig3 <= buff_orig(3);
row_out_orig4 <= buff_orig(4);
row_out_orig5 <= buff_orig(5);
row_out_orig6 <= buff_orig(6);
row_out_orig7 <= buff_orig(7);
row_out_orig8 <= buff_orig(8);
row_out_orig9 <= buff_orig(9);
row_out_orig10 <= buff_orig(10);
row_out_orig11 <= buff_orig(11);
row_out_orig12 <= buff_orig(12);
row_out_orig13 <= buff_orig(13);
row_out_orig14 <= buff_orig(14);
row_out_orig15 <= buff_orig(15);
row_out_orig16 <= buff_orig(16);
row_out_orig17 <= buff_orig(17);
row_out_orig18 <= buff_orig(18);
row_out_orig19 <= buff_orig(19);
row_out_orig20 <= buff_orig(20);
row_out_orig21 <= buff_orig(21);
row_out_orig22 <= buff_orig(22);
row_out_orig23 <= buff_orig(23);
row_out_orig24 <= buff_orig(24);
row_out_orig25 <= buff_orig(25);
row_out_orig26 <= buff_orig(26);
row_out_orig27 <= buff_orig(27);
row_out_orig28 <= buff_orig(28);
row_out_orig29 <= buff_orig(29);
row_out_orig30 <= buff_orig(30);
row_out_orig31 <= buff_orig(31);
row_out_orig32 <= buff_orig(32);
row_out_orig33 <= buff_orig(33);
row_out_orig34 <= buff_orig(34);
row_out_orig35 <= buff_orig(35);
row_out_orig36 <= buff_orig(36);
row_out_orig37 <= buff_orig(37);
row_out_orig38 <= buff_orig(38);
row_out_orig39 <= buff_orig(39);
row_out_orig40 <= buff_orig(40);
row_out_orig41 <= buff_orig(41);
row_out_orig42 <= buff_orig(42);
row_out_orig43 <= buff_orig(43);
row_out_orig44 <= buff_orig(44);
row_out_orig45 <= buff_orig(45);
row_out_orig46 <= buff_orig(46);
row_out_orig47 <= buff_orig(47);
row_out_orig48 <= buff_orig(48);
row_out_orig49 <= buff_orig(49);
row_out_orig50 <= buff_orig(50);
row_out_orig51 <= buff_orig(51);
row_out_orig52 <= buff_orig(52);
row_out_orig53 <= buff_orig(53);
row_out_orig54 <= buff_orig(54);
row_out_orig55 <= buff_orig(55);
row_out_orig56 <= buff_orig(56);
row_out_orig57 <= buff_orig(57);
row_out_orig58 <= buff_orig(58);
row_out_orig59 <= buff_orig(59);
row_out_orig60 <= buff_orig(60);
row_out_orig61 <= buff_orig(61);
row_out_orig62 <= buff_orig(62);
row_out_cand0 <= buff_cand(0);
row_out_cand1 <= buff_cand(1);
row_out_cand2 <= buff_cand(2);
row_out_cand3 <= buff_cand(3);
row_out_cand4 <= buff_cand(4);
row_out_cand5 <= buff_cand(5);
row_out_cand6 <= buff_cand(6);
row_out_cand7 <= buff_cand(7);
row_out_cand8 <= buff_cand(8);
row_out_cand9 <= buff_cand(9);
row_out_cand10 <= buff_cand(10);
row_out_cand11 <= buff_cand(11);
row_out_cand12 <= buff_cand(12);
row_out_cand13 <= buff_cand(13);
row_out_cand14 <= buff_cand(14);
row_out_cand15 <= buff_cand(15);
row_out_cand16 <= buff_cand(16);
row_out_cand17 <= buff_cand(17);
row_out_cand18 <= buff_cand(18);
row_out_cand19 <= buff_cand(19);
row_out_cand20 <= buff_cand(20);
row_out_cand21 <= buff_cand(21);
row_out_cand22 <= buff_cand(22);
row_out_cand23 <= buff_cand(23);
row_out_cand24 <= buff_cand(24);
row_out_cand25 <= buff_cand(25);
row_out_cand26 <= buff_cand(26);
row_out_cand27 <= buff_cand(27);
row_out_cand28 <= buff_cand(28);
row_out_cand29 <= buff_cand(29);
row_out_cand30 <= buff_cand(30);
row_out_cand31 <= buff_cand(31);
row_out_cand32 <= buff_cand(32);
row_out_cand33 <= buff_cand(33);
row_out_cand34 <= buff_cand(34);
row_out_cand35 <= buff_cand(35);
row_out_cand36 <= buff_cand(36);
row_out_cand37 <= buff_cand(37);
row_out_cand38 <= buff_cand(38);
row_out_cand39 <= buff_cand(39);
row_out_cand40 <= buff_cand(40);
row_out_cand41 <= buff_cand(41);
row_out_cand42 <= buff_cand(42);
row_out_cand43 <= buff_cand(43);
row_out_cand44 <= buff_cand(44);
row_out_cand45 <= buff_cand(45);
row_out_cand46 <= buff_cand(46);
row_out_cand47 <= buff_cand(47);
row_out_cand48 <= buff_cand(48);
row_out_cand49 <= buff_cand(49);
row_out_cand50 <= buff_cand(50);
row_out_cand51 <= buff_cand(51);
row_out_cand52 <= buff_cand(52);
row_out_cand53 <= buff_cand(53);
row_out_cand54 <= buff_cand(54);
row_out_cand55 <= buff_cand(55);
row_out_cand56 <= buff_cand(56);
row_out_cand57 <= buff_cand(57);
row_out_cand58 <= buff_cand(58);
row_out_cand59 <= buff_cand(59);
row_out_cand60 <= buff_cand(60);
row_out_cand61 <= buff_cand(61);
row_out_cand62 <= buff_cand(62);

end architecture;
