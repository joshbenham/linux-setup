#!/bin/bash

headline " -> Installing Snaps Packages"

packagelist=(

# TOOLS
# ------------------------

hiri

)

sudo snap install ${packagelist[@]}
