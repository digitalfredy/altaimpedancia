library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sieteSeg is

    Port ( Input : in STD_LOGIC_VECTOR (3 downto 0);

        salida : out STD_LOGIC_VECTOR (6 downto 0); 

    mode : in STD_LOGIC_VECTOR (1 downto 0); 

    selcat : out STD_LOGIC_VECTOR (1 downto 0)); 

end sieteSeg;

architecture Behavioral of sieteSeg is

begin

process(Input,mode)

    begin 

    case Input is 

    when "0000" => salida <= "0111111"; 

    when "0001" => salida <= "0000110"; 

    when "0010" => salida <= "1011011"; 

    when "0011" => salida <= "1001111"; 

    when "0100" => salida <= "1100110"; 

    when "0101" => salida <= "1101101"; 

    when "0110" => salida <= "1111101"; 

    when "0111" => salida <= "0000111"; 

    when "1000" => salida <= "1111111"; 

    when others => salida <= "1101111"; 

    end case; 

    if mode = "01" then selcat<="01"; 

    else selcat <= "10"; 

    end if; 

end process; end Behavioral;
