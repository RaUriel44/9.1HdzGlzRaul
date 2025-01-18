#!/bin/bash

echo -n "ingresa el primer numero: "
read num1

echo -n "ingresa el segundo número: "
read num2

suma=$((num1 + num2))
resta=$((num1 - num2))

echo "La suma de $num1 y $num2 es: $suma"
echo "La resta de $num1 menos $num2 es: $resta"
