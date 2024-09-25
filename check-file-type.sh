#!/bin/bash
read -p " Enter a name of a file or directory " name
if [ -d "$name" ]
then
 echo "${name} is a directory"
elif  [ -f "$name" ]
then
 echo "${name} is a regular file"
else
 echo "${name} is an other type of file"
fi
