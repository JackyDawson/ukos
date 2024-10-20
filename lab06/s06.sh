#!/bin/bash

if [ ! -d /tmp/backup ]; then
    mkdir -p /tmp/backup
fi

user=$(whoami)
data=$(date +%Y-%m-%d)
archive_name="/tmp/backup/${user}_home_${data}.tar.gz"

tar -czf $archive_name /home/$user 2>/dev/null

if [ -f $archive_name ]; then
echo "Plik zostal utworzony"
else
echo "Plik nie zostal utworzony"
fi
