//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module Laboratorio1 (/*AUTOARG*/) ;
//Registros y alambres para punto 1 en Verilog de doc/Taller1.pdf
   reg   [1:0] EstimuloCompuertas;
   wire        RtaAndOperadorBitABit_Funcional,RtaAndOperadorCondicional_Funcional,RtaAndUsandoNand_Estructural; 
   wire        RtaXorOperadorBitABit_Funcional,RtaXorOperadorCondicional_Funcional,RtaXorUsandoNand_Estructural;
//Registros y alambres para punto 2 en Verilog de doc/Taller1.pdf
   reg   [7:0] Palabra;
   wire   [7:0] RtaRotaIzquierda2Bits,RtaDesplazaDerecha2Bits;
//Instanciando y conectando dispositivos para punto 1
   AndOperadorBitABit_Funcional InstanciaAndOperadorBitABit_Funcional(RtaAndOperadorBitABit_Funcional,EstimuloCompuertas[1:0]);   
   AndOperadorCondicional_Funcional InstanciaAndOperadorCondicional_Funcional(RtaAndOperadorCondicional_Funcional,EstimuloCompuertas[1:0]);
   AndUsandoNand_Estructural InstanciaAndUsandoNand_Estructural (RtaAndUsandoNand_Estructural,EstimuloCompuertas);   
   XorOperadorBitABit_Funcional InstanciaXorOperadorBitABit_Funcional(RtaXorOperadorBitABit_Funcional,EstimuloCompuertas[1:0]);
   XorOperadorCondicional_Funcional InstanciaXorOperadorCondicional_Funcional(RtaXorOperadorCondicional_Funcional,EstimuloCompuertas[1:0]);   
   XorUsandoNand_Estructural InstanciaXorUsandoNand_Estructural (RtaXorUsandoNand_Estructural,EstimuloCompuertas);
//Simulación punto1
   initial begin
      EstimuloCompuertas = 'b00;
   end

   initial begin
      repeat (4) begin
	 #1 EstimuloCompuertas <= EstimuloCompuertas+1;
      end
   end

//Instanciando y conectando dispositivos para punto 2
   RotaIzquierda2Bits InstanciaRotaIzquierda2Bits(RtaRotaIzquierda2Bits,Palabra);
   DesplazaDerecha2Bits InstanciaDesplazaDerecha2Bits(RtaDesplazaDerecha2Bits,Palabra);
//Simulación punto1
   initial begin
      Palabra = 'b0000_0000;
   end
   
   initial begin
      repeat (8) begin
	 #1 Palabra <= Palabra+1;
      end
      
   end
   

//Archivo con los resultados de la simulación puntos 1 y 2
   initial begin
      $dumpfile ("Laboratorio1_Lab.vcd");
      $dumpvars;
   end
endmodule // Laboratorio1
