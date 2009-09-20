//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module SumaProductos_Funcional (/*AUTOARG*/
   // Outputs
   SumaProductos,
   // Inputs
   Entrada
   ) ;
   input  [3:0] Entrada;
   output SumaProductos;

   assign SumaProductos = (Entrada[3] & Entrada[2]) | (Entrada[1] & Entrada[0]);
   
endmodule // SumaProductos_Funcional
