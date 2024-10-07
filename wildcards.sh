#!/bin/bash
cd /va/www
for FILE in *.html 
do 
 echo " Copying $FILE"
 cp $FILE /var/www-just-html
done
