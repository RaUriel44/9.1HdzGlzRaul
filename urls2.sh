#!/bin/bash

# Declaración de URLs
declare -a urls=("https://moodle.plataforma-utslp.net/" "https://upotosina.edu.mx/" "https://www.magna.com")

# Archivo de registro
file=urls2.log

# Tiempo de espera entre iteraciones (en segundos)
sleep_time=10  # Puedes modificar esta variable para cambiar el intervalo

# Número máximo de iteraciones (opcional, establece en 0 para ejecutar infinitamente)
max_iterations=0

# Contador de iteraciones
iteration=0

# Bucle principal
while true; do
    # Incrementa el c
