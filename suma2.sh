#!/bin/bash

# Script para calcular la suma y resta de dos números ingresados por el usuario.

# Solicitar el primer número
echo -n "Ingresa el primer número: "
read num1

# Solicitar el segundo número
echo -n "Ingresa el segundo número: "
read num2

# Validar que ambos valores sean números
if [[ ! "$num1" =~ ^-?[0-9]+$ || ! "$num2" =~ ^-?[0-9]+$ ]]; then
  echo "Error: Ambos valores deben ser números enteros."
  exit 1
fi

# Calcular la suma y la resta
suma=$((num1 + num2))
resta=$((num1 - num2))

# Mostrar los resultados
echo "La suma de $num1 y $num2 es: $suma"
echo "La resta de $num1 menos $num2 es: $resta"
