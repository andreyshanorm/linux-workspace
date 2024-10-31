#!/bin/bash

# Проверяем наличие каталога Rezerve
if [ ! -d "$PWD/Rezerve" ]; then
  mkdir "$PWD/Rezerve"
fi

# Получаем текущую дату для имени резервной копии
DATE=$(date +"%Y-%m-%d_%H:%M")
BACKUP_DIR="$PWD/Rezerve/$DATE"

# Создаем новый каталог для текущей резервной копии
mkdir -p "$BACKUP_DIR"

# Копируем все файлы и папки из текущего каталога в новую резервную копию,
# кроме каталога Rezerve
cp -R $(ls | grep -v 'Rezerve') "$BACKUP_DIR/"

# Удаление старых резервных копий
find "$PWD/Rezerve" -mindepth 1 -maxdepth 1 -type d -not -name "$DATE" -exec rm -rf {} \;