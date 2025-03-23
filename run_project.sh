#!/bin/bash


REPO_DIR="/opt"
REPO_URL="https://github.com/Vasilenko773/shvirtd-example-python"  # Ваш URL репозитория

if [ ! -d "/opt" ]; then
  echo "Каталог /opt не существует. Создаю его."
  sudo mkdir -p /opt
fi

echo "Клонирую репозиторий..."
git clone "$REPO_URL" "$REPO_DIR" || { echo "Не удалось клонировать репозиторий"; exit 1; }

cd "$REPO_DIR" || { echo "Не удалось перейти в директорию $REPO_DIR"; exit 1; }

echo "Запускаю сервисы..."
sudo docker-compose up -d || { echo "Не удалось запустить сервисы"; exit 1; }

echo "Проект успешно запущен!"