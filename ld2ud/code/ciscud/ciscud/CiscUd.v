module CiscUd (/*AUTOARG*/
   // Inputs
   Reloj, Reiniciar
   ) ;
   input  Reloj, Reiniciar;
// Buses Principales
   wire   [15:0] Datos, ALSUout,Direcciones;
   wire   [5:0] Control;

// Cables y buses secundarios:
   wire [15:0] 	Mux2Banco, A, B;
   wire 	cy, ov;
   wire [15:0] 	Mux2DR,DR2Buff,Mux2AR,AR2Buff;
   wire [15:0] 	Mux2PC,PCout,PCplus,Cero,IR2CU;
   wire [5:0] 	CU2CR;
   
// Inicio LoadSelect descompuesto
   wire       SelectDR, LoadDR;
   wire       SelectAR, LoadAR;
   
   wire [1:0] SelectPC;
   wire       LoadPC;
   
   wire       LoadIR, LoadCR;
   
   wire       WriteSelect, WriteEnable;
// Fin LoadSelectDescompuesto   
   wire [10:0] LoadSelect; //Salida de la UnidadDeControl
// Buses de direcciones para el Banco de registros
   wire [2:0] 	 WriteAddress, ReadAddressA, ReadAddressB;
// Bus para función que debe ejecutar la ALSU;
   wire [3:0] 	Fun;

	wire oeM,oePCd,oeDR,oePCa,oeAR,WR;
   //En esta linea descompongo Control;
   assign Control = {oeM,oePCd,oeDR,oePCa,oeAR,WR}; //como son de un bit declaración implicita
   //En esta linea descompongo LoadSelect:
   assign LoadSelect = {SelectDR,LoadDR,
                        SelectAR,LoadAR,
                        SelectPC,LoadPC,
                        LoadIR,LoadCR,
                        WriteSelect,WriteEnable};

   UnidadDeControl UC (CU2CR,
		       LoadSelect,
		       WriteAddress,
		       ReadAddressA,
		       ReadAddressB,
		       Fun,
		       //Esto es lo que entra en UC:
		       IR2CU,Reloj,Reiniciar);

   //ALSU y Banco de Registros con su Mux selector
   Multiplexor16Bits2X1 MuxBanco(Mux2Banco,ALSUout,Datos,WriteSelect);
   Banco8Registros16Bit Banco(A,B,Mux2Banco,Reloj,Reiniciar,WriteEnable,
			      WriteAddress,ReadAddressA,ReadAddressB);
   Alsu16Bits ALSU(ALSUout,cy,ov,A,B,Fun);

/* -----\/----- EXCLUDED -----\/-----
   
   //Registro Status con el comparador a Zero Mux y XOR
     //para el msb hay que hacer algo que defina que msb=ALSUout[15] y creo que es:
   assign msb = ALSUout[15];
   IgualCero EqualZero(Z,ALSUout);
   Registro4Bits Status(Scy,Sov,Smsb,SZ,LoadS,cy,ov,msb,Z);
   Multiplexor4X1 MuxStatus(Mux2XOR,Scy,Sov,Smsb,SZ,SelectS);
   xor XOR(XOR2CU,Mux2XOR,NegS);
 -----/\----- EXCLUDED -----/\----- */

   //Data Register con su Mux y Buffer
   Multiplexor16Bits2X1 MuxDR(Mux2DR,Datos,ALSUout,SelectDR);
   Registro16Bits DR(DR2Buff,Mux2DR,Reloj,Reiniciar,LoadDR);
   Buffer3Estados16Bit BuffDR(Datos,DR2Buff,oeDR);

   //Address Register con su Mux y Buffers
   Multiplexor16Bits2X1 MuxAR(Mux2AR,Datos,ALSUout,SelectAR);
   Registro16Bits AR(AR2Buff,Mux2AR,Reloj,Reiniciar,LoadAR);
   Buffer3Estados16Bit BuffAR(Direcciones,AR2Buff,oeAR);

   //Program Counter con su Sumador, Mux y Buffer
   SumaUno PlusOne(PCplus,PCout);
   Cero CeroX16(Cero);
   Multiplexor16Bits4X1 MuxPC(Mux2PC,Datos,ALSUout,Cero,PCplus,SelectPC);
   Registro16Bits PC(PCout,Mux2PC,Reloj,Reiniciar,LoadPC);
   Buffer3Estados16Bit BuffPCd(Datos,PCout,oePCd);
   Buffer3Estados16Bit BuffPCa(Direcciones,PCout,oePCa);

   //Registros de Control e Instrucciones
   Registro16Bits IR(IR2CU,Datos,Reloj,Reiniciar,LoadIR);
   Registro6Bits CR(Control,CU2CR,Reloj,Reiniciar,LoadCR);

   Memoria16X16Bits Mem(Datos,Datos,Reloj,oeM,WR,Direcciones);
     
endmodule // CiscUd
