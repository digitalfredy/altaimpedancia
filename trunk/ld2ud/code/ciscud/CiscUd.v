module CiscUd (/*AUTOARG*/ ) ;
   //ALSU y Banco de Registros con su Mux selector
   Multiplexor16Bits2X1 MuxBanco(Mux2ALSU,Datos,WireSelect);
   Banco8Registros16Bit Banco(A,B,Mux2ALSU,WriteEnable,WriteAddress,ReadAddressA,ReadAddressB);
   Alsu16Bits ALSU(ALSUout,cy,ov,msb,Z,A,B,Fun);

   //Registro Status con el comparador a Zero Mux y XOR
     //para el msb hay que hacer algo que defina que msb=ALSUout[15] y creo que es:
   assign msb = ALSUout[15];
   IgualCero EqualZero(Z,ALSUout);
   Registro4Bits Status(Scy,Sov,Smsb,SZ,LoadS,cy,ov,msb,Z);
   Multiplexor4X1 MuxStatus(Mux2XOR,Scy,Sov,Smsb,SZ,SelectS);
   xor XOR(XOR2CU,Mux2XOR,NegS);

   //Data Register con su Mux y Buffer
   Multiplexor16Bits2X1 MuxDR(Mux2DR,Datos,ALSUout,SelectDR);
   Registro16Bits DR(DR2Buff,Mux2DR,LoadDR);
   Buffer3Estados16Bit BuffDR(Datos,DR2Buff,oeDR);

   //Address Register con su Mux y Buffers
   Multiplexor16Bits2X1 MuxAR(Mux2AR,Datos,ALSUout,SelectAR);
   Registro16Bits AR(AR2Buff,Mux2AR,LoadAR);
   Buffer3Estados16Bit BuffAR(Direcciones,AR2Buff,oeAR);

   //Program Counter con su Sumador, Mux y Buffer
   SumaUno PlusOne(PCplus,PCout);
   Cero Zero(Cero);
   Multiplexor16Bits4X1 MuxPC(Mux2PC,Datos,ALSUout,Cero,PCplus,SelectPC);
   Registro16Bits PC(PCout,Mux2PC,LoadPC);
   Buffer3Estados16Bit BuffPCd(Datos,PCout,oePCd);
   Buffer3Estados16Bit BuffPCa(Direccioes,PCout,oePCa);

   //Registros de Control e Instrucciones
   Registro16Bits IR(IR2CU,Datos,LoadIR);
   Registro6Bits CR(Control,CU2IR,LoadCR); //ojo que es de 6 bits, corregir


   //Unidad de Control con su registro de estado Pendiente
   //MEMORIA PENDIENTE REVISAR
     
endmodule // CiscUd
