module Laboratorio1 (/*AUTOARG*/) ;

   reg   [1:0] EstimuloCompuertas;
   wire   RtaXorUsandoAssign_Funcional,RtaXorFn2,RtaXorUsandoNand_Estructural,RtaAndUsandoAssign_Funcional,RtaAndFn2,RtaAndUsandoNand_Estructural; // Salidas punto 1
   
   XorUsandoAssign_Funcional InstanciaXorUsandoAssign_Funcional(RtaXorUsandoAssign_Funcional,EstimuloCompuertas[1:0]);
   AndUsandoAssign_Funcional InstanciaAndUsandoAssign_Funcional(RtaAndUsandoAssign_Funcional,EstimuloCompuertas[1:0]);
   AndUsandoNand_Estructural InstanciaAndUsandoNand_Estructural (RtaAndUsandoNand_Estructural,EstimuloCompuertas);
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
