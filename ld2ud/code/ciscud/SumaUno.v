module SumaUno (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output [15:0] Salida;
   input  [15:0] Entrada;

   assign Salida = Entrada+1;
endmodule // SumaUno
