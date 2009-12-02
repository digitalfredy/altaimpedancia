module Buffer3Estados16Bit_Lab (/*AUTOARG*/
   // Outputs
   Tupla, Habilitador
   ) ;
   output reg [15:0] Tupla;
   output reg Habilitador;

   wire   [15:0] Respuesta;

   Buffer3Estados16Bit Buffer(Respuesta,Tupla,Habilitador);

   //simulación
   initial begin
      Tupla = 16'h0;
      Habilitador = 1'b0;
   end
   
   initial begin
      repeat (32) begin
	 #1 Tupla <= Tupla+1;
	 Habilitador <= ~Habilitador;
      end
   end

   initial begin
      $dumpfile("Buffer3Estados16Bit_Lab.vcd");
      $dumpvars;
   end
   
endmodule // Buffer3Estados16Bit_Lab
