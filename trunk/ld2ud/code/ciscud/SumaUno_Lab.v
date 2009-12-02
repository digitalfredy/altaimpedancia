module SumaUno_Lab (/*AUTOARG*/
   // Outputs
   Tupla
   ) ;
   output reg [15:0] Tupla;

   wire   [15:0] Respuesta;

   SumaUno SumaUno (Respuesta,Tupla);

   //Simulación:
   initial begin
      Tupla = 16'h0;
   end

   initial begin
      repeat (15) begin
	 #1 Tupla <= Tupla+16;
      end
   end
   
   initial begin
      $dumpfile ("SumaUno_Lab.vcd");
      $dumpvars;
   end
   
endmodule // SumaUno_Lab
