//http://ld2ud.altaimpedancia.org - más información en el pié de página
//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware

module RotaIzquierda2Bits (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output [7:0] Salida;
   input  [7:0] Entrada;

   assign Salida = {Entrada[1:0],Entrada[7:2]};
   
endmodule // RotaIzquierda2Bits


/* Para escribir, compilar y visualizar se usó Software Libre:
  * Debian GNU/Linux como sistema operativo
  * GNU Emacs 22.2.1 con verilog-mode 404 para escribir el codigo Verilog (.v)
  * Icarus Verilog version 0.8.6 para compilar y simular
  * GTKWave Analyzer v3.1.10 para visualizar el resultado de las simulaciones (.vcd)
 * Autor: Fredy Pulido López (digitalfredy)
 * Copyright: http://www.fsf.org/licensing/licenses/gpl.html
*/