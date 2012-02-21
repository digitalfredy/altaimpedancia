                              -*- Mode: Verilog -*-
// Filename        : and_tres.v
// Description     : Implementacion de una compuerta AND de 3 entradas usando Verilog HDL
// Author          : Electronix electronica@glud.udistrital.edu.co
// Created On      : 02.11.2004
// Last Modified By: Mauricio Velasquez
// Last Modified On: 18.11.2004
// Update Count    : 0
// Status          : Unknown, Use with caution!

module and_tres(a , b, c, y);          // DefiniciOn del modulo and_uno

   input a, b, c;                     // DeclaraciOn de variables de entrada
   output y;                          // DeclaraciOn de variables de salida
   reg 	  y;                          
   
   always @ (a or b or c ) begin      // ImplementaciOn de la funciOn and para 3 entradas 
      y = a && b && c;
      
   end
      
endmodule // and_uno

module and_tres_tb () ;
   reg a, b, c;
   wire y;

   initial  begin
      a=0;
      b=0; 
      c=0;
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
     #600 $finish;
      
   end
   
   and_tres Uand_tres_tb(a,b, c, y);  // Generar la funciOn para el test bench
   

   initial begin
      $dumpfile ("and_tres.vcd");  // Generar el archivo de tipo VCD
      $dumpvars;

   end
   
   
endmodule // and_tres_tb
