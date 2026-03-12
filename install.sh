curl -o- https://php.new/install/linux/8.4 | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

source ~/.bashrc

composer global require laravel/installer
nvm install --lts
nvm use --lts

