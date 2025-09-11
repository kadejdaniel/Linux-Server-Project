#!/bin/bash
echo "Automatyczna aktualizacja systemu"
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
echo "Aktualizacja zakonczona: $(date) >> /var/log/auto-update.log "
