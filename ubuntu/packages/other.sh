#!/bin/bash

headline " -> Mapping PHP5.6 to PHP"

sudo ln -sf /usr/bin/php5.6 /etc/alternatives/php


FILENAME="/usr/bin/subl"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Sublime Text (Stable)"
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text
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
ln -sf "$HOME/Code/Personal/linux-setup/data/sublime-text-3/Default (Linux).sublime-keymap" "$DIRECTORY/Default (Linux).sublime-keymap"


headline " -> Setting up Konsole Themes"

DIRECTORY="$HOME/.local/share/konsole"
SRCDIRECTORY="$HOME/Code/Personal/linux-setup/data/konsole"
for FILENAME in $SRCDIRECTORY/*.colorscheme; do
    NEWFILENAME=$(basename "$FILENAME")
    cp -f "$HOME/Code/Personal/linux-setup/data/konsole/$NEWFILENAME" "$DIRECTORY/$NEWFILENAME"
done


FILENAME="/usr/bin/teamviewer"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing TeamViewer"
    cd ~ && wget "http://download.teamviewer.com/download/teamviewer_i386.deb" -O "teamviewer_i386.deb"
    sudo dpkg -i teamviewer_i386.deb
    sudo apt-get -f install
    rm teamviewer_i386.deb
    echo
fi


FILENAME="/opt/wavebox/Wavebox"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Wavebox"
    sudo wget -qO - https://wavebox.io/dl/client/repo/archive.key | sudo apt-key add -
    echo "deb https://wavebox.io/dl/client/repo/ x86_64/" | sudo tee --append /etc/apt/sources.list.d/repo.list
    sudo apt update
    sudo apt install wavebox
    echo
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


FILENAME="$HOME/.nerd_fonts/install.sh"
if [[ ! -f "$FILENAME" ]] ; then
    headline "-> Installing Nerd-Fonts"
    cd ~
    git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd_fonts
    ~/.nerd_fonts/install.sh
    echo
fi


FILENAME="$HOME/.local/share/omf/init.fish"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing oh-my-fish"
    cd ~
    curl -L http://get.oh-my.fish | fish
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
