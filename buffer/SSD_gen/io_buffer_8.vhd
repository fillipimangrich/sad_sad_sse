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
	row_out_cand0: out std_logic_vector(7 downto 0);
	row_out_cand1: out std_logic_vector(7 downto 0);
	row_out_cand2: out std_logic_vector(7 downto 0);
	row_out_cand3: out std_logic_vector(7 downto 0);
	row_out_cand4: out std_logic_vector(7 downto 0);
	row_out_cand5: out std_logic_vector(7 downto 0);
	row_out_cand6: out std_logic_vector(7 downto 0);
	row_out_cand7: out std_logic_vector(7 downto 0));
end io_buffer;

architecture behav of io_buffer is

type buff_type is array (0 to 7) of std_logic_vector(7 downto 0);

signal buff_orig, buff_cand: buff_type;

signal row_counter_size: unsigned(3 downto 0);
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
row_out_cand0 <= buff_cand(0);
row_out_cand1 <= buff_cand(1);
row_out_cand2 <= buff_cand(2);
row_out_cand3 <= buff_cand(3);
row_out_cand4 <= buff_cand(4);
row_out_cand5 <= buff_cand(5);
row_out_cand6 <= buff_cand(6);

end architecture;
