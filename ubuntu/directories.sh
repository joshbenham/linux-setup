#!/bin/bash

NAME=`whoami`
FOLDERS=(

".password-store"
".thunderbird"

"Applications"
"Backups"
"Code"
"Desktop"
"Documents"
"Downloads"
"Games"
"Music"
"Pictures"
"Public"
"Templates"
"Videos"

)

for FOLDER in "${FOLDERS[@]}"; do
    ask_question " <- Would you like to setup the $FOLDER folder [y|n]"
    if said_yes; then
        COMMAND="ln -sf /media/$NAME/Data/$FOLDER /home/$NAME/$FOLDER"
	$COMMAND
    fi
done

