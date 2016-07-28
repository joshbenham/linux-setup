#!/bin/bash

headline " -> Installing Composer Packages"


packagelist=(

# TOOLS
# ------------------------

laravel/installer
laravel/envoy=~1.0
fabpot/php-cs-fixer

)

composer global require  ${packagelist[@]}
