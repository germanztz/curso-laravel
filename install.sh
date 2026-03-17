#!/bin/bash

# Función para la primera parte: Instalaciones de binarios
paso1() {
    echo "--- [PASO 1] Instalando PHP 8.4 y NVM ---"
    
    # 1. Instalar PHP 8.4 y Composer
    curl -sS https://php.new/install/linux/8.4 | bash
    
    # 2. Instalar NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

    echo "--------------------------------------------------------"
    echo "✅ PASO 1 COMPLETADO."
    echo "La configuración del sistema ha cambiado."
    echo "POR FAVOR: Cierra esta terminal, abre una nueva y ejecuta:"
    echo "bash $0 paso2"
    echo "--------------------------------------------------------"
}

# Función para la segunda parte: Configuración de herramientas
paso2() {
    echo "--- [PASO 2] Configurando Node y Laravel ---"

    # 1. Instalar Node LTS
    echo "Instalando Node.js..."
    nvm install --lts
    nvm use --lts

    # 2. Instalar Laravel Installer
    # Usamos la ruta directa para evitar fallos de PATH
    echo "Instalando Laravel Installer..."
    composer global require laravel/installer

    echo "--------------------------------------------------------"
    echo "✨ ¡TODO LISTO!"
    echo "PHP: $(php -v | head -n 1)"
    echo "Node: $(node -v)"
    echo "Laravel: $(laravel --version)"
    echo "--------------------------------------------------------"
}

# Lógica de parámetros
case "$1" in
    paso2)
        paso2
        ;;
    *)
        paso1
        ;;
esac