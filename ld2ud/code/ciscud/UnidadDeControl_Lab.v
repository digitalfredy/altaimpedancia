module UnidadDeControl_Lab (/*AUTOARG*/
   // Outputs
   Instruccion, Reloj, Reiniciar
   ) ;
   output reg [15:0] Instruccion;
   output reg Reloj, Reiniciar;

   wire [5:0] Rta_Control;
   /* -----\/----- EXCLUDED -----\/-----
    
    wire 	    LoadS;
    wire [1:0] SelectS;
    wire 	    NegS;
    -----/\----- EXCLUDED -----/\----- */
   

//intentando lo que con tipo reg no
   wire       Rta_SelectDR, Rta_LoadDR;
   wire       Rta_SelectAR, Rta_LoadAR;
   
   wire [1:0] Rta_SelectPC;
   wire       Rta_LoadPC;
   
   wire       Rta_LoadIR, Rta_LoadCR;
   
   wire       Rta_WriteSelect, Rta_WriteEnable;
//hasta aqui lo que compone LoadSelect

   wire   [10:0] Rta_LoadSelect;
   
   wire [2:0] Rta_WriteAddress, Rta_ReadAddressA, Rta_ReadAddressB;
   
   wire [3:0] Rta_Fun;

   reg   [2:0] Rd, Rf1, Rf2;
   
   
   UnidadDeControl UC (Rta_Control,
		       Rta_LoadSelect,
		       Rta_WriteAddress,
		       Rta_ReadAddressA,
		       Rta_ReadAddressB,
		       Rta_Fun,
		       //Los estimulos de prueba:
		       Instruccion,Reloj,Reiniciar);

   assign Rta_LoadSelect = {Rta_SelectDR,Rta_LoadDR,
                        Rta_SelectAR,Rta_LoadAR,
                        Rta_SelectPC,Rta_LoadPC,
                        Rta_LoadIR,Rta_LoadCR,
                        Rta_WriteSelect,Rta_WriteEnable};

   initial begin
      Reloj = 1'b0;
      Reiniciar = 1'b1;
      Instruccion <= 16'h0;
      Rd <= 3'b000;
      Rf1 <= 3'b001;
      Rf2 <= 3'b010;
   end

   initial begin
      repeat (64) begin
	 #1 Reloj <=  ~Reloj;
      end
   end
   
   initial begin
      repeat (34) begin
	 #1 Reiniciar <= ~Reiniciar;
	 #11 Reiniciar <= ~Reiniciar;
      end
   end

   initial begin
      repeat (34) begin
	 #12 Rd <= Rd+3;
         Rf1 <= Rf1+3;
	 Rf2 <= Rf2+3;
      end
   end
   
   initial begin
      #12 Instruccion <= {7'h3,Rd,Rf1,Rf2};
      #12 Instruccion <= {7'h5,Rd,Rf1,Rf2};
      #12 Instruccion <= {7'h7,Rd,Rf1,Rf2};
   end

 
   initial begin
      $dumpfile("UnidadDeControl_Lab.vcd");
      $dumpvars;
   end
   
endmodule // UnidadDeControl_Lab
