
---

**Proyecto ld2ud:** [Inicio](ld2ud.md) | [Propuesta](ld2udPropuestaProyecto.md) | [Código](http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code) | [Wiki](http://code.google.com/p/altaimpedancia/w/list?q=label:ld2ud)

---

Para saber rápidamente si los módulos o primitivas de hardware que hemos descrito funcionan es necesaria una simulación en el tiempo, el proceso para obtener dicha simulación es el siguiente:

  1. Escribir en Verilog un laboratorio de  prueba para el o los módulos o primitivas
  1. Compilar el laboratorio
  1. Ejecutar la simulación (no se ve nada, genera un archivo .vcd)
  1. Visualizar el archivo con los resultados de la simulación

## Ejemplo1 - Laboratorio primitivas nativas AND y OR ##
El lenguaje Verilog entre sus primitivas nativas incluye las compuertas, este ejemplo ilustra la creación de un Laboratorio de pruebas (Test Bench) para las primitivas AND y OR.

  * Este esquema ilustra lo que haremos: [.png](http://altaimpedancia.googlecode.com/svn/trunk/ld2ud/doc/CompuertasAndOr_Lab.png) - [.sch](http://altaimpedancia.googlecode.com/svn/trunk/ld2ud/code/CompuertasAndOr_Lab.sch)(hecho con [gEDA/gschem](http://www.gpleda.org/tools/gschem/index.html))

  1. [Usando Emacs escribimos en Verilog](ld2udEscribirVerilog.md) el Laboratorio de Pruebas: [CompuertasAndOr\_Lab.v](http://code.google.com/p/altaimpedancia/source/browse/trunk/ld2ud/code/CompuertasAndOr_Lab.v) (Los comentarios al código explican detalles)
  1. [Compilamos](ld2udCompilarVerilog.md) el Laboratorio de Prueba para obtener el [.vvp](http://altaimpedancia.googlecode.com/svn/trunk/ld2ud/code/CompuertasAndOr_Lab.vvp):
```
$ iverilog -o CompuertasAndOr_Lab.vvp CompuertasAndOr_Lab.v
```
  1. Ejecutamos la simulación para obtener el [.vcd](http://altaimpedancia.googlecode.com/svn/trunk/ld2ud/code/CompuertasAndOr_Lab.vcd):
```
$ ./CompuertasAndOr_Lab.vvp
VCD info: dumpfile CompuertasAndOr_Lab.vcd opened for output.
```
  1. Usando [GTKWave](http://gtkwave.sourceforge.net/) visualizamos el resultado:
```
$ gtkwave CompuertasAndOr_Lab.vcd&
```