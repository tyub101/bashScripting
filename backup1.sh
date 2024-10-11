#!/bin/bash
BACKUP_SRC=/Users/abdelilahaitahmedouhamou
BACKUP_DEST=/Users/abdelilahaitahmedouhamou/backup
MAX_BACKUPS=5
LOGFILE=/Users/abdelilahaitahmedouhamou/backup/logfile.Log
TIMESTAMP=$(date +%F_%T)
BACKUP_FILE="$BACKUP_DEST/backup_$TIMESTAMP.tar.gz"
tar -czf $BACKUP_FILE $BACKUP_SRC
# Check if the backup was successful
if [$? -eq 0];
then
  echo "backup successful at $TIMESTAMP" >> $LOGFILE
else
  echo "backup failed  at $TIMESTAMP" >> $LOGFILE
  exit 1
fi
# Keep only the last 5 backups
ls -1tr "$BACKUP_DEST"_* | head -n -5 | xargs rm -f
