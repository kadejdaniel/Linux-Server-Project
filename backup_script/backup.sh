#!/bin/bash

SOURCE="/home/daniel/mainDirectory"
DEST="home/daniel/backupDic"

DATE= $(date +"%Y%m%d_%H%M%S")
BACKUP_NAME ="backup_$DATE.tar.gz"

mkdir -p "$DEST"

tar -czf "$DEST/$BACKUP_NAME" -C "$SOURCE" .

echo "backup zapisany w: $DEST/$BACKUP_NAME"
