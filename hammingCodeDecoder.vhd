LIBRARY ieee;
LIBRARY elementaryGates;
USE ieee.std_logic_1164.all;
USE elementaryGates.all;

ENTITY hammingCodeDecoder IS
	PORT (y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15:	IN STD_LOGIC;
			m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11:	OUT STD_LOGIC);
END hammingCodeDecoder;

ARCHITECTURE pararellDecoder of hammingCodeDecoder IS
	
	signal  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11: std_logic;
	
	COMPONENT decoder4to11
		PORT (p1, p2, p3, p4: IN STD_LOGIC;
			o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11: OUT STD_LOGIC);
	END COMPONENT;
	COMPONENT gateXOR
		PORT (x0, x1: IN STD_LOGIC;
				y: OUT STD_LOGIC);
	END COMPONENT;

BEGIN
	
	error_finder: decoder4to11 PORT MAP(y12, y13, y14, y15, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11);
	
	out_m1: gateXOR PORT MAP(s1, y1, m1);
	out_m2: gateXOR PORT MAP(s2, y2, m2);
	out_m3: gateXOR PORT MAP(s3, y3, m3);
	out_m4: gateXOR PORT MAP(s4, y4, m4);
	out_m5: gateXOR PORT MAP(s5, y5, m5);
	out_m6: gateXOR PORT MAP(s6, y6, m6);
	out_m7: gateXOR PORT MAP(s7, y7, m7);
	out_m8: gateXOR PORT MAP(s8, y8, m8);
	out_m9: gateXOR PORT MAP(s9, y9, m9);
	out_m10: gateXOR PORT MAP(s10, y10, m10);
	out_m11: gateXOR PORT MAP(s11, y11, m11);
	
END pararellDecoder;

	