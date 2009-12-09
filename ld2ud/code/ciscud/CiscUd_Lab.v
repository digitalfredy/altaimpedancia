module CiscUd_Lab (/*AUTOARG*/
   // Outputs
   Reloj, Reiniciar
   ) ;
   output reg Reloj, Reiniciar;
   CiscUd cisc(Reloj,Reiniciar);

   initial begin
      Reloj  <= 1'b0;
      Reiniciar <= 1'b0;
   end

   initial begin
      repeat (16) begin
	 #1 Reloj <= ~Reloj;
      end
   end

   initial begin
      #1 Reiniciar <= ~Reiniciar;
      #1 Reiniciar <= ~Reiniciar;
   end

   initial begin
      $dumpfile("CiscUd_Lab.vcd");
      $dumpvars;
   end
   
endmodule // CiscUd_Lab
