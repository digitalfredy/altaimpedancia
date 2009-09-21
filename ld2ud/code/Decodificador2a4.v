module Decodificador2a4 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Enable
   ) ;
   output [3:0] Salida;
   input  [1:0] Entrada;
   input  Enable;

   wire   NodoA, NodoB;

   assign NodoA = ~ Entrada[0];
   assign NodoB = ~ Entrada[1];
   assign Salida[0] = NodoA & NodoB & Enable;
   assign Salida[1] = Entrada[0] & NodoB & Enable; 
   assign Salida[2] = Entrada[1] & NodoA & Enable;
   assign Salida[3] = Entrada[0] & Entrada[1] & Enable;
   
endmodule // Decodificador2a4


//referencia: http://en.wikipedia.org/wiki/File:Decoder_Example.svg
//tags: teoria

// para poder hacer el decoder 4a16 usando decoders 2a4 requería enable:
//http://www.ee.olemiss.edu/matt/EE385/385_L2/sld006.htm