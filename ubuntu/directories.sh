#!/bin/bash

NAME=`whoami`
FOLDERS=(

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
    headline " -> Mapping Directory $FOLDER"
    COMMAND="ln -sf /media/$NAME/Data/$FOLDER /home/$NAME"
    $COMMAND
done

