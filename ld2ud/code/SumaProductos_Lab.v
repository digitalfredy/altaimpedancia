//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module SumaProductos_Lab (/*AUTOARG*/ ) ;
   reg   [3:0] Estimulo;
   wire   RtaPrimitiva,RtaEstructural,RtaFuncional,RtaComportamental;   

   SumaProductos_Primitiva U11 (RtaPrimitiva,Estimulo[3],Estimulo[2],Estimulo[1],Estimulo[0]);
   SumaProductos_Estructural U12 (RtaEstructural,Estimulo);
   SumaProductos_Funcional U13 (RtaFuncional,Estimulo);
   SumaProductos_Comportamental U14 (RtaComportamental,Estimulo);

   initial begin
      Estimulo = 'b0000;
   end
   
   initial begin
      repeat (16) begin
	 #1 Estimulo <= Estimulo+1;
	 
      end
   end
   
   initial begin
      $dumpfile ("SumaProductos_Lab.vcd");
      $dumpvars;
   end
   
   
endmodule // SumaProductos_Lab
//tags: teoria
