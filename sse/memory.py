  
  
a =  f"type rom_type is array (0 to addr_width-1) of std_logic_vector(data_width-1 downto 0);\n"
  
b =f"    signal sevenSegment_ROM : rom_type := (\n"


for i in range(128):
    binario = bin(i*i)[2:].zfill(16)

    b +=(
f'                            "{binario}",\n'
)
b += f'                            "{binario}",\n'
a += b
print(a)