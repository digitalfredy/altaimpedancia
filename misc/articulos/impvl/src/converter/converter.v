//-----------------------------------------------------------------------------
// Title         : Conversor de codigo BCD 2421 BCD EX3 
// Project       : Laboratorios de Digitales I
//-----------------------------------------------------------------------------
// File          : converter.v
// Author        : Mauricio Velasquez Velasquez  <mvelasquez@lud.udistrita.edu.co>
// Created       : 26.10.2004
// Last modified : 26.10.2004
//-----------------------------------------------------------------------------
// Description :
// Implementacion de un Conversor de Codigo BCD a Codigo BCD Exceso 3.
//-----------------------------------------------------------------------------
// Copyright (c) 2004 by GLUD-electronica (Electronix) This model is the confidential and
// proprietary property of GLUD-electronica (Electronix) and the possession or use of this
// file requires a written license from GLUD-electronica (Electronix).
//------------------------------------------------------------------------------
// Modification history :
// 26.10.2004 : created
//-----------------------------------------------------------------------------


module converter (
		  e0, e1, e2, e3,  //Entradas del Conversor
		  s0, s1, s2, s3);   // Salidas del Conversor
   input  e0, e1, e2, e3;
   output s0, s1, s2, s3;
   reg 	  s0,s1,s2,s3;
   
   always @(e0,e1,e2,e3,s0,s1,s2,s3) begin
      /* ----------DeclaraciOn de las funciones internas del conversor-- */
      s0 = !e1; // LSB
      s2 = (!e0 && e1 && !e2 && !e3) 
      || (e0 && e1 && !e2 && e3) ||  (e0 && e1 && e2 && !e3) 
      || (!e0 && !e1  && e3) ||  (!e0 && !e1 && e2);
      s1 =  (!e0 && !e1 && e2 && e3) ||  (e0 && e1 && !e2 && e3) 
      ||  (e0 && e1 && e2 && !e3) ||  (!e0 && !e2 && !e3);
      
      s3 = (e0 && e2 && e3) || (e0 && e1); //MSB
   end
   
endmodule //converter

module converter_tb; //Probador del conversor
   
   reg e0,e1, e2, e3 ;
   wire s0, s1 , s2, s3;
   
   initial begin 
      /* -----InicializaciOn de las variables a cero -----*/
      e0=0; 
      e1=0;
      e2=0;
      e3=0;

   end
   
   always begin
      /*------declaraciOn de los pulsos de la entrada del LSB ----- */
      #1 e0 = 1;
      #1 e0 = 0;
   end
   
   always begin
      #2 e1 = 1;
      #2 e1 = 0;
   end
   
   always begin 
      #4 e2 = 1;
      #4 e2 = 0;
   end
   
   always begin 
      
      /*-----------DeclaraciOn del LSB---------------*/
      #8 e3 = 1;
      #8 e3 = 0;
      
   end
   
   initial begin 
   #100 $finish;
      
   end

   converter U_converter(e0,e1,e2,e3,s0,s1,s2,s3);
   
   initial begin
      /*----------creaciOn del archivo de visualizaciOn grfica-------- */
      $dumpfile ("converter.vcd");
      $dumpvars;
      
   end 

endmodule //converter_tb



