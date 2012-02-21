//-----------------------------------------------------------------------------
// Title         : Solucion al problema de los semaforos
// Project       : Laboratorios de Digitales I
//-----------------------------------------------------------------------------
// File          : semaforos.v
// Author        : Mauricio Velasquez Velasquez  <mvelasquez@lud.udistrita.edu.co>
// Created       : 26.10.2004
// Last modified : 26.10.2004
//-----------------------------------------------------------------------------
// Description :
// Implementacion del control para un semaforo utilizando pulsos de reloj.
//-----------------------------------------------------------------------------
// Copyright (c) 2004 by GLUD-electronica (Electronix) This model is the confidential and
// proprietary property of GLUD-electronica (Electronix) and the possession or use of this
// file requires a written license from GLUD-electronica (Electronix).
//------------------------------------------------------------------------------
// Modification history :
// 26.10.2004 : created
//-----------------------------------------------------------------------------


module luces_semaforo;
    reg
         clock,
         rojo,
         amarillo,
         verde;
    parameter
         on = 1,
         off = 0,
         rojo_tics = 35,
         amarillo_tics = 3,
         verde_tics = 20;
    // Secuencia de control de las luces
    always
         begin
           rojo = on;
           amarillo = off;
           verde = off;
           repeat (rojo_tics) @(posedge clock);
           rojo = off;
           verde = on;
           repeat (verde_tics) @(posedge clock);
           verde = off;
           amarillo = on;
           repeat (amarillo_tics) @(posedge clock);
         end
    // Forma de onda para el clock
   always
      begin
         #10 clock = 0;
         #10 clock = 1;
         end
   // DescripciOn para la simulaciOn para 10 cambios de la luz roja 
   initial
     begin
        repeat (10) @rojo;
        $finish;
     end
   // Muestra el tiempo y el cambio de estado de las luces
   always begin
         @(rojo or amarillo or verde)
      $display("%d rojo=%b amarillo=%b verde=%b",
               $time, rojo, amarillo, verde);
   $dumpfile ("semaforo.vcd"); // Creacion del archivo de Simulacion
   // $dumpvars;
end 
endmodule
