//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module SumaProductos_Estructural (/*AUTOARG*/
   // Outputs
   SumaProductos,
   // Inputs
   Entrada
   ) ;
   input  [3:0] Entrada;
   output SumaProductos;
   wire   [1:0] Productos;

   and U1 (Productos[1],Entrada[3],Entrada[2]);
   and U2 (Productos[0],Entrada[1],Entrada[0]);
   or  U3 (SumaProductos,Productos[1],Productos[0]);
   
endmodule // SumaProductos_Estructural
//tags: teoria
