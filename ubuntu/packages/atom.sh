#!/bin/bash

headline " -> Installing Atom Packages"

packagelist=(

# GENERAL
# ------------------------

atom-ctags
docblockr
atom-beautify
minimap
color-picker
file-icons
highlight-line


# PHP
# ------------------------

php-cs-fixer
php-debug


# AUTOCOMPLETE
# ------------------------

autocomplete
autocomplete-ctags
autocomplete-modules
atom-autocomplete-php


# LINTERS
# ------------------------

linter
linter-php
linter-phpcs
linter-phpmd
linter-jshint
linter-csslint
linter-less
linter-scss-lint
linter-tidy
linter-htmlhint


# LANGUAGES
# ------------------------

language-blade

)

apm install ${packagelist[@]}
