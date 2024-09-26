#!/bin/bash
function backup_file(){
 if [ -f "$1" ]
 then
   local BACKUP_FILE="/var/tmp/$(basename ${1}).$(date +%F).$$”
   echo " Backing up $1 to ${BACKUP_FILE}
   cp $1 $BACKUP_FILE
 fi
}
backup_file /etc/hosts
if [ "$0" -eq 0 ]
then 
   echo " Backup Succeded !"
fi
