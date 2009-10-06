module Comparador22Numeros6Bit_Compuertas (/*AUTOARG*/
   // Para más info revisar APÉNDICE al final del archivo
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida; //Es uno(1) si Entrada pertenece a conjunto Combinación
   input  [5:0] Entrada; //Número que se desea saber si pertenece a conjunto Combinación

   wire   [21:0] Nodo; //Nodo[x] es salida de cada decodificador básico
   
   and Dec01 (Nodo[21],~Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],~Entrada[1],Entrada[0]);
   and Dec02 (Nodo[20],~Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],~Entrada[0]);
   and Dec03 (Nodo[19],~Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],Entrada[0]);
   and Dec04 (Nodo[18],~Entrada[5],~Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);
   and Dec05 (Nodo[17],~Entrada[5],~Entrada[4],Entrada[3],~Entrada[2],Entrada[1],~Entrada[0]);
   and Dec06 (Nodo[16],~Entrada[5],~Entrada[4],Entrada[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and Dec07 (Nodo[15],~Entrada[5],~Entrada[4],Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);
   and Dec08 (Nodo[14],~Entrada[5],~Entrada[4],Entrada[3],Entrada[2],Entrada[1],Entrada[0]);
   and Dec09 (Nodo[13],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and Dec10 (Nodo[12],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);
   and Dec11 (Nodo[11],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],Entrada[1],~Entrada[0]);
   and Dec12 (Nodo[10],~Entrada[5],Entrada[4],~Entrada[3],Entrada[2],Entrada[1],Entrada[0]);
   and Dec13 (Nodo[9],~Entrada[5],Entrada[4],Entrada[3],~Entrada[2],~Entrada[1],Entrada[0]);
   and Dec14 (Nodo[8],~Entrada[5],Entrada[4],Entrada[3],Entrada[2],Entrada[1],~Entrada[0]);
   and Dec15 (Nodo[7],~Entrada[5],Entrada[4],Entrada[3],Entrada[2],Entrada[1],Entrada[0]);
   and Dec16 (Nodo[6],Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],~Entrada[1],~Entrada[0]);
   and Dec17 (Nodo[5],Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],~Entrada[1],Entrada[0]);
   and Dec18 (Nodo[4],Entrada[5],~Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],Entrada[0]);
   and Dec19 (Nodo[3],Entrada[5],Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],~Entrada[0]);
   and Dec20 (Nodo[2],Entrada[5],Entrada[4],~Entrada[3],~Entrada[2],Entrada[1],Entrada[0]);
   and Dec21 (Nodo[1],Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],~Entrada[0]);
   and Dec22 (Nodo[0],Entrada[5],Entrada[4],~Entrada[3],Entrada[2],~Entrada[1],Entrada[0]);

   or (Salida,Nodo[0],Nodo[1],Nodo[2],Nodo[3],Nodo[4],Nodo[5],Nodo[6],Nodo[7],Nodo[8],Nodo[9],Nodo[10],Nodo[11],Nodo[12],Nodo[13],Nodo[14],Nodo[15],Nodo[16],Nodo[17],Nodo[18],Nodo[19],Nodo[20],Nodo[21]);
   
   
endmodule // Comparador22Numeros6Bit_Compuertas


/* APÉNDICE
 * Tenemos el conjunto Combinación que contiene 22 números diferentes de 6 bit
 * y deseamos que cuando Entrada pertenezca al conjunto Combinación Salida sea uno(1)
 *
 * Combinación  Binario  Salida
 * 01      	000_001       1
 * 02      	000_010       1
 * 03      	000_011       1
 * 05      	000_101       1
 * 10      	001_010       1
 * 12      	001_100       1
 * 13      	001_101       1
 * 15      	001_111       1
 * 20      	010_100       1
 * 21      	010_101       1
 * 22      	010_110       1
 * 23      	010_111       1
 * 25      	011_001       1
 * 30      	011_110       1
 * 31      	011_111       1
 * 32      	100_000       1
 * 33      	100_001       1
 * 35      	100_011       1
 * 50      	110_010       1
 * 51      	110_011       1
 * 52      	110_100       1
 * 53      	110_101       1
 *
 * Este módulo implementa un decodificador binario básico (Referencia:Fundamentos de 
 * Sistemas Digitales,edición 7,pág 350,Thomas L. Floyd) llamado DecXX para cada elemento
 * del conjunto Combinación y la salida de los 22 DecXX (Nodo[x]) entra en una compuerta or.
 */