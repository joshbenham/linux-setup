#!/bin/bash

headline " -> Setting up Sublime Text 3 Packages"

DIRECTORY="$HOME/.config/sublime-text-3/Installed Packages"
FILENAME="$DIRECTORY/Package Control.sublime-package"
if [[ ! -f "$FILENAME" ]] ; then
    cd "$DIRECTORY"
    wget "http://sublime.wbond.net/Package%20Control.sublime-package" -O "$FILENAME"
fi


headline " -> Setting up Sublime Text 3 Themes"

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


FILENAME="$HOME/.nerd_fonts/install.sh"
if [[ ! -f "$FILENAME" ]] ; then
    headline "-> Installing Nerd-Fonts"
    cd ~
    git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git ~/.nerd_fonts
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
    bash-it enable alias general apt curl git npm vim
    echo
fi


FILENAME="$HOME/.local/share/omf/init.fish"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing oh-my-fish"
    cd ~
    curl -L http://get.oh-my.fish | fish
    echo
fi


FILENAME="$HOME/.config/fish/functions/fisher.fish"
if [[ ! -e "$FILENAME" ]]; then
    headline " -> Installing Fisher"
    curl -Lo "$FILENAME" --create-dirs https://git.io/fisher
fi


headline " -> Installing Fisher Packages"
fish -c "fisher install fzf edc/bass hauleth/agnoster"


FILENAME="$HOME/.fzf/install"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing FZF"
    cd ~
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    source ~/.bashrc
    echo
fi
