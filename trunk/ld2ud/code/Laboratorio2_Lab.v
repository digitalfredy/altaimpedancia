module Laboratorio2_Lab (/*AUTOARG*/ ) ;
   reg   [6:0] Combinacion2Digitos;

   MayorQue63 U1 (RtaMayorQue63,Combinacion2Digitos);
   
   
   initial begin
      Combinacion2Digitos = 7'b0000000;
      
   end

   initial begin
      
      repeat (100) begin
	 #1 Combinacion2Digitos <= Combinacion2Digitos + 1;
	 
      end 
   end

   initial begin
      $dumpfile ("Laboratorio2_Lab.vcd");
      $dumpvars;
   end
   
   
endmodule // Laboratorio2_Lab
