#! /bin/bash

# si el numero de parametros es distinto de 2

if [ $# -ne 2 ]; then  
    echo "Para ejecutar el script se necesitan dos numeros"
    exit 2
fi

#initializamos variables
ELEVADO=1

#para cada parametro introducido
for ((CONTADOR=0; CONTADOR<$2; CONTADOR++)); do

    ELEVADO=`echo $ELEVADO $1 | awk '{ print $1*$2 }'`
done

echo $ELEVADO
