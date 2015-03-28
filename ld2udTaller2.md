
---

**Proyecto ld2ud:** [Inicio](ld2ud.md) | [Propuesta](ld2udPropuestaProyecto.md) | [Código](http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code) | [Wiki](http://code.google.com/p/altaimpedancia/w/list?q=label:ld2ud)

---


## Presentación ##
En esta página es una referencia del desarrollo del [Taller2](http://altaimpedancia.googlecode.com/svn/trunk/ld2ud/doc/Taller2.pdf) (Profesor Andres Gaona, año 2009) del laboratorio de la asignatura digitales II de la Universidad Distrital Francisco José de Caldas usando Verilog y Software Libre.

## Enunciados ##
  1. Tome los dígitos correspondientes a su código de estudiante de la Universidad y forme todas las combinaciones posibles y diferentes de números que se encuentren en el rango de 0–63. El total de combinaciones debe estar entre 22 y 35.
  1. Diseñe, describa y simule circuitos (cada uno con una salida) que verifiquen si un número decimal de dos cifras es una de las combinaciones del punto 1 uno usando decodificador 3-8, otro usando multipexor 4-1 y otro usando únicamente compuertas.

## Desarollo ##
| **Descripción** | **Archivo** | **Notas** |
|:-----------------|:------------|:----------|
| Comparador usando decodificador | [Comparador22Numeros6Bit\_Decodificador.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Comparador22Numeros6Bit_Decodificador.v) |  |
| Comparador usando multiplexor | [Comparador22Numeros6Bit\_Multiplexor.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Comparador22Numeros6Bit_Multiplexor.v)|  |
| Comparador usando compuertas | [Comparador22Numeros6Bit\_Compuertas.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Comparador22Numeros6Bit_Compuertas.v) | Leer APÉNDICE al final del archivo |
|  | [Decodificador3a8.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Decodificador3a8.v) |  |
|  | [Multiplexor4a1.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Multiplexor4a1.v)|  |
| Laboratorio (Test Bench) Taller2 | [Laboratorio2\_Lab.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Laboratorio2_Lab.v) | Referencia [ld2udSimularVerilog](ld2udSimularVerilog.md) |
| Simulación Taller2 | [Laboratorio2\_Lab.vcd](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Laboratorio2_Lab.vcd) | Referencia [ld2udSimularVerilog](ld2udSimularVerilog.md) |

## Misc ##
Mi código es 20022005133, sus dígitos son 0,1,2,3 y 5. y para desarrollar el taller usaré estas 22 combinaciones:

| **Decimal** | **Binario** |
|:------------|:------------|
| 01 | 000\_001 |
| 02 | 000\_010 |
| 03 | 000\_011 |
| 05 | 000\_101 |
| 10 | 001\_010 |
| 12 | 001\_100 |
| 13 | 001\_101 |
| 15 | 001\_111 |
| 20 | 010\_100 |
| 21 | 010\_101 |
| 22 | 010\_110 |
| 23 | 010\_111 |
| 25 | 011\_001 |
| 30 | 011\_110 |
| 31 | 011\_111 |
| 32 | 100\_000 |
| 33 | 100\_001 |
| 35 | 100\_011 |
| 50 | 110\_010 |
| 51 | 110\_011 |
| 52 | 110\_100 |
| 53 | 110\_101 |

Tabla de referencia para decodificador

| **Decimal** | **Binario** | **Pin Número\_1**| **Pin Número\_2** |
|:------------|:------------|:------------------|:-------------------|
| 01 | 000\_001 |7 |6 |
| 02 | 000\_010 |7 |5 |
| 03 | 000\_011 |7 |4 |
| 05 | 000\_101 |7 |2 |
| 10 | 001\_010 |6 |5 |
| 12 | 001\_100 |6 |3 |
| 13 | 001\_101 |6 |2 |
| 15 | 001\_111 |6 |0 |
| 20 | 010\_100 |5 |3 |
| 21 | 010\_101 |5 |2 |
| 22 | 010\_110 |5 |1 |
| 23 | 010\_111 |5 |0 |
| 25 | 011\_001 |4 |6 |
| 30 | 011\_110 |4 |1 |
| 31 | 011\_111 |4 |0 |
| 32 | 100\_000 |3 |7 |
| 33 | 100\_001 |3 |6 |
| 35 | 100\_011 |3 |4 |
| 50 | 110\_010 |1 |5 |
| 51 | 110\_011 |1 |4 |
| 52 | 110\_100 |1 |3 |
| 53 | 110\_101 |1 |2 |


## Conclusiones ##
  * Los decodificadores básicos se hacen con compuertas AND negando agunas de sus entradas
  * Si evaluamos en paralelo varias posibilidades y queremos dar una sola salida cuando una ocurra ponemos todas las salidas como entrada de una compuerta OR.
  * Las entradas de las primitivas pueden negarse directamente primitiva (~Negado, NoNegado)
  * No se usa el mismo programa para pasar el .bit a la FPGA, depende de la board.

## tips (algo desordenado pero puede ser útil) ##
intentado generar multiples decoders
```
#!/bin/bash

for i in $(seq -w 0 43);do
    J=$i % 2
    echo Jota es $J
    if [ $J -eq 0 ]
    then
	echo "   Decodificador3a8 U$i (XXXX Entrada[5:3]);"
    else
	echo "   Decodificador3a8 U$i (XXXX Entrada[2:0]);"
    fi
done

## no funcionó pero lo guardo por que la idea del modulo % me parece buena, seguro es algo de sintaxis pero me gusata % 2 para revisar si es o no par
```
Otro intento que si funciono
```
#!/bin/bash

for par in $(seq  0 2 43); do
    impar=`expr $par + 1`
    salida=`expr $par / 2`
    echo "   Decodificador3a8 U$par (X0,X1,X2,X3,X4,X5.X6,X7, Entrada[5:3]);"
    echo "   Decodificador3a8 U$impar (X0,X1,X2,X3,X4,X5.X6,X7, Entrada[2:0]);"
    echo "   assign Salida[$salida] = JJ & KK"
```
conectando las salidas de decoder a compuertas and:
```
#!/bin/sh
 awk '{print "and (BusOr["NR"], BusPar["$3"], BusImpar["$4"]);"}' tablaDecodersSinLineaUno
```

este es el archivo tablaDecodersSinLineaUno
```
02 	000_010 	7	5
03 	000_011 	7	4
05 	000_101 	7	2
10 	001_010 	6	5
12 	001_100 	6	3
13 	001_101 	6	2
15 	001_111 	6	0
20 	010_100 	5	3
21 	010_101 	5	2
22 	010_110 	5	1
23 	010_111 	5	0
25 	011_001 	4	6
30 	011_110 	4	1
31 	011_111 	4	0
32 	100_000 	3	7
33 	100_001 	3	6
35 	100_011 	3	4
50 	110_010 	1	5
51 	110_011 	1	4
52 	110_100 	1	3
53 	110_101 	1	2
```

esta era la linea uno, no se usó por que NR de awk cuenta desde uno y no desde 0
```
01 	 000_001 	7	6
```

Generar una lista para conectar cada cable de un bus en una compuerta or para el decoder:
```
c$ for i in $(seq 0 21); do echo "BusOr[$i]" ; done | tr '\n' ','
BusOr[0],BusOr[1],BusOr[2],BusOr[3],BusOr[4],BusOr[5],BusOr[6],BusOr[7],BusOr[8],BusOr[9],BusOr[10],BusOr[11],BusOr[12],BusOr[13],BusOr[14],BusOr[15],BusOr[16],BusOr[17],BusOr[18],BusOr[19],BusOr[20],BusOr[21],
```

Tabla de conexiones Entrada `[0:3]` (ejercicio MUX) propuesta por Alejo:
```
0 0 0 1
0 0 1 0
0 0 1 1
0 1 0 1
1 0 1 0
1 1 0 0
1 1 0 1
1 1 1 1

0 1 0 0
0 1 0 1
0 1 1 0
0 1 1 1
1 0 0 1
1 1 1 0
1 1 1 1

0 1 0 0
0 0 0 1
0 0 1 1

0 0 1 0
0 0 1 1
0 1 0 0
0 1 0 1

```
Negando y conectando las compuertas usando la tabla de arriba, Dejo vacio BusMux para hacerlo a mano.
```
 grep -v ^$ /tmp/taba | awk '{print "and (BusMux[], "$1"Entrada[3], "$2"Entrada[2], "$3"Entrada[1], "$4"Entrada[0]);" }' | sed 's/0E/~E/g' | sed 's/1E/E/g'
```