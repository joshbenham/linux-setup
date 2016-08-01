#!/bin/bash

ask_question " <- Would you like to setup the Code folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Code /home/$NAME/Code"
    $COMMAND
fi


ask_question " <- Would you like to setup the Applications folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Applications /home/$NAME/Applications"
    $COMMAND
fi


ask_question " <- Would you like to setup the Backups folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/Backups /home/$NAME/Backups"
    $COMMAND
fi


ask_question " <- Would you like to setup the Password Store folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/.password-store /home/$NAME/.password-store"
    $COMMAND
fi


ask_question " <- Would you like to setup the Thunderbird folder [y|n] "
echo

if said_yes ; then
    NAME=`whoami`
    COMMAND="ln -sf /media/$NAME/Data/.thunderbird /home/$NAME/.thunderbird"
    $COMMAND
fi
