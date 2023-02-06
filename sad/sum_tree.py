from math import log2

m = 128
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
for i in range(1,log+1):
    for j in range(1,int(m/(2**i))):
        c+=1
        signal += f'reg{c}, '
    c+=1
    signal += f'reg{c} : std_logic_vector({8+i} downto 0);\n'
    code += signal
    signal = 'signal '

code += ("BEGIN\n"
"   PROCESS(clk)\n"
"   BEGIN\n\n"
"       IF (rst = 1)THEN\n"
"           q <= (others => '0');\n"
"       ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN\n")
c= 0
for i in range(1,int(m/2)+1):
    code+=f"            reg{i} <= '0'&d({(c+15)} downto {c+8}) + '0'&d({c+7} downto {c});\n"
    c+=16

c=0
for i in range(int(m/2)+1,m):
    if i != m-1:
        code+=f"            reg{i} <= reg{c+1} + reg{c+2};\n"
    else:
        code+=(f"            reg{i} <= reg{i} + reg{c+1} + reg{c+2};\n"
                "        END IF;\n"
                "	END PROCESS;\n"
                f"q <= reg{i};\n"
                "END arch;")
    c+=2


arquivo = open(f'sum_tree_{m}pixels.vhd','w')
arquivo.write(code)
arquivo.close()