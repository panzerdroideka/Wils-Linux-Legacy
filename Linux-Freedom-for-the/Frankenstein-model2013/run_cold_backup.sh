#!/bin/bash

# --- KONFIGURASJON ---
# Din unike UUID for 1TB 5400rpm backup-disken
DISK_UUID="83863439-c483-428d-8ddf-22d37c7b0eb3"
# Mappen vi bruker for cold storage
MOUNT_POINT="/mnt/backup" 

# --- KONFIGURASJON FOR STATUS-OPPDATERING ---
CACHE_FILE="/home/wils/.timeshift_size_cache"
STATUS_FILE="/home/wils/Desktop/Frankenstein_Status_Log.txt"

# --- FINN DISK-ENHET AUTOMATISK ---
PARTITION_DEVICE=$(findfs UUID=$DISK_UUID)
PARENT_DISK=$(lsblk -no pkname $PARTITION_DEVICE)
FULL_DISK_PATH="/dev/$PARENT_DISK"

# Farger for pen output
GREEN='\033[0;32m'
NC='\033[0m'

clear
echo "==================================================="
echo "   STARTER COLD STORAGE BACKUP PROTOKOLL"
echo "   Mål: $MOUNT_POINT"
echo "==================================================="

# 1. SJEKK OG MONTER
if mountpoint -q "$MOUNT_POINT"; then
    echo "[INFO] Disken er allerede montert."
else
    echo "[1/6] Monterer backup-disk..."
    sudo mount -U $DISK_UUID $MOUNT_POINT
    if [ $? -eq 0 ]; then
        echo " -> Suksess! Disk montert."
    else
        echo " -> FEIL: Kunne ikke montere. Sjekk kabel!"
        exit 1
    fi
fi

# 2. BEKREFTELSE
echo ""
echo "[2/6] VISUELL SJEKK (Før backup)"
ls -lh $MOUNT_POINT | head -n 5
echo "---------------------------------------------------"
# Vi hopper over "read -p" her for effektivitet hvis du vil, 
# eller du kan beholde pausen hvis du liker sikkerheten.
# read -p "Trykk ENTER for å starte..." 

# 3. KJØR TIMESHIFT
echo ""
echo "[3/6] Kjører TimeShift (Rsync Mode)..."
sudo timeshift --create --comments "Cold Storage Run $(date +%F)" --tags D --scripted

if [ $? -eq 0 ]; then
    echo -e " -> ${GREEN}TIMESHIFT COMPLETE${NC}"
else
    echo " -> FEIL: TimeShift feilet."
    exit 1
fi

# 4. VERIFISERING & STATUS-OPPDATERING (MAGIEN SKJER HER)
echo ""
echo "[4/6] OPPDATERER FRANKENSTEIN STATUS..."

# Hent den ferske størrelsen
USED_NOW=$(df -h $MOUNT_POINT | awk 'NR==2 {print $3}')
TEMP=$(sensors | grep "Package id 0:" | awk '{print $4}') # Henter CPU temp også

# 1. Lagre til Cache (slik at sjekk-status.sh husker det senere)
echo "$USED_NOW" > "$CACHE_FILE"

# 2. Oppdater Desktop Widgeten UMIDDELBART
echo "SYSTEM STATUS: COLD STORAGE (Nylig Backup)" > "$STATUS_FILE"
echo "GPU: AMDGPU | CPU: $TEMP" >> "$STATUS_FILE"
echo "BACKUP: $USED_NOW (Bekreftet Nå)" >> "$STATUS_FILE"

echo -e " -> ${GREEN}Widget oppdatert til: $USED_NOW${NC}"
echo "==================================================="

# 5. AVMONTERING
echo ""
echo "[5/6] Avmonterer filsystemet..."
sudo umount $MOUNT_POINT

# 6. SPIN DOWN
echo "[6/6] Sender 'SLEEP' signal til harddisken..."
sudo hdparm -Y $FULL_DISK_PATH
echo ""
echo "==================================================="
echo -e "   ${GREEN}BACKUP FERDIG. DISK ER AVSLÅTT.${NC}"
echo "   Du kan nå trygt koble fra USB-kabelen."
echo "==================================================="
echo "Trykk Enter for å lukke vinduet."
read
