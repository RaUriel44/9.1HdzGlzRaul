#!/bin/bash

declare -a urls=("moodle.plataforma-utslp.net/" "https://upotosina.edu.mx/" "https://www.magna.com")


file=urls2.log

# Escribe la fecha actual al archivo
printf "$(date)\n" > "$file"

# Recorre cada URL y obtiene el estado HTTP
for url in "${urls[@]}"; do
    status=$(curl -m 10 -s -I $url | head -n 1 | awk '{print $2}')
    printf "$url,$status\n" >> "$file"
done

# Muestra el contenido del archivo formateado en columnas
column -s, -t "$file"
