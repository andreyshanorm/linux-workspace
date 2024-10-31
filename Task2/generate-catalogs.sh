#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Использование: $0 <имя_папки> <количество_вложений>"
  exit 1
fi


FOLDER_NAME=$1
DEPTH=$2

CURRENT_DIR="."

for ((i = 1; i <= DEPTH; i++)); do
  mkdir -p "$CURRENT_DIR/$FOLDER_NAME"
  CURRENT_DIR="$CURRENT_DIR/$FOLDER_NAME"
done

echo "Вложенность завершена!"