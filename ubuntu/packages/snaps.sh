#!/bin/bash

headline " -> Installing Snaps Packages"

packagelist=(

# TOOLS
# ------------------------

mailspring

)

sudo snap install ${packagelist[@]}
