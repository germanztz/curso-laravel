#!/bin/bash

#### 1.1. Install PHP and Laravel

curl -o- https://php.new/install/linux/8.4 | bash
source ~/.bashrc
composer global require laravel/installer

#### 1.2. Install NVM

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Close the terminal or update some vars
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install --lts
nvm use --lts

#### 1.1 Check instalation

php -v
laravel -V
npm -v
