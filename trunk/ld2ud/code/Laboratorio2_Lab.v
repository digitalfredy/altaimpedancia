module Laboratorio2_Lab (/*AUTOARG*/ ) ;
   wire   RtaComparador22Numeros6Bit_Compuertas;
   wire   RtaComparador22Numeros6Bit_Decodificador ;
   wire   RtaComparador22Numeros6Bit_Multiplexor;
   wire   [7:0] RtaDecodificador3a8;
   
   reg [5:0]   Estimulo;
   reg   [2:0] EstimuloDecodificador3a8;


   Comparador22Numeros6Bit_Compuertas U1 (RtaComparador22Numeros6Bit_Compuertas,Estimulo[5:0]);
   Comparador22Numeros6Bit_Decodificador U2 (RtaComparador22Numeros6Bit_Decodificador,Estimulo);
   Comparador22Numeros6Bit_Multiplexor U3 (RtaComparador22Numeros6Bit_Multiplexor,Estimulo);   


   Decodificador3a8 U4 (RtaDecodificador3a8,EstimuloDecodificador3a8);
   Multiplexor4a1 U5 (RtaMultiplexor4a1,Estimulo[5:4],Estimulo[3:0]);
   
   
   initial begin
      Estimulo = 6'b000000;
      EstimuloDecodificador3a8 = 3'b000;
   end

   initial begin
      repeat (62) begin
	 #1 Estimulo <= Estimulo + 1;
      end
   end

   initial begin
      repeat (8) begin
	 #1 EstimuloDecodificador3a8 = EstimuloDecodificador3a8 + 1;
      end
   end

   initial begin
      $dumpfile ("Laboratorio2_Lab.vcd");
      $dumpvars;
   end
   
endmodule // Laboratorio2_Lab
