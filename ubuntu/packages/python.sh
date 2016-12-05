#!/bin/bash

headline " -> Installing Python Packages"

packagelist=(

# TOOLS
# ------------------------

glances
httpstat

)

sudo pip install ${packagelist[@]}
