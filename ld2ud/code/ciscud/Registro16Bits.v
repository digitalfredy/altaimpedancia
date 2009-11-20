module Registro16Bit (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Reloj, Reiniciar, Habilitar
   ) ;
   output reg [15:0] Salida;
   input  [15:0] Entrada;
   input  Reloj, Reiniciar, Habilitar;

   always @ (posedge Reloj, posedge Reiniciar)
      if (Reiniciar)
	Salida <= 16'h0;
      else if (Habilitar)
	Salida <= Entrada;

endmodule // Registro16Bit
