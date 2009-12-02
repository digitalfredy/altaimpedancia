module Multiplexor16Bits4X1_Lab (/*AUTOARG*/
   // Outputs
   TuplaA, TuplaB, TuplaC, TuplaD, Seleccion
   ) ;
   output reg [15:0] TuplaA, TuplaB, TuplaC, TuplaD;
   output reg [1:0] Seleccion;

   wire   [15:0] Mux_Rta;
   
   Multiplexor16Bits4X1 Mux (Mux_Rta,TuplaA,TuplaB,TuplaC,TuplaD,Seleccion);

   //Simulación:
   initial begin
      TuplaA = 16'h1;
      TuplaB = 16'h5;
      TuplaC = 16'hA;
      TuplaD = 16'hF;
      Seleccion = 2'b00;
   end

   initial begin
      repeat (5) begin
	 #1 Seleccion <= Seleccion+1;	 
      end
   end

   initial begin
      $dumpfile ("Multiplexor16Bits4X1_Lab.vcd");
      $dumpvars;
   end  

   
endmodule // Multiplexor16Bits4X1_Lab
