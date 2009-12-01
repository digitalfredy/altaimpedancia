module Multiplexor16Bits2X1_Lab (/*AUTOARG*/
   // Outputs
   TuplaA, TuplaB, Seleccion
   ) ;
   output reg [15:0] TuplaA, TuplaB;
   output reg Seleccion;

   wire   [15:0] Mux_Rta;
   
   Multiplexor16Bits2X1 Mux (Mux_Rta,TuplaA,TuplaB,Seleccion);

   //Simulación:
   initial begin
      TuplaA = 16'hF;
      TuplaB = 16'h7;
      Seleccion = 1'b0;
   end

   initial begin
      repeat (2) begin
	 #2 Seleccion <= ~Seleccion;	 
      end
   end

   initial begin
      $dumpfile ("Multiplexor16Bits2X1_Lab.vcd");
      $dumpvars;
   end  

   
endmodule // Multiplexor16Bits2X1_Lab
