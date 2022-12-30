#!/bin/bash

while read line; do
  user=$(echo $line | cut -d ',' -f1)
  grupo_departamento=$(echo $line | cut -d ',' -f5)
  sudo userdel "$user"
  sudo groupdel "$grupo_departamento"
done < usuarios.csv
