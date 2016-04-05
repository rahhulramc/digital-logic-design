  library IEEE;
          use IEEE.STD_LOGIC_1164.ALL;
          use IEEE.STD_LOGIC_ARITH.ALL;
          use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux16to1 is 
     port(i0:in STD_LOGIC_VECTOR (3 downto 0);
          i1:in STD_LOGIC_VECTOR (3 downto 0);
          i2:in STD_LOGIC_VECTOR (3 downto 0);
          i3:in STD_LOGIC_VECTOR (3 downto 0);
          i4:in STD_LOGIC_VECTOR (3 downto 0);
          i5:in STD_LOGIC_VECTOR (3 downto 0);
          i6:in STD_LOGIC_VECTOR (3 downto 0);
          i7:in STD_LOGIC_VECTOR (3 downto 0);
          i8:in STD_LOGIC_VECTOR (3 downto 0);
          i9:in STD_LOGIC_VECTOR (3 downto 0);
          i10:in STD_LOGIC_VECTOR (3 downto 0);
          i11:in STD_LOGIC_VECTOR (3 downto 0);
          i12:in STD_LOGIC_VECTOR (3 downto 0);
          i13:in STD_LOGIC_VECTOR (3 downto 0);
          i14:in STD_LOGIC_VECTOR (3 downto 0);
          i15:in STD_LOGIC_VECTOR (3 downto 0);
          s : in STD_LOGIC_VECTOR (3 downto 0);
          o : out STD_LOGIC_VECTOR (3 downto 0));
end mux16to1;

architecture behave of mux16to1 is
begin
o <= i0 when s="0000" else
     i1 when s="0001" else
     i2 when s="0010" else
     i3 when s="0011" else
     i4 when s="0100" else
     i5 when s="0101" else
     i6 when s="0110" else
     i7 when s="0111" else
     i8 when s="1000" else
     i9 when s="1001" else
     i10 when s="1010" else
     i11 when s="1011" else
     i12 when s="1100" else
     i13 when s="1101" else
     i14 when s="1110" else
     i15; 
end behave;