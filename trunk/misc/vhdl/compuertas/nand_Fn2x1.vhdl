-------------------------------------------------------------------------------
-- http://altaimpedancia.org - Software Libre para electronica y Open Hardware
-- Autor inicial: digitalfredy (Fredy Pulido Lopez)
-- Licencia: GNU GPL V3 o superior
-- Nota: trabajo hecho para estudiar materia digitales II, Universidad
-- Distrital Fransisco Jose de Caldas (Bogota / Colombia)
-------------------------------------------------------------------------------
-- Software usado o directamente relacionado:
-- http://www.gnu.org/software/emacs/ (incluye modo para vhdl)
-- http://ghdl.free.fr/
-- http://www.gpleda.org/tools/gtkwave/index.html
-------------------------------------------------------------------------------
-- Compuerta nand descrita funcionalmente (data flow)
library ieee;
use ieee.std_logic_1164.all;

entity NandFn2x1 is
  
  port (
    a, b : in  std_logic;   -- entradas de la compuerta, c/u de un bit
    z    : out std_logic);              -- stalida de la compuerta, de un bit
end NandFn2x1;

architecture Fn of NandFn2x1 is

begin  -- Fn

  z <= a nand b;

end Fn;
