library IEEE;
use IEEE.STD_LOGIC_1164.All;

Entity walkings IS
PORT(en,touch,obstcale:IN std_logic;
       sound,vibr: OUT std_logic);
end walkings;

Architecture structure of walkings is
SIGNAL enable:std_logic;
BEGIN

PROCESS(en,touch,obstcale)
Begin
enable<='1';
 IF en='1' THEN
sound<= Not touch;
vibr<= Not obstcale;
ELSE
sound<='0';
vibr<='0';
END IF; 
END PROCESS;
end structure;