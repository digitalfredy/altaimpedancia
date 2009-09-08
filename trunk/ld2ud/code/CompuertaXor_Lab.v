module Laboratorio (/*AUTOARG*/) ;

   reg   [1:0] SalidaLab;
   wire   EntradaLab;

   CompuertaXor InstanciaCompuertaXor(EntradaLab,SalidaLab[1:0]); //El orden está definido en CompuertaXor.v, si se pudiera omitir un argumento se podría evitar el cable
      CompuertaXor InstanciaCompuertaXor2(EntradaLab,SalidaLab[1:0]); 

   initial begin
      SalidaLab = 'b00;
   end

   initial begin
      repeat (4) begin
	 #1 SalidaLab <= SalidaLab+1;
      end
   end

   initial begin
      $dumpfile ("CompuertaXor.vcd");
      $dumpvars;
   end
endmodule // Laboratorio
