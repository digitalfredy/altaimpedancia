module ConcatenaAsignaConcatena_Prueba_Lab (/*AUTOARG*/
   // Outputs
   Tupla
   ) ;
   output reg [2:0] Tupla;
   wire   [2:0] Respuesta;
   wire   Cy_Rta;
   reg   Reloj;
   ConcatenaAsignaConcatena_Prueba Prueba(Respuesta,Cy_Rta,Tupla);

   initial begin
      Tupla=3'b100;
      Reloj=1'b0;
   end

   initial begin
      repeat (8) begin
	 #1 Reloj <= ~Reloj;
      end
   end
   
   initial begin
      $dumpfile("ConcatenaAsignaConcatena_Prueba_Lab.vcd");
      $dumpvars;
   end
   
   
endmodule // ConcatenaAsignaConcatena_Prueba_Lab
