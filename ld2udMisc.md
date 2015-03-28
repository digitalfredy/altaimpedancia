
---

**Proyecto ld2ud:** [Inicio](ld2ud.md) | [Propuesta](ld2udPropuestaProyecto.md) | [Código](http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code) | [Wiki](http://code.google.com/p/altaimpedancia/w/list?q=label:ld2ud)

---


## Quick Reference ##
  * [online Verilog-1995 Quick Reference Guide](http://www.sutherland-hdl.com/online_verilog_ref_guide/vlog_ref_top.html) - Stuart Sutherland

  * [Verilog HDL QUICK REFERENCE CARD V2.1](http://www.hpcc.ecs.soton.ac.uk/hpci/tools/vlogref.pdf)


  * http://fpga.com.ar/notas/NotasCompletas.htm

## Recursos de Universidades ##

  * [Verilog for FPGA's](http://labspace.open.ac.uk/course/view.php?id=4616) The open university
  * [http://www.ee.ucla.edu/~herwin/ocdma/reference/ ]HERWIN CHAN, - University of California
  * [Computer Science 141](http://www.eecs.harvard.edu/cs141/resources/verilog-tutorial.pdf) - Harvard University
    * [Verilog Tutorial](http://www.eecs.harvard.edu/cs141/resources/verilog-tutorial.pdf) - Harvard University
  * [GATEWAY to design excellence](http://www.see.ed.ac.uk/~gerard/Teach/gateway.html) - Dr Gerard M Blair, University of Edinburgh, Scotland, UK
    * [Verilog Manual](http://www.see.ed.ac.uk/~gerard/Teach/Verilog/manual/) - Dr Gerard M Blair, University of Edinburgh, Scotland, UK
  * http://www.ee.ed.ac.uk/~gerard/VLSI/verilog.ps
  * [Handbook on Verilog HDL](http://www.eg.bucknell.edu/~cs320/2008-fall/verilog/verilog-manual.html) - Dr. Daniel C. Hyde, Bucknell University
    * [Using Verilog HDL to Teach Computer Architecture Concepts](http://www.ncsu.edu/wcae/ISCA1998/hyde.pdf) -     Dr. Daniel C. Hyde, Bucknell University
  * [Verilog Tutorial](http://www.inf.ed.ac.uk/teaching/courses/cd/VerilogTutorial.pdf) - Deepak Kumar Tala, University of Edinburgh
  * [Notes on Verilog programming](http://staff.washington.edu/jon/verilog-prog.html) - Jonathan Jacky, University of Washington
  * [ee183](http://www.stanford.edu/class/ee183/) - Stanford.edu
    * [Verilog FAQ](http://www.stanford.edu/class/ee272/doc/faq/verilog.html)


  * [Faq](http://people.csail.mit.edu/wentzlaf//faq/verilog.html) mit

## Tutoriales ##
  * [Verilog Tutorial VLSI II](http://www.cpu-turkey.com/downloads/file.aspx?id=88) - E. Özgür ATES
  * [Verilog Tutorial](http://electrosofts.com/verilog/index.html) - Harsha Perla, electrosofts
  * [The Designer’s Guide to Verilog](http://www.doulos.com/knowhow/verilog_designers_guide/) - Doulos
  * [Verilog Tutorial](http://www.asic-world.com/verilog/veritut.html) - asic-world

## FAQ's ##
  * [Alternative Verilog FAQ](http://www.angelfire.com/in/verilogfaq/)
  * http://www.asic-world.com/verilog/verifaq1.html asic-world

## En español ##
  * [Tutorial de verilog](http://www.inf.ed.ac.uk/teaching/courses/cd/VerilogTutorial.pdf)
  * http://www.matpic.com/HDL/HDL_tutorial_verilog.html

## misc ##
  * [The complete Verilog book](http://books.google.com/books?id=-aI0VXNaPQUC&pg=PA37&lpg=PA37&dq=verilog+abstraction+levels&source=bl&ots=rr7U4HxoFZ&sig=zfCVBTH4khzJ1pPNni4jux5fq-I&hl=es&ei=oyumSrWaK9Xktgek_9zWDw&sa=X&oi=book_result&ct=result&resnum=7#v=onepage&q=verilog%20abstraction%20levels&f=false)
  * [Abstractions in Verilog](http://liberty.princeton.edu/Research/Modeling/verilog.php) - Liberty Resarch Group

http://openbookproject.net/electricCircuits/Digital/DIGI_9.html

[Interesante formato para documento](http://www.cse.psu.edu/~smbrown/cse477_project/Prototype/Prototype.html)

FPGA OpenSPARC:
  * http://www.xilinx.com/support/documentation/virtex-5.htm#19294
  * http://www.opensparc.net/fpga/index.html

# Reglas y notas para código #
  * Todo el código dentro de la carpeta code
  * Archivos .v con mismo Header (//url altaimpedanca)
  * Todos con footer base (/**base**/)
    * Marca de Entregable: en el footer (Laboratorio, Teoría)
    * url alternativa (code.google...)
  * Código autoexplicativo en vez de comentarios
Los nombres de los archivos deben describir claramente la funcionalidad del módulo y su nombre debe coincidir con el del modulo que describe, se usa CamelCase, ejemplo:
```
NombreDeArchivo.v == NombreDeModulo
```
Como muchas veces luego aparece un mejor nombre esta es la forma de cambiar el nombre:
```
$ svn mv NombreInicial.v NombreNuevo.v
$ sed -i 's/NombreInicial/NombreNuevo/g' `grep -l NombreIncial *`
```

Como agregar el header a varios archivos?
```
sed -i '1i\//http://ld2ud.altaimpedancia.org - más información en el pié de página\n' *.v
sed -i '1i\//Electrónica con Software Libre, Free Hardware Design y Open Source Hardware' *.v
```

Pie de página:
```
/* Para escribir, compilar y visualizar se usó Software Libre:
  * Debian GNU/Linux como sistema operativo
  * GNU Emacs 22.2.1 con verilog-mode 404 para escribir el codigo Verilog (.v)
  * Icarus Verilog version 0.8.6 para compilar y simular
  * GTKWave Analyzer v3.1.10 para visualizar el resultado de las simulaciones (.vcd)
 * Autor: Fredy Pulido López (digitalfredy)
 * Copyright: http://www.fsf.org/licensing/licenses/gpl.html
 * Agradecimientos:
*/
```