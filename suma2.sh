#!/bin/bash

# Solicitar el primer número
echo -n "Ingresa el primer número: "
read num1

# Validar que sea un número
if [[ ! "$num1" =~ ^-?[0-9]+$ ]]; then
    echo "Error: El valor ingresado no es un número."
    exit 1
fi

# Solicitar el segundo número
echo -n "Ingresa el segundo número: "
read num2

# Validar que sea un número
if [[ ! "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: El valor ingresado no es un número."
    exit 1
fi

# Realizar las operaciones
suma=$((num1 + num2))
resta=$((num1 - num2))

# Mostrar los resultados
echo "La suma de $num1 y $num2 es: $suma"
echo "La resta de $num1 menos $num2 es: $resta"
