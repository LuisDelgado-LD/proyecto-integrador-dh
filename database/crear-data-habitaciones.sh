#!/bin/bash

# Definir variables
host="https://petparadise.sytes.net"  # Reemplazar con el host real

declare -A categorias
categorias=( [1]="básico" [2]="Premium" [3]="VIP" )

# Definir listas de nombres por tamaño
declare -a PEQUENA=("Chihuahua" "Pomerania" "Yorkshire" "Pinscher" "Maltés" "Pekinés" "Papillón" "Shih Tzu" "Bichón Frisé" "Toy Poodle")
declare -a MEDIANA=("Beagle" "Cocker" "Border Collie" "Bulldog Francés" "Schnauzer" "Staffordshire Bull Terrier" "Basenji" "Whippet" "Shetland Sheepdog" "American Eskimo")
# "Shiba Inu" "Corgi" "Springer Spaniel" "Australian Shepherd" "Samoyedo")
declare -a GRANDE=("Labrador" "Golden Retriever" "Pastor Alemán" "Husky Siberiano" "Rottweiler" "Shiba Inu" "Corgi" "Springer Spaniel" "Australian Shepherd" "Samoyedo")

# Función para enviar datos
function crear_habitacion() {
  local nombre="$1"
  local tamano="$2"
  local id_cat="$3"
  local nombre_cat="$4"

  json_body=$(jq -n \
    --arg nombre "$nombre" \
    --arg tamano "$tamano" \
    --argjson id_cat "$id_cat" \
    --arg nombre_cat "$nombre_cat" \
    '{nombre: $nombre, descripcion: "Una habitación espaciosa para perros grandes con cama acolchonada.", categoria: {id: $id_cat|tonumber, nombre: $nombre_cat}, tamano: $tamano, precioUnitario: 150000.0, isDisponible: true}')
  
  response=$(curl -s -X POST "$host/api/habitaciones" -H "Content-Type: application/json" -d "$json_body")
#  echo "Enviando habitación: $nombre ($tamano) - Categoría: $nombre_cat" 
  echo "Respuesta: $response"
}

# Crear habitaciones

for i in "${!GRANDE[@]}"; do
 echo "Índice $i: ${GRANDE[$i]}"
    tamano=GRANDE
    if [ $i -le 4 ]; then
      crear_habitacion "${GRANDE[$i]}" "$tamano" 1 "básico"
    elif [ $i -le 7 ]; then
      crear_habitacion "${GRANDE[$i]}" "$tamano" 2 "premium"
    else
      crear_habitacion "${GRANDE[$i]}" "$tamano" 3 "VIP"
    fi 
done

for i in "${!MEDIANA[@]}"; do
 echo "Índice $i: ${MEDIANA[$i]}"
    tamano=MEDIANA
    if [ $i -le 4 ]; then
      crear_habitacion "${MEDIANA[$i]}" "$tamano" 1 "básico"
    elif [ $i -le 7 ]; then
      crear_habitacion "${MEDIANA[$i]}" "$tamano" 2 "premium"
    else
      crear_habitacion "${MEDIANA[$i]}" "$tamano" 3 "VIP"
    fi 
done

for i in "${!PEQUENA[@]}"; do
 echo "Índice $i: ${PEQUENA[$i]}"
    tamano=PEQUENA
    if [ $i -le 4 ]; then
      crear_habitacion "${PEQUENA[$i]}" "$tamano" 1 "básico"
    elif [ $i -le 7 ]; then
      crear_habitacion "${PEQUENA[$i]}" "$tamano" 2 "premium"
    else
      crear_habitacion "${PEQUENA[$i]}" "$tamano" 3 "VIP"
    fi 
done
