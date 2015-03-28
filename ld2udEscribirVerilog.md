
---

**Proyecto ld2ud:** [Inicio](ld2ud.md) | [Propuesta](ld2udPropuestaProyecto.md) | [Código](http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code) | [Wiki](http://code.google.com/p/altaimpedancia/w/list?q=label:ld2ud)

---


## Escribir código Verilog usando Emacs ##
  1. Abrir Emacs desde una consola de comandos (si está en una TTY no use &):
```
$ cd carpetaParaArchivo
$ emacs archivo.v&
```
  1. Estructura para mótulo usamos atajos de teclado
    * Explico el atajo de abajo: C-c C-t m = control + c, control + t, m
    * Responda las preguntas (**en la parte de abajo del editor**)
```
C-c C-t m
```
  1. Salidas del módulo:
    * Note que la _O_ (de Output) es mayuscula
    * Responda las preguntas (**en la parte de abajo del editor**)
```
C-c C-t O
```
  1. Entradas del módulo:
    * Note que la _I_ (de Input) es mayuscula
    * Responda las preguntas (**en la parte de abajo del editor**)
```
C-c C-t I
```
  1. Entradas y salidas como parámetro (esto toca hacerlo por que el editor de forma predeterminada escribe en Verilog95)
  * Si luego cambias las entradas y salidas o escribes nuevas debes usar de nuevo el atajo de teclado.
```
C-c C-a
```
    * La _a_ es e AUTO, y pone las salidas y entradas declaradas luego de `/*AUTOARG*/` y antes del parentesis )
  1. Cables
```
C-c C-t W
```
    * La _W_ es de Wire
  1. Registros
```
C-c C-t R
```
  1. Asignaciones
```
C-c C-T A
```
  1. Gardar
```
C-x C-s
```
    * La _s_ es de save
  1. Cerrar Emacs
```
C-x C-c
```
    * La _c_ es de clouse
Más en : http://el-directorio.org/ProyectoTale/Documentacion/Verilog