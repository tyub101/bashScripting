#!/bin/bash

for FILE in /va/www/*.html 
do 
 echo " Copying $FILE"
 cp $FILE /var/www-just-html
done
