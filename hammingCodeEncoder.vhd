LIBRARY ieee;
LIBRARY elementaryGates;
USE ieee.std_logic_1164.all;
USE elementaryGates.all;

ENTITY hammingCodeEncoder IS
	PORT (m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11:	IN STD_LOGIC;
			x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15:	OUT STD_LOGIC);
END hammingCodeEncoder;

ARCHITECTURE combinatorialEncoding OF hammingCodeEncoder IS
	COMPONENT gateXOR
		PORT (x0, x1: IN STD_LOGIC;
				y: OUT STD_LOGIC);
	END COMPONENT;
	
	signal m1_m2, m3_m7, m8_m9, m1237, m1237_89, --x12
			 m1_m4, m5_m7, m8_m10, m1457, m1457_810, --x13
			 m2_m4, m6_m7, m9_m10, m2467, m2467_910, --x14
			 m3_m5, m6_m8, m3568, m3568_910: std_logic; --x15
	
BEGIN
	x1 <= m1;
	x2 <= m2;
	x3 <= m3;
	x4 <= m4;
	x5 <= m5;
	x6 <= m6;
	x7 <= m7;
	x8 <= m8;
	x9 <= m9;
	x10 <= m10;
	x11 <= m11;
	
	
	-- x12
	xor1_2: gateXOR PORT MAP (m1, m2, m1_m2);
	xor3_7: gateXOR PORT MAP (m3, m7, m3_m7);
	xor8_9: gateXOR PORT MAP (m8, m9, m8_m9);
	xor1237: gateXOR PORT MAP (m1_m2,m3_m7,m1237);
	xor1237_89: gateXOR PORT MAP (m1237,m8_m9,m1237_89);
	
	xor12: gateXOR PORT MAP(m1237_89,m11,x12);

	
	
	-- x13
	xor1_4: gateXOR PORT MAP (m1, m4, m1_m4);
	xor5_7: gateXOR PORT MAP (m5, m7, m5_m7);
	xor8_10: gateXOR PORT MAP (m8, m10, m8_m10);
	xor1457: gateXOR PORT MAP (m1_m4,m5_m7,m1457);
	xor1457_810: gateXOR PORT MAP (m1457,m8_m10,m1457_810);
	
	xor13: gateXOR PORT MAP(m1457_810,m11,x13); 


	-- x14
	xor2_4: gateXOR PORT MAP (m2, m4, m2_m4);
	xor6_7: gateXOR PORT MAP (m6, m7, m6_m7);
	xor9_10: gateXOR PORT MAP (m9, m10, m9_m10);
	xor2467: gateXOR PORT MAP (m1_m4,m5_m7,m2467);
	xor2467_910: gateXOR PORT MAP (m2467,m9_m10,m2467_910);
	
	xor14: gateXOR PORT MAP(m2467_910,m11,x14); 


	-- x15
	xor3_5: gateXOR PORT MAP (m3, m5, m3_m5);
	xor6_8: gateXOR PORT MAP (m6, m8, m6_m8);
	xor3568: gateXOR PORT MAP (m3_m5,m6_m8,m3568);
	xor3568_910: gateXOR PORT MAP (m3568,m9_m10,m3568_910);
	
	xor15: gateXOR PORT MAP(m3568_910,m11,x15); 


 	
END combinatorialEncoding;
	

