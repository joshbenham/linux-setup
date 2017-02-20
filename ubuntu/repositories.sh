#!/bin/bash

declare -A repositorylist

repositorylist=(

# Backports
# ------------------------

[kubuntu-ppa/backports]=ppa:kubuntu-ppa/backports


# Tools
# ------------------------

[ondrej/php]=ppa:ondrej/php
[git-core/ppa]=ppa:git-core/ppa
[ubuntu-lxc/lxd-stable]=ppa:ubuntu-lxc/lxd-stable
[dawidd0811/neofetch]=ppa:dawidd0811/neofetch


# Apps
# ------------------------

[libreoffice/ppa]=ppa:libreoffice/ppa
[ubuntu-mozilla-daily/ppa]=ppa:ubuntu-mozilla-daily/ppa
[webupd8team/sublime-text-3]=ppa:webupd8team/sublime-text-3
[webupd8team/atom]=ppa:webupd8team/atom
[nijel/phpmyadmin]=ppa:nijel/phpmyadmin
[qbittorrent]=ppa:qbittorrent-team/qbittorrent-stable
)

for key in "${!repositorylist[@]}" ; do
    if ! grep -q "$key" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
        ask_question " <- Do you want to install the ${repositorylist[$key]} repository? [y|n] "
        if said_yes ; then
            sudo add-apt-repository ${repositorylist[$key]}
        fi
    fi
done
