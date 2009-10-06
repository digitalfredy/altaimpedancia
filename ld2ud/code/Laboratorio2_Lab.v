module Laboratorio2_Lab (/*AUTOARG*/ ) ;
   wire   RtaComparador22Numeros6Bit_Compuertas;
   wire   RtaComparador22Numeros6Bit_Decodificador ;
   wire   [7:0] RtaDecodificador;
   
   reg [5:0]   Estimulo;
   reg   [2:0] EstimuloDecodificador;

   Comparador22Numeros6Bit_Decodificador U1 (RtaComparador22Numeros6Bit_Decodificador,Estimulo);
   
   Comparador22Numeros6Bit_Compuertas U2 (RtaComparador22Numeros6Bit_Compuertas,Estimulo[5:0]);

   Decodificador3a8 U3 (RtaDecodificador,EstimuloDecodificador);
   
   
   initial begin
      Estimulo = 6'b000000;
      EstimuloDecodificador = 3'b000;
   end

   initial begin
      repeat (62) begin
	 #1 Estimulo <= Estimulo + 1;
      end
   end

   initial begin
      repeat (8) begin
	 #1 EstimuloDecodificador = EstimuloDecodificador + 1;
      end
   end
   

   initial begin
      $dumpfile ("Laboratorio2_Lab.vcd");
      $dumpvars;
   end
   
endmodule // Laboratorio2_Lab
