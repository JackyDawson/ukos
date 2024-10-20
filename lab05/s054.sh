#!/bin/bash

output_file="polaczone.txt"
> "$output_file"  # Czyści plik, jeśli istnieje

for file in $(find . -name "*.txt"); do
    cat "$file" >> "$output_file"
done

echo "Zawartość plików .txt została połączona w $output_file."
