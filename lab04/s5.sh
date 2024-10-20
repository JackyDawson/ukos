#!/bin/bash

data_utworzenia=$(date +"%Y-%m-%d_%H-%M-%S")
file_name="log${data_utworzenia}.txt"
top -b -n 1 > "$file_name"
