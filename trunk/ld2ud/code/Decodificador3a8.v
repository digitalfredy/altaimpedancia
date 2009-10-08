module Decodificador3a8 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output [7:0] Salida;
   input  [2:0] Entrada;

   and (Salida[0],Entrada[2],Entrada[1],Entrada[0]);
   and (Salida[1],Entrada[2],Entrada[1],~Entrada[0]);
   and (Salida[2],Entrada[2],~Entrada[1],Entrada[0]);
   and (Salida[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and (Salida[4],~Entrada[2],Entrada[1],Entrada[0]);
   and (Salida[5],~Entrada[2],Entrada[1],~Entrada[0]);
   and (Salida[6],~Entrada[2],~Entrada[1],Entrada[0]);
   and (Salida[7],~Entrada[2],~Entrada[1],~Entrada[0]);   
   
endmodule // Decodificador3a8

