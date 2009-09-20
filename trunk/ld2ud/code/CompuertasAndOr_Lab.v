//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware
//http://ld2ud.altaimpedancia.org - más información en el pié de página

// Hola, este es codigo Verilog, las lineas que inician con // son comentarios de una linea

/*
 Este es un comentario de varias lineas para informar que este codigo
 Verilog es un laboratorio (en ingles: Test Bench) donde se describe
 la simulación una compuerta and y una or.
 El codigo esta pensado para ser el primer acercamiento con el lenguaje,
*/

//---------- Inicio declaración del módulo ----------//
// Piense que el módulo CompuertasAndOr_Lab es el protoboard para probar las compuertas
module CompuertasAndOr_Lab () ;

//---------- Inicio delcaración tipos de datos ----------//
   //Piense que Estimulo es el bus (cable doble)de salida de un contador temporizado de 2 bit
   reg   [1:0] Estimulo; //Para conectar en entradas de las compuertas
   //Piense que ResultadoAnd y ResultadoOr son dos alambres
   wire   ResultadoAnd, ResultadoOr; //Para conectar en salidas de compuertas

//---------- Inicio funcionalidad del módulo ----------//
   //---------- Inicio instanciar y conectar ----------//
   /*
    Para explicar vamos a partir en dos la siguiente linea
    1- and InstanciaPrimitiva_and:
       Sacar circuito integrado and de la caja y marcarlo como  InstanciaPrimitiva_and
    2- (ResultadoAnd,Estimulo[1],Estimulo[0]):
       Conectar alambre ResultadoAnd en pin1, un alambre de bus Estimulo en pin2 y el otro en pin3
   */
   and InstanciaPrimitiva_and (ResultadoAnd,Estimulo[1],Estimulo[0]); //(salida,entrada,entrada)
   or InstanciaPrimitiva_or (ResultadoOr,Estimulo[1],Estimulo[0]);    //(salida,entrada,entrada)

   //---------- Inicio simulación ----------//
   /*
    El contador temporizado ascendentede 2 bit se conecta a las compuertas 
    para asignar los valores de entrada posibles (00,01,10 y 11) 
    en instantes de tiempo diferentes
   */
   initial begin //Dentro de initial no se aceptan datos tipo wire, por eso Estimulo es tipo reg
      Estimulo = 'b00; // Al iniciar el bus Estimulo estará en 00
   end

   initial begin //Este es el contador temporizado ascendente
      repeat (4) begin //pedimos que repita 4 veces para contar de 00 a 11
	 #1 Estimulo <= Estimulo+1; // Cada una (#1) unidad de tiempo haga conteo ascendente
      end
   end

   initial begin //La simulación se guardará en un archivo Value Change Dump (.vcd)
      $dumpfile ("CompuertasAndOr_Lab.vcd"); //nombre del archivo donde se guardará la simulación
      $dumpvars; //guarde en el archivo los valores de todas las variables en el tiempo
   end

endmodule // CompuertasAndOr_Lab

//poner como generar .vcd on SL
/* Para escribir, compilar y visualizar se usó Software Libre:
  * Debian GNU/Linux v5.0 como sistema operativo
  * GNU Emacs 22.2.1 con verilog-mode 404 para escribir el codigo Verilog (.v)
  * Icarus Verilog version 0.8.6 para compilar y simular
  * GTKWave Analyzer v3.1.10 para visualizar el resultado de las simulaciones (.vcd)
 * Autor: Fredy Pulido López (digitalfredy)
 * Copyright: http://www.fsf.org/licensing/licenses/lgpl.html
 * Agradecimiento: Gracias al profesor Miguel Melgarejo (Universidad Distrital
 * Francisco José de Caldas) por permitir usar como base la lección 3 de digitales II
*/



