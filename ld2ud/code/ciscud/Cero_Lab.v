module Cero_Lab (/*AUTOARG*/ ) ;
   wire   [15:0] Respuesta;

   Cero Cero (Respuesta);


   //Simulación:
   //como no hay nada en la salida hay que crear algo que cambie en el tiempo para que exista siulación
   reg   [2:0] Reloj;
   initial begin
      Reloj = 2'b000;
   end
   initial begin
      repeat (8) begin
	 #1 Reloj <= Reloj+1;
      end
   end
   initial begin
      $dumpfile ("Cero_Lab.vcd");
      $dumpvars;
   end
   
endmodule // Cero_Lab
