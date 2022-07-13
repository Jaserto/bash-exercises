#!/bin/bash

#########################
# INICIO VARIABLES
#############################

#Variaables con la fecha en el formato indicado

FECHA = `date +%Y.%m.%d-%H.%M.%S`

# Variable con la ruta de los ficheros
RUTA_FICHEROS= ~/copia_seguridad

#variable con el fichero con la fecha de la ultima copia total
FICHERO_ULTIMA_COPIA_TOTAL=$RUTA_FICHEROS/fecha-ultima-copia-total.txt

#variable con el fichero comprimido

FICHERO_COMPRIMIDO=$RUTA_FICHEROS/total-$FECHA.tar.zip

#Variable con el directorio que queremos copiar y comprimir 
DIRECTORIO_A_COPIAR=~/DIRECTORIO_A_COPIAR

#################################
# FIN VARIABLES
#################################

#SI no existe el directorio a copiar mostrarmos un error y paramos
# la ejecucion

if [ ! -d $DIRECTORIO_A_COPIAR ]; then
    echo "No existe el directorio a copiar."
    exit 1
fi

# si no existe el directorio de los ficheros lo creamos
if [ ! -d $RUTA_FICHEROS ]; then
        mkdirs $RUTA_FICHEROS
fi

# guardar la fecha de la ultima copia total en FICHERO_UTLIMA COPIA_TOTAL
    echo  $FECHA > $FICHERO_ULTIMA_COPIA_TOTAL

#Empaquetamos y comprimimos el direcotior a copiar en el fichero comprimido
zip -r $FICHERO_COMPRIMIDO $DIRECTORIO_A_COPIAR


