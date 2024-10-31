#!/bin/bash


if [ ! -d "$PWD/Rezerve" ]; then
  mkdir "$PWD/Rezerve"
fi

DATE=$(date +"%Y-%m-%d_%H:%M")
BACKUP_DIR="$PWD/Rezerve/$DATE"

mkdir -p "$BACKUP_DIR"


cp -R $(ls | grep -v 'Rezerve') "$BACKUP_DIR/"

find "$PWD/Rezerve" -mindepth 1 -maxdepth 1 -type d -not -name "$DATE" -exec rm -rf {} \;