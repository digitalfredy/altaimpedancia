//-----------------------------------------------------------------------------
// Title         : Demultiplexor de 8 salidas
// Project       : Laboratorios de Digitales I
//-----------------------------------------------------------------------------
// File          : dmux.v
// Author        : Mauricio Velasquez Velasquez  <mvelasquez@lud.udistrita.edu.co>
// Created       : 26.10.2004
// Last modified : 26.10.2004
//-----------------------------------------------------------------------------
// Description :
// Implementacion de un demultiplexor con verilog de 8 salidas.
//-----------------------------------------------------------------------------
// Copyright (c) 2004 by GLUD-electronica (Electronix) This model is the confidential and
// proprietary property of GLUD-electronica (Electronix) and the possession or use of this
// file requires a written license from GLUD-electronica (Electronix).
//------------------------------------------------------------------------------
// Modification history :
// 26.10.2004 : created
//-----------------------------------------------------------------------------

module dmux(a, dmout0, dmout1, dmout2, dmout3, dmout4, dmout5, dmout6, dmout7, sel);
   
   input a;                        //DeclaraciOn de la entrada
   input [2:0] sel;                //DeclaraciOn del selector como un bus de dos bits
   output dmout0, dmout1, dmout2, dmout3, 
	  dmout4, dmout5, dmout6, dmout7; // declaraciOn de cada uno de los 8 bits de salida

   reg dmout0, dmout1, dmout2, dmout3, dmout4, dmout5, dmout6, dmout7;

   always @ ( a, sel, dmout0, dmout1, dmout2, dmout3, dmout4, dmout5, dmout6, dmout7 ) 
     begin
        //ImplementaciOn del multiplexor usando Case para cada variaciOn del selector

	case (sel) 	  
	3'b000:
	  begin 
	     dmout0 = 1;
	  end
	
	3'b001: 
	  
	  begin 
	     dmout0 = 0;
	     dmout1 = 1;
	  end
	3'b010:
	
	  begin
	     dmout1 = 0;                  
	     dmout2 = 1;
	  end
	
	3'b011:
	  begin
	     dmout2 = 0;	
	     dmout3 = 1;
	  end

	3'b100:
	  begin
	     dmout3 = 0;
	     dmout4 = 1;
	  end
	
	3'b101:
	  begin 
	     dmout4 = 0;
	     dmout5 = 1;
	end

	3'b110:
	  begin 
	     dmout5 = 0;
	     dmout6 = 1;
	  end
	
	3'b111:
	  begin
	     dmout6 = 0;	
	     dmout7= 1;
		end
	endcase
     end
endmodule // fin del mOdulo dmux

module dmux_tb;  // ImplementaciOn del mOdulo de prueba

   reg a;        //DeclaraciOn de las variables de entrada como tipo Reg
   reg [2:0] sel;
   wire      dmout0, dmout1, //DeclaraciOn de las variables de Salida como tipo wire
	     dmout2, dmout3, dmout4, dmout5, dmout6, dmout7;
   

   initial begin                 // Valor inicial para la entrada y para el selector
      a = 1;
      sel = 3'b000;
   end

   always begin              //VariaciOn con el tiempo del valor del selector
      #1 sel = 3'b001;
      #1 sel = 3'b010;
      #1 sel = 3'b011;
      #1 sel = 3'b100;
      #1 sel = 3'b101;
      #1 sel = 3'b110;
      #1 sel = 3'b111;
   end

   initial begin
      #9 $finish;
      
   end
   
   dmux U_dmux(a, dmout0, dmout1, dmout2, dmout3, dmout4, dmout5, dmout6, dmout7, sel);
   
   
   initial begin
      $dumpfile("dmux.vcd"); //GeneraciOn del archivo tipo VCD
      $dumpvars (0); //IniacializaciOn de todas las variables en 0
   end
endmodule // dmux_tb
