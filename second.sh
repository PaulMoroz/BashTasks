#!/bin/bash
touch "/home/neo/Desktop/exercise1/backup.txt"
writeFile="/home/neo/Desktop/exercise1/backup.txt"
baseDir="/home/neo"

#Home Directory Listing
#Perform a recursive directory listing on the user's home directory and save the information to a file. 
#Compress the file, have the script prompt the user to insert a USB flash drive, then press ENTER. 
#Finally, save the file to the flash drive after making certain the flash drive has properly mounted by parsing the output of df. 
#Note that the flash drive must be unmounted before it is removed.

print(){
    echo $1
    cd $1
    echo "============">>$writeFile
    pwd>>$writeFile
    echo "============">>$writeFile
    ls>>$writeFile
    for f in $("ls -R"); do
    if [ -d "$f" ]; then
        print $1"/"$f
    fi
done
}

print $baseDir
#zipping
gzip $writeFile
