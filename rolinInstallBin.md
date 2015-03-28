http://rolin.altaimpedancia.org/

Lista de materiales (para referencia ver video en página web):
  * Enrrutador Linksys WRT54GL
  * Chasis carro radiocontrol con motores que puedan funcionar a 12V
  * Batería de 12V/1A que no sea muy pesada
  * Materiales electrónicos referenciados en el esquema rolin.pdf
  * Protoboard, cables y conectores. (pcb sin probar y por eso no incluido)

Construcción:
  1. Mire http://www.youtube.com/watch?v=f5zX4TaSn8I para hacerse una idea
  1. Revise DiagramaBloques.png para entender la generalidad
  1. Lea http://code.google.com/p/altaimpedancia/wiki/rolinComo
  1. Lea http://oldwiki.openwrt.org/OpenWrtDocs(2f)Hardware(2f)Linksys(2f)WRT54GL.html
  1. Instale http://openwrt.org/ en el Linksys WRT54GL
  1. Habilite la wireless y ssh en OpenWRT
  1. Instale bash en OpenWRT
  1. Suba rolin.sh al home del root (en el enrrutador) usando scp
  1. Programe el microcontrolador atmega168p con rolin\_avr.hex (use avrdude si usa linux)
  1. Destape el enrrutador y solde conectores para puerto serial según foto serial.jpg
  1. Tome alimentación de 12V del router segun foto alimentacion12V.jpg
  1. Agregue la alimentación de 12V al conector según foto agregar12V.jpg
  1. Implemente el circuito en un protoboard (hay un pcb sin probar en versión desarrollo)
  1. Conecte el circuito al enrrutador y a los motores
  1. Revise que las conexiones sean correctas
  1. Alimente el enrrutador con la batería y espere que termine de arrancar
  1. Conectese por ssh al enrrutador y ejecute
```
# bash rolin.sh
```
  1. Pruebe si funciona correctamente
  1. Ensamble el enrrutador, el protoboard y la batería en el chasis
  1. Diviertase y si quiere modificar el proyecto baje la versión para desarrolo