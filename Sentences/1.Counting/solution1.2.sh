#!/bin/bash

Error(){
echo "Error. Sintaxis de uso: $0/ archivo | directorio"
}
if test $# -lt 1
then 
Error 
elif test -d $1
then
echo " $1 es un diretorio y su tama es el siguiente:"
du -hs $s1
elif test -f $1
then
du -hs $1
else 
echo "$1 no existe"
fi
