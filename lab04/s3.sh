#!/bin/bash

if [ $# -eq 3 ]; then

first=$1
second=$2
third=$3

if [ $first -gt $second ] && [ $first -gt $third ]; then
echo 'Parametr '$first' jest najwiekszy'
elif [ $second -gt $first ] && [ $second -gt $third ]; then
echo 'Parametr '$second' jest najwiekszy'
else
echo 'Parametr '$third' jest najwikszy'
fi
else
echo 'Bledna ilosc parametrow'
fi
