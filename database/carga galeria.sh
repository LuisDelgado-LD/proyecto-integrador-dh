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
   $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743282301/habitaciones/nk4h2a7w5hzyrbqentig.jpg', true);"
 elif [[ $CATEGORIA -eq 2 ]]; then
   $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743285359/WhatsApp_Image_2025-02-25_at_12.56.26_PM_ilq9rj.jpg', true);"
 elif [[ $CATEGORIA -eq 1 ]]; then
   $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743260031/habitaciones/a9qlncaukwr7sfoimnpc.jpg', true);"
 fi
 $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277353/habitaciones/bcmyxkirkeayavaupx1e.png', false);"
 $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743277910/habitaciones/gzpgn5tvkm3sxwcedd6o.png', false);"
 $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279551/habitaciones/xzpuxfjgj8akh8svqxrq.png',false);"
 $COMANDO_ENTRADA -e "INSERT INTO imagenes (habitacion_id, url, es_principal) VALUES ($id, 'https://res.cloudinary.com/djcdkjvrt/image/upload/v1743279606/habitaciones/qgngjrgtptz3xzssuoew.png', false);"
done


