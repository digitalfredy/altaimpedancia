module SumadorNoSigno (/*AUTOARG*/
   // Outputs
   Suma,
   // Inputs
   SumandoA, SumandoB
   ) ;
   output [4:0] Suma;
   input  [3:0] SumandoA, SumandoB;
// Como SumandoX y Suma no son signados hace la extensión del 0
   assign Suma = SumandoA + SumandoB;
      
endmodule // SumadorNoSigno


//sin acarreo como en slide7
//eso de dibujar el acarreo y no implementarlo me confundió//tags: teoria
