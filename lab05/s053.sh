#!/bin/bash

touch baza.txt

for i in {1..4}; do
    read -p "Podaj wartość dla kolumny $i: " value
    values+=("$value")
done

echo "${values[0]},${values[1]},${values[2]},${values[3]}" >> baza.txt
echo "Dodano dane do baza.txt"
