#!/bin/bash

Error(){
echo "Error. Sintaxis de uso: $0/ archivo | directorio"
}

#Si el numero de parametros posicionales o argumentos que se le dan al script
# es menor de , donde "-lt" significa "lower than"
# y es equivalente  a lo que en otros lenguajes se utiliza como <

if test $# -lt  1

then 

Error

elif test -d $1 # Si el parametro posicional $1 existe y es un directorio
then
echo "$1 es un direcotorio."
elif test -f $1 #Si el parametro 1 existe y es un archivo
then
echo "$1 es un archivo"
else
echo "$1 no existe"
fi





