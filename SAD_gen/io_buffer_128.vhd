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
	row_out_orig8: out std_logic_vector(7 downto 0);
	row_out_orig9: out std_logic_vector(7 downto 0);
	row_out_orig10: out std_logic_vector(7 downto 0);
	row_out_orig11: out std_logic_vector(7 downto 0);
	row_out_orig12: out std_logic_vector(7 downto 0);
	row_out_orig13: out std_logic_vector(7 downto 0);
	row_out_orig14: out std_logic_vector(7 downto 0);
	row_out_orig15: out std_logic_vector(7 downto 0);
	row_out_orig16: out std_logic_vector(7 downto 0);
	row_out_orig17: out std_logic_vector(7 downto 0);
	row_out_orig18: out std_logic_vector(7 downto 0);
	row_out_orig19: out std_logic_vector(7 downto 0);
	row_out_orig20: out std_logic_vector(7 downto 0);
	row_out_orig21: out std_logic_vector(7 downto 0);
	row_out_orig22: out std_logic_vector(7 downto 0);
	row_out_orig23: out std_logic_vector(7 downto 0);
	row_out_orig24: out std_logic_vector(7 downto 0);
	row_out_orig25: out std_logic_vector(7 downto 0);
	row_out_orig26: out std_logic_vector(7 downto 0);
	row_out_orig27: out std_logic_vector(7 downto 0);
	row_out_orig28: out std_logic_vector(7 downto 0);
	row_out_orig29: out std_logic_vector(7 downto 0);
	row_out_orig30: out std_logic_vector(7 downto 0);
	row_out_orig31: out std_logic_vector(7 downto 0);
	row_out_orig32: out std_logic_vector(7 downto 0);
	row_out_orig33: out std_logic_vector(7 downto 0);
	row_out_orig34: out std_logic_vector(7 downto 0);
	row_out_orig35: out std_logic_vector(7 downto 0);
	row_out_orig36: out std_logic_vector(7 downto 0);
	row_out_orig37: out std_logic_vector(7 downto 0);
	row_out_orig38: out std_logic_vector(7 downto 0);
	row_out_orig39: out std_logic_vector(7 downto 0);
	row_out_orig40: out std_logic_vector(7 downto 0);
	row_out_orig41: out std_logic_vector(7 downto 0);
	row_out_orig42: out std_logic_vector(7 downto 0);
	row_out_orig43: out std_logic_vector(7 downto 0);
	row_out_orig44: out std_logic_vector(7 downto 0);
	row_out_orig45: out std_logic_vector(7 downto 0);
	row_out_orig46: out std_logic_vector(7 downto 0);
	row_out_orig47: out std_logic_vector(7 downto 0);
	row_out_orig48: out std_logic_vector(7 downto 0);
	row_out_orig49: out std_logic_vector(7 downto 0);
	row_out_orig50: out std_logic_vector(7 downto 0);
	row_out_orig51: out std_logic_vector(7 downto 0);
	row_out_orig52: out std_logic_vector(7 downto 0);
	row_out_orig53: out std_logic_vector(7 downto 0);
	row_out_orig54: out std_logic_vector(7 downto 0);
	row_out_orig55: out std_logic_vector(7 downto 0);
	row_out_orig56: out std_logic_vector(7 downto 0);
	row_out_orig57: out std_logic_vector(7 downto 0);
	row_out_orig58: out std_logic_vector(7 downto 0);
	row_out_orig59: out std_logic_vector(7 downto 0);
	row_out_orig60: out std_logic_vector(7 downto 0);
	row_out_orig61: out std_logic_vector(7 downto 0);
	row_out_orig62: out std_logic_vector(7 downto 0);
	row_out_orig63: out std_logic_vector(7 downto 0);
	row_out_orig64: out std_logic_vector(7 downto 0);
	row_out_orig65: out std_logic_vector(7 downto 0);
	row_out_orig66: out std_logic_vector(7 downto 0);
	row_out_orig67: out std_logic_vector(7 downto 0);
	row_out_orig68: out std_logic_vector(7 downto 0);
	row_out_orig69: out std_logic_vector(7 downto 0);
	row_out_orig70: out std_logic_vector(7 downto 0);
	row_out_orig71: out std_logic_vector(7 downto 0);
	row_out_orig72: out std_logic_vector(7 downto 0);
	row_out_orig73: out std_logic_vector(7 downto 0);
	row_out_orig74: out std_logic_vector(7 downto 0);
	row_out_orig75: out std_logic_vector(7 downto 0);
	row_out_orig76: out std_logic_vector(7 downto 0);
	row_out_orig77: out std_logic_vector(7 downto 0);
	row_out_orig78: out std_logic_vector(7 downto 0);
	row_out_orig79: out std_logic_vector(7 downto 0);
	row_out_orig80: out std_logic_vector(7 downto 0);
	row_out_orig81: out std_logic_vector(7 downto 0);
	row_out_orig82: out std_logic_vector(7 downto 0);
	row_out_orig83: out std_logic_vector(7 downto 0);
	row_out_orig84: out std_logic_vector(7 downto 0);
	row_out_orig85: out std_logic_vector(7 downto 0);
	row_out_orig86: out std_logic_vector(7 downto 0);
	row_out_orig87: out std_logic_vector(7 downto 0);
	row_out_orig88: out std_logic_vector(7 downto 0);
	row_out_orig89: out std_logic_vector(7 downto 0);
	row_out_orig90: out std_logic_vector(7 downto 0);
	row_out_orig91: out std_logic_vector(7 downto 0);
	row_out_orig92: out std_logic_vector(7 downto 0);
	row_out_orig93: out std_logic_vector(7 downto 0);
	row_out_orig94: out std_logic_vector(7 downto 0);
	row_out_orig95: out std_logic_vector(7 downto 0);
	row_out_orig96: out std_logic_vector(7 downto 0);
	row_out_orig97: out std_logic_vector(7 downto 0);
	row_out_orig98: out std_logic_vector(7 downto 0);
	row_out_orig99: out std_logic_vector(7 downto 0);
	row_out_orig100: out std_logic_vector(7 downto 0);
	row_out_orig101: out std_logic_vector(7 downto 0);
	row_out_orig102: out std_logic_vector(7 downto 0);
	row_out_orig103: out std_logic_vector(7 downto 0);
	row_out_orig104: out std_logic_vector(7 downto 0);
	row_out_orig105: out std_logic_vector(7 downto 0);
	row_out_orig106: out std_logic_vector(7 downto 0);
	row_out_orig107: out std_logic_vector(7 downto 0);
	row_out_orig108: out std_logic_vector(7 downto 0);
	row_out_orig109: out std_logic_vector(7 downto 0);
	row_out_orig110: out std_logic_vector(7 downto 0);
	row_out_orig111: out std_logic_vector(7 downto 0);
	row_out_orig112: out std_logic_vector(7 downto 0);
	row_out_orig113: out std_logic_vector(7 downto 0);
	row_out_orig114: out std_logic_vector(7 downto 0);
	row_out_orig115: out std_logic_vector(7 downto 0);
	row_out_orig116: out std_logic_vector(7 downto 0);
	row_out_orig117: out std_logic_vector(7 downto 0);
	row_out_orig118: out std_logic_vector(7 downto 0);
	row_out_orig119: out std_logic_vector(7 downto 0);
	row_out_orig120: out std_logic_vector(7 downto 0);
	row_out_orig121: out std_logic_vector(7 downto 0);
	row_out_orig122: out std_logic_vector(7 downto 0);
	row_out_orig123: out std_logic_vector(7 downto 0);
	row_out_orig124: out std_logic_vector(7 downto 0);
	row_out_orig125: out std_logic_vector(7 downto 0);
	row_out_orig126: out std_logic_vector(7 downto 0);
	row_out_orig127: out std_logic_vector(7 downto 0);
	row_out_cand0: out std_logic_vector(7 downto 0);
	row_out_cand1: out std_logic_vector(7 downto 0);
	row_out_cand2: out std_logic_vector(7 downto 0);
	row_out_cand3: out std_logic_vector(7 downto 0);
	row_out_cand4: out std_logic_vector(7 downto 0);
	row_out_cand5: out std_logic_vector(7 downto 0);
	row_out_cand6: out std_logic_vector(7 downto 0);
	row_out_cand7: out std_logic_vector(7 downto 0);
	row_out_cand8: out std_logic_vector(7 downto 0);
	row_out_cand9: out std_logic_vector(7 downto 0);
	row_out_cand10: out std_logic_vector(7 downto 0);
	row_out_cand11: out std_logic_vector(7 downto 0);
	row_out_cand12: out std_logic_vector(7 downto 0);
	row_out_cand13: out std_logic_vector(7 downto 0);
	row_out_cand14: out std_logic_vector(7 downto 0);
	row_out_cand15: out std_logic_vector(7 downto 0);
	row_out_cand16: out std_logic_vector(7 downto 0);
	row_out_cand17: out std_logic_vector(7 downto 0);
	row_out_cand18: out std_logic_vector(7 downto 0);
	row_out_cand19: out std_logic_vector(7 downto 0);
	row_out_cand20: out std_logic_vector(7 downto 0);
	row_out_cand21: out std_logic_vector(7 downto 0);
	row_out_cand22: out std_logic_vector(7 downto 0);
	row_out_cand23: out std_logic_vector(7 downto 0);
	row_out_cand24: out std_logic_vector(7 downto 0);
	row_out_cand25: out std_logic_vector(7 downto 0);
	row_out_cand26: out std_logic_vector(7 downto 0);
	row_out_cand27: out std_logic_vector(7 downto 0);
	row_out_cand28: out std_logic_vector(7 downto 0);
	row_out_cand29: out std_logic_vector(7 downto 0);
	row_out_cand30: out std_logic_vector(7 downto 0);
	row_out_cand31: out std_logic_vector(7 downto 0);
	row_out_cand32: out std_logic_vector(7 downto 0);
	row_out_cand33: out std_logic_vector(7 downto 0);
	row_out_cand34: out std_logic_vector(7 downto 0);
	row_out_cand35: out std_logic_vector(7 downto 0);
	row_out_cand36: out std_logic_vector(7 downto 0);
	row_out_cand37: out std_logic_vector(7 downto 0);
	row_out_cand38: out std_logic_vector(7 downto 0);
	row_out_cand39: out std_logic_vector(7 downto 0);
	row_out_cand40: out std_logic_vector(7 downto 0);
	row_out_cand41: out std_logic_vector(7 downto 0);
	row_out_cand42: out std_logic_vector(7 downto 0);
	row_out_cand43: out std_logic_vector(7 downto 0);
	row_out_cand44: out std_logic_vector(7 downto 0);
	row_out_cand45: out std_logic_vector(7 downto 0);
	row_out_cand46: out std_logic_vector(7 downto 0);
	row_out_cand47: out std_logic_vector(7 downto 0);
	row_out_cand48: out std_logic_vector(7 downto 0);
	row_out_cand49: out std_logic_vector(7 downto 0);
	row_out_cand50: out std_logic_vector(7 downto 0);
	row_out_cand51: out std_logic_vector(7 downto 0);
	row_out_cand52: out std_logic_vector(7 downto 0);
	row_out_cand53: out std_logic_vector(7 downto 0);
	row_out_cand54: out std_logic_vector(7 downto 0);
	row_out_cand55: out std_logic_vector(7 downto 0);
	row_out_cand56: out std_logic_vector(7 downto 0);
	row_out_cand57: out std_logic_vector(7 downto 0);
	row_out_cand58: out std_logic_vector(7 downto 0);
	row_out_cand59: out std_logic_vector(7 downto 0);
	row_out_cand60: out std_logic_vector(7 downto 0);
	row_out_cand61: out std_logic_vector(7 downto 0);
	row_out_cand62: out std_logic_vector(7 downto 0);
	row_out_cand63: out std_logic_vector(7 downto 0);
	row_out_cand64: out std_logic_vector(7 downto 0);
	row_out_cand65: out std_logic_vector(7 downto 0);
	row_out_cand66: out std_logic_vector(7 downto 0);
	row_out_cand67: out std_logic_vector(7 downto 0);
	row_out_cand68: out std_logic_vector(7 downto 0);
	row_out_cand69: out std_logic_vector(7 downto 0);
	row_out_cand70: out std_logic_vector(7 downto 0);
	row_out_cand71: out std_logic_vector(7 downto 0);
	row_out_cand72: out std_logic_vector(7 downto 0);
	row_out_cand73: out std_logic_vector(7 downto 0);
	row_out_cand74: out std_logic_vector(7 downto 0);
	row_out_cand75: out std_logic_vector(7 downto 0);
	row_out_cand76: out std_logic_vector(7 downto 0);
	row_out_cand77: out std_logic_vector(7 downto 0);
	row_out_cand78: out std_logic_vector(7 downto 0);
	row_out_cand79: out std_logic_vector(7 downto 0);
	row_out_cand80: out std_logic_vector(7 downto 0);
	row_out_cand81: out std_logic_vector(7 downto 0);
	row_out_cand82: out std_logic_vector(7 downto 0);
	row_out_cand83: out std_logic_vector(7 downto 0);
	row_out_cand84: out std_logic_vector(7 downto 0);
	row_out_cand85: out std_logic_vector(7 downto 0);
	row_out_cand86: out std_logic_vector(7 downto 0);
	row_out_cand87: out std_logic_vector(7 downto 0);
	row_out_cand88: out std_logic_vector(7 downto 0);
	row_out_cand89: out std_logic_vector(7 downto 0);
	row_out_cand90: out std_logic_vector(7 downto 0);
	row_out_cand91: out std_logic_vector(7 downto 0);
	row_out_cand92: out std_logic_vector(7 downto 0);
	row_out_cand93: out std_logic_vector(7 downto 0);
	row_out_cand94: out std_logic_vector(7 downto 0);
	row_out_cand95: out std_logic_vector(7 downto 0);
	row_out_cand96: out std_logic_vector(7 downto 0);
	row_out_cand97: out std_logic_vector(7 downto 0);
	row_out_cand98: out std_logic_vector(7 downto 0);
	row_out_cand99: out std_logic_vector(7 downto 0);
	row_out_cand100: out std_logic_vector(7 downto 0);
	row_out_cand101: out std_logic_vector(7 downto 0);
	row_out_cand102: out std_logic_vector(7 downto 0);
	row_out_cand103: out std_logic_vector(7 downto 0);
	row_out_cand104: out std_logic_vector(7 downto 0);
	row_out_cand105: out std_logic_vector(7 downto 0);
	row_out_cand106: out std_logic_vector(7 downto 0);
	row_out_cand107: out std_logic_vector(7 downto 0);
	row_out_cand108: out std_logic_vector(7 downto 0);
	row_out_cand109: out std_logic_vector(7 downto 0);
	row_out_cand110: out std_logic_vector(7 downto 0);
	row_out_cand111: out std_logic_vector(7 downto 0);
	row_out_cand112: out std_logic_vector(7 downto 0);
	row_out_cand113: out std_logic_vector(7 downto 0);
	row_out_cand114: out std_logic_vector(7 downto 0);
	row_out_cand115: out std_logic_vector(7 downto 0);
	row_out_cand116: out std_logic_vector(7 downto 0);
	row_out_cand117: out std_logic_vector(7 downto 0);
	row_out_cand118: out std_logic_vector(7 downto 0);
	row_out_cand119: out std_logic_vector(7 downto 0);
	row_out_cand120: out std_logic_vector(7 downto 0);
	row_out_cand121: out std_logic_vector(7 downto 0);
	row_out_cand122: out std_logic_vector(7 downto 0);
	row_out_cand123: out std_logic_vector(7 downto 0);
	row_out_cand124: out std_logic_vector(7 downto 0);
	row_out_cand125: out std_logic_vector(7 downto 0);
	row_out_cand126: out std_logic_vector(7 downto 0);
	row_out_cand127: out std_logic_vector(7 downto 0));
end io_buffer;

architecture behav of io_buffer is

type buff_type is array (0 to 127) of std_logic_vector(7 downto 0);

signal buff_orig, buff_cand: buff_type;

signal row_counter_size: unsigned(7 downto 0);
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
row_out_orig7 <= buff_orig(7);
row_out_orig8 <= buff_orig(8);
row_out_orig9 <= buff_orig(9);
row_out_orig10 <= buff_orig(10);
row_out_orig11 <= buff_orig(11);
row_out_orig12 <= buff_orig(12);
row_out_orig13 <= buff_orig(13);
row_out_orig14 <= buff_orig(14);
row_out_orig15 <= buff_orig(15);
row_out_orig16 <= buff_orig(16);
row_out_orig17 <= buff_orig(17);
row_out_orig18 <= buff_orig(18);
row_out_orig19 <= buff_orig(19);
row_out_orig20 <= buff_orig(20);
row_out_orig21 <= buff_orig(21);
row_out_orig22 <= buff_orig(22);
row_out_orig23 <= buff_orig(23);
row_out_orig24 <= buff_orig(24);
row_out_orig25 <= buff_orig(25);
row_out_orig26 <= buff_orig(26);
row_out_orig27 <= buff_orig(27);
row_out_orig28 <= buff_orig(28);
row_out_orig29 <= buff_orig(29);
row_out_orig30 <= buff_orig(30);
row_out_orig31 <= buff_orig(31);
row_out_orig32 <= buff_orig(32);
row_out_orig33 <= buff_orig(33);
row_out_orig34 <= buff_orig(34);
row_out_orig35 <= buff_orig(35);
row_out_orig36 <= buff_orig(36);
row_out_orig37 <= buff_orig(37);
row_out_orig38 <= buff_orig(38);
row_out_orig39 <= buff_orig(39);
row_out_orig40 <= buff_orig(40);
row_out_orig41 <= buff_orig(41);
row_out_orig42 <= buff_orig(42);
row_out_orig43 <= buff_orig(43);
row_out_orig44 <= buff_orig(44);
row_out_orig45 <= buff_orig(45);
row_out_orig46 <= buff_orig(46);
row_out_orig47 <= buff_orig(47);
row_out_orig48 <= buff_orig(48);
row_out_orig49 <= buff_orig(49);
row_out_orig50 <= buff_orig(50);
row_out_orig51 <= buff_orig(51);
row_out_orig52 <= buff_orig(52);
row_out_orig53 <= buff_orig(53);
row_out_orig54 <= buff_orig(54);
row_out_orig55 <= buff_orig(55);
row_out_orig56 <= buff_orig(56);
row_out_orig57 <= buff_orig(57);
row_out_orig58 <= buff_orig(58);
row_out_orig59 <= buff_orig(59);
row_out_orig60 <= buff_orig(60);
row_out_orig61 <= buff_orig(61);
row_out_orig62 <= buff_orig(62);
row_out_orig63 <= buff_orig(63);
row_out_orig64 <= buff_orig(64);
row_out_orig65 <= buff_orig(65);
row_out_orig66 <= buff_orig(66);
row_out_orig67 <= buff_orig(67);
row_out_orig68 <= buff_orig(68);
row_out_orig69 <= buff_orig(69);
row_out_orig70 <= buff_orig(70);
row_out_orig71 <= buff_orig(71);
row_out_orig72 <= buff_orig(72);
row_out_orig73 <= buff_orig(73);
row_out_orig74 <= buff_orig(74);
row_out_orig75 <= buff_orig(75);
row_out_orig76 <= buff_orig(76);
row_out_orig77 <= buff_orig(77);
row_out_orig78 <= buff_orig(78);
row_out_orig79 <= buff_orig(79);
row_out_orig80 <= buff_orig(80);
row_out_orig81 <= buff_orig(81);
row_out_orig82 <= buff_orig(82);
row_out_orig83 <= buff_orig(83);
row_out_orig84 <= buff_orig(84);
row_out_orig85 <= buff_orig(85);
row_out_orig86 <= buff_orig(86);
row_out_orig87 <= buff_orig(87);
row_out_orig88 <= buff_orig(88);
row_out_orig89 <= buff_orig(89);
row_out_orig90 <= buff_orig(90);
row_out_orig91 <= buff_orig(91);
row_out_orig92 <= buff_orig(92);
row_out_orig93 <= buff_orig(93);
row_out_orig94 <= buff_orig(94);
row_out_orig95 <= buff_orig(95);
row_out_orig96 <= buff_orig(96);
row_out_orig97 <= buff_orig(97);
row_out_orig98 <= buff_orig(98);
row_out_orig99 <= buff_orig(99);
row_out_orig100 <= buff_orig(100);
row_out_orig101 <= buff_orig(101);
row_out_orig102 <= buff_orig(102);
row_out_orig103 <= buff_orig(103);
row_out_orig104 <= buff_orig(104);
row_out_orig105 <= buff_orig(105);
row_out_orig106 <= buff_orig(106);
row_out_orig107 <= buff_orig(107);
row_out_orig108 <= buff_orig(108);
row_out_orig109 <= buff_orig(109);
row_out_orig110 <= buff_orig(110);
row_out_orig111 <= buff_orig(111);
row_out_orig112 <= buff_orig(112);
row_out_orig113 <= buff_orig(113);
row_out_orig114 <= buff_orig(114);
row_out_orig115 <= buff_orig(115);
row_out_orig116 <= buff_orig(116);
row_out_orig117 <= buff_orig(117);
row_out_orig118 <= buff_orig(118);
row_out_orig119 <= buff_orig(119);
row_out_orig120 <= buff_orig(120);
row_out_orig121 <= buff_orig(121);
row_out_orig122 <= buff_orig(122);
row_out_orig123 <= buff_orig(123);
row_out_orig124 <= buff_orig(124);
row_out_orig125 <= buff_orig(125);
row_out_orig126 <= buff_orig(126);
row_out_cand0 <= buff_cand(0);
row_out_cand1 <= buff_cand(1);
row_out_cand2 <= buff_cand(2);
row_out_cand3 <= buff_cand(3);
row_out_cand4 <= buff_cand(4);
row_out_cand5 <= buff_cand(5);
row_out_cand6 <= buff_cand(6);
row_out_cand7 <= buff_cand(7);
row_out_cand8 <= buff_cand(8);
row_out_cand9 <= buff_cand(9);
row_out_cand10 <= buff_cand(10);
row_out_cand11 <= buff_cand(11);
row_out_cand12 <= buff_cand(12);
row_out_cand13 <= buff_cand(13);
row_out_cand14 <= buff_cand(14);
row_out_cand15 <= buff_cand(15);
row_out_cand16 <= buff_cand(16);
row_out_cand17 <= buff_cand(17);
row_out_cand18 <= buff_cand(18);
row_out_cand19 <= buff_cand(19);
row_out_cand20 <= buff_cand(20);
row_out_cand21 <= buff_cand(21);
row_out_cand22 <= buff_cand(22);
row_out_cand23 <= buff_cand(23);
row_out_cand24 <= buff_cand(24);
row_out_cand25 <= buff_cand(25);
row_out_cand26 <= buff_cand(26);
row_out_cand27 <= buff_cand(27);
row_out_cand28 <= buff_cand(28);
row_out_cand29 <= buff_cand(29);
row_out_cand30 <= buff_cand(30);
row_out_cand31 <= buff_cand(31);
row_out_cand32 <= buff_cand(32);
row_out_cand33 <= buff_cand(33);
row_out_cand34 <= buff_cand(34);
row_out_cand35 <= buff_cand(35);
row_out_cand36 <= buff_cand(36);
row_out_cand37 <= buff_cand(37);
row_out_cand38 <= buff_cand(38);
row_out_cand39 <= buff_cand(39);
row_out_cand40 <= buff_cand(40);
row_out_cand41 <= buff_cand(41);
row_out_cand42 <= buff_cand(42);
row_out_cand43 <= buff_cand(43);
row_out_cand44 <= buff_cand(44);
row_out_cand45 <= buff_cand(45);
row_out_cand46 <= buff_cand(46);
row_out_cand47 <= buff_cand(47);
row_out_cand48 <= buff_cand(48);
row_out_cand49 <= buff_cand(49);
row_out_cand50 <= buff_cand(50);
row_out_cand51 <= buff_cand(51);
row_out_cand52 <= buff_cand(52);
row_out_cand53 <= buff_cand(53);
row_out_cand54 <= buff_cand(54);
row_out_cand55 <= buff_cand(55);
row_out_cand56 <= buff_cand(56);
row_out_cand57 <= buff_cand(57);
row_out_cand58 <= buff_cand(58);
row_out_cand59 <= buff_cand(59);
row_out_cand60 <= buff_cand(60);
row_out_cand61 <= buff_cand(61);
row_out_cand62 <= buff_cand(62);
row_out_cand63 <= buff_cand(63);
row_out_cand64 <= buff_cand(64);
row_out_cand65 <= buff_cand(65);
row_out_cand66 <= buff_cand(66);
row_out_cand67 <= buff_cand(67);
row_out_cand68 <= buff_cand(68);
row_out_cand69 <= buff_cand(69);
row_out_cand70 <= buff_cand(70);
row_out_cand71 <= buff_cand(71);
row_out_cand72 <= buff_cand(72);
row_out_cand73 <= buff_cand(73);
row_out_cand74 <= buff_cand(74);
row_out_cand75 <= buff_cand(75);
row_out_cand76 <= buff_cand(76);
row_out_cand77 <= buff_cand(77);
row_out_cand78 <= buff_cand(78);
row_out_cand79 <= buff_cand(79);
row_out_cand80 <= buff_cand(80);
row_out_cand81 <= buff_cand(81);
row_out_cand82 <= buff_cand(82);
row_out_cand83 <= buff_cand(83);
row_out_cand84 <= buff_cand(84);
row_out_cand85 <= buff_cand(85);
row_out_cand86 <= buff_cand(86);
row_out_cand87 <= buff_cand(87);
row_out_cand88 <= buff_cand(88);
row_out_cand89 <= buff_cand(89);
row_out_cand90 <= buff_cand(90);
row_out_cand91 <= buff_cand(91);
row_out_cand92 <= buff_cand(92);
row_out_cand93 <= buff_cand(93);
row_out_cand94 <= buff_cand(94);
row_out_cand95 <= buff_cand(95);
row_out_cand96 <= buff_cand(96);
row_out_cand97 <= buff_cand(97);
row_out_cand98 <= buff_cand(98);
row_out_cand99 <= buff_cand(99);
row_out_cand100 <= buff_cand(100);
row_out_cand101 <= buff_cand(101);
row_out_cand102 <= buff_cand(102);
row_out_cand103 <= buff_cand(103);
row_out_cand104 <= buff_cand(104);
row_out_cand105 <= buff_cand(105);
row_out_cand106 <= buff_cand(106);
row_out_cand107 <= buff_cand(107);
row_out_cand108 <= buff_cand(108);
row_out_cand109 <= buff_cand(109);
row_out_cand110 <= buff_cand(110);
row_out_cand111 <= buff_cand(111);
row_out_cand112 <= buff_cand(112);
row_out_cand113 <= buff_cand(113);
row_out_cand114 <= buff_cand(114);
row_out_cand115 <= buff_cand(115);
row_out_cand116 <= buff_cand(116);
row_out_cand117 <= buff_cand(117);
row_out_cand118 <= buff_cand(118);
row_out_cand119 <= buff_cand(119);
row_out_cand120 <= buff_cand(120);
row_out_cand121 <= buff_cand(121);
row_out_cand122 <= buff_cand(122);
row_out_cand123 <= buff_cand(123);
row_out_cand124 <= buff_cand(124);
row_out_cand125 <= buff_cand(125);
row_out_cand126 <= buff_cand(126);

end architecture;
