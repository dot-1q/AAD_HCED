library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
    port(sel      : in std_logic;
          dataln0, dataln1   : in std_logic;
          out1    : out std_logic);

end Mux2_1;

architecture BehavProc of Mux2_1 is
begin
    process(sel, dataln0, dataln1)
    begin
        if (sel = '0') then
            out1 <= dataln0;
        else
            out1 <= dataln1;
        end if;
    end process;
end BehavProc;


library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
    port(sel, selPar      : in std_logic;
          dataln0, dataln1, dataln2, dataln3: in std_logic;
          out1    : out std_logic);

end Mux4_1;

architecture BehavProc of Mux4_1 is
begin
    process(sel, dataln0, dataln1, dataln2, dataln3)
    begin
        if (sel = '0') then
				if(selPar = '0')then
					out1 <= dataln0;
				elsif(selPar = '1')then
					out1 <= dataln1;
				end if;
        elsif (sel = '1') then
				if(selPar = '0')then
					out1 <= dataln2;
				elsif(selPar = '1')then
					out1 <= dataln3;
				end if;	
        end if;
    end process;
end BehavProc;