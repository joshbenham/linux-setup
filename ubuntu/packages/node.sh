#!/bin/bash

ask_question " <- Do you want to install/update Node? [y|n] "

if said_yes ; then
    curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
    sudo apt-get install -y nodejs
    source ~/.bashrc
fi


headline " -> Installing Node Packages"

packages=(

# TOOLS
# ------------------------

npm
npm-check
yarn
gulp
bower


# SYNTAX
# ------------------------

jshint
stylelint
postcss
eslint
eslint-plugin-vue

)

sudo npm -g install ${packages[@]}
