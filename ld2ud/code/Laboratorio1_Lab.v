module Laboratorio1 (/*AUTOARG*/) ;

   reg   [1:0] EstimuloCompuertas;
   wire        RtaAndOperadorBitABit_Funcional,RtaAndOperadorCondicional_Funcional,RtaAndUsandoNand_Estructural; 
   wire        RtaXorOperadorBitABit_Funcional,RtaXorOperadorCondicional_Funcional,RtaXorUsandoNand_Estructural;

   AndOperadorBitABit_Funcional InstanciaAndOperadorBitABit_Funcional(RtaAndOperadorBitABit_Funcional,EstimuloCompuertas[1:0]);   
   AndOperadorCondicional_Funcional InstanciaAndOperadorCondicional_Funcional(RtaAndOperadorCondicional_Funcional,EstimuloCompuertas[1:0]);
   AndUsandoNand_Estructural InstanciaAndUsandoNand_Estructural (RtaAndUsandoNand_Estructural,EstimuloCompuertas);   
   XorOperadorBitABit_Funcional InstanciaXorOperadorBitABit_Funcional(RtaXorOperadorBitABit_Funcional,EstimuloCompuertas[1:0]);
   XorOperadorCondicional_Funcional InstanciaXorOperadorCondicional_Funcional(RtaXorOperadorCondicional_Funcional,EstimuloCompuertas[1:0]);   
   XorUsandoNand_Estructural InstanciaXorUsandoNand_Estructural (RtaXorUsandoNand_Estructural,EstimuloCompuertas);
   
   initial begin
      EstimuloCompuertas = 'b00;
   end

   initial begin
      repeat (4) begin
	 #1 EstimuloCompuertas <= EstimuloCompuertas+1;
      end
   end

   initial begin
      $dumpfile ("Laboratorio1_Lab.vcd");
      $dumpvars;
   end
endmodule // Laboratorio1
