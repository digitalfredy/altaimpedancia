module CiscUd (/*AUTOARG*/ ) ;

   Multiplexor16Bits2X1 MuxBanco(Mux2ALSU,Datos,WireSelect);
   Banco8Registros16Bit Banco(A,B,Mux2ALSU,WriteEnable,WriteAddress,ReadAddressA,ReadAddressB);
   Alsu16Bits ALSU(ALSUout,cy,ov,msb,Z,A,B,Fun);
   IgualCero EqualZero(Z,ALSUout);
   Registro4Bits Status(Scy,Sov,Smsb,SZ,LoadS,cy,ov,msb,Z);
   Multiplexor4X1 MuxStatus(Mux2XOR,Scy,Sov,Smsb,SZ,SelectS);
   //XOR, PENDIENTE REVISAR

   Multiplexor16Bits2X1 MuxDR(Mux2DR,Datos,ALSUout,SelectDR);
   Registro16Bits DR(DR2Buff,Mux2DR,LoadDR);
   Buffer3Estados16Bit BuffDR(Datos,DR2Buff,oeDR);

   Multiplexor16Bits2X1 MuxAR(Mux2AR,Datos,ALSUout,SelectAR);
   Registro16Bits AR(AR2Buff,Mux2AR,LoadAR);
   Buffer3Estados16Bit BuffAR(Direcciones,AR2Buff,oeAR);

   SumaUno PlusOne(PCplus,PCout);
   Cero Zero(Cero);
   Multiplexor16Bits4X1 MuxPC(Mux2PC,Datos,ALSUout,Cero,PCplus,SelectPC);
   Registro16Bits PC(PCout,Mux2PC,LoadPC);
   Buffer3Estados16Bit BuffPCd(Datos,PCout,oePCd);
   Buffer3Estados16Bit BuffPCa(Direccioes,PCout,oePCa);

   Registro16Bits IR(IR2CU,Datos,LoadIR);

   Registro16Bits CR(Control,CU2IR,LoadCR);

   //MEMORIA PENDIENTE REVISAR
     
endmodule // CiscUd
