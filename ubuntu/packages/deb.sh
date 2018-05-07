#!/bin/bash

declare -A packages

packages=(

[/usr/bin/google-chrome]=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
[/usr/bin/teamviewer]=http://download.teamviewer.com/download/teamviewer_i386.deb
[/usr/bin/screamingfrogseospider]=https://www.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_6.0_all.deb

)

for key in "${!packages[@]}" ; do

    if [[ ! -f "$key" ]] ; then
        FILE=${packages[$key]##*/}
        headline " -> Installing $FILE"
        cd ~ && wget "${packages[$key]}" -O "$FILE"
        sudo dpkg -i "$FILE"
        sudo apt-get -f install
        rm "$FILE"
    fi

done
