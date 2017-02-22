#!/bin/bash

headline " -> Installing Python Packages"

packagelist=(

# TOOLS
# ------------------------

glances
httpstat
clint

)

sudo pip install ${packagelist[@]}
