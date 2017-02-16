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


FILENAME="/usr/bin/teamviewer"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing TeamViewer"
    cd ~ && wget "http://download.teamviewer.com/download/teamviewer_i386.deb" -O "teamviewer_i386.deb"
    sudo dpkg -i teamviewer_i386.deb
    sudo apt-get -f install
    rm teamviewer_i386.deb
    echo
fi


FILENAME="/usr/bin/steam"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Steam"
    cd ~ && wget "https://steamcdn-a.akamaihd.net/client/installer/steam.deb" -O "steam.deb"
    sudo dpkg -i steam.deb
    sudo apt-get -f install
    rm steam.deb
    echo
fi


FILENAME="/opt/wmail-desktop/WMail"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing WMail"
    cd ~ && wget "https://github.com/Thomas101/wmail/releases/download/v2.0.0/WMail_2_0_0_linux_x86_64.deb" -O "WMail_2_0_0_linux_x86_64.deb"
    sudo dpkg -i WMail_2_0_0_linux_x86_64.deb
    sudo apt-get -f install
    rm WMail_2_0_0_linux_x86_64.deb
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


FILENAME="$HOME/.zprezto/init.zsh"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing zprezto"
    cd ~
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
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
