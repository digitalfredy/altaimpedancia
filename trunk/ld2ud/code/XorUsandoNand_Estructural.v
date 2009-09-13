module XorUsandoNand_Estructural (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [1:0] Entrada;
   wire   CableA, CableB, CableC, CableD;

   nand InstalnciaNand1 (CableA,Entrada[1],Entrada[1]);
   nand InstalnciaNand2 (CableB,Entrada[0],Entrada[0]);
   nand InstalnciaNand3 (CableC,CableA,Entrada[0]);
   nand InstalnciaNand4 (CableD,CableB,Entrada[1]);
   nand InstalnciaNand5 (Salida,CableC,CableD);
   
   
endmodule // XorUsandoNand_Estructural

//referencia: http://hyperphysics.phy-astr.gsu.edu/HBASE/Electronic/xor.html