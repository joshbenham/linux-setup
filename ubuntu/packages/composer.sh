#!/bin/bash

headline " -> Installing Composer Packages"


packagelist=(

# TOOLS
# ------------------------

laravel/installer
laravel/envoy=~1.0
fabpot/php-cs-fixer
squizlabs/php_codesniffer=*

)

composer global require  ${packagelist[@]}
