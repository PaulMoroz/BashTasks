#!/bin/bash
#Self-reproducing Script
#Write a script that backs itself up, that is, copies itself to a file named backup.sh.
name="backup"
while [[ -e $name".sh" ]];do
    name=$name"(1)"
done
name=$name".sh"
cp "first.sh" $name
chmod +x $name
