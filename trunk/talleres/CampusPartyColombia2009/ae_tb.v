module Laboratorio (/*AUTOARG*/) ;
   reg   [1:0] Entrada;
   reg   [1:0] SelOper;
   wire   Salida;

   // como meter los bit 3 y 2 de Entrada?
   ExtensionAritmetica ExtArit1(Entrada[0], Entrada[1], SelOper, Salida);
   
   initial begin
      Entrada = 'b0000;
   end
   
   initial begin
      repeat (16) begin
	 #1 Entrada = Enrada+1;
      end
   end
   
endmodule // Laboratorio
