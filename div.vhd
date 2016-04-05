 library IEEE;
              use IEEE.STD_LOGIC_1164.ALL;
              use IEEE.std_logic_unsigned.ALL;

              entity div is
              Port ( clk : in STD_LOGIC;
 	               reset:in std_logic;
                 clko : out STD_LOGIC);
              end div;

              architecture Behavioral of div is

              begin

                 process(clk)
 	                  variable cnt:std_logic_vector(16 downto 0);
                 begin
 	                  if(clk'event and clk='1') then
 	                     if(reset='1') then
 	                        cnt:=(others=>'0');
 	                        clko<='0';
 	                     else
 	                        if(cnt=99999) then
 	                           cnt:=(others=>'0');
 	                           clko<='1';
 	                        else
 	                           cnt:=cnt+1;
 	                           clko<='0';
 	                        end if;
 	                     end if;
 	                  end if;
                 end process;

              end Behavioral;