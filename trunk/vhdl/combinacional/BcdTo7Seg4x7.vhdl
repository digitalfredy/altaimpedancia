-------------------------------------------------------------------------------
-- http://altaimpedancia.org - Software Libre para electronica y Open Hardware
-- Autor inicial: jota (Javier Galindo)
-- Licencia: GNU GPL V3 o superior
-- Nota: trabajo hecho para estudiar materia Arquitecturas avanzadas,
-- Universidad Manuela Beltran (Bogota / Colombia)
-------------------------------------------------------------------------------
-- Compuerta not descrita funcionalmente (data flow)


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity BcdTo7Seg4x7 is

    port ( input  : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out STD_LOGIC_VECTOR (6 downto 0); 
           mode   : in  STD_LOGIC_VECTOR (1 downto 0); 
           selcat : out STD_LOGIC_VECTOR (1 downto 0)); 

end BcdTo7Seg4x7;

architecture Bh of BcdTo7Seg4x7 is
begin
  process(input,mode)
  begin
      case input is 
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
  end process;
end Bh;

-- Software usado o directamente relacionado:
-- http://www.gnu.org/software/emacs/ (incluye modo para vhdl)
-- http://ghdl.free.fr/
-- http://www.gpleda.org/tools/gtkwave/index.html
-------------------------------------------------------------------------------
