#!/bin/bash

headline " -> Installing Snap Packages"

packages=(

chromium
insomnia

)

sudo snap install ${packages[@]}

sudo snap install sublime-text --classic
sudo snap install code --classic

sudo snap refresh
