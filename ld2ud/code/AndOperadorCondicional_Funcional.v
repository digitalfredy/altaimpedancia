//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module AndOperadorCondicional_Funcional (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [1:0] Entrada;
   
   assign Salida = (Entrada=='b11) ? 'b1 : 'b0;
endmodule // AndOperadorCondicional_Funcional
