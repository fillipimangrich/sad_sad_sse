
from math import log2

m = 128
log = int(log2(m))
code = ("library IEEE;\n"
"use ieee.std_logic_1164.all;\n"
"use ieee.numeric_std.all;\n"
"use ieee.std_logic_unsigned.all;\n"
f"entity sad{m}pixels is\n"
f"   PORT (\n"
f"       v1,v2 : IN std_logic_vector({(m*8)-1} DOWNTO 0);\n"
f"       q : OUT std_logic_vector({(m*8)-1} DOWNTO 0));\n"
f"end sad{m}pixels;\n\n"
f"architecture arch of sad{m}pixels is\n"
f"begin\n"
)

for i in range(0,m):
    code += f"  q({(i*8)+7} downto {i*8}) <= std_logic_vector(abs(signed(v1({(i*8)+7} downto {i*8})) - signed(v2({(i*8)+7} downto {i*8}))));\n"

code += 'end arch;'




arquivo = open(f'sad{m}pixels.vhd','w')
arquivo.write(code)
arquivo.close()