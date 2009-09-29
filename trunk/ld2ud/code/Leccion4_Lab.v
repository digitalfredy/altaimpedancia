module Leccion4 (/*AUTOARG*/ ) ;

   wire   [4:0] RtaSumadorNoSigno;
   reg   [3:0] SumandoA, SumandoB;

   wire [7:0] Y;
   reg   [3:0] X;

   SumadorNoSigno U1 (RtaSumadorNoSigno,SumandoA,SumandoB);
   
   NuevePorX U3 (Y,X);
   
   initial begin
      SumandoA = 'b0000;
      SumandoB = 'b0000;
      X = 'b0000;
   end

   initial begin
      repeat (16) begin
	 #1 X <= X + 1;
	 #1 {SumandoA,SumandoB} = {SumandoA,SumandoB} + 1;
      end
   end

   initial begin
      $dumpfile("Leccion4_Lab.vcd");
      $dumpvars;
   end
   
   
endmodule // Leccion4
//tags: teoria
