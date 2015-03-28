
---

**Proyecto ld2ud:** [Inicio](ld2ud.md) | [Propuesta](ld2udPropuestaProyecto.md) | [Código](http://code.google.com/p/altaimpedancia/source/browse/#svn/trunk/ld2ud/code) | [Wiki](http://code.google.com/p/altaimpedancia/w/list?q=label:ld2ud)

---


Desafortunadamente no hay una forma unificada de pasar el .bit a la FPGA por que los fabricantes de boards no tienen buenas prácticas y .... en esta página expondremos como hacerlo en las boards que tengamos acceso.

## Digilent Nexys ##
La board usada tenía:
  * Xilinx Spartan3-200 FT256
  * 16Mb Micron CellularRAM
  * 4Mb Intel Strataflash
  * USB2 interface / USB Powered
  * Onboard Buttons, Switches and LEDs
  * 100Mhz + Expansion Connector
  * Optional Hig-Res 128 x 64 LCD
  * All I/Os ESD & Short Circuit Protected
Para programar esta y al parecer todas las board Nexys usamos [nexys2prog](http://plausible.org/andy/nexys2prog.tar.gz)
  1. Debes tener instalado ise ([webpack](http://www.xilinx.com/tools/webpack.htm) sirve)
    * Hay que instalar los paquetes libmotif3 y libstc++5 para que funcione el programa de asignación de pines de ISE.
    * Instale libmotif3
    * Asumiendo que esta instalando el webpack.
      1. Ejecute el script setup.
      1. Seleccionar todo y aceptar todo.
      1. Hay que verificar que se cuente con suficiente espacio en la partición que se va a instalar. Aproximadamente 8GB. Cuando diga que no hay suficiente espacio en el disco responder afirmativamente a la pregunta que si se desea continuar con la instalación.
      1. Añadir al PATH las rutas en donde quedo instalado.
  1. Creando el .bit con ise
    1. Ejecutar `ise`
    1. File -> New Project
    1. Project name: ciscud, Top-level source Type: HDL
    1. Family: Automotive Spartan3, Device: XA3S200, Package: FTG256
    1. Next
    1. Add Source
  1. Descargas nexys2prog
```
$ cd /tmp
$ wget http://plausible.org/andy/nexys2prog.tar.gz
```
  1. Descomprimes, realmente el autor se equivoco y no es un .tar.gz sino un .tar
```
$ tar -xf nexys2prog.tar.gz
```
  1. Instalas el programa a mano:
    * Para los que usan la cuenta de root (sin sudo)
```
$ su -c 'mv nexys2prog/nexys2prog /usr/local/bin/'
$ su -c 'chown root.root /usr/local/bin/nexys2prog'
```
    * Para los que usan sudo (los de ubuntu generalmente)
```
$ sudo mv nexys2prog/nexys2prog /usr/local/bin/
$ sudo chown root.root /usr/local/bin/nexys2prog
```
  1. Instalas las dependencias, en debian o ubuntu:
```
# apt-get install fxload libftdi1 urjtag
```
    * Si te dice que urjtag no está seguramente estas en debian 5.0, no te preocupes [descarga la versión de pruebas](http://packages.debian.org/search?keywords=urjtag&searchon=names&suite=all&section=all) y tal vez te toque descargar una versión más nueva de alguna librería e instalarla a mano, yo lo hice así:
```
# dpkg -i urjtag_0.0+r1476-1_i386.deb  libftdi1_0.16-2_i386.deb
```
  1. Si no tienes los binarios de ise en el PATH debes agregarlos
    1. Si no sabes donde estan los binarios de ise usa:
```
# find / -name impact | grep lin
/opt/Xilinx/ise/ISE/bin/lin/impact
```
    1. Antes de ejecutar nexys2prog agrega ise al PATH. lo ideal es que configures tu shell pero al vuelo yo lo hice así (mira que **quito el /impact del final**):
```
# export PATH="/opt/Xilinx/ise/ISE/bin/lin/:$PATH"
```
  1. Si tienes los binarios de ise en el PATH debería funcionar (usalo como root)
```
# nexys2prog ejemplo.bit
```

Para más información favor leer archivo README suministrado por el autor de nexys2prog