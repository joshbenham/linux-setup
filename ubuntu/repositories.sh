#!/bin/bash

declare -A repositories

repositories=(

# Backports
# ------------------------

[kubuntu-ppa/backports]=ppa:kubuntu-ppa/backports


# Tools
# ------------------------

[ondrej/php]=ppa:ondrej/php
[ondrej/apache2]=ppa:ondrej/apache2
[git-core/ppa]=ppa:git-core/ppa
[phpmyadmin/ppa]=ppa:phpmyadmin/ppa


# Apps
# ------------------------

[libreoffice/ppa]=ppa:libreoffice/ppa
[ubuntu-mozilla-daily/ppa]=ppa:ubuntu-mozilla-daily/ppa

)

for key in "${!repositories[@]}" ; do
    if ! grep -q "$key" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        ask_question " <- Do you want to install the ${repositories[$key]} repository? [y|n] "
        if said_yes ; then
            sudo add-apt-repository ${repositories[$key]}
        fi
    fi
done
