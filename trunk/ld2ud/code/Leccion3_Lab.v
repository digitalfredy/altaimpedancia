module Leccion3_Lab (/*AUTOARG*/) ;
   wire   [3:0] RtaDecodificador2a4;
   wire   [15:0] RtaDecodificador4a16;
   reg   [2:0] EstimuloDecodificador2a4;
   reg   [4:0] EstimuloDecodificador4a16;
   
   Decodificador2a4 U1 (RtaDecodificador2a4,EstimuloDecodificador2a4[1:0], EstimuloDecodificador2a4[2]);

   Decodificador4a16 U2 (RtaDecodificador4a16,EstimuloDecodificador4a16[3:0],EstimuloDecodificador4a16[4]);
   
   initial begin
      EstimuloDecodificador2a4 = 'b000;
      EstimuloDecodificador4a16 = 'b00000;
   end

   initial begin
      repeat (8) begin
	 #1 EstimuloDecodificador2a4 <= EstimuloDecodificador2a4 + 1;
      end
      repeat (32) begin
	 #1 EstimuloDecodificador4a16 <= EstimuloDecodificador4a16 + 1;
      end
      
   end

   initial begin
      $dumpfile("Leccion3_Lab.vcd");
      $dumpvars;
   end
   
endmodule // Leccion3_Lab

//tags: teoria