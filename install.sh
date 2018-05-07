#!/bin/bash

source _utilities.sh

echo

if [[ -z $1 ]] || [[ $1 = "help" ]] ; then
    echo "Usage:"
    echo "  help                    Show the help"
    echo "  ubuntu                  Install Everything"
    echo "  ubuntu-directories      Set up the Directories"
    echo "  ubuntu-repositories     Install Ubuntu Repositories"
    echo "  ubuntu-other            Install Other Packages (Source/Copy)"
    echo "  ubuntu-aptitude         Install Aptitude Packages"
    echo "  ubuntu-deb              Install Deb Packages"
    echo "  ubuntu-composer         Install Composer Packages"
    echo "  ubuntu-node             Install Node Packages"
    echo "  ubuntu-python           Install Python Packages"
    echo "  ubuntu-snap             Install Snap Packages"
fi

if [[ $1 = "ubuntu" ]] ; then
    source ubuntu/directories.sh
    source ubuntu/repositories.sh
    source ubuntu/packages/other.sh
    source ubuntu/packages/aptitude.sh
    source ubuntu/packages/deb.sh
    source ubuntu/packages/composer.sh
    source ubuntu/packages/node.sh
    source ubuntu/packages/python.sh
    source ubuntu/packages/snap.sh
fi

if [[ $1 = "ubuntu-directories" ]] ; then
    source ubuntu/directories.sh
fi

if [[ $1 = "ubuntu-repositories" ]] ; then
    source ubuntu/repositories.sh
fi

if [[ $1 = "ubuntu-other" ]] ; then
    source ubuntu/packages/other.sh
fi

if [[ $1 = "ubuntu-aptitude" ]] ; then
    source ubuntu/packages/aptitude.sh
fi

if [[ $1 = "ubuntu-deb" ]] ; then
    source ubuntu/packages/deb.sh
fi

if [[ $1 = "ubuntu-composer" ]] ; then
    source ubuntu/packages/composer.sh
fi

if [[ $1 = "ubuntu-node" ]] ; then
    source ubuntu/packages/node.sh
fi

if [[ $1 = "ubuntu-python" ]] ; then
    source ubuntu/packages/python.sh
fi

if [[ $1 = "ubuntu-snap" ]] ; then
    source ubuntu/packages/snap.sh
fi

echo
