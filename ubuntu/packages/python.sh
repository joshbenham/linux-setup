#!/bin/bash

headline " -> Installing Python Packages"

packages=(

# TOOLS
# ------------------------

glances
httpstat
clint
codemod

)

sudo pip install ${packages[@]}
