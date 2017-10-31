#!/bin/bash

ask_question " <- Do you want to install/update Node? [y|n] "

if said_yes ; then
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    sudo apt-get install -y nodejs
    source ~/.bashrc
fi


headline " -> Installing Node Packages"

packagelist=(

# TOOLS
# ------------------------

npm
npm-check
yarn
gulp
bower
electron-packager
lighthouse
speed-test
vtop
gtop


# SYNTAX
# ------------------------

jshint
stylelint
postcss

)

sudo npm -g install ${packagelist[@]}
