//http://altaimpedancia.org/wiki/ld2ud

//Las primitivas _Unicamente_ tienen una salida y es el primer terminal
//La salida y las entradas deben escalares de un bit (no buses)
//En este caso es combinacional por lo que soportaría máximo 10 entradas
primitive SumaProductos_Primitiva ( SumaProductos, Entrada1, Entrada2, Entrada3, Entrada4 );
   output SumaProductos;
   input  Entrada1, Entrada2, Entrada3, Entrada4;

   table //Soporta _Unicamente_ niveles logicos 0,1 y X, no soporta Z (alta impedancia)
      //Entrada1 Entrada2 Entrada3 Entrada4 : SumaProductos
           0        0        0        0     :     0;
           0        0        0        1     :     0;
           0        0        1        0     :     0;
           0        0        1        1     :     1;
           0        1        0        0     :     0;
           0        1        0        1     :     0;
           0        1        1        0     :     0;
           0        1        1        1     :     1;
           1        0        0        0     :     0;
           1        0        0        1     :     0;
           1        0        1        0     :     0;
           1        0        1        1     :     1;
           1        1        0        0     :     1;
           1        1        0        1     :     1;
           1        1        1        0     :     1;
           1        1        1        1     :     1;
   endtable
endprimitive // SumaProductos_Primitiva
  