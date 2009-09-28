module SumadorSigno (/*AUTOARG*/ ) ;
   output signed [4:0] Suma;
   input signed  [3:0] Sumando1, Sumando2;
// como los operandos y el resultado son signados automaticamente se hace l extension de signo
   assign Suma = Sumando1 + Sumando2;
   
endmodule // SumadorSigno


//Sin carry como el del slide9