#!/bin/bash

declare -A debs

debs=(

[/usr/bin/google-chrome]=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
[/usr/bin/teamviewer]=https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
[/usr/bin/screamingfrogseospider]=https://www.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_6.0_all.deb

)

for key in "${!debs[@]}" ; do

    if [[ ! -f "$key" ]] ; then
        FILE=${debs[$key]##*/}
        headline " -> Installing $FILE"
        cd ~ && wget "${debs[$key]}" -O "$FILE"
        sudo dpkg -i "$FILE"
        sudo apt-get -f install
        rm "$FILE"
    fi

done
