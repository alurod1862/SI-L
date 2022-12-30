#!/bin/bash

while read linea; do
	nombre=$(echo $linea | cut -d ',' -f1)
        descripcion=$(echo $linea | cut -d ',' -f2)
        sudo groupadd "$nombre"
done < departamentos.csv

while read linea; do
  user=$(echo $linea | cut -d ',' -f1)
  password=$(echo $linea | cut -d ',' -f2)
  nombre=$(echo $linea | cut -d ',' -f3)
  descripcion=$(echo $linea | cut -d ',' -f4)
  grupo_departamento=$(echo $linea | cut -d ',' -f5)
  sudo useradd -m -l "$user" -p $(openssl passwd -1 "$password") -c "$nombre" -g "$grupo_departamento"
done < usuarios.csv
