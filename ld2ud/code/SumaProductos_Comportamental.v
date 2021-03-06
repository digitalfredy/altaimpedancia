//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module SumaProductos_Comportamental (/*AUTOARG*/
   // Outputs
   SumaProductos,
   // Inputs
   Entrada
   ) ;
   input  [3:0] Entrada;
   output SumaProductos;
   reg    SumaProductos;

   always @ ( /*AUTOSENSE*/Entrada) begin
      SumaProductos = 'b0;
      casex (Entrada) 
	4'bxx11: begin
	   SumaProductos <= 'b1;
	end
	4'b11xx: begin
	   SumaProductos <= 'b1;
	end
	default: begin
	   SumaProductos <= 'b0;
	end
      endcase // case (SumaProductos)
      
   end   

endmodule // SumaProductos_Comportamental
//tags: teoria
