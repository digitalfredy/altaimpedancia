module Registro4Bit (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Reloj, Reiniciar, Habilitar
   ) ;
   output reg [3:0] Salida;
   input  [3:0] Entrada;
   input  Reloj, Reiniciar, Habilitar;

   always @ (posedge Reloj, posedge Reiniciar)
      if (Reiniciar)
	Salida <= 4'b0000;
      else if (Habilitar)
	Salida <= Entrada;

endmodule // Registro4Bit
