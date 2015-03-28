MICRO HOW TO
1- Consiga un router compatible con OpenWrt, recomendamos uno con características similares o superiores al [WRT54GL](http://wiki.openwrt.org/oldwiki/openwrtdocs/hardware/linksys/wrt54gl#info), puede ver [esta tabla](http://wiki.openwrt.org/toh/start) y [esta otra](http://wiki.openwrt.org/oldwiki/tableofhardware).

2- Instale OpenWRT en el router, configure y habilite la wireless, el servidor ssh, instale bash y usando scp ponga rolin.sh en el home de root y agregele permiso de ejecución.

3- Programe microcontrolador con rolin\_avr.hex si usa linux le recomendamos avrdude, si usa un programador paralelo, creo que nosotros usamos [este](http://www.qsl.net/ba1fb/avrisp.gif) o [este](http://my.opera.com/CrazyTerabyte/blog/2007/10/26/first-contact-with-atmega8-microcontroller-part-2), o mire en [este post](http://digitalfredy.blogspot.com/2009_09_01_archive.html)
```
make program
```

4- Haga el circuito del esquemático y conectelo al puerto serial del enrrutador, y a la alimentación (La alimentación la sacamos de los 12 voltios del router) verifique que todo esté adecuadamente conectado.

5- Alimente a rolin y pongalo a funcionar, conectese desde un dispositivo remoto usando ssh y ejecute rolin.sh

6- Ensamble el enrrutador y el circuito al chasis y conecte los motores.