module ExtensionAritmetica (/*AUTOARG*/
   // Inputs
   BitEntrada, ControlModo, SelectorOperacion,
   // Outputs
   BitSalida
   ) ;
   input  BitEntrada, ControlModo;
   input  [1:0] SelectorOperacion;
   output BitSalida;

   wire   Cable1, Cable2;

   assign Cable1 = ~BitEntrada & ControlModo & ~SelectorOperacion[0];
   assign Cable2 = BitEntrada & ControlModo & ~SelectorOperacion[1];
   assign BitSalida = Cable1 | Cable2;

   
endmodule // ExtensionAritmetica