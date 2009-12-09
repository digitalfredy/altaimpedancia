module Registro6Bits_Lab (/*AUTOARG*/
   // Outputs
   Tupla, Reloj, Reiniciar, Habilitar
   ) ;
   output reg [5:0] Tupla;
   output reg Reloj, Reiniciar, Habilitar;

   wire   [5:0] RtaRegistro;
   
   Registro6Bit RegistroPrueba (RtaRegistro, Tupla, Reloj, Reiniciar, Habilitar);

   //Simulación:
   initial begin
      Tupla     = 6'b0000;
      Reloj     = 1'b0;
      Reiniciar = 1'b0;
      Habilitar = 1'b0;
   end

   initial begin
      repeat (8) begin
	 #1 Reloj <= ~Reloj;
      end
   end

   initial begin
      repeat (8) begin
	 #1 Tupla <= Tupla+1;
      end
   end
   
   initial begin
      #3 Habilitar = 1'b1;
   end

   initial begin
      $dumpfile ("Registro6Bits_Lab.vcd");
      $dumpvars;
   end  
   
endmodule // Registro6Bits_Lab
