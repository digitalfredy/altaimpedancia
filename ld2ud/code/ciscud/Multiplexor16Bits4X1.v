module Multiplexor16Bits4X1 (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada0, Entrada1, Entrada2, Entrada3, Selector
   ) ;
   output reg [15:0] Salida;
   input  [15:0] Entrada0, Entrada1, Entrada2, Entrada3;
   input  [1:0] Selector;

   always @ ( /*AUTOSENSE*/Entrada0 or Entrada1 or Entrada2
	     or Entrada3 or Selector) begin
      case (Selector) 
	2'b00: begin
	   Salida <= Entrada0;
	end
	2'b01: begin
	   Salida <= Entrada1;	   
	end
	2'b10: begin
	   Salida <= Entrada2;	   
	end
	2'b11: begin
	   Salida <= Entrada3;	   
	end
      endcase // case (Selector)
   end
   
endmodule // Multiplexor16Bits4X1
