#!/bin/bash
# Backup av aktiv kjernekonfigurasjon til Git-repo
DEST="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/"
SOURCE="/boot/config-$(uname -r)"

echo "Synkroniserer $SOURCE til $DEST..."
cp "$SOURCE" "$DEST/kernel_config_$(uname -r)"
echo "Ferdig. Konfigurasjon arkivert."
