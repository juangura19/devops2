#!/bin/bash

if [[ -z "$1" ]] || [[ -z "$2" ]]; then
  echo "ERROR - Debe ingresar el nombre de la base de datos y la tabla sucesivamente."
  exit 100
fi

