#!/bin/bash -e

cd ~/minecraft-server

if [ "$#" != 1 ]; then
    echo "usage: <worldname>"
    exit 1
fi

if [ ! -d worlds/"$1" ]; then
    echo "World [$1] doesn't exist"
    exit 2
fi

sudo service stop minecraft

cp server.properties server.properties.bak
grep -E -v '^level-name *=' server.properties.bak > server.properties
echo "level-name=$1" >> server.properties

sudo service start minecraft
