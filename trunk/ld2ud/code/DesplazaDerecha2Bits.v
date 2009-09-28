module DesplazaDerecha2Bits (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output [7:0] Salida;
   input  [7:0] Entrada;
//#######################parece que no funciona :(
   assign Salida = Entrada >> 2;
endmodule // DesplazaDerecha2Bits
