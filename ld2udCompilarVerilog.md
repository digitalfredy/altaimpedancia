Ejemplo compilar Laboratorio1\_Lab.v http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code (este modulo usa AndOperadorBitABit\_Funcional, AndOperadorCondicional\_Funcional ... que se pasan como argumento
```
$  iverilog -o Laboratorio1_Lab.vvp Laboratorio1_Lab.v AndOperadorBitABit_Funcional.v AndOperadorCondicional_Funcional.v AndUsandoNand_Estructural.v XorOperadorBitABit_Funcional.v XorOperadorCondicional_Funcional.v XorUsandoNand_Estructural.v RotaIzquierda2Bits.v DesplazaDerecha2Bits.v
```
Ahora generamos el archivo .vcd:
```
$ ./Laboratorio1_Lab.vvp 
```
Y miramos el archivo .vcd
```
$ gtkwave Laboratorio1_Lab.vcd&
```