#!/bin/bash

ask_question " <- Do you want to install/update Composer? [y|n] "

if said_yes ; then
    curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
    sudo chown josh:josh ~/.composer
fi


headline " -> Installing Composer Packages"

packages=(

# LARAVEL
# ------------------------

laravel/installer
laravel/envoy=~1.0


# TESTING
# ------------------------

friendsofphp/php-cs-fixer
phpunit/phpunit
phpmd/phpmd
squizlabs/php_codesniffer=*
phploc/phploc=*

)

composer global require ${packages[@]}
