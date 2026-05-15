#!/bin/bash

# UUID for den STORE sda3-partisjonen (928GB)
UUID="2f17dcce-b802-4960-a60d-cecf2676ece1"
MOUNT_POINT="$HOME/AI_Hvelv"

echo "--- Åpner det STORE Warlord-hvelvet (sda3) ---"

# 1. Demonter den lille sda2 hvis den er åpen
sudo umount $MOUNT_POINT 2>/dev/null

# 2. Monter den store sda3
sudo mount -U $UUID $MOUNT_POINT

# 3. Lag en dedikert mappe for AI-data for å unngå rot med Fedora-systemet
mkdir -p $MOUNT_POINT/WARLORD_AI_DATA
sudo chown -R $USER:$USER $MOUNT_POINT/WARLORD_AI_DATA

echo "Suksess! 928 GB er nå tilgjengelig på $MOUNT_POINT/WARLORD_AI_DATA"
