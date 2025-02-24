## Quick Start Guide for Deploying Memos, Planka, and Wiki.js with Docker Compose

This guide will help you quickly deploy Memos, Planka, and Wiki.js using Docker Compose and Caddy for HTTPS.

**English Guide**

1.  **Create a Directory:** Create a new directory on your server where you will place the deployment files. For example, `mkdir workspace` and then `cd workspace`.

2.  **Place Files:** Put the `deploy.sh` and `docker-compose.yml` files into this directory. Ensure both files are in the same directory.

3.  **Edit `docker-compose.yml`:** Open `docker-compose.yml` and replace the placeholder values:
    *   `<YOUR_DOMAIN>`:  Your domain name (e.g., `pyramidhead.tech`).
    *   `<YOUR_PLANKA_SECRET_KEY>`: Generate a secret key using `openssl rand -hex 64`.
    *   `<YOUR_ADMIN_EMAIL>`, `<YOUR_ADMIN_PASSWORD>`, `<YOUR_ADMIN_NAME>`, `<YOUR_ADMIN_USERNAME>`:  Your desired Planka admin credentials.
    *   `<YOUR_WIKIJS_DB_PASSWORD>`:  A password for the Wiki.js database.
    *   `<YOUR_EMAIL>`: Your email address for Let's Encrypt notifications.

4.  **Make `deploy.sh` Executable:** Run the command `chmod +x deploy.sh` in the directory to make the script executable.

5.  **Run `deploy.sh`:** Execute the deployment script by running `./deploy.sh`. This script will install Docker, configure firewall, and start the services using Docker Compose.

6.  **Access Services:** After the script completes, access your services in a browser:
    *   Memos: `https://memos.<YOUR_DOMAIN>`
    *   Planka: `https://planka.<YOUR_DOMAIN>`
    *   Wiki.js: `https://wiki.<YOUR_DOMAIN>`

---

**Русская инструкция**

## Краткое руководство по развертыванию Memos, Planka и Wiki.js с помощью Docker Compose

Это руководство поможет вам быстро развернуть Memos, Planka и Wiki.js, используя Docker Compose и Caddy для HTTPS.

1.  **Создайте директорию:** Создайте новую директорию на вашем сервере, куда вы поместите файлы для развертывания. Например, `mkdir workspace`, а затем `cd workspace`.

2.  **Поместите файлы:** Поместите файлы `deploy.sh` и `docker-compose.yml` в эту директорию. Убедитесь, что оба файла находятся в одной директории.

3.  **Отредактируйте `docker-compose.yml`:** Откройте `docker-compose.yml` и замените значения-заполнители:
    *   `<YOUR_DOMAIN>`:  Ваше доменное имя (например, `pyramidhead.tech`).
    *   `<YOUR_PLANKA_SECRET_KEY>`: Сгенерируйте секретный ключ с помощью `openssl rand -hex 64`.
    *   `<YOUR_ADMIN_EMAIL>`, `<YOUR_ADMIN_PASSWORD>`, `<YOUR_ADMIN_NAME>`, `<YOUR_ADMIN_USERNAME>`:  Желаемые учетные данные администратора Planka.
    *   `<YOUR_WIKIJS_DB_PASSWORD>`:  Пароль для базы данных Wiki.js.
    *   `<YOUR_EMAIL>`: Ваш адрес электронной почты для уведомлений от Let's Encrypt.

4.  **Сделайте `deploy.sh` исполняемым:** Выполните команду `chmod +x deploy.sh` в директории, чтобы сделать скрипт исполняемым.

5.  **Запустите `deploy.sh`:** Запустите скрипт развертывания, выполнив `./deploy.sh`. Этот скрипт установит Docker, настроит брандмауэр и запустит сервисы с помощью Docker Compose.

6.  **Получите доступ к сервисам:** После завершения работы скрипта получите доступ к вашим сервисам в браузере:
    *   Memos: `https://memos.<YOUR_DOMAIN>`
    *   Planka: `https://planka.<YOUR_DOMAIN>`
    *   Wiki.js: `https://wiki.<YOUR_DOMAIN>`

---

**Key steps summarized:**

*   Create a directory.
*   Place `deploy.sh` and `docker-compose.yml` inside.
*   Edit placeholders in `docker-compose.yml`.
*   Make `deploy.sh` executable (`chmod +x deploy.sh`).
*   Run `./deploy.sh`.
*   Access services via browser.