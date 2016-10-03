#!/bin/bash

headline " -> Installing Python Packages"

packagelist=(

# TOOLS
# ------------------------

glances

)

sudo pip install ${packagelist[@]}
