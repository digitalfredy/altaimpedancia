module NuevePorX (/*AUTOARG*/
   // Outputs
   Y,
   // Inputs
   X
   ) ;
//implementación y=9*x, x es signado de 4 bits
   output signed [7:0] Y;
   input signed [3:0] X;

   assign Y = {X,'b000}+X;
endmodule // NuevePorX
