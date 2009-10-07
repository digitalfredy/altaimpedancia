module Comparador22Numeros6Bit_Decodificador (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [5:0] Entrada;

   wire   [7:0] BusPar, BusImpar;
   wire   [21:0] BusOr;

   Decodificador3a8 U1 (BusPar[7:0],Entrada[5:3]);   
   Decodificador3a8 U2 (BusImpar[7:0],Entrada[2:0]);

   and (BusOr[0], BusPar[7], BusImpar[6]);
   and (BusOr[1], BusPar[7], BusImpar[5]);
   and (BusOr[2], BusPar[7], BusImpar[4]);
   and (BusOr[3], BusPar[7], BusImpar[2]);
   and (BusOr[4], BusPar[6], BusImpar[5]);
   and (BusOr[5], BusPar[6], BusImpar[3]);
   and (BusOr[6], BusPar[6], BusImpar[2]);
   and (BusOr[7], BusPar[6], BusImpar[0]);
   and (BusOr[8], BusPar[5], BusImpar[3]);
   and (BusOr[9], BusPar[5], BusImpar[2]);
   and (BusOr[10], BusPar[5], BusImpar[1]);
   and (BusOr[11], BusPar[5], BusImpar[0]);
   and (BusOr[12], BusPar[4], BusImpar[6]);
   and (BusOr[13], BusPar[4], BusImpar[1]);
   and (BusOr[14], BusPar[4], BusImpar[0]);
   and (BusOr[15], BusPar[3], BusImpar[7]);
   and (BusOr[16], BusPar[3], BusImpar[6]);
   and (BusOr[17], BusPar[3], BusImpar[4]);
   and (BusOr[18], BusPar[1], BusImpar[5]);
   and (BusOr[19], BusPar[1], BusImpar[4]);
   and (BusOr[20], BusPar[1], BusImpar[3]);
   and (BusOr[21], BusPar[1], BusImpar[2]);

   or (Salida,BusOr[0],BusOr[1],BusOr[2],BusOr[3],BusOr[4],BusOr[5],BusOr[6],BusOr[7],BusOr[8],BusOr[9],BusOr[10],BusOr[11],BusOr[12],BusOr[13],BusOr[14],BusOr[15],BusOr[16],BusOr[17],BusOr[18],BusOr[19],BusOr[20],BusOr[21]);
   
endmodule // Comparador22Numeros6bit_Decodificador
