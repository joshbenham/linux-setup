#!/bin/bash

headline " -> Installing Node Aptitude Packages"

packagelist=(

# TOOLS
# ------------------------

nodejs
npm
)
sudo apt-get install ${packagelist[@]}


headline " -> Mapping nodejs to node"

sudo ln -sf /usr/bin/nodejs /usr/bin/node


headline " -> Installing Node Packages"

packagelist=(

# TOOLS
# ------------------------

yarn
npm-check
gulp
bower
electron-packager
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
