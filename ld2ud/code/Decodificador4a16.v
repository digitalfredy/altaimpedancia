
module Decodificador4a16 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Enable
   ) ;
   output [15:0] Salida;
   input  [3:0] Entrada;
   input  Enable;

   wire   NodoA, NodoB, NodoC, NodoD;
   
   Decodificador2a4 U1 ({NodoA,NodoB,NodoC,NodoD},Entrada[3:2],Enable);
   Decodificador2a4 U2 (Salida[15:12],Entrada[1:0],NodoA);
   Decodificador2a4 U3 (Salida[11:8],Entrada[1:0],NodoB);
   Decodificador2a4 U4 (Salida[7:4],Entrada[1:0],NodoC);
   Decodificador2a4 U5 (Salida[3:0],Entrada[1:0],NodoD);
endmodule // Decodificador4a16


// Referencia: http://ecpe.ee.iastate.edu/arun/CprE281_F05/lab/labw06a/labw06a_files/image009.jpg

//tags: teoria