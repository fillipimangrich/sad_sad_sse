LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY regi IS
generic (N : natural := 4 );
PORT (clk, enb, rst : IN STD_LOGIC;
	  d : IN std_logic_vector(N-1 DOWNTO 0);
	  q : OUT std_logic_vector(N-1 DOWNTO 0));
END reg;

ARCHITECTURE arch OF reg IS
BEGIN
	PROCESS(clk)
	BEGIN
        IF (rst = 1)THEN
            q <= (others => '0');
		ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END arch;