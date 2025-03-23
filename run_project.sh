#!/bin/bash

# Путь к репозиторию
REPO_DIR="../shvirtd-example-python"
REPO_URL="https://github.com/Vasilenko773/shvirtd-example-python"

# Проверка, существует ли директория репозитория
if [ ! -d "$REPO_DIR" ]; then
  echo "Репозиторий не найден, скачиваю..."
  git clone "$REPO_URL" "$REPO_DIR"
else
  echo "Репозиторий скачен ранее."
fi

# Переходим в директорию репозитория
cd "$REPO_DIR"

# Запускаем Docker Compose
echo "Запускаю сервисы"
docker compose up -d

