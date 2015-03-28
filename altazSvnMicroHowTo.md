# Mini Tutorial de sbuversion #
Si quiere saber que es subversion por favor revise los enlaces al final.

Instalación:
```
# apt-get install subversion
```

[Copiar el repositorio](http://code.google.com/p/altaimpedancia/source/checkout) (Reemplazar $USER por el usuario):
```
$ svn checkout https://altaimpedancia.googlecode.com/svn/trunk/ altaimpedancia/ --username $USER 
```

Entramos en el directorio donde están los archivos del proyecto:
```
$ cd altaimpedancia
```

ejemplo crear un nuevo archivo y publicarlo:
```
$ echo "altaimpedancia es electrónica libre" > archivo.txt
$ svn add archivo.txt 
$ svn commit
```

ejemplo modificar archivo y publicarlo
```
$ echo "altaimpedancia es open hardware" >> archivo.txt
$ svn commit
```

ejemplo borrar archivo
```
$ svn remove archivo.txt
```

Para actualizar el contenido desde el repositorio
```
$ svn update
```
# Enlaces #
  * [El libro de svn](http://svnbook.red-bean.com/)
  * [Tutorial de Subversion](http://www.wikilearning.com/tutorial/tutorial_de_subversion-para_que_sirve_subversion/6411-1)
  * [mini how to](http://www.csoft.net/docs/svn.html.en) (en ingles)