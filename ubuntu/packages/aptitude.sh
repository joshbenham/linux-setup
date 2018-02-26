#!/bin/bash

ask_question " <- Do you want to update the Repositories? [y|n] "

if said_yes ; then
    sudo apt update
fi


headline " -> Installing Aptitude Packages"

packagelist=(

# TOOLS
# ------------------------

zsh
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
fonts-powerline
scrot
neofetch
spotify-client
virtualbox
gnome-keyring
trimage
thunderbird
sshpass
powertop
tig
klinkstatus
silversearcher-ag
gettext
goaccess
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
sublime-text


# GRAPHICAL
# ------------------------

gimp
kcolorchooser
karbon
kolourpaint4
kazam


# Go
# ------------------------

golang


# LAMP
# ------------------------

apache2

# mysql-server
# mysql-client

php-gettext
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

php5.6-cgi
php5.6-curl
php5.6-gd
php5.6-intl
php5.6-json
php5.6-mbstring
php5.6-mcrypt
php5.6-mysql
php5.6-soap
php5.6-sqlite3
php5.6-xml
php5.6-xmlrpc
php5.6-zip
php5.6
libapache2-mod-php5.6

phpmyadmin
mysql-workbench

)

sudo apt install ${packagelist[@]}


headline " -> Mapping Silversearch to ACK"

sudo ln -sf /usr/bin/ag /usr/bin/ack
