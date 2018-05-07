#!/bin/bash

headline " -> Installing Snap Packages"

packages=(

spotify

)

sudo snap install ${packages[@]}
