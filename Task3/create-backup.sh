#!/bin/bash


if [ ! -d "$PWD/Rezerve" ]; then
  mkdir "$PWD/Rezerve"
fi

DATE=$(date +"%Y-%m-%d_%H:%M")
BACKUP_DIR="$PWD/Rezerve/$DATE"

mkdir -p "$BACKUP_DIR"


cp -R $(ls | grep -v 'Rezerve') "$BACKUP_DIR/"


for DIR in "$PWD/Rezerve/"*; do
  if [[ "$DIR" != "$PWD/Rezerve/$DATE" ]]; then
    rm -rf "$DIR"
  fi
done