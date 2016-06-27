#!/bin/bash
OF=backup-$(date +%Y%m%d).tar.gz

DIRECTORY=/Volumes/devnull/Backup
if [ -d "$DIRECTORY" ]; then
    tar -vczf $DIRECTORY$OF ~/Desktop ~/Documents ~/Music ~/Movies ~/Pictures ~/.vimrc ~/.bash_profile --exclude=~/Documents/Dtella/ 
    clear
    echo backup complete!
else echo Error: FileBackup is not connected!
fi

