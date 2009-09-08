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
-- Compuerta xor descrita estructuralmente, xnor se construye usando 2 not, 2
-- and y 1 or (creo que incluso a nivel de integrados xor es construida desde
-- compuertas, yo diria que las puertas fundamentales son and, or y not).
-- Para funcionar requiere archivos notFn1x1.vhdl, orFn2x1.vhdl, andFn2x1.vhdl.
library ieee;
use ieee.std_logic_1164.all;

entity XorSt2x1 is
  
  port (
    a, b : in  std_logic;   -- entradas de la compuerta, c/u de un bit
    z    : out std_logic);              -- salida de la compuerta, de un bit
end XorSt2x1;

architecture St of XorSt2x1 is

  component NotFn1x1                    -- arquitectura de este componente en
                                        -- notFn1x1.vhdl, notese que es
                                        -- exactamente la estructura de la entidad
    port (
      a    : in  std_logic;
      z    : out std_logic);
  end component;

  component AndFn2x1                    -- arquitectura de este componente en adnFn2x1.vhdl
    port (
      a, b : in  std_logic;
      z    : out std_logic);
  end component;

  component OrFn2x1                       -- arquitectura de este componente en orFn2x1.vhdl
    port (
      a, b : in  std_logic;
      z    : out std_logic);
  end component;

  signal c,d,e,f : std_logic;           -- para interconectar las compuertas
                                        -- (como si fueran cables)
  
begin  -- St

  not1x1_1 : NotFn1x1 port map (        -- not1x1_1 es una instancia de NotFn1x1
    a => b,
    z => c);

  not1x1_2 : NotFn1x1 port map (        -- not1x1_2 es otra instancia de NotFn1x1
    a => a,
    z => d);

  and2x1_1 : AndFn2x1 port map (
    a => a,
    b => c,
    z => e);

  and2x1_2 : AndFn2x1 port map (
    a => d,
    b => b,
    z => f);

  or2x1_1 : OrFn2x1 port map (
    a => e,
    b => f,
    z => z);

end St;
