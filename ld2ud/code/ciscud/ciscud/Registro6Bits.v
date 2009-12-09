module Registro6Bits (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Reloj, Reiniciar, Habilitar
   ) ;
   output reg [5:0] Salida;
   input  [5:0] Entrada;
   input  Reloj, Reiniciar, Habilitar;

   always @ (posedge Reloj, posedge Reiniciar)
      if (Reiniciar)
	Salida <= 6'b0000;
      else if (Habilitar)
	Salida <= Entrada;

endmodule // Registro6Bits
