#!/bin/bash
echo "enter your note : " 
read -r note
if [ "$note" -ge 16 ] ; then
    echo "Trés Bien"
elif [ "$note" -ge 14 ] ; then 
    echo "Bien"
elif [ "$note" -ge 12 ] ; then
    echo "assez bien "
elif [ "$note" -ge 10 ] ; then
    echo "assez bien "
fi
