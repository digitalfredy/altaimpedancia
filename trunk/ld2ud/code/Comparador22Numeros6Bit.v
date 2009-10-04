module Comparador22Numeros6Bit (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [5:0] Entrada;

   wire   [21:0] Nodo;
   
   and (Nodo[21],~Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],~Entrada[1],Entrada[0]);
   and (Nodo[20],~Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],~Entrada[0]);
   and (Nodo[19],~Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],Entrada[0]);
   and (Nodo[18],~Entrada[5],~Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);
   and (Nodo[17],~Entrada[5],~Entrada[4],Entrada[3],~Entrada[2],Entrada[1],~Entrada[0]);
   and (Nodo[16],~Entrada[5],~Entrada[4],Entrada[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and (Nodo[15],~Entrada[5],~Entrada[4],Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);
   and (Nodo[14],~Entrada[5],~Entrada[4],Entrada[3],Entrada[2],Entrada[1],Entrada[0]);
   and (Nodo[13],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and (Nodo[12],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);
   and (Nodo[11],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],Entrada[1],~Entrada[0]);
   and (Nodo[10],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],Entrada[1],Entrada[0]);
   and (Nodo[9],~Entrada[5],Entrada[4],Entrada[3],~Entrada[2],~Entrada[1],Entrada[0]);
   and (Nodo[8],~Entrada[5],Entrada[4],Entrada[3],Entrada[2],Entrada[1],~Entrada[0]);
   and (Nodo[7],~Entrada[5],Entrada[4],Entrada[3],Entrada[2],Entrada[1],Entrada[0]);
   and (Nodo[6],Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],~Entrada[1],~Entrada[0]);
   and (Nodo[5],Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],~Entrada[1],Entrada[0]);
   and (Nodo[4],Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],Entrada[0]);
   and (Nodo[3],Entrada[5],Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],~Entrada[0]);
   and (Nodo[2],Entrada[5],Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],Entrada[0]);
   and (Nodo[1],Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and (Nodo[0],Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);

   or (Salida,Nodo[0],Nodo[1],Nodo[2],Nodo[3],Nodo[4],Nodo[5],Nodo[6],Nodo[7],Nodo[8],Nodo[9],Nodo[10],Nodo[11],Nodo[12],Nodo[13],Nodo[14],Nodo[15],Nodo[16],Nodo[17],Nodo[18],Nodo[19],Nodo[20],Nodo[21]);
   
   
endmodule // Comparador22Numeros6Bit
