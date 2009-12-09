module Memoria16X16Bits (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada, Reloj, HabilitarSalida, HabilitarEscritura, Direccion
   ) ;
   output reg [15:0] Salida;
   input  [15:0] Entrada;
   input  Reloj, HabilitarSalida, HabilitarEscritura;
   input  [15:0] Direccion;

   reg   [15:0] Memoria [15:0];

   //LoadInmediato del numero 23 en registro 0

   always @ (posedge Reloj) begin
      Memoria[16'h0] = 16'h4000;
      Memoria[16'h1] = 16'h0017;

     if (HabilitarEscritura)  begin
	Memoria[Direccion] = Entrada;
	Salida <= 16'hz;
     end
     else if (HabilitarSalida) begin
	Salida <= Memoria[Direccion];
//	Entrada <= 16'hz;
     end
      else  begin
	 Salida <= 16'hz;
      end
      
   end
   
endmodule // Memoria16X16Bits
