#!/bin/bash



# Punto 1: Ubicar el script en /usr/sbin y permitir su ejecución por todos los usuarios

sudo chmod a+x /usr/sbin/estadisticas.sh



# Punto 2: Crear el directorio log-estadisticas y otorgar permisos de escritura a todos los usuarios

sudo mkdir /var/log/log-estadisticas

sudo chmod a+w /var/log/log-estadisticas



# Punto 3: Establecer el nombre del archivo de log según la fecha actual

fecha=$(date +"%d-%B-%Y")

archivo_log="/var/log/log-estadisticas/${fecha}-estadisticas.log"



# Punto 4: Escribir un mensaje en el archivo de log con la información solicitada

mensaje="En el equipo $(hostname), actualmente se encuentra logueado el usuario $(whoami), cuyo directorio personal se encuentra en $HOME. La configuración regional de idioma en el equipo es $(locale | >

echo "$mensaje" >> "$archivo_log"



