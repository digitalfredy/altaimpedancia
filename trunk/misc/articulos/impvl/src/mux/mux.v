//-----------------------------------------------------------------------------
// Title         : Multiplexor de 8 entradas
// Project       : Laboratorios de Digitales I
//-----------------------------------------------------------------------------
// File          : mux.v
// Author        : Mauricio Velasquez Velasquez  <mvelasquez@glud.udistrital.edu.co>
// Created       : 26.10.2004
// Last modified : 26.10.2004
//-----------------------------------------------------------------------------
// Description :
// Implementacion completa por medio de verilog HDL de un Multiplexor
// de 8 entradas con su respectivo modulo de prueba (Test Bench).
//-----------------------------------------------------------------------------
// Copyright (c) 2004 by GLUD-electronica (Electronix) This model is the
// confidential and proprietary property of GLUD-electronica (Electronix) and
// the possession or use of this file requires a written license from
// GLUD-electronica (Electronix).
//------------------------------------------------------------------------------
// Modification history : 
// 26.10.2004 : created
//-----------------------------------------------------------------------------

module mux(
	   muxin_0,
	   muxin_1,
	   muxin_2,
	   muxin_3,
	   muxin_4,
	   muxin_5,
	   muxin_6,
	   muxin_7,
	   sel,
	   muxout
	   );
   
   //-----------Puertos de entrada---------------
   input muxin_0, muxin_1, muxin_2, muxin_3, muxin_4, muxin_5, muxin_6, muxin_7;
   input [2:0] sel ;
   
   //-----------Puertos de salida---------------
   output muxout;
   
   //------------Variables internas--------
   reg 	  muxout;


   
   //-------------El codigo empieza aqui---------
   
   always @ (
	     sel or muxin_0 or muxin_1 or muxin_2 or muxin_3
	     or muxin_4 or muxin_5 or muxin_6 or muxin_7
	     )   /* Con esta funciOn se indica que cuando una variable cambie repita
		   el proceso*/

     begin
	
	/*Esta es la implementacion del selector en la que se asigna 
	 la codificaciOn para cada una de las posiciones identificadas con numeros*/
	
	case(sel)
          3'b000 : muxout = muxin_0;
          3'b001 : muxout = muxin_1;
	  3'b010 : muxout = muxin_2;
	  3'b011 : muxout = muxin_3;
	  3'b100 : muxout = muxin_4;
	  3'b101 : muxout = muxin_5;
	  3'b110 : muxout = muxin_6;
	  3'b111 : muxout = muxin_7;
	endcase // case(sel)
	
     end
   
endmodule //Fin del modulo mux

module mux_tb;
   
   reg muxin_0, muxin_1, muxin_2, muxin_3, muxin_4, muxin_5, muxin_6, muxin_7;
   reg [2:0] sel;
   wire muxout;

   initial begin
      muxin_0 = 0;
      muxin_1 = 0;
      muxin_2 = 0;
      muxin_3 = 0;
      muxin_4 = 0;
      muxin_5 = 0;
      muxin_6 = 0;
      muxin_7 = 0;
      sel = 3'b000;
      
   end
   
   always begin
      #2 muxin_0=~muxin_0;
      
   end
   
   always begin
      #3 muxin_1=~muxin_1;
 
   end

   always begin
      #4 muxin_2=~muxin_2;
      
   end

   always begin
      #5 muxin_3=~muxin_3;
      
   end

   always begin
      #6 muxin_4=~muxin_4;
      
   end

   always begin
      #7 muxin_5=~muxin_5;
      
   end

   always begin
      #8 muxin_6=~muxin_6;
      
   end

   always begin
      #9 muxin_7=~muxin_7;
      
   end

   always begin
      #1 sel=3'b000;
      #1 sel=3'b001;
      #1 sel=3'b010;
      #1 sel=3'b011;
      #1 sel=3'b100;
      #1 sel=3'b101;
      #1 sel=3'b110;
      #1 sel=3'b111;
   end

   initial begin
      #1000 $finish;
      
   end
   
   mux U_mux(muxin_0, muxin_1, muxin_2, muxin_3, muxin_4, muxin_5, muxin_6, muxin_7, sel, muxout);
   
   initial begin
      $dumpfile("mux.vcd");
      $dumpvars;
      
   end
   
   
endmodule // mux_tb
