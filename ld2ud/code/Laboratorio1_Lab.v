module Laboratorio1 (/*AUTOARG*/) ;

   reg   [1:0] EstimuloCompuertas;
   wire   RtaXorFn1,RtaXorFn2,RtaXorEst,RtaAndFn1,RtaAndFn2,RtaAndEst; // Salidas punto 1
   
   XorFn1 InstanciaXorFn1(RtaXorFn1,EstimuloCompuertas[1:0]);
   AndFn1 InstanciaAndFn1(RtaAndFn1,EstimuloCompuertas[1:0]);
   AndUsandoNand_Estructural InstanciaAndUsandoNand_Estructural (RtaAndEst,EstimuloCompuertas);
   XorUsandoNand_Estructural InstanciaXorUsandoNand_Estructural (RtaXorEst,EstimuloCompuertas);
   
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
