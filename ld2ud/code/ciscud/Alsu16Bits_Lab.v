module Alsu16Bits_Lab (/*AUTOARG*/
   // Outputs
   TuplaA, TuplaB, Funcion
   ) ;
   output reg [15:0] TuplaA, TuplaB;
   output reg [3:0]Funcion;

   wire   [15:0] Respuesta;
   wire   Cy, Ov;

   Alsu16Bits Alsu(Respuesta,Cy,Ov,TuplaA,TuplaB,Funcion);

   //simulación:
   initial begin
      Funcion = 4'b0000;
      TuplaA = 16'hFFFF;
      TuplaB = 16'h1;
   end

   initial begin
      repeat (33) begin
	 #1 Funcion <= Funcion+1;
      end
   end

   initial begin
      #16 TuplaA = 16'h7;
   end
   
   initial begin
      $dumpfile("Alsu16Bits_Lab.vcd");
      $dumpvars;
   end
endmodule // Alsu16Bits_Lab
