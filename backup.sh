#!/bin/bash
OF=backup-$(date +%Y%m%d).tar.gz

DIRECTORY=/Volumes/:dev:null/
if [ -d "$DIRECTORY" ]; then
    tar -vczf $DIRECTORY$OF ~/Documents ~/Music ~/Movies ~/Pictures ~/.vimrc ~/.bash_profile 
    clear
    echo backup complete!
else echo Error: FileBackup is not connected!
fi

