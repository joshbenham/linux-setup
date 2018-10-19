#!/bin/bash

ask_question " <- Do you want to update the Repositories? [y|n] "

if said_yes ; then
    sudo apt update
fi


headline " -> Installing Aptitude Packages"

packages=(

# TOOLS
# ------------------------

fish
stow
curl
ctags
htop
httpie
unrar
qtpass
bash-builtins
bash-completion
scrot
neofetch
virtualbox
trimage
thunderbird
klinkstatus
silversearcher-ag
gettext
vlc
filezilla


# DEPENDENCIES
# ------------------------

libgcrypt20-dev
libnotify-bin
libnss3-tools
jq
xsel


# PACKAGE MANAGERS
# ------------------------

python-pip


# BROWSERS
# ------------------------

firefox
firefox-trunk
chromium-browser


# EDITORS
# ------------------------

vim
vim-gtk
neovim


# GRAPHICAL
# ------------------------

gimp
kcolorchooser
kazam


# LAMP
# ------------------------

apache2

mysql-client
mysql-server

php-gettext
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

php7.3-bcmath
php7.3-cgi
php7.3-curl
php7.3-gd
php7.3-intl
php7.3-json
php7.3-mbstring
php7.3-mysql
php7.3-soap
php7.3-sqlite3
php7.3-xml
php7.3-xmlrpc
php7.3-zip
php7.3
libapache2-mod-php7.3

phpmyadmin
mysql-workbench
mysqltuner

)

sudo apt install ${packages[@]}


headline " -> Mapping Silversearch to ACK"

sudo ln -sf /usr/bin/ag /usr/bin/ack


headline " -> Mapping PHP7.0 to PHP"

sudo ln -sf /usr/bin/php7.0 /etc/alternatives/php
