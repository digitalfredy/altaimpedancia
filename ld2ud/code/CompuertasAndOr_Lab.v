// Hola, este es un comentario de una linea hecho por http://altaimpedancia.org/wiki/ld2ud

/*
 Este es un comentario de varias lineas y tiene como propósito
 informar que este codigo Verilog es un módulo tipo laboratorio
 pensado para ser el primer acercamiento con el lenguaje en
 procesos de aprendizaje, este módulo es para probar una compuerta and y una or.
 más información al final del archivo.
*/

// para este caso puede pensar que el módulo CompuertasAndOr_Lab es un protoboard con ese nombre
module CompuertasAndOr_Lab (/*Los laboratorios generalmente no reciben ni entregan señales*/) ;

/*
 En un módulo normal aquí debería ir la declaración de puertos, 
 como este laboratorio no recibe ni entrega señales no se declaran puertos.
*/

//---------- Inicio delcaración tipos de datos ----------//
//Para las simulaciones necesitamos registros para los estimulos
//por que dentro de initial no se pueden usar datos tipo net (ej: wire)
   reg   [1:0] Estimulo; //Para conectar en entradas de instancias
   wire   ResultadoAnd, ResultadoOr; //Para conectar en salidas de instancias
//---------- Fin delcaración tipos de datos ----------//


//---------- Inicio funcionalidad del módulo ----------//

   //---------- Inicio instanciar y conectar ----------//
   //Primitivas de compuertas: Descripciones de hardware propias del lenguaje Verilog.
   //puede pensar que una primitiva de compuerta es la "receta" usada para fabricarlas
   //Instanciación: Crear un dispositivo con nombre propio desde una primitiva o módulo.
   //piense en una maquina que lee la primitiva y crea un dispositivo siguiendo la "receta",
   //instanciar sería ponerle a la maquina la receta y el nombre del dispositivo a crear
   //Conexión instancias: parentesis con comas representan los pines (pin1,pin2,pin3)
   //El orden se define en la descripción ("receta") del módulo o primitiva
   and InstanciaPrimitiva_and (ResultadoAnd,Estimulo[1],Estimulo[0]);
   or InstanciaPrimitiva_or (ResultadoOr,Estimulo[1],Estimulo[0]);
   //hasta aqui puede pensar que puso los dispositivos y cables en el protoboard
   //---------- Fin instanciar y conectar ----------//   

   //---------- Inicio simulación ----------//
   //La simulación consiste en colocar en las entradas de las compuertas todos los
   //valores posibles, en vez de aplicar manualmente los valores conectando y desconectando
   //la fuente usaremos un contador que cuente desde 00 hasta 11
   initial begin
      Estimulo = 'b00; // Iniciando la simulación el registro Estimulo vale 00 en binario
   end

   initial begin
      repeat (4) begin //pedimos que repita 4 veces para contar de 00 a 11
	 #1 Estimulo <= Estimulo+1; // Cada una unidad de tiempo (#1) sume 1 a Estimulo
      end
   end

   initial begin
      $dumpfile ("CompuertasAndOr_Lab.vcd"); //archivo para guardar la simulación
      $dumpvars; //guarde en el archivo los valores de todas las variables en el tiempo
   end
   //---------- Fin simulación ----------//

//---------- Fin funcionalidad del módulo ----------//   
endmodule // CompuertasAndOr_Lab



/* ---------- Información adicional ----------
 
 * Laboratorio refiere lo mismo que Test Bench en ingles
  * se usa para simular el comportamiento de módulos aplicando estímulos
 * Para escribir, compilar y visualizar se usó Software Libre:
  * Debian GNU/Linux como sistema operativo
  * GNU Emacs 22.2.1 para escribir el texto
  * Icarus Verilog version 0.8.6 para compilar y simular
  * GTKWave Analyzer v3.1.10 para visualizar el resultado de las simulaciones
 * vcd = Value change dump y hace parte del estandar verilog
 
 ---------- Información adicional ----------  */


//Los datos tipo reg de Verilog _No_ son FlipFlpos en hardware