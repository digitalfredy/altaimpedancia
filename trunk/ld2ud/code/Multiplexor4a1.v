module Multiplexor4a1 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Selector, Entrada
   ) ;
   output Salida;
   input  [1:0] Selector;
   input  [3:0] Entrada;

   wire   [3:0] BusOr;

   and AndUno (BusOr[3],Entrada[3],~Selector[1],~Selector[0]);
   and AndDos (BusOr[2],Entrada[2],~Selector[1],Selector[0]);   
   and AndTres (BusOr[1],Entrada[1],Selector[1],~Selector[0]);   
   and AndCuatro (BusOr[0],Entrada[0],Selector[1],Selector[0]);

   or (Salida,BusOr[3],BusOr[2],BusOr[1],BusOr[0]);
   
   
endmodule // Multiplexor4a1


// referencia http://www.see.ed.ac.uk/~gerard/Teach/Verilog/manual/Example/lrgeEx1/intro.html