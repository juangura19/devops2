#!/bin/bash

if mysql -u root -p'root' -e "USE ${1} ; DESCRIBE ${2};" >/dev/null 2>&1; then
  mysql -u root -p'root' -e "TRUNCATE TABLE ${1}.${2}"
else
  echo "La tabla ${1}.${2} no existe en la base de datos ${1}"
fi

