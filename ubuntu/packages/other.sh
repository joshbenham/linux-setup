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


FILENAME="/usr/bin/steam"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Steam"
    cd ~ && wget "https://steamcdn-a.akamaihd.net/client/installer/steam.deb" -O "steam.deb"
    sudo dpkg -i steam.deb
    sudo apt-get -f install
    rm steam.deb
    echo
fi


FILENAME="/opt/wavebox/Wavebox"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Wavebox"
    cd ~ && wget "https://github.com/wavebox/waveboxapp/releases/download/v3.1.2/Wavebox_3_1_2_linux_x86_64.deb" -O "Wavebox_3_1_2_linux_x86_64.deb"
    sudo dpkg -i Wavebox_3_1_2_linux_x86_64.deb
    sudo apt-get -f install
    rm Wavebox_3_1_2_linux_x86_64.deb
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


FILENAME="$HOME/.oh-my-zsh/oh-my-zsh.sh"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing oh-my-zsh"
    cd ~
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
    git clone git://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    git clone git://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
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
