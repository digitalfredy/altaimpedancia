module Multiplexor16Bits2X1 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada0, Entrada1, Selector
   ) ;
   output reg [15:0] Salida;
   input  [15:0] Entrada0, Entrada1;
   input  Selector;

   always @ ( /*AUTOSENSE*/Entrada0 or Entrada1 or Selector) begin
      case (Selector) 
	1'b0: begin
	   Salida <= Entrada0;
	end
	1'b1: begin
	   Salida <= Entrada1;
	end
      endcase // case (Selector)      
   end

endmodule // Multiplexor16Bits2X1
