module Comparador22Numeros6Bot_Mux (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [5:0] Entrada;

   wire   [3:0] BusMux;
   
   and (BusMux[0], ~Entrada[3], ~Entrada[2], ~Entrada[1] Entrada[0]);
   and (BusMux[0], ~Entrada[3], ~Entrada[2], Entrada[1] ~Entrada[0]);
   and (BusMux[0], ~Entrada[3], ~Entrada[2], Entrada[1] Entrada[0]);
   and (BusMux[0], ~Entrada[3], Entrada[2], ~Entrada[1] Entrada[0]);
   and (BusMux[0], Entrada[3], ~Entrada[2], Entrada[1] ~Entrada[0]);
   and (BusMux[0], Entrada[3], Entrada[2], ~Entrada[1] ~Entrada[0]);
   and (BusMux[0], Entrada[3], Entrada[2], ~Entrada[1] Entrada[0]);
   and (BusMux[0], Entrada[3], Entrada[2], Entrada[1] Entrada[0]);
   and (BusMux[1], ~Entrada[3], Entrada[2], ~Entrada[1] ~Entrada[0]);
   and (BusMux[1], ~Entrada[3], Entrada[2], ~Entrada[1] Entrada[0]);
   and (BusMux[1], ~Entrada[3], Entrada[2], Entrada[1] ~Entrada[0]);
   and (BusMux[1], ~Entrada[3], Entrada[2], Entrada[1] Entrada[0]);
   and (BusMux[1], Entrada[3], ~Entrada[2], ~Entrada[1] Entrada[0]);
   and (BusMux[1], Entrada[3], Entrada[2], Entrada[1] ~Entrada[0]);
   and (BusMux[1], Entrada[3], Entrada[2], Entrada[1] Entrada[0]);
   and (BusMux[2], ~Entrada[3], Entrada[2], ~Entrada[1] ~Entrada[0]);
   and (BusMux[2], ~Entrada[3], ~Entrada[2], ~Entrada[1] Entrada[0]);
   and (BusMux[2], ~Entrada[3], ~Entrada[2], Entrada[1] Entrada[0]);
   and (BusMux[3], ~Entrada[3], ~Entrada[2], Entrada[1] ~Entrada[0]);
   and (BusMux[3], ~Entrada[3], ~Entrada[2], Entrada[1] Entrada[0]);
   and (BusMux[3], ~Entrada[3], Entrada[2], ~Entrada[1] ~Entrada[0]);
   and (BusMux[3], ~Entrada[3], Entrada[2], ~Entrada[1] Entrada[0]);

   Multiplexor4a1 U1 (Salida,Entrada[5:4],BusMux);
   
   
endmodule // Comparador22Numeros6Bot_Mux
