from math import ceil, log2

N = 128
mode = 'ssd'
if mode == 'sad':
	N_bits_out_minus1 = int(ceil(log2(N) + 7))
elif mode == 'satd':
	N_bits_out_minus1 = int(ceil(log2(N) + 7))
else: 
	N_bits_out_minus1 = int(ceil(log2(N) + 15))


pre_text  = """library ieee;
use ieee.std_logic_1164.all;

entity top_level_%s is
	port(clk,rst: in std_logic;
		 op_en : in std_logic;
		 wr_en: in std_logic;
		 data_in_orig: in std_logic_vector(7 downto 0);
		 data_in_cand: in std_logic_vector(7 downto 0);
		 data_out: out std_logic_vector(%d downto 0)
		);

end top_level_%s;
""" % (mode, N_bits_out_minus1, mode)

print(pre_text)
print(f"architecture rtl of top_level_{mode} is")
for i in range(N):
	print("signal row_out_orig%d: std_logic_vector(7 downto 0); " % (i))
for i in range(N):
	print("signal row_out_cand%d: std_logic_vector(7 downto 0); " % (i))

print("signal row_out_orig: std_logic_vector(%d downto 0); " % (N*8-1))
print("signal row_out_cand: std_logic_vector(%d downto 0); " % (N*8-1))


print("""
begin
""")

print(f'row_out_orig<= ', end='')
for i in range(N-1):
	print("row_out_orig%d & " % (i), end = "")
print("row_out_orig%d;" % (N-1))

print(f'row_out_cand<= ', end='')

for i in range(N-1):
	print("row_out_cand%d & " % (i), end = "")
print("row_out_cand%d;\n" % (N-1))

print("""U_BUFF: entity work.io_buffer port map(clk, rst, wr_en, data_in_orig, data_in_cand,""")

print("\t\t\t\t", end="")
for i in range(N):
	print("row_out_orig%d, " % (i), end = "")
print("\n\t\t\t\t", end="")
for i in range(N-1):
	print("row_out_cand%d, " % (i), end = "")
print("row_out_cand%d);" % (N-1))

print("""	U_PU: entity work.%s%d port map(clk, op_en, rst,
				row_out_orig,
				row_out_cand,
				data_out);""" % (mode,N))

print("\t\t\t\t", end="")



print("\nend architecture;")
