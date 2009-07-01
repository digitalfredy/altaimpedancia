module Laboratorio;
   reg  [2:0] Entrada;
   wire [1:0] Salida;

   SumadorCompleto InstanciaSumCompleto(Entrada[1], Entrada[2], Entrada[0], Salida[1], Salida[0]);

   initial begin
      Entrada = 'b000;
   end

   initial begin
      repeat (8) begin
	 #1 Entrada <= Entrada+1;
      end
      
   end

   initial begin
      $dumpfile ("SumadorCompleto.vcd");
      $dumpvars;
   end

endmodule // Laboratorio

