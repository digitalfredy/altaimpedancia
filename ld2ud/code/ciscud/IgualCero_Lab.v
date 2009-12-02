module IgualCero_Lab (/*AUTOARG*/
   // Outputs
   Tupla
   ) ;
   output reg [15:0] Tupla;

   wire   Respuesta;

   IgualCero IgualCero (Respuesta,Tupla);

   //Simulación:
   initial begin
      repeat (8) begin
	 #1 Tupla <= Tupla+1;
      end
   end

   initial begin
      #0 Tupla <= 16'h0;
   end

   initial begin
      #9 Tupla <= 16'h0;
   end

   initial begin
      #12 Tupla <= 16'h7;
   end
   
   initial begin
      $dumpfile ("IgualCero_Lab.vcd");
      $dumpvars;

   end
   
   
endmodule // IgualCero_Lab
