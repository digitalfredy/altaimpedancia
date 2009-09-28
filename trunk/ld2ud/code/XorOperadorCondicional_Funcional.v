//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module XorOperadorCondicional_Funcional (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [1:0] Entrada;
   assign Salida = (Entrada=='b01) ? 'b1 :
		   (Entrada=='b10) ? 'b1 :
		    'b0;
endmodule // XorOperadorCondicional_Funcional
