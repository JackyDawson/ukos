#!/bin/bash

if [ "$#" -lt 5 ]; then
    echo "Podano mniej niz 5 argumentow"
fi


suma=0
for number in "$@"; do
    suma=$(echo "$suma + $number" | bc)
done

echo "Suma argumentów: $suma"


