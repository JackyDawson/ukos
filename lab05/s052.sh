#!/bin/bash

if [ ! ~/Documents/copied ];then

mkdir -p ~/Documents/copied

fi

if [ "$#" -eq 1 ]; then
    cp -r *."$1" ~/Documents/copied/
else
    cp "$@" ~/Documents/copied/
fi

