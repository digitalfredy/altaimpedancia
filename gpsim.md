#log gpsim.
Siguiendo http://gpsim.sourceforge.net/gpsim_svn.html
# compilación de la versión del svn #
  * Instalé libpopt-dev, libgtkextra-x11-2.0-dev, libreadline6-dev, flex y byacc
  * descargar el código desde el svn
```
$ mkdir gpsim
$ cd gpsim
$ svn checkout https://gpsim.svn.sourceforge.net/svnroot/gpsim/trunk .
```
> No olvidar el "**.**"
  * Compilar
```
$ libtoolize --force
$ aclocal
$ autoheader
$ automake --force-missing --add-missing
$ autoconf
$ ./configure --enable-shared
$ make -j 2
```
> make con la opción -j 2 es para que compile más rápido, el 2 quiere decir que use los 2 core de mi procesador