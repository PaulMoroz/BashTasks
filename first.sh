#!/bin/bash
name="backup"
while [[ -e $name".sh" ]];do
    name=$name"(1)"
done
name=$name".sh"
cp "first.sh" $name
chmod +x $name
