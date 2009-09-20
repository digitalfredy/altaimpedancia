module Decodificador2a4 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output [3:0] Salida;
   input  [1:0] Entrada;

   wire   NodoA, NodoB;

   assign NodoA = ~ Entrada[0];
   assign NodoB = ~ Entrada[1];
   assign Salida[0] = NodoA & NodoB;
   assign Salida[1] = Entrada[0] & NodoB;
   assign Salida[2] = Entrada[1] & NodoA;
   assign Salida[3] = Entrada[0] & Entrada[1];
   
endmodule // Decodificador2a4


//referencia: http://en.wikipedia.org/wiki/File:Decoder_Example.svg
//tags: teoria