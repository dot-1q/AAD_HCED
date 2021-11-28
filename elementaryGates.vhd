LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateAnd IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateAnd;

ARCHITECTURE logicFunction OF gateAnd IS
BEGIN
  y <= x0 AND x1;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateOr IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateOr;

ARCHITECTURE logicFunction OF gateOr IS
BEGIN
  y <= x0 OR x1;
END logicFunction;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY gateXOR IS
  PORT (x0, x1: IN STD_LOGIC;
        y: OUT STD_LOGIC);
END gateXOR;

ARCHITECTURE logicFunction OF gateXOR IS
BEGIN
  y <= x0 XOR x1;
END logicFunction;
