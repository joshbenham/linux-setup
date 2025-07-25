#!/bin/bash

ask_question " <- Do you want to update the Repositories? [y|n] "

if said_yes ; then
    sudo apt update
fi


headline " -> Installing Aptitude Packages"

packages=(

# TOOLS
# ------------------------

stow
curl
universal-ctags
htop
httpie
unrar
bash-builtins
bash-completion
scrot
trimage
silversearcher-ag
gettext
filezilla
neovim


# DEPENDENCIES
# ------------------------

libgcrypt20-dev
libnotify-bin
libnss3-tools
jq
xsel


# BROWSERS
# ------------------------

firefox
firefox-trunk


# EDITORS
# ------------------------

vim


# LAMP
# ------------------------

apache2

mysql-client
mysql-server

php-imagick
php-mbstring

php7.0-bcmath
php7.0-cgi
php7.0-curl
php7.0-gd
php7.0-intl
php7.0-json
php7.0-mbstring
php7.0-mcrypt
php7.0-mysql
php7.0-soap
php7.0-sqlite3
php7.0-xml
php7.0-xmlrpc
php7.0-zip
php7.0
libapache2-mod-php7.0

php8.4-cgi
php8.4-curl
php8.4-gd
php8.4-intl
php8.4-mbstring
php8.4-mysql
php8.4-soap
php8.4-sqlite3
php8.4-xml
php8.4-xmlrpc
php8.4-zip
php8.4
libapache2-mod-php8.4

)

sudo apt install ${packages[@]}


headline " -> Mapping Silversearch to ACK"

sudo ln -sf /usr/bin/ag /usr/bin/ack


headline " -> Mapping PHP7.0 to PHP"

sudo ln -sf /usr/bin/php7.0 /etc/alternatives/php
