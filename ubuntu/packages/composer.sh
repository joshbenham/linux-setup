#!/bin/bash

headline " -> Installing Composer Packages"


packagelist=(

# TOOLS
# ------------------------

laravel/installer
laravel/envoy=~1.0
friendsofphp/php-cs-fixer
phpmd/phpmd
squizlabs/php_codesniffer=*
phploc/phploc=*

)

sudo composer global require  ${packagelist[@]}
