module XorOperadorBitABit_Funcional (/*AUTOARG*/
   // El orden en que se ponen aqui es el mismo en el que las recibe
   // Outputs
   Salida,
   // Inputs
   Entrada
   );
   input  [1:0] Entrada;
   output Salida;
   assign Salida = Entrada[1]^Entrada[0];
endmodule // XorOperadorBitABit_Funcional
