module MayorQue63 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   //Revisa si un número natural menor a 100 es mayor que 63
   //Es mayor si el bit 7 es uno :)
   output Salida;
   input  [6:0] Entrada;

//si bit 7 = 1 => 63, como para mayores de 63 piden 0 en la salida solo hay que negar el bit
   assign Salida = ~Entrada[6];
   
endmodule // MayorQue63
//tags: laboratorio