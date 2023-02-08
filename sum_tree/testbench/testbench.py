from math import log2

m = 4
log = int(log2(m))
k = int((log2(m)+7))
code = ("library IEEE;\n"
"use ieee.std_logic_1164.all;\n"
"use ieee.std_logic_arith.all;\n"
"use ieee.std_logic_unsigned.all;\n"

f"entity testbench is\n"
f"end testbench;\n\n"

f"architecture tb of testbench is\n"
)
code += (f"signal clk, enb, rst : IN STD_LOGIC;\n"
f"signal d : std_logic_vector({(m*8)-1} DOWNTO 0);\n"
f"signal q : std_logic_vector({int(log2(m)+7)} DOWNTO 0));\n"
"begin\n"
f"UUT : entity work.sum_tree_{m}pixels port map (clk => clk, enb => enb, rst => rst, d => d, q => q);\n"
"    tb1 : process\n"
"        constant period: time := 20 ns;\n"
"        begin\n")

code +=(
"            clk <= '0';\n"
"            enb <= '0';\n"
"            rst <= '1';\n"
"            d <= (others => '0');\n"
"            wait for period;\n"
'            assert (q = "0000000000")  -- expected output\n'
'            report "test failed for input combination " severity error;\n\n')

for i in range(30):
    if ((i%2)==0):
        clk =1
    else:
        clk =0
    n = '00000010'
    if i<3:
        q = '0000000000'
    else:
        q = format(2*m*(i-2),"b")
        q = f"{q:0>9}"
    code +=(
    f"            clk <= '{clk}';\n"
    "            enb <= '1';\n"
    "            rst <= '0';\n"
    f'            d <= "{n*m}";\n'
    "            wait for period;\n"
    f'            assert (q = "{q}")  -- expected output\n'
    '            report "test failed for input combination " severity error;\n\n')

code +=("            wait; -- indefinitely suspend process\n"
"        end process;\n"
"end tb;\n")

arquivo = open(f'testbench_sum_tree_{m}pixels.vhd','w')
arquivo.write(code)
arquivo.close()