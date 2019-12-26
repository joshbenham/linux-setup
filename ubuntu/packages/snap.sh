#!/bin/bash

headline " -> Installing Snap Packages"

packages=(

spotify
insomnia
discord

)

sudo snap install ${packages[@]}

sudo snap install sublime-text --classic
sudo snap install code --classic
sudo snap install slack --classic
sudo snap install skype --classic

sudo snap refresh
