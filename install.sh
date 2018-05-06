#!/bin/bash

source _utilities.sh

echo

if [[ -z $1 ]] || [[ $1 = "help" ]] ; then
    echo "Usage:"
    echo "  help                    Show the help"
    echo "  ubuntu-directories      Set up the Directories"
    echo "  ubuntu-repositories     Install Ubuntu Repositories"
    echo "  ubuntu-packages         Install All Packages"
    echo "  ubuntu-aptitude         Install Aptitude Packages"
    echo "  ubuntu-composer         Install Composer Packages"
    echo "  ubuntu-node             Install Node Packages"
    echo "  ubuntu-python           Install Python Packages"
    echo "  ubuntu-snap             Install Snap Packages"
    echo "  ubuntu-other            Install Other Packages (Source/Copy)"
fi

if [[ $1 = "ubuntu-directories" ]] ; then
    source ubuntu/directories.sh
fi

if [[ $1 = "ubuntu-repositories" ]] ; then
    source ubuntu/repositories.sh
fi

if [[ $1 = "ubuntu-packages" ]] ; then
    source ubuntu/packages/aptitude.sh
    source ubuntu/packages/composer.sh
    source ubuntu/packages/node.sh
    source ubuntu/packages/python.sh
    source ubuntu/packages/snap.sh
    source ubuntu/packages/other.sh
fi

if [[ $1 = "ubuntu-aptitude" ]] ; then
    source ubuntu/packages/aptitude.sh
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

if [[ $1 = "ubuntu-other" ]] ; then
    source ubuntu/packages/other.sh
fi

echo
