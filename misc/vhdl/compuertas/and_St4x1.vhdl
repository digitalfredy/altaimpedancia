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
-- Compuerta and4x1 descrita estructuralmente usando 3 compuertas and2x1, la
-- operacion logica and (multiplicacion) cumple la propiedad distributiva que se usa
-- para conseguir una compuerta de varias entradas.
-- Para funcionar requiere archivo andFn2x1.vhdl.
library ieee;
use ieee.std_logic_1164.all;

-- Intente simular pero no funciona y debe ser por el STD_LOGIC_VECTOR !
entity AndSt4x1 is
  
  port (
    a : in  std_logic_vector;  -- stdlogic_vector permite tener en a
                                        -- una tupla en vez de un solo bit, para referirse al bit 3 se usa a(2)
    z          : out std_logic);  -- Salida, de un bit, me pregunto si funciona
                                  -- pues el tipo de dato de las entrada es std_logic_vector
end AndSt4x1;

architecture St of AndSt4x1 is

  component AndFn2x1
    port (
      a, b : in  std_logic;
      z    : out std_logic);
  end component;

  signal e,f : std_logic;               -- para interconexiones internas
  
begin  -- St

  and2x1_1 : AndFn2x1 port map (
    a => a(0),
    b => a(1),
    z => e);

  and2x1_2 : AndFn2x1 port map (
    a => e,
    b => a(2),
    z => f);

  and2x1_3 : AndFn2x1 port map (
    a => f,
    b => a(3),
    z => z);

end St;
