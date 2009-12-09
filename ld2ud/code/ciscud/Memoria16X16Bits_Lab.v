module Memoria16X16Bits_Lab (/*AUTOARG*/
   // Outputs
   Dato2M, Direccion, Leer, Escribir, Reloj
   ) ;
   output reg [15:0] Dato2M;
   output reg [15:0] Direccion;
   output reg Leer, Escribir, Reloj;

   wire   [15:0] Rta;
   Memoria16X16Bits Mem(Rta,Dato2M,Reloj,Leer,Escribir,Direccion);

   initial begin
      Direccion <= 16'h0;
      Reloj <= 1'b0;
      Leer <= 1'bz;
      Escribir <= 1'bz;
   end

   initial begin
      repeat (8) begin
	 #1 Reloj <= ~Reloj;
      end
      
   end
   
   initial begin
      #1 Leer <= 1'b1;
      #1 Leer <= 1'b0;
   end
   
//      #1 Escribir <=1'b1;
//      #1 Direccion <= 16'h7;
   initial begin
      $dumpfile("Memoria16X16Bits_Lab.vcd");
      $dumpvars;
   end
   
endmodule // Memoria16X16Bits_Lab
