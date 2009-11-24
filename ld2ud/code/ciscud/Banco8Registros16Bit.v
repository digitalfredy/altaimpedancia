module Banco8Registros16Bit (/*AUTOARG*/
   // Outputs
   SalidaA, SalidaB,
   // Inputs
   Entrada, Reloj, Reiniciar, HabilitarEscritura, DireccionEscritura,
   DireccionA, DireccionB
   ) ;
   output [15:0] SalidaA;
   output [15:0] SalidaB;   
   input  [15:0] Entrada;
   //Entradas de control:
   input 	 Reloj,Reiniciar,HabilitarEscritura;
   input [2:0] 	 DireccionEscritura,DireccionA,DireccionB;

   reg   [15:0] BancoRegistros [7:0];

   //Escritura registro en posición N:   //pendiente Reiniciar
   always @ (posedge Reloj, posedge Reiniciar)
     if (Reiniciar) begin
	BancoRegistros[0] <= 1'h0;
	BancoRegistros[1] <= 1'h0;
	BancoRegistros[2] <= 1'h0;
	BancoRegistros[3] <= 1'h0;
	BancoRegistros[4] <= 1'h0;
	BancoRegistros[5] <= 1'h0;
	BancoRegistros[6] <= 1'h0;
	BancoRegistros[7] <= 1'h0;
	end
   
     else if (HabilitarEscritura)
       BancoRegistros[DireccionEscritura] <= Entrada;	

   assign SalidaA = BancoRegistros[DireccionA];
   assign SalidaB = BancoRegistros[DireccionB];   
endmodule // Banco8Registros16Bit
