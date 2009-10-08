module Comparador22Numeros6Bit_Multiplexor (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [5:0] Entrada;

   wire   [3:0] BusMultiplexor;

   and (BusMultiplexor[0], ~Entrada[3], ~Entrada[2], ~Entrada[1], Entrada[0]);
   and (BusMultiplexor[0], ~Entrada[3], ~Entrada[2], Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[0], ~Entrada[3], ~Entrada[2], Entrada[1], Entrada[0]);
   and (BusMultiplexor[0], ~Entrada[3], Entrada[2], ~Entrada[1], Entrada[0]);
   and (BusMultiplexor[0], Entrada[3], ~Entrada[2], Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[0], Entrada[3], Entrada[2], ~Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[0], Entrada[3], Entrada[2], ~Entrada[1], Entrada[0]);
   and (BusMultiplexor[0], Entrada[3], Entrada[2], Entrada[1], Entrada[0]);
   and (BusMultiplexor[1], ~Entrada[3], Entrada[2], ~Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[1], ~Entrada[3], Entrada[2], ~Entrada[1], Entrada[0]);
   and (BusMultiplexor[1], ~Entrada[3], Entrada[2], Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[1], ~Entrada[3], Entrada[2], Entrada[1], Entrada[0]);
   and (BusMultiplexor[1], Entrada[3], ~Entrada[2], ~Entrada[1], Entrada[0]);
   and (BusMultiplexor[1], Entrada[3], Entrada[2], Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[1], Entrada[3], Entrada[2], Entrada[1], Entrada[0]);
   and (BusMultiplexor[2], ~Entrada[3], Entrada[2], ~Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[2], ~Entrada[3], ~Entrada[2], ~Entrada[1], Entrada[0]);
   and (BusMultiplexor[2], ~Entrada[3], ~Entrada[2], Entrada[1], Entrada[0]);
   and (BusMultiplexor[3], ~Entrada[3], ~Entrada[2], Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[3], ~Entrada[3], ~Entrada[2], Entrada[1], Entrada[0]);
   and (BusMultiplexor[3], ~Entrada[3], Entrada[2], ~Entrada[1], ~Entrada[0]);
   and (BusMultiplexor[3], ~Entrada[3], Entrada[2], ~Entrada[1], Entrada[0]);

   
   Multiplexor4a1 U1 (Salida,Entrada[5:4],BusMultiplexor);

   
endmodule // Comparador22Numeros6Bit_Multiplexor
