 library IEEE;
       use IEEE.STD_LOGIC_1164.ALL;

       entity sist is
       Port ( clk : in STD_LOGIC;
          reset:in std_logic;
          an : out STD_LOGIC_VECTOR (3 downto 0);
          ca : out STD_LOGIC_VECTOR (6 downto 0));
       end sist;

       architecture Behavioral of sist is

          --components
          component div is
          Port ( clk : in STD_LOGIC;
 	           reset:in std_logic;
             clko : out STD_LOGIC);
          end component;

          component dec is
          Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
             decode : out STD_LOGIC_VECTOR (6 downto 0));
          end component;

          component mux16to1 is
          Port ( i0 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i1 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i2 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i3 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i4 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i5 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i6 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i7 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i8 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i9 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i10 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i11 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i12 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i13 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i14 : in STD_LOGIC_VECTOR (3 downto 0);
 	           i15 : in STD_LOGIC_VECTOR (3 downto 0);
             s : in STD_LOGIC_VECTOR (3 downto 0);
             o : out STD_LOGIC_VECTOR (3 downto 0));
          end component;

          component reg is
          Port ( clk : in STD_LOGIC;
 	           reset : in std_logic;
             a : out STD_LOGIC_VECTOR (3 downto 0));
          end component;

          --signals
          signal clkdiv:std_logic;
          signal bcd:std_logic_vector(3 downto 0);
          signal sel:std_logic_vector(3 downto 0);
          signal d0 : STD_LOGIC_VECTOR (3 downto 0);
          signal d1 : STD_LOGIC_VECTOR (3 downto 0);
          signal d2 : STD_LOGIC_VECTOR (3 downto 0);
          signal d3 : STD_LOGIC_VECTOR (3 downto 0);
       begin

          divfreq:div port map(clk,reset,clkdiv);
          decoder:dec port map(bcd,ca);
          mux:mux16to1 port map("0000","0000","0000","0000","0000","0000","0000",d3,"0000","0000","0000",d2,"0000",d1,d0,"0000",sel,bcd);
rega:reg port map(clkdiv,reset,sel);
          d0<="0100";
          d1<="0011";
          d2<="0010";
          d3<="0001";
          an<=sel;

      end Behavioral;