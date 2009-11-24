module Banco8Registros16Bit (/*AUTOARG*/
   // Outputs
   SalidaA, SalidaB,
   // Inputs
   Entrada, Reloj, HabilitarEscritura, DireccionEscritura, DireccionA,
   DireccionB
   ) ;
   output [15:0] SalidaA;
   output [15:0] SalidaB;   
   input  [15:0] Entrada;
   //Entradas de control:
   input 	 Reloj,HabilitarEscritura;
   input [2:0] 	 DireccionEscritura,DireccionA,DireccionB;

   reg   [15:0] BancoRegistros [7:0];

   //Escritura registro en posición N:   //pendiente Reiniciar
   always @ (posedge Reloj)
      if (HabilitarEscritura)
	 BancoRegistros[DireccionEscritura] <= Entrada;	

   assign SalidaA = BancoRegistros[DireccionA];
   assign SalidaB = BancoRegistros[DireccionB];   
endmodule // Banco8Registros16Bit
