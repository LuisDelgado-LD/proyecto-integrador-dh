#!/bin/bash
MYSQL_USER=$1
MYSQL_PASS=$2
MYSQL_DB="pet_paradise"

COMANDO_ENTRADA="mysql -h 10.10.0.126 -u "$MYSQL_USER" -p"$MYSQL_PASS" "$MYSQL_DB""
id_habitaciones=$($COMANDO_ENTRADA -e "select id from habitaciones;" | grep -o '[0-9]*')
for id in $id_habitaciones; do
 echo "id: $id"
 CATEGORIA=$($COMANDO_ENTRADA -e "select categoria_id from habitaciones where id=$id" | grep -o '[0-9]*')
 if [[ $CATEGORIA -eq 3 ]]; then
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 3);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 1);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 2);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 4);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 5);"
 elif [[ $CATEGORIA -eq 2 ]]; then
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 3);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 1);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 2);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 4);"
 elif [[ $CATEGORIA -eq 1 ]]; then
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 3);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 1);"
   $COMANDO_ENTRADA -e "INSERT INTO habitacion_caracteristicas (habitacion_id, caracteristica_id) VALUES ($id, 2);"
 fi
done
