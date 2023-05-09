from math import log2, ceil

N = 64

row_counter_size = int(ceil(log2(N)))


pre_text = """library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity io_buffer is

	port (

	clk, rst, wr_en: in std_logic;

	data_in_orig: in std_logic_vector(7 downto 0);

	data_in_cand: in std_logic_vector(7 downto 0);

"""


print(pre_text)


for i in range(N):

	print("\trow_out_orig%d: out std_logic_vector(7 downto 0);" % (i));



for i in range(N-1):

	print("\trow_out_cand%d: out std_logic_vector(7 downto 0);" % (i));

print("\trow_out_cand%d: out std_logic_vector(7 downto 0));" % (N-1));


print("end io_buffer;")


print("\narchitecture behav of io_buffer is")

print("\ntype buff_type is array (0 to %d) of std_logic_vector(7 downto 0);" % (N-1));

print("\nsignal buff_orig, buff_cand: buff_type;")

print("\nsignal row_counter_size: unsigned(%d downto 0);" % (row_counter_size))

print("begin\n")


print("process(clk, rst)")

print("begin")

print("\tif rst = '1' then")

print("\t\tbuff_orig <= (others => (others => '0'));")

print("\t\tbuff_cand <= (others => (others => '0'));")

print("\telsif clk'event and clk = '1' then")

print("\t\tif wr_en = '1' then -- write")

print("\t\t\tbuff_orig(to_integer(row_counter_size)) <= data_in_orig;")

print("\t\t\tbuff_cand(to_integer(row_counter_size)) <= data_in_cand;")

print("\t\t\trow_counter_size <= row_counter_size + 1;")

print("\t\tend if;")

print("\tend if;")

print("end process;\n")



for i in range(N-1):

	print("row_out_orig%d <= buff_orig(%d);" % (i, i));


for i in range(N-1):

	print("row_out_cand%d <= buff_cand(%d);" % (i, i));



print("\nend architecture;")