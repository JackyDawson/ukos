#!/bin/bash

ls ~/Downloads

file_count=$(ls ~/Downloads | wc -l)
echo 'liczba plikow: ' $file_count

