module Registro16Bits_Lab (/*AUTOARG*/
   // Outputs
   Tupla, Reloj, Reiniciar, Habilitar
   ) ;
   output reg [15:0] Tupla;
   output reg Reloj, Reiniciar, Habilitar;

   wire   [15:0] RtaRegistro;
   
   Registro16Bit RegistroPrueba (RtaRegistro, Tupla, Reloj, Reiniciar, Habilitar);

   //Simulación:
   initial begin
      Tupla     = 16'h0;
      Reloj     = 1'b0;
      Reiniciar = 1'b0;
      Habilitar = 1'b0;
   end

   initial begin
      repeat (16) begin
	 #1 Reloj <= ~Reloj;
      end
   end

   initial begin
      repeat (16) begin
	 #1 Tupla <= Tupla+1;
      end
   end
   
   initial begin
      #8 Habilitar = 1'b1;
   end

   initial begin
      $dumpfile ("Registro16Bits_Lab.vcd");
      $dumpvars;
   end  
   
endmodule // Registro16Bits_Lab
