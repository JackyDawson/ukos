#!/bin/bash

sek1=$1
sek2=$2
sek3=$3
x=$4

grep -E "\s($sek1)\s" komputery.txt | head -n "$x"
grep -E "\s($sek2)\s" komputery.txt | head -n "$x"
grep -E "\s($sek3)\s" komputery.txt | head -n "$x"
