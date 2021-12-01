LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY controlUnit IS
  PORT (clk, rst: 			IN std_logic;
        comp_rst, a, b, c, d, sel2_1, sel4_1, selPar:      OUT STD_LOGIC);
END controlUnit;

ARCHITECTURE behavior OF controlUnit IS
	COMPONENT binCounter_4bit 
		PORT (nRst: IN STD_LOGIC;
				clk:  IN STD_LOGIC;
				c:    OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT;
	
	signal state_counter_signal: std_logic_vector(3 downto 0);
	signal s_clk: std_logic;
BEGIN
	
	stateCounter: binCounter_4bit PORT MAP(rst, clk, state_counter_signal);
	
	PROCESS(state_counter_signal)
	BEGIN
			IF	(state_counter_signal = "0000") -- 0
				then a <= '0';
						b <= '0';
						c <= '0';
						d <= '0';
						sel2_1 <= '0';
						sel4_1 <= '0';
						selPar <= '0';
						comp_rst <='1';
			elsif(state_counter_signal = "0001") -- 1
				then
					a <= '1';
					b <= '1';
					c <= '0';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "0010") --2
				then
					a <= '1';
					b <= '0';
					c <= '1';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';

			elsif(state_counter_signal = "0011") --3
				then
					a <= '1';
					b <= '0';
					c <= '0';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "0100") --4
				then
					a <= '0';
					b <= '1';
					c <= '1';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "0101") --5
				then
					a <= '0';
					b <= '1';
					c <= '0';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "0110") --6
				then
					a <= '0';
					b <= '0';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "0111") --7
				then
					a <= '1';
					b <= '1';
					c <= '1';
					d <= '0';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1000") --8
				then
					a <= '1';
					b <= '1';
					c <= '0';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1001") --9
			then
					a <= '1';
					b <= '0';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1010") --10
				then
					a <= '0';
					b <= '1';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1011") --11
				then
					a <= '1';
					b <= '1';
					c <= '1';
					d <= '1';
					sel2_1 <= '0';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1100") --12
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '0';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1101") --13
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '0';
					selPar <= '1';
					comp_rst <='0';
			elsif(state_counter_signal = "1110") --14
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '1';
					selPar <= '0';
					comp_rst <='0';
			elsif(state_counter_signal = "1111") --15
				then
					a <= '0';
					b <= '0';
					c <= '0';
					d <= '0';
					sel2_1 <= '1';
					sel4_1 <= '1';
					selPar <= '1';
					comp_rst <='0';
		END IF;
	END PROCESS;

END behavior;