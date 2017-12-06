#!/bin/bash

headline " -> Installing Python Packages"

packagelist=(

# TOOLS
# ------------------------

glances
httpstat
clint
codemod

)

sudo pip install ${packagelist[@]}
