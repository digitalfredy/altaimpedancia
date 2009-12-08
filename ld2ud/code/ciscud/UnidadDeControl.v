module UnidadDeControl (/*AUTOARG*/
   // Outputs
   Control, LoadS, SelectS, NegS, SelectDR, LoadDR, SelectAR, LoadAR,
   SelectPC, LoadPC, LoadIR, LoadCR, WriteSelect, WriteEnable,
   WriteAddress, ReadAddressA, ReadAddressB, Fun,
   // Inputs
   EntraEstado, Instruccion, StatusFlag, Reloj, Reiniciar
   ) ;
   
   output reg [5:0] Control;
   
   output reg 	    LoadS;
   output reg [1:0] SelectS;
   output reg 	    NegS;
   
   output reg 	    SelectDR, LoadDR;
   output reg 	    SelectAR, LoadAR;
   
   output reg [1:0] SelectPC;
   output reg 	    LoadPC;
   
   output reg 	    LoadIR, LoadCR;
   
   output reg 	    WriteSelect, WriteEnable;
   output reg [2:0] WriteAddress, ReadAddressA, ReadAddressB;
   
   output reg [3:0] Fun;
   


   input [5:0] EntraEstado;
   input  [15:0] Instruccion;
   input  StatusFlag;
   input  Reloj, Reiniciar;
   

   localparam [6:0]
     SF1   = 6'd000000,
     SF2   = 6'b000001,
     SF3   = 6'b000010,
     
     S01   = 6'b000011,
     S02   = 6'b000100,
     S031  = 6'b000101,
     S032  = 6'b000110,
     S04   = 6'b000111,
     
     S1R01 = 6'b001000,
     S1R11 = 6'b001001,
     S1R12 = 6'b001010,
     S1W10 = 6'b001011,
     S1W11 = 6'b001100,
     S1R21 = 6'b001101,
     S1R22 = 6'b001110,
     S1R23 = 6'b001111,
     S1W20 = 6'b010000,
     S1W21 = 6'b010001,
     S1W22 = 6'b010010,
     S1R31 = 6'b010011,
     S1R32 = 6'b010100,
     S1R33 = 6'b010101,
     S1W30 = 6'b010110,
     S1W31 = 6'b010111,
     S1W32 = 6'b011000,
     
     S21   = 6'b011001,
     S22   = 6'b011010,
     S23   = 6'b011011,
     S24   = 6'b011100,
     S25   = 6'b011101,
     S26   = 6'b011110,
     S27   = 6'b011111,
     S28   = 6'b100000;

   reg [10:0] LoadSelect;  //habilitadores en una palabra (excepto los de Satus)
                              //(referencia en hoja de calculo UnidadDeControl_Operaciones.ods)
   always @* begin
      LoadSelect <= {SelectDR,LoadDR,
			SelectAR,LoadAR,
			SelectPC,LoadPC,
			LoadIR,LoadCR,
			WriteSelect,WriteEnable};
   end
   
   reg [3:0]  ControlStatus;
   always @* begin
      ControlStatus <= {LoadS,SelectS,NegS};
   end
   
   
   reg   [6:0] EstadoPresente, EstadoFuturo;

   always @ (posedge Reloj, posedge Reiniciar) //Registro de estado
     if (Reiniciar) begin

	EstadoFuturo <= SF1;
// pendiente cr <= (--)	 && PC<=PC+1
     end 
     else
       EstadoPresente <= EstadoFuturo;

      
   always @* //EntradaCombinacional
     case (EstadoPresente)
       SF1: begin
	  EstadoFuturo <= SF2;
	  Control      <= 6'b100_100;
	  LoadSelect   <= 11'bzzzz_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       SF2: begin
	  EstadoFuturo <= SF3;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_111_1zzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       SF3: begin
//	  EstadoFuturo <= S;
//  pendiente	  
       end
       S01: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_zzz_zz01;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= Instruccion[2:0];
	  Fun          <= Instruccion[12:9];
       end
       S02: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_zzz_zz01;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= Instruccion[2:0];
	  Fun          <= Instruccion[12:9];
       end
/* -----\/----- EXCLUDED -----\/-----
       S031: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'b;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S032: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'b;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
 -----/\----- EXCLUDED -----/\----- */
       S04: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_zzz_zz01;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= Instruccion[12:9];
       end
       S1R01: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_111_zz11;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R11: begin
	  EstadoFuturo <= S1R12;
	  Control      <= 6'b100010;
	  LoadSelect   <= 11'bzz01_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R12: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_111_zz11;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1W10: begin
	  EstadoFuturo <= S1W11;
	  Control      <= 6'b001011;
	  LoadSelect   <= 11'b1101_zzz_z1z0;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'b1000;
       end
       S1W11: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'b001010;
	  LoadSelect   <= 11'bzzzz_111_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R21: begin
	  EstadoFuturo <= S1R22;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_zzz_zz11;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R22: begin
	  EstadoFuturo <= S1R23;
	  Control      <= 6'b100010;
	  LoadSelect   <= 11'bzz11_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= Instruccion[8:6];
	  ReadAddressB <= Instruccion[2:0];
	  Fun          <= 4'b0101;
       end
       S1R23: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_111_zz11;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1W20: begin
	  EstadoFuturo <= S1W21;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'b11zz_zzz_zz11;
	  WriteAddress <= Instruccion[5:3];
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'b1000;
       end
       S1W21: begin
	  EstadoFuturo <= S1W22;
	  Control      <= 6'b001011;
	  LoadSelect   <= 11'bzz11_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= Instruccion[2:0];
	  Fun          <= 4'b0101;
       end
       S1W22: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'b001010;
	  LoadSelect   <= 11'bzzzz_111_z111;
	  WriteAddress <= Instruccion[5:3];
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R31: begin
	  EstadoFuturo <= S1R32;
	  Control      <= 6'b100010;
	  LoadSelect   <= 11'bzz01_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R32: begin
	  EstadoFuturo <= S1R33;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzz01_zzz_zzzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1R33: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_11_zz11;
	  WriteAddress <= Instruccion[8:6];
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1W30: begin
	  EstadoFuturo <= S1W31;
	  Control      <= 6'b100010;
	  LoadSelect   <= 11'bzz01_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S1W31: begin
	  EstadoFuturo <= S1W32;
	  Control      <= 6'b001011;
	  LoadSelect   <= 11'b1101_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'b1000;
       end
       S1W32: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'b001010;
	  LoadSelect   <= 11'bzzzz_111_z1zzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S21: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_001_zzzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S22: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_111_zzzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S23: begin
	  EstadoFuturo <= S24;
	  Control      <= 6'b010011;
	  LoadSelect   <= 11'b0111_111_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'b1000;
       end
       S24: begin
	  EstadoFuturo <= S25;
	  Control      <= 6'b010010;
	  LoadSelect   <= 11'bzzzz_zzz_z101;
	  WriteAddress <= Instruccion[5:3];
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'b0111;
       end
       S25: begin
	  EstadoFuturo <= S26;
	  Control      <= 6'b001000;
	  LoadSelect   <= 11'bzzzz_zzz_z1zz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S26: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_001_zzzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
       S27: begin
	  EstadoFuturo <= S28;
	  Control      <= 6'b100010;
	  LoadSelect   <= 11'bzz11_zzz_z101;
	  WriteAddress <= Instruccion[5:3];
	  ReadAddressA <= Instruccion[5:3];
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'b0100;
       end
       S28: begin
	  EstadoFuturo <= SF1;
	  Control      <= 6'bzzz_zzz;
	  LoadSelect   <= 11'bzzzz_001_zzzz;
	  WriteAddress <= 3'bzzz;
	  ReadAddressA <= 3'bzzz;
	  ReadAddressB <= 3'bzzz;
	  Fun          <= 4'bzzzz;
       end
     endcase // case (EstadoPresente)
   

   
endmodule // UnidadDeControl
