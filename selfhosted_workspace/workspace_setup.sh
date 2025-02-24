#!/bin/bash

# Обновление списка пакетов и установка необходимых утилит
sudo apt-get update
sudo apt-get install -y ca-certificates curl

# Создание директории для ключей Docker
sudo install -m 0755 -d /etc/apt/keyrings

# Загрузка официального GPG ключа Docker
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc

# Установка прав доступа на GPG ключ Docker
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Добавление репозитория Docker в источники APT
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Обновление списка пакетов после добавления репозитория Docker
sudo apt-get update

# Установка Docker CE, Docker CLI, containerd.io, Docker Buildx Plugin и Docker Compose Plugin
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Повторное обновление списка пакетов (опционально, но может быть полезно)
sudo apt-get update

# Загрузка Docker образа Memos
docker pull neosmemo/memos:stable

# Создание директории /opt/planka
sudo mkdir -p /opt/planka

# Загрузка docker-compose.yml для Planka в /opt/planka
sudo curl -L https://raw.githubusercontent.com/plankanban/planka/master/docker-compose.yml -o /opt/planka/docker-compose.yml

# --- Раздел добавления UFW ---
sudo apt-get install -y ufw

sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 22
sudo ufw allow 2222

sudo ufw enable

echo "UFW установлен, активирован и порты 22, 80, 443 открыты."
# --- Конец раздела UFW ---

echo "Скрипт выполнен."
echo "Docker установлен, образ Memos загружен, docker-compose.yml для Planka скачан в /opt/planka."
