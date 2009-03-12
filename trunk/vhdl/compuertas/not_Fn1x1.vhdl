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
-- Compuerta not descrita funcionalmente (data flow)
library ieee;
use ieee.std_logic_1164.all;

entity NotFn1x1 is
  
  port (
    a : in  std_logic;                     -- entrada compuerta, de un bit
    z : out std_logic);                         -- salida compuerta, de un bit
end NotFn1x1;

architecture Fn of NotFn1x1 is

begin  -- Fn

  z <= not a;

end Fn;
