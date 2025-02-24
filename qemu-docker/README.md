## Quick Start Guide for QEMU with Docker Compose

This guide will help you quickly set up and run a QEMU virtual machine using Docker Compose. This setup uses environment variables for easy customization of disk paths and sizes.

**English Guide**

1.  **Create a Directory:** Create a new directory on your system where you will place the `docker-compose.yml` and `.env` files. For example, `mkdir qemu-setup` and then `cd qemu-setup`.

2.  **Place Files:** Put the `docker-compose.yml` and `.env` files into this directory. Ensure both files are in the same directory. You can create these files manually or copy the provided content into new files named `docker-compose.yml` and `.env`.

3.  **Edit `.env` File:** Open the `.env` file and customize the following environment variables:
    *   `MAIN_DISK_PATH`:  Path to the directory where you want to store the main disk image. For example, `./disks/mint-docker`. This directory will be mounted to `/mnt/c/Users/pyramidheadshark/Disks/mint-docker` inside the container.
    *   `DISK2_PATH`: Path to the directory for the second disk image. For example, `./disks/disk2`. This directory will be mounted to `/storage2` inside the container. Set to `./disks/disk2` or similar, or leave empty/unset or set to `./dummy` if you don't need a second disk.
    *   `DISK3_PATH`: Path to the directory for the third disk image. For example, `./disks/disk3`. This directory will be mounted to `/storage3` inside the container. Set to `./disks/disk3` or similar, or leave empty/unset or set to `./dummy` if you don't need a third disk.
    *   `BOOT_ISO_PATH`: Path to the ISO file you want to use for booting the VM. For example, `./linuxmint-22-cinnamon-64bit.iso`.  Make sure this ISO file is present at the specified path, or download it separately and place it there.
    *   `DISK_SIZE`: Size of the main disk image. For example, `32G`.
    *   `DISK2_SIZE`: Size of the second disk image. For example, `2G`. Set to `0` to disable the second disk.
    *   `DISK3_SIZE`: Size of the third disk image. For example, `2G`. Set to `0` to disable the third disk.

    **Example `.env` file:**
    ```
    MAIN_DISK_PATH=./disks/mint-docker
    DISK2_PATH=./disks/disk2
    DISK3_PATH=./disks/disk3
    BOOT_ISO_PATH=./linuxmint-22-cinnamon-64bit.iso
    DISK_SIZE=32G
    DISK2_SIZE=2G
    DISK3_SIZE=2G
    ```

4.  **Run Docker Compose:**  In the terminal, navigate to the directory where you placed the `docker-compose.yml` and `.env` files, and run the command `docker-compose up -d` (or `docker compose up -d` depending on your Docker version). The `-d` flag runs the containers in detached mode (in the background).

5.  **Access QEMU VM:** Once the containers are running, you can access the QEMU virtual machine through a VNC client by connecting to `localhost:8006`.

---

**Русская инструкция**

## Краткое руководство по запуску QEMU с помощью Docker Compose

Это руководство поможет вам быстро настроить и запустить виртуальную машину QEMU, используя Docker Compose. В этой конфигурации используются переменные окружения для легкой настройки путей к дискам и их размеров.

1.  **Создайте директорию:** Создайте новую директорию на вашей системе, куда вы поместите файлы `docker-compose.yml` и `.env`. Например, `mkdir qemu-setup`, а затем `cd qemu-setup`.

2.  **Поместите файлы:** Поместите файлы `docker-compose.yml` и `.env` в эту директорию. Убедитесь, что оба файла находятся в одной директории. Вы можете создать эти файлы вручную или скопировать предоставленное содержимое в новые файлы с именами `docker-compose.yml` и `.env`.

3.  **Отредактируйте файл `.env`:** Откройте файл `.env` и настройте следующие переменные окружения:
    *   `MAIN_DISK_PATH`: Путь к директории, где вы хотите хранить образ основного диска. Например, `./disks/mint-docker`. Эта директория будет примонтирована к `/mnt/c/Users/pyramidheadshark/Disks/mint-docker` внутри контейнера.
    *   `DISK2_PATH`: Путь к директории для образа второго диска. Например, `./disks/disk2`. Эта директория будет примонтирована к `/storage2` внутри контейнера. Укажите `./disks/disk2` или аналогичный путь, или оставьте пустым/неустановленным или установите в `./dummy`, если второй диск не нужен.
    *   `DISK3_PATH`: Путь к директории для образа третьего диска. Например, `./disks/disk3`. Эта директория будет примонтирована к `/storage3` внутри контейнера. Укажите `./disks/disk3` или аналогичный путь, или оставьте пустым/неустановленным или установите в `./dummy`, если третий диск не нужен.
    *   `BOOT_ISO_PATH`: Путь к ISO-файлу, который вы хотите использовать для загрузки ВМ. Например, `./linuxmint-22-cinnamon-64bit.iso`. Убедитесь, что этот ISO-файл присутствует по указанному пути, или загрузите его отдельно и поместите туда.
    *   `DISK_SIZE`: Размер образа основного диска. Например, `32G`.
    *   `DISK2_SIZE`: Размер образа второго диска. Например, `2G`. Установите `0`, чтобы отключить второй диск.
    *   `DISK3_SIZE`: Размер образа третьего диска. Например, `2G`. Установите `0`, чтобы отключить третий диск.

    **Пример файла `.env`:**
    ```
    MAIN_DISK_PATH=./disks/mint-docker
    DISK2_PATH=./disks/disk2
    DISK3_PATH=./disks/disk3
    BOOT_ISO_PATH=./linuxmint-22-cinnamon-64bit.iso
    DISK_SIZE=32G
    DISK2_SIZE=2G
    DISK3_SIZE=2G
    ```

4.  **Запустите Docker Compose:** В терминале перейдите в директорию, где вы разместили файлы `docker-compose.yml` и `.env`, и выполните команду `docker-compose up -d` (или `docker compose up -d` в зависимости от вашей версии Docker). Флаг `-d` запускает контейнеры в фоновом режиме.

5.  **Доступ к QEMU VM:** После запуска контейнеров вы можете получить доступ к виртуальной машине QEMU через VNC-клиент, подключившись к `localhost:8006`.