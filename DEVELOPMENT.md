# curso-laravel
Curso introductorio de Larabel

### 1. Setting dev environment

#### 1.1. Install PHP and Laravel

```bash
#!/bin/bash
curl -o- https://php.new/install/linux/8.4 | bash
source ~/.bashrc
composer global require laravel/installer
```

#### 1.2. Install NVM

```bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Close the terminal or update some vars
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install --lts
nvm use --lts
```

#### 1.1 Check instalation

```bash
php -v
laravel -V
npm -v
```

### 2. Install IDE with extensions

```bash
sudo snap install code --classic
code --install-extension xdebug.php-pack
code --install-extension laravel.vscode-laravel
```


### 3. Creating scaffold project

```bash
laravel new --database sqlite --npm --pest -q chirper
cd chirper/
composer run dev
```
