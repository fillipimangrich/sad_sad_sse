LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY sum_tree IS
generic (N : natural := 8 );
PORT (clk, enb, rst : IN STD_LOGIC;
	  d : IN std_logic_vector(N*8-1 DOWNTO 0);
	  q : OUT std_logic_vector(9 DOWNTO 0));
END sum_tree;

ARCHITECTURE arch OF sum_tree IS
signal reg1,reg2,reg3,reg4 : std_logic_vector(8 downto 0);
signal reg5,reg6 : std_logic_vector(9 downto 0);
BEGIN
	PROCESS(clk)
	BEGIN

        IF (rst = 1)THEN

            q <= (others => '0');

		ELSIF (clk'EVENT AND clk = '1' AND enb = '1') THEN
            reg1 <= d(63 downto 56) + d(55 downto 48);
            reg2 <= d(47 downto 40) + d(39 downto 32);
            reg3 <= d(31 downto 24) + d(23 downto 16);
            reg4 <= d(15 downto 8) + d(7 downto 0);
            reg5 <= reg1+reg2;
            reg6 <= reg3+reg4;
            q <= reg5+reg6;
		END IF;
	END PROCESS;
END arch;