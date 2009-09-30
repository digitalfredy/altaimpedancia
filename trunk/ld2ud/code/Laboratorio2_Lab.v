module Laboratorio2_Lab (/*AUTOARG*/ ) ;
   reg   [6:0] Combinacion2Digitos;
   reg [5:0]   Estimulo;
 	       
   MayorQue63 U1 (RtaMayorQue63,Combinacion2Digitos);
   
   CombinatoriaCodigo U2 (RtaCombinatoriaCodigo,Estimulo[5:0]);
   
   
   initial begin
      Combinacion2Digitos = 7'b0000000;
      Estimulo = 6'b000000;
      
   end

   initial begin
      
      repeat (100) begin
	 #1 Combinacion2Digitos <= Combinacion2Digitos + 1;
	 
      end
   end

   initial begin
      repeat (62) begin
	 #1 Estimulo <= Estimulo + 1;
	 
      end

   end
   

   initial begin
      $dumpfile ("Laboratorio2_Lab.vcd");
      $dumpvars;
   end
   
   
endmodule // Laboratorio2_Lab
