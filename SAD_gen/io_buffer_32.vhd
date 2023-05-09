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
	row_out_cand31: out std_logic_vector(7 downto 0));
end io_buffer;

architecture behav of io_buffer is

type buff_type is array (0 to 31) of std_logic_vector(7 downto 0);

signal buff_orig, buff_cand: buff_type;

signal row_counter_size: unsigned(5 downto 0);
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

end architecture;
