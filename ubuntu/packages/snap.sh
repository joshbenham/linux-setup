#!/bin/bash

headline " -> Installing Snap Packages"

packages=(

spotify
insomnia
wavebox
discord

)

sudo snap install ${packages[@]}

sudo snap install sublime-text --classic
sudo snap install vscode --classic
sudo snap install slack --classic
sudo snap install skype --classic

sudo snap refresh
