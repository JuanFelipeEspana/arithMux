library ieee;
use ieee.std_logic_1164.all;

entity fullAdder4b is
  port(
    a   :       in      std_logic_vector(3 downto 0);
    b   :       in      std_logic_vector(3 downto 0);
    cin :       in      std_logic;
    sum :       out     std_logic_vector(3 downto 0);
    cout:       out     std_logic
  );
end entity fullAdder4b;

architecture rtl of fullAdder4b is
  signal carrys         :       std_logic_vector(4 downto 0);
begin
  carrys(0) <= cin;

  completeFullAdder: for i in 0 to 3 generate
    singleFullAdder: entity work.fullAdder
      port map(
        a       =>      a(i),
        b       =>      b(i),
        cin     =>      carrys(i),
        sum     =>      sum(i),
        cout    =>      carrys(i+1)
        );
  end generate;
  cout <= carrys(4);
    
end architecture rtl;
