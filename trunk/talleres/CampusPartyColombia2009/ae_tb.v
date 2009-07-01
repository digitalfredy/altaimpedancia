module Laboratorio (/*AUTOARG*/) ;
   reg   [3:0] Entrada;
   wire   Salida;

   // como meter los bit 3 y 2 de Entrada?
   ExtensionAritmetica ExtArit1(Entrada[0], Entrada[1], Entrada[3:2], Salida);
   
   initial begin
      Entrada = 'b0000;
   end
   
   initial begin
      repeat (16) begin
	 #1 Entrada <= Entrada+1;
      end
   end
   
endmodule // Laboratorio
