module IgualCero (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [15:0] Entrada;

   assign Salida = (Entrada == 16'h0) ? 1'b1 : 1'b0;
endmodule // IgualCero
