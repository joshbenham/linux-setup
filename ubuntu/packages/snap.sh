#!/bin/bash

headline " -> Installing Snap Packages"

packagelist=(

spotify

)

sudo snap install ${packagelist[@]}
