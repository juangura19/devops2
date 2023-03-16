#!/bin/bash

if [[ -z "$1" ]] || [[ -z "$2" ]]; then
  echo "$(date) ERROR - Debe ingresar el nombre de la base de datos y la tabla sucesivamente." >> /home/juan/Documentos/log.txt
  exit 100
fi

