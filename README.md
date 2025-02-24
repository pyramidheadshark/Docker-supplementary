## Universal Development Environment Repository

This repository provides a collection of Docker configurations for creating various portable and customizable development environments. Users can choose and set up one or more environments tailored to their specific development needs, simplifying the setup process and resolving common environment configuration issues.

**English Guide**

1.  **Clone or Download the Repository:** Obtain the repository files by cloning it using Git or downloading as a ZIP archive and extracting it to your desired location.

2.  **Navigate to the Repository Directory:** Open your terminal and navigate to the root directory of the cloned/extracted repository. This directory contains configurations for different development environments.

3.  **Choose Your Environment(s):** Explore the repository to find the configuration for the development environment(s) you need. Each environment (e.g., QEMU) will have its own directory and necessary files, including a `docker-compose.yml` and `.env` (if applicable).

4.  **Customize Environment Variables (if applicable):** If the chosen environment includes a `.env` file, navigate into that environment's directory and open the `.env` file with a text editor.  Modify the variables as needed. For the QEMU environment, you can customize:
    *   `MAIN_DISK_PATH`:  Path to the main virtual disk directory.
    *   `DISK2_PATH`:  Path to the second virtual disk directory.
    *   `DISK3_PATH`:  Path to the third virtual disk directory.
    *   `BOOT_ISO_PATH`:  Path to the boot ISO file.
    *   `DISK_SIZE`:  Size of the main virtual disk.
    *   `DISK2_SIZE`:  Size of the second virtual disk.
    *   `DISK3_SIZE`:  Size of the third virtual disk.

    **Example `.env` file (for QEMU environment):**
    ```
    MAIN_DISK_PATH=./disks/mint-docker
    DISK2_PATH=./disks/disk2
    DISK3_PATH=./disks/disk3
    BOOT_ISO_PATH=./linuxmint-22-cinnamon-64bit.iso
    DISK_SIZE=32G
    DISK2_SIZE=2G
    DISK3_SIZE=2G
    ```

5.  **Run Docker Compose for Selected Environment(s):**  For each environment you wish to set up, navigate into its directory in your terminal. Then, execute the command `docker-compose up -d` (or `docker compose up -d`). This will start the Docker containers for that specific environment in detached mode.

6.  **Access Your Development Environment(s):**  Refer to the README or documentation specific to each environment for instructions on how to access and use it. For the QEMU environment, access the VM via a VNC client at `localhost:8006`.

---

**Русская инструкция**

## Репозиторий универсальных сред разработки

Этот репозиторий предоставляет коллекцию конфигураций Docker для создания различных портативных и настраиваемых сред разработки. Пользователи могут выбирать и настраивать одну или несколько сред, адаптированных к их конкретным потребностям, упрощая процесс установки и решая распространенные проблемы конфигурации окружения.

1.  **Клонируйте или скачайте репозиторий:** Получите файлы репозитория, клонировав его с помощью Git или скачав как ZIP-архив и распаковав в желаемое место.

2.  **Перейдите в директорию репозитория:** Откройте ваш терминал и перейдите в корневую директорию клонированного/распакованного репозитория. Эта директория содержит конфигурации для различных сред разработки.

3.  **Выберите нужную среду (среды):** Исследуйте репозиторий, чтобы найти конфигурацию для нужной вам среды (сред). Каждая среда (например, QEMU) будет иметь свою собственную директорию и необходимые файлы, включая `docker-compose.yml` и `.env` (если применимо).

4.  **Настройте переменные окружения (если применимо):** Если выбранная среда включает файл `.env`, перейдите в директорию этой среды и откройте файл `.env` с помощью текстового редактора. Измените переменные по мере необходимости. Для среды QEMU вы можете настроить:
    *   `MAIN_DISK_PATH`: Путь к директории основного виртуального диска.
    *   `DISK2_PATH`: Путь к директории второго виртуального диска.
    *   `DISK3_PATH`: Путь к директории третьего виртуального диска.
    *   `BOOT_ISO_PATH`: Путь к ISO-файлу загрузки.
    *   `DISK_SIZE`: Размер основного виртуального диска.
    *   `DISK2_SIZE`: Размер второго виртуального диска.
    *   `DISK3_SIZE`: Размер третьего виртуального диска.

    **Пример файла `.env` (для среды QEMU):**
    ```
    MAIN_DISK_PATH=./disks/mint-docker
    DISK2_PATH=./disks/disk2
    DISK3_PATH=./disks/disk3
    BOOT_ISO_PATH=./linuxmint-22-cinnamon-64bit.iso
    DISK_SIZE=32G
    DISK2_SIZE=2G
    DISK3_SIZE=2G
    ```

5.  **Запустите Docker Compose для выбранной среды (сред):** Для каждой среды, которую вы хотите настроить, перейдите в ее директорию в вашем терминале. Затем выполните команду `docker-compose up -d` (или `docker compose up -d`). Это запустит Docker-контейнеры для этой конкретной среды в фоновом режиме.

6.  **Получите доступ к вашей среде (средам) разработки:** Обратитесь к файлу README или документации, специфичной для каждой среды, чтобы узнать, как получить доступ и использовать ее. Для среды QEMU получите доступ к ВМ через VNC-клиент, подключившись к `localhost:8006`.