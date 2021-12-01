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
	
	signal m1_m7, m8_m11, m_a, m2_m3, m23_9, m4_m5, m45_10, m6_m9, m10_m11, m_b, m2_m4, m24_7, m3_m5, m35_8: std_logic;
	
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
	xor1_7: gateXOR PORT MAP (m1, m7, m1_m7);
	xor8_11: gateXOR PORT MAP (m8, m11, m8_m11);
	xor_A: gateXOR PORT MAP(m1_m7,m8_m11,m_a);
	
	xor2_3: gateXOR PORT MAP(m2, m3, m2_m3);
	xor23_9: gateXOR PORT MAP(m2_m3, m9, m23_9);
	
	xor12: gateXOR PORT MAP(m23_9,m_a,x12);
	
	-- x13
	xor4_5: gateXOR PORT MAP(m4, m5, m4_m5);
	xor45_10: gateXOR PORT MAP(m4_m5, m10, m45_10);
	xor13: gateXOR PORT MAP(m_a,m45_10,x13);
	
	
	-- x14 
	xor6_9: gateXOR PORT MAP (m6, m9, m6_m9);
	xor10_11: gateXOR PORT MAP (m10, m11, m10_m11);
	xor_B: gateXOR PORT MAP(m6_m9,m10_m11,m_b);
	
	xor2_4: gateXOR PORT MAP(m2, m4, m2_m4);
	xor24_7: gateXOR PORT MAP(m2_m4, m7, m24_7);
	
	xor14: gateXOR PORT MAP(m24_7,m_b,x14);

	
	-- x15
	xor3_5: gateXOR PORT MAP(m3, m5, m3_m5);
	xor35_8: gateXOR PORT MAP(m3_m5, m8, m35_8);
	xor15: gateXOR PORT MAP(m_b,m35_8,x15);
 	
END combinatorialEncoding;
	


	