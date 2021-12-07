LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY controlUnit IS
  PORT (state_counter: IN std_logic_vector(3 downto 0);
        comp_rst, a, b, c, d, sel2_1, sel4_1, selPar:      OUT STD_LOGIC);
END controlUnit;

ARCHITECTURE behavior OF controlUnit IS
	
BEGIN
	
	PROCESS(state_counter)
	BEGIN
			IF	(state_counter = "0000") -- 0
				then a <= '0';
						b <= '0';
						c <= '0';
						d <= '0';
						sel2_1 <= '0';
						sel4_1 <= '0';
						selPar <= '0';
						comp_rst <='0';
			elsif(state_counter = "0001") -- 1
				then
					a <= '1';
					b <= '1';
					c <= '0';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "0010") --2
				then
					a <= '1';
					b <= '0';
					c <= '1';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';

			elsif(state_counter = "0011") --3
				then
					a <= '1';
					b <= '0';
					c <= '0';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "0100") --4
				then
					a <= '0';
					b <= '1';
					c <= '1';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "0101") --5
				then
					a <= '0';
					b <= '1';
					c <= '0';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "0110") --6
				then
					a <= '0';
					b <= '0';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "0111") --7
				then
					a <= '1';
					b <= '1';
					c <= '1';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1000") --8
				then
					a <= '1';
					b <= '1';
					c <= '0';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1001") --9
			then
					a <= '1';
					b <= '0';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1010") --10
				then
					a <= '0';
					b <= '1';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1011") --11
				then
					a <= '1';
					b <= '1';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1100") --12
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1101") --13
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '0';
					selPar <= '1';
					comp_rst <='1';
			elsif(state_counter = "1110") --14
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '1';
					selPar <= '0';
					comp_rst <='1';
			elsif(state_counter = "1111") --15
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '1';
					selPar <= '1';
					comp_rst <='1';
		END IF;
	END PROCESS;

END behavior;