#!/bin/bash

if [[ -z "$1" ]] || [[ -z "$2" ]]; then
  echo "$(date) ERROR - Debe ingresar el nombre de la base de datos y la tabla sucesivamente." >> /home/juan/Documentos/log.txt
  exit 100
fi

if mysql -u root -p'root' -e "USE ${1} ; DESCRIBE ${2};" >/dev/null 2>&1; then
  mysql -u root -p'root' -e "TRUNCATE TABLE ${1}.${2}"
  echo "$(date) SUCCESS - TRUNCATE TABLE ${1}.${2}"  >> /home/juan/Documentos/log.txt
else
  echo "$(date) ERROR - La tabla ${1}.${2} no existe en la base de datos ${1}"  >> /home/juan/Documentos/log.txt
fi

