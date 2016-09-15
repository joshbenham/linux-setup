#!/bin/bash

ask_question " <- Do you want to install the Kubuntu Backports repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:kubuntu-ppa/backports
fi


ask_question " <- Do you want to install the PHP repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:ondrej/php
fi


ask_question " <- Do you want to install the Go repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:ubuntu-lxc/lxd-stable
fi


ask_question " <- Do you want to install the GIT repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:git-core/ppa
fi


ask_question " <- Do you want to install the Firefox Nightly repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
fi


ask_question " <- Do you want to install the LibreOffice repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:libreoffice/ppa
fi


ask_question " <- Do you want to install the Atom Editor repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:webupd8team/atom
fi


ask_question " <- Do you want to install the Sublime Text 3 repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
fi


ask_question " <- Do you want to install the Spotify repository? [y|n] "
if said_yes ; then
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
fi


ask_question " <- Do you want to install the Neofetch repository? [y|n] "
if said_yes ; then
    sudo add-apt-repository ppa:dawidd0811/neofetch
fi
