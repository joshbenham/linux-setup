#!/bin/bash

headline " -> Mapping PHP5.6 to PHP"

sudo ln -sf /usr/bin/php5.6 /etc/alternatives/php


FILENAME="$HOME/.dropbox-dist/dropboxd"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Dropbox"
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
    echo
fi


headline " -> Setting up Sublime Text 3 packages"

DIRECTORY="$HOME/.config/sublime-text-3/Installed Packages"
FILENAME="$DIRECTORY/Package Control.sublime-package"
if [[ ! -f "$FILENAME" ]] ; then
    cd "$DIRECTORY"
    wget "http://sublime.wbond.net/Package%20Control.sublime-package" -O "$FILENAME"
fi

DIRECTORY="$HOME/.config/sublime-text-3/Packages/User/"
ln -sf "$HOME/Code/Personal/linux-setup/data/sublime-text-3/Package Control.sublime-settings" "$DIRECTORY/Package Control.sublime-settings"
ln -sf "$HOME/Code/Personal/linux-setup/data/sublime-text-3/Preferences.sublime-settings" "$DIRECTORY/Preferences.sublime-settings"


headline " -> Setting up Konsole Themes"

DIRECTORY="$HOME/.local/share/konsole"
SRCDIRECTORY="$HOME/Code/Personal/linux-setup/data/konsole"
for FILENAME in $SRCDIRECTORY/*.colorscheme; do
    NEWFILENAME=$(basename "$FILENAME")
    cp -f "$HOME/Code/Personal/linux-setup/data/konsole/$NEWFILENAME" "$DIRECTORY/$NEWFILENAME"
done


FILENAME="/usr/bin/skype"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Skype"
    cd ~ && wget "http://www.skype.com/go/getskype-linux-beta-ubuntu-64" -O "skype.deb"
    sudo dpkg -i skype.deb
    sudo apt-get -f install
    rm skype.deb
    echo
fi


FILENAME="/usr/bin/teamviewer"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing TeamViewer"
    cd ~ && wget "http://download.teamviewer.com/download/teamviewer_i386.deb" -O "teamviewer_i386.deb"
    sudo dpkg -i teamviewer_i386.deb
    sudo apt-get -f install
    rm teamviewer_i386.deb
    echo
fi


FILENAME="$HOME/.bash_it/install.sh"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Bash-It"
    cd ~
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
    source ~/.bashrc
    bash-it enable completions bash-it git gulp npm ssh system
    bash-it enable plugins alias-completion base fzf git
    bash-it enable alias general apt curl git laravel npm vim
    echo
fi


FILENAME="$HOME/.fzf/install"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing FZF"
    cd ~
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    source ~/.bashrc
    echo
fi


FILENAME="$HOME/Applications/Skype-Electron/build.sh"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Skype Electron"
    cd ~/Applications
    git clone --depth=1 https://github.com/GyozaGuy/Skype-Electron.git
    cd Skype-Electron
    ./build.sh
fi

FILENAME="/usr/bin/screamingfrogseospider"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing ScreamingFrog"
    cd ~ && wget "https://www.screamingfrog.co.uk/products/seo-spider/screamingfrogseospider_6.0_all.deb" -O "screamfrogseospider_6.0_all.deb"
    sudo dpkg -i screamfrogseospider_6.0_all.deb
    sudo apt-get -f install
    rm screamfrogseospider_6.0_all.deb
    echo
fi

