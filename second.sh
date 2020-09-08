#!/bin/bash
touch "/home/neo/Desktop/exercise1/backup.txt"
writeFile="/home/neo/Desktop/exercise1/backup.txt"
baseDir="/home/neo"

#Home Directory Listing
#Perform a recursive directory listing on the user's home directory and save the information to a file. 
#Compress the file, have the script prompt the user to insert a USB flash drive, then press ENTER. 
#Finally, save the file to the flash drive after making certain the flash drive has properly mounted by parsing the output of df. 
#Note that the flash drive must be unmounted before it is removed.

find "/home/neo" -type d > "$writeFile"

read -r -s -p $'{lug in USB drive and press ENTER to continue...'


if ["/dev/sdb1/"]
then
    cp $writeFile "/dev/sdb1/backup.h"
else
    echo "You didn't plug USB drive"
fi
