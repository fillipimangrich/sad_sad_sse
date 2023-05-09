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
	row_out_cand15: out std_logic_vector(7 downto 0));
end io_buffer;

architecture behav of io_buffer is

type buff_type is array (0 to 15) of std_logic_vector(7 downto 0);

signal buff_orig, buff_cand: buff_type;

signal row_counter_size: unsigned(4 downto 0);
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

end architecture;
