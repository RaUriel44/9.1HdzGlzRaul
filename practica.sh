#!/bin/bash

# Variables
CARPETA="/home/raul/9.1HdzGlzRaul" # Cambia esta ruta por la que desees
ARCHIVO="practica.txt"
FECHA=$(date +"%Y-%m-%d")

if [ ! -d "$CARPETA" ]; then
  echo "La carpeta no existe. Creándola..."
  mkdir -p "$CARPETA"
  echo "Carpeta creada: $CARPETA"
else
  echo "La carpeta ya existe: $CARPETA"
fi

RUTA_ARCHIVO="$CARPETA/$ARCHIVO"

if [ -f "$RUTA_ARCHIVO" ]; then
  BACKUP_ARCHIVO="$CARPETA/${ARCHIVO%.txt}_backup_$FECHA.txt"
  echo "El archivo ya existe. Creando un backup: $BACKUP_ARCHIVO"
  cp "$RUTA_ARCHIVO" "$BACKUP_ARCHIVO"\else
  echo "El archivo no existe. Creándolo..."
fi

echo "Contenido del archivo." > "$RUTA_ARCHIVO"
echo "Archivo creado o actualizado: $RUTA_ARCHIVO"
