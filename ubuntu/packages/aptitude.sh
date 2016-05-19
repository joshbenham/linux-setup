#!/bin/bash

read -p " <- Do you want to update the Repositories? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo sudo apt-get update
fi

echo

echo " -> Installing Aptitude Packages"
echo
packagelist=(

# TOOLS
# ------------------------

stow
curl
ctags
htop
qtpass
bash-builtins
bash-completion


# PACKAGE MANAGERS
# ------------------------

composer


# BROWSERS
# ------------------------

firefox-trunk


# EDITORS
# ------------------------

vim
vim-gtk
atom
sublime-text-installer


# LAMP
# ------------------------

apache2

mysql-server 
mysql-client

php-gettext

php7.0-mysql
php7.0-curl
php7.0-json
php7.0-mbstring 
php7.0-mcrypt
php7.0-sqlite3
php7.0-cgi
php7.0
libapache2-mod-php7.0

php5.6-mysql
php5.6-curl
php5.6-json
php5.6-mbstring 
php5.6-mcrypt 
php5.6-sqlite3
php5.6-cgi
php5.6
libapache2-mod-php5.6

phpmyadmin

)
sudo apt-get install ${packagelist[@]}
echo


echo " -> Mapping PHP5.6 to PHP"
echo
sudo ln -sf /usr/bin/php5.6 /etc/alternatives/php
echo


if [[ -f ~/dropbox-dist/dropboxd ]] ; then
    echo " -> Installing Dropbox"
    echo
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
    echo
fi