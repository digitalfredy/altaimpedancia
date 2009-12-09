module Alsu16Bits (/*AUTOARG*/
   // Outputs
   Salida, Acarreo, Desbordamiento,
   // Inputs
   EntradaA, EntradaB, Selector
   ) ;
   output reg [15:0] Salida;
   output reg Acarreo, Desbordamiento;
   input  [15:0] EntradaA, EntradaB;
   input  [3:0] Selector;

   //Falta implementar Desbordamiento :(

   always @ ( /*AUTOSENSE*/EntradaA or EntradaB or Selector) begin
      case (Selector) 
	4'b0000: begin //Lógica/NOT
	    {Acarreo,Desbordamiento} = 2'bz;
	    Salida = ~EntradaA;
	end
	4'b0001: begin //Lógica/AND
	    {Acarreo,Desbordamiento} = 2'bz;
	    Salida = EntradaA&EntradaB;
	end
	4'b0010: begin //Lógica/XOR
	    {Acarreo,Desbordamiento} = 2'bz;
	    Salida = EntradaA^EntradaB;
	end
	4'b0011: begin //Lógica/OR
	    {Acarreo,Desbordamiento} = 2'bz;
	    Salida = EntradaA|EntradaB;
	end
	4'b0100: begin //Aritmetica/DEC (decremento en uno)
	    {Acarreo,Salida} = EntradaA-1'b1;
	end
	4'b0101: begin //Aritmetica/ADD (suma) 
	    {Acarreo,Salida} = EntradaA+EntradaB;
	end
	4'b0110: begin //Aritmetica/SUB (resta)
	    {Acarreo,Salida} = EntradaA-EntradaB;
	end
	4'b0111: begin //Aritmetica/INC (incremento en uno)
	    {Acarreo,Salida} = EntradaA+1'b1;
	end
	4'b1000: begin //Movimiento/MOV (copiar, realmente no opera nada)
	    {Acarreo,Desbordamiento} = 2'bz;
	    Salida = EntradaA; //Esta salida retorna y se escribe en el Banco de Registros 
	end
/* -----\/----- EXCLUDED -----\/-----
 //Carry no es una entrada, como es esto?
	4'b1001: begin //Rota con Cy Izq/RLCy
//PENDIENTE	   
	end
 -----/\----- EXCLUDED -----/\----- */
	4'b1010: begin //Prueba/TEST (resta unicamente para cargar Registro Status)
	    {Acarreo,Salida} = EntradaA-EntradaB;
	end
/* -----\/----- EXCLUDED -----\/-----
 //Carry no es una entrada, como es esto?
	4'b1011: begin //Rota con Cy Der/RRCy
//PENDIENTE	   
	end
 -----/\----- EXCLUDED -----/\----- */
	4'b1100: begin //Desplaza Izq/SL (el cy con el msb de EntradaA)
	    {Desbordamiento} = 1'bz;
	    {Acarreo,Salida} = {EntradaA[15],EntradaA[14:0],1'b0};
	end
	4'b1101: begin //Rota sin Cy Izq/RL (el cy con el msb de EntradaA)
	    {Desbordamiento} = 1'bz;
	    {Acarreo,Salida} = {EntradaA[15],EntradaA[14:0],EntradaA[15]};
	end
	4'b1110: begin //Dezplaza Der/SR (el cy con el lsb de EntradaA)
	    {Desbordamiento} = 1'bz;
	    {Salida,Acarreo} = {1'b0,EntradaA[15:1],EntradaA[0]};
	end
	4'b1111: begin //Rota sin Cy Der/RR (el cy con el lsb de EntradaA)
	    {Desbordamiento} = 1'bz;
	    {Salida,Acarreo} = {EntradaA[0],EntradaA[15:1],EntradaA[0]};
	end
      endcase // case (Selector)
      
   end // always @ (...
   
   
endmodule // Alsu16Bits
