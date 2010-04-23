module Laboratorio (/*AUTOARG*/) ;
   reg   [3:0] Entrada;
   wire   Salida;

   ExtensionAritmetica InstanciaExtArit(Entrada[0], Entrada[1], Entrada[3:2], Salida);
   
   initial begin
      Entrada = 'b0000;
   end
   
   initial begin
      repeat (16) begin
	 #1 Entrada <= Entrada+1;
      end
   end
   
   initial begin
      $dumpfile ("ExtensionAritmetica.vcd");
      $dumpvars;
   end   
endmodule // Laboratorio
