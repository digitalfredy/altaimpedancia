module Buffer3Estados16Bit (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Habilitar
   ) ;
   output [15:0] Salida;
   input  [15:0] Entrada;
   input  Habilitar;

   assign Salida = (Habilitar) ? Entrada : 16'hz;
endmodule // Buffer3Estados16Bit
