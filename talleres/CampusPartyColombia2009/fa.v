module FA (Bit1, Bit2, CarryIn, Sum, CarryOut); //Descripcion de bloque FullAdder con 5 conexiones
   //este bloque permite sumar 2 bit con acarreo de entrada y salida para uso en cascada
	input Bit1, Bit2, CarryIn; //Bit1 y Bit2 son los sumandos, CarryIn el acarreo de entrada
	output Sum, CarryOut;      //Sum es la suma de los bits y CarryOut el acarreo de salida

	wire   W1, W2, W3;         //"Cables" que se usan para conexiones entre compuertas

	assign W1 = Bit1 & Bit2;    //Compuerta A1, entradas: Bit1 y Bit2, salida: W1
	assign W2 = Bit1 ^ Bit2;    //Compuerta X1, entradas: Bit1 y Bit2, salida: W2
	assign W3 = W2 & CarryIn;   //Compuerta A2, entradas: W2 y CarryIn, salida: W3
	assign CarryOut = W1 | W3;  //Compuerta O1, entradas: W1 y W3, salida: CarryOut
	assign Sum = CarryIn ^ W2;  //Compuerta X2, entradas: CarryIn y W2, salida: Sum
	
endmodule // Fin de la descripción del bloque FullAdder

/*NOTA:
 Notacion didactica para compuertas:
 A1 = Primera compuerta AND
 A2 = Segunda compuerta AND
 O1 = Primera compuerta OR
 X1 = Primera compuerta XOR
 X2 = Segunda compuerta XOR

 La notación estandar para esquematicos usa la letra U, ej: U1,U2 ...*/

/*TODO:
 Averiguar cual es el estandar para esquemáticos que dice que se usa la U, en http://en.wikipedia.org/wiki/Circuit_diagram se habla de la ANSI y de la IEC y esta referencia puede ser una pista: http://std.iec.ch/iec60617*/