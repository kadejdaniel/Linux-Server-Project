#!/bin/bash
if [-z "$1"]; then
echo "Uzycie skryptu wyglada nastepujaco:./updategit.sh "wiadomosc commita" "
exit 1
fi
git add .
git commit -m "$1"
git pull origin main
git push origin main
