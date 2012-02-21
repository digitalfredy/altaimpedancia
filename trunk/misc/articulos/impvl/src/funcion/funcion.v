//-----------------------------------------------------------------------------
// Title         : Funcion
// Project       : Laboratorios de Digitales I
//-----------------------------------------------------------------------------
// File          : function.v
// Author        : Mauricio Velasquez Velasquez  <mvelasquez@glud.udistrital.edu.co>
// Created       : 26.10.2004
// Last modified : 26.10.2004
//-----------------------------------------------------------------------------
// Description :
// ImplementaciOn de una funciOn de lOgica combinacional.
//-----------------------------------------------------------------------------
// Copyright (c) 2004 by GLUD-electronica (Electronix) This model is the confidential and
// proprietary property of GLUD-electronica (Electronix) and the possession or use of this
// file requires a written license from GLUD-electronica (Electronix).
//------------------------------------------------------------------------------
// Modification history :
// 26.10.2004 : created
//-----------------------------------------------------------------------------

module funcion (a, b, c, z);

      input a, b, c;
      output z;
      reg  z;

      always @ (a or b or c) begin

	 z = (!a && b) || (b && !c) || (a && !c);
	 
      end
   
endmodule // funcion


module funcion_tb;

   reg a, b, c;
   wire z;

   initial begin
      a = 0;
      b = 0;
      c = 0;
      
   end
   always begin
      #1 a=~a;
   end
   
   always begin
      #2 b=~b;
   end
   
   always begin
      #4 c=~c;
   end
   
   initial begin
     #9 $finish;
      
   end
   
   funcion Ufuncion_tb(a, b, c, z);
   

   initial begin
      $dumpfile ("funcion.vcd");
      $dumpvars;

   end   
   
endmodule // funcion_tb
