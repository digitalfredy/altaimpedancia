#!/bin/bash
while true
do
  uparrow=$'\x1b[A'
  downarrow=$'\x1b[B'
  leftarrow=$'\x1b[D'
  rightarrow=$'\x1b[C'

  clear
  echo "          http://altaimpedancia.org"
  echo ""
  echo "        Electronica con Software Libre,"
  echo "   Open Source Hardware y Free Hardware Design"
  echo ""
  echo "Robot Linux Inalambrico - rolin"
  echo ""
  read -sn3 -p "Use las flechas: " x

  case "$x" in
  $uparrow)
     echo adelante > /dev/tts/1&
     ;;
  $downarrow)
     echo atras > /dev/tts/1&
     ;;
  $leftarrow)
     echo izquierda > /dev/tts/1&
     ;;
  $rightarrow)
     echo derecha > /dev/tts/1&
     ;;
  esac

done

exit $?

