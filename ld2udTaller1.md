
---

**Proyecto ld2ud:** [Inicio](ld2ud.md) | [Propuesta](ld2udPropuestaProyecto.md) | [Código](http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code) | [Wiki](http://code.google.com/p/altaimpedancia/w/list?q=label:ld2ud)

---


## Presentación ##
En esta página es una referencia del desarrollo del [Taller1](http://altaimpedancia.googlecode.com/svn/trunk/ld2ud/doc/Taller1.pdf) (Profesor Andres Gaona, año 2009) del laboratorio de la asignatura digitales II de la Universidad Distrital Francisco José de Caldas usando Verilog y Software Libre.

## Enunciados ##
  1. Modele y simule el comportamiento de las compuertas AND y XOR. Los modelos propuestos para tal fin son:
    * Dos modelos funcionales diferentes para cada una de las compuertas AND y XOR.
    * Un modelo estructural para las compuertas AND y XOR basado en la compuerta universal NAND.
  1. Realice el modelado funcional de rotador de 2 bits a izquierda de una palabra de entrada de 8 bits.

## Desarrollo ##
| **Descripción** | **Archivo** | **Notas** |
|:-----------------|:------------|:----------|
| Modelo Funcional AND | [AndOperadorBitABit\_Funcional.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/AndOperadorBitABit_Funcional.v) | Usado operador and bit a bit |
| Modelo Funcional AND | [AndOperadorCondicional\_Funcional.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/AndOperadorCondicional_Funcional.v) | Usado operador condicional |
| Modelo Funcional XOR | [XorOperadorBitABit\_Funcional.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/XorOperadorBitABit_Funcional.v) | Usado operador xor bit a bit |
| Modelo Funcional XOR | [XorOperadorCondicional\_Funcional.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/XorOperadorCondicional_Funcional.v) | Usado operador condicional |
| Modelo Estructural AND | [AndUsandoNand\_Estructural.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/AndUsandoNand_Estructural.v) | Usada primitiva nand |
| Modelo Estructural XOR | [XorUsandoNand\_Estructural.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/XorUsandoNand_Estructural.v) | Usada primitiva nand |
| Rotador de 2 bits a izquierda | [RotaIzquierda2Bits.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/RotaIzquierda2Bits.v) | Usada concatenación |
| Desplazador de 2 bits a derecha | [DesplazaDerecha2Bits.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/DesplazaDerecha2Bits.v) | Intento de uso de operador que desplaza, no funciona simulación |
| Laboratorio (Test Bench) Taller1 | [Laboratorio1\_Lab.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Laboratorio1_Lab.v) | Referencia [ld2udSimularVerilog](ld2udSimularVerilog.md) |
| Simulación Taller1 | [Laboratorio1\_Lab.vcd](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/Laboratorio1_Lab.vcd) | Referencia [ld2udSimularVerilog](ld2udSimularVerilog.md) |

## Conclusiones ##
  * La práctica se puede hacer usando 100% software libre
  * En verilog existe algo llamdo de bajo nivel llamado primitivas (entre ellas las compuertas) y uno puede hacer primitivas propias (UDP) que se pueden expresar en una tabla con una única salida y hata 10 entradas, pero recibe los datos bit a bit, no recibe por ejemplo Bus`[3:0]`
  * Para reutilizar módulos solo hace falta pasar como parámetro la descripción.v al compilador.
  * Para la simulación se crean Test Bench en el mismo lenguaje.
  * El vector de estímulos para mirar todas las posibles entradas es un contador ascendente