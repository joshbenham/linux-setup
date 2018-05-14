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
qbittorrent
filezilla


# LIBRARIES
# ------------------------

libgcrypt20-dev
libnotify-bin


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
sublime-text


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

php7.2-cgi
php7.2-curl
php7.2-gd
php7.2-intl
php7.2-json
php7.2-mbstring
php7.2-mysql
php7.2-soap
php7.2-sqlite3
php7.2-xml
php7.2-xmlrpc
php7.2-zip
php7.2
libapache2-mod-php7.2

phpmyadmin
mysql-workbench
mysqltuner

)

sudo apt install ${packages[@]}


headline " -> Mapping Silversearch to ACK"

sudo ln -sf /usr/bin/ag /usr/bin/ack


headline " -> Mapping PHP7.0 to PHP"

sudo ln -sf /usr/bin/php7.0 /etc/alternatives/php
