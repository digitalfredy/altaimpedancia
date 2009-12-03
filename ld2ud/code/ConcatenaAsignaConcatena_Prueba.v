module ConcatenaAsignaConcatena_Prueba (/*AUTOARG*/
   // Outputs
   Salida, Cy,
   // Inputs
   Entrada
   ) ;
   output [2:0] Salida;
   output Cy;
   input  [2:0] Entrada;

   assign {Cy,Salida} = {Entrada[2],Entrada[1:0],1'b0} ;
endmodule // ConcatenaAsignaConcatena_Prueba
