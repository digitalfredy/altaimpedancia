//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

module AndUsandoNand_Estructural (/*AUTOARG*/
   // Outputs
   Salida,
   // Inputs
   Entrada
   ) ;
   output Salida;
   input  [1:0] Entrada;
   wire   Cable;

   nand InstanciaNand1 (Cable,Entrada[1],Entrada[0]);
   nand InstanciaNand2 (Salida,Cable,Cable);
   
endmodule // AndUsandoNand_Estructural
