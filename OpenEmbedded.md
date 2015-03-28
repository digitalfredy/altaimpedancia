#OpenEmbedded
# 0 #
Directorio de trabajo
```
$ mkdir ~/oe
$ echo export OEBASE = ~/oe >> ~/.bashrc
$ read ~/.bashrc
$ mkdir -p $OEBASE/build/conf
$ cd $OEBASE
```
Instalar bitbake y openembedded
```
$ wget http://download.berlios.de/bitbake/bitbake-1.8.12.tar.gz
$ tar -xvzf bitbake-1.8.12.tar.gz
$ mv bitbake-1.8.12 bitbake
$ git clone git://git.openembedded.org/openembedded
$ mv openembedded.org openembedded
```
Configuración de openembedded
```
$ echo export PATH = $OEBASE/bitbake/bin:$PATH >> ~/.bashrc
$ echo export BBPATH = $OEBASE/build:$OEBASE/openembedded >> ~/.bashrc
$ echo export BB_ENV_EXTRAWHITE = "OEBASE" >> ~/.bashrc
$ read ~/.bashrc
```
Configuración local.

Crear el archivo build/conf/local.conf con el siguiente contenido
```
DL_DIR = "${OEBASE}/sources"
TMP_DIR = "${OEBASE}/tmp"
BBFILES := "${OEBASE}/openembedded/recipes/*/*.bb"
BBMASK = ""

PREFERRED_PROVIDERS = " virtual/${TARGET_PREFIX}gcc-initial:gcc-cross-initial"
PREFERRED_PROVIDERS += " virtual/${TARGET_PREFIX}gcc:gcc-cross"
PREFERRED_PROVIDERS += " virtual/${TARGET_PREFIX}g++:gcc-cross"

ASSUME_PROVIDED += " virtual/${TARGET_PREFIX}gcc-initial:gcc-cross-initial"
ASSUME_PROVIDED += " virtual/${TARGET_PREFIX}gcc:gcc-cross"
ASSUME_PROVIDED += " virtual/${TARGET_PREFIX}g++:gcc-cross"

# We still need to build u-boot inside OE
# in order to make a running kernel.
# Let's build the kernel outside...
#PREFERRED_PROVIDER_virtual/kernel = "linux-ecbat91"
#ASSUME_PROVIDED += " linux-ecbat91-2.6.17-r1"
#ASSUME_PROVIDED += " linux-ecbat91"
#ASSUME_PROVIDED += " virtual/kernel"

MACHINE = "ecbat91"
DISTRO = "angstrom-2008.1"

# Add the required image file system types below. Valid are jffs2, tar, cramfs and ext2
IMAGE_FSTYPES = "tar"

# Uncomment this if you want BitBake to emit debugging output
BBDEBUG = "yes"

# DEBUG_BUILD = "1"
# INHIBIT_PACKAGE_STRIP = "1"

# PROFILE_OPTIMIZATION = "-pg"
# SELECTED_OPTIMIZATION = "${PROFILE_OPTIMIZATION}"
# LDFLAGS =+ "-pg"

BB_NUMBER_THREADS = "4"
PARALLEL_MAKE = "-j 4"

# Uncomment this if you want BitBake to emit the log if a build fails.
BBINCLUDELOGS = "yes"
```
Cree el directorio build/conf/machine y dentro de este el archivo ecbat91.conf con el siguiente contenido
```
#@TYPE: Machine
#@Name: emQbit ECB_AT91 Dev boards
#@DESCRIPTION: Machine configuration for emQbit ECB_AT91 Dev boards

TARGET_ARCH = "arm"
#PACKAGE_EXTRA_ARCHS = "armv4t"

# used by sysvinit_2
SERIAL_CONSOLE = "115200 ttyS0"

IMAGE_FSTYPES = "tar.gz"

#MACHINE_FEATURES = "kernel26 usbhost"

require conf/machine/include/tune-arm920t.inc

PREFERRED_PROVIDER_virtual/kernel = "linux-ecbat91"
```
Construir Software
```
$ bitbake helloworld-image
```
# 1 #
```
# echo deb http://oss.leggewie.org/oe/deb ./ >> /etc/apt/sources.list
# apt-get update
# apt-get install openembedded-sonkei
oe-setup-sonkei stable
cd ~/oe
```
## Referencias ##
  * http://blog.leggewie.org/?p=39
  * http://wiki.openembedded.net/index.php/Getting_started
  * http://docs.openembedded.org/usermanual/usermanual.html
# 2 #
```
wget http://wiki.openembedded.net/snapshots/historical/OE-this-is-for-mtn-0.37.mtn.bz2
bunzip2 OE-this-is-for-mtn-0.37.mtn.bz2
```
## Referencias ##
  * http://wiki.emqbit.com/xsvnwiki-discuss/openembedded
  * http://biestado.kraptor.com/2006/03/15/tutorial-de-openembedded-2