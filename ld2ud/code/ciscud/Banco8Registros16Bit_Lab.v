module Banco8Registros16Bit_Lab (/*AUTOARG*/
   // Outputs
   Tupla, Reloj, Reiniciar, Habilitar, DireccionEscritura, DireccionA,
   DireccionB
   ) ;
   output reg [15:0] Tupla;
   output reg Reloj,Reiniciar,Habilitar;
   output reg [2:0] DireccionEscritura, DireccionA, DireccionB;

   wire   [15:0] RtaA,RtaB;

   Banco8Registros16Bit 
     BancoPrueba (RtaA,RtaB,Tupla,Reloj,Reiniciar,Habilitar,DireccionEscritura,DireccionA,DireccionB);
   initial begin
      Tupla     = 16'h0;
      Reloj     = 1'b0;
      Reiniciar     = 1'b0;      
      Habilitar = 1'b1;
      DireccionA = 3'b111;
      DireccionB = 3'b100;
   end

   initial begin
      repeat (24) begin
	 #1 Reloj <= ~Reloj;
      end
   end
   
   initial begin
      repeat (16) begin
	 #1 Tupla <= Tupla+1;
      end
   end

   initial begin
      #3 DireccionEscritura = 3'b111;
   end

   initial begin
      #5 DireccionEscritura = 3'b100;
   end
   
   initial begin
      #12 Habilitar = 1'b0;      
   end

   initial begin
      #9 Reiniciar = 1'b1;
   end

   initial begin
      #10 Reiniciar = 1'b0;
   end
   
   initial begin
      $dumpfile ("Banco8Registros16Bit_Lab.vcd");
      $dumpvars;
   end  
   
endmodule // Banco8Registros16Bit_Lab
