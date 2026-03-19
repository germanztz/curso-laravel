#!/bin/bash

# Descarrega l’instal·lador i executa amb bash
curl -o- https://php.new/install/linux/8.4 | bash
# Actualitzem la consola (també pots re-obrir el terminal)
source ~/.bashrc
# Comprovem que s’executa
php -v
# Opcionalment podem instal·lar la extensió de vs-code 
code --install-extension xdebug.php-pack
# Inicia un servidor PHP al directori actual
#php -S localhost:8000
