from math import log2

m = 8
log = int(log2(m))
code = ("library IEEE;\n"
"use ieee.std_logic_1164.all;\n"
"use ieee.numeric_std.all;\n"

"entity sum_tree is\n"
f"   PORT (clk, enb, rst : IN STD_LOGIC;\n"
f"       d : IN std_logic_vector({(m*8)-1} DOWNTO 0);\n"
f"       q : OUT std_logic_vector({int(log2(m**2)+7)} DOWNTO 0));\n"
"end sum_tree;\n\n"

"architecture arch of sum_tree is\n"
"signal ZEROS : std_logic_vector(N - 1 DOWNTO 0) := (OTHERS => '0');\n"
)

signal = 'signal '

c=0
for i in range(1,log):
    for j in range(1,int(m/(2*i))):
        c+=1
        signal += f'reg{c}, '
    c+=1
    signal += f'reg{c} : std_logic_vector({m+i} downto 0);\n'
    code += signal
    signal = 'signal '

code += ("BEGIN\n"
"   PROCESS(clk)\n"
"   BEGIN\n\n"
"       IF (rst = 1)THEN\n"
"           q <= (others => '0');\n"
"       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN\n")

for i in range(1,int(m/2)+1):
    k1=m*i*2
    k2=m*(i-1)*2
    code+=f"            reg{i}<= '0'&d({(k1-1)} downto {k2+8}) + '0'&d({k2+7} downto {k2});\n"


arquivo = open(f'sum_tree_{m}pixels.vhd','w')
arquivo.write(code)
arquivo.close()