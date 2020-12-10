#!/bin/bash

headline " -> Installing Python Packages"

packages=(

# TOOLS
# ------------------------

glances

)

sudo pip install ${packages[@]}
