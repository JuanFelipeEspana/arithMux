library ieee;
use ieee.std_logic_1164.all;

entity fullAdder is
  port(
    a   :       in      std_logic;
    b   :       in      std_logic;
    cin :       in      std_logic;
    sum :       out     std_logic;
    cout:       out     std_logic
  );
end entity fullAdder;

architecture rtl of fullAdder is
  signal parity         :       std_logic;
begin
  parity <= a xor b xor cin;

  sum <= '1' when (parity='1') else
         '0';

  cout <= '1' when ((parity and a and b and cin)='1')or((not parity) and (a or b))='1' else
          '0';
end architecture rtl;

    
