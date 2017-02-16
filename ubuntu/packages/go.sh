#!/bin/bash

headline " -> Installing Go Packages"

packagelist=(

# TOOLS
# ------------------------

github.com/mathieuancelin/duplicates
)
go get ${packagelist[@]}
