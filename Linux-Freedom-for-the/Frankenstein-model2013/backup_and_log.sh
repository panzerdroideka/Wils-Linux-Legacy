#!/bin/bash

# --- KONFIGURASJON ---
# Din spesifikke disk-UUID
DEVICE_UUID="83863439-c483-428d-8ddf-22d37c7b0eb3"
MOUNT_POINT="/mnt/TimeShift_HDD"
LOG_FILE="/home/wils/backup_history.txt"
DISK_DEV="/dev/sda"  # Hele disken for ned-spinning, ikke partisjonen

echo "--- Starter Backup Prosess for NP370R5E ---"

# 1. Monter disken hvis den ikke er montert
if ! grep -qs "$MOUNT_POINT" /proc/mounts; then
    echo "Vekker og monterer backup-disk..."
    # Prøver å montere
    sudo mount UUID=$DEVICE_UUID $MOUNT_POINT
    if [ $? -ne 0 ]; then
        echo "FEIL: Kunne ikke montere disk. Sjekk at den er koblet til."
        exit 1
    fi
    sleep 2 # Gi disken tid til å spinne opp
else
    echo "Disk allerede montert."
fi

# 2. Sjekk diskplass FØR backup (i kilobyte)
USED_BEFORE=$(df -k "$MOUNT_POINT" | awk 'NR==2 {print $3}')

# 3. Kjør TimeShift (Lager nytt snapshot)
echo "Kjører TimeShift..."
# --tags D merker den som 'Daily' eller manuell
sudo timeshift --create --comments "Manuell backup" --tags D

# 4. Sjekk diskplass ETTER backup
USED_AFTER=$(df -k "$MOUNT_POINT" | awk 'NR==2 {print $3}')

# 5. Beregn differansen (Faktisk størrelse på endringer)
DIFF_KB=$((USED_AFTER - USED_BEFORE))
DIFF_MB=$((DIFF_KB / 1024))

# Dato format
DATE_STR=$(date "+%Y-%m-%d %H:%M")

# Hent navn på siste snapshot (for info)
LAST_SNAP=$(ls -td $MOUNT_POINT/timeshift/snapshots/*/ | head -1 | xargs basename)

# 6. Lagre til loggfil
# Format: Dato | Snapshot Navn | Økning i diskbruk
echo "$DATE_STR | $LAST_SNAP | +${DIFF_MB} MB" >> "$LOG_FILE"

echo "Backup ferdig. Lagt til i logg: +${DIFF_MB} MB"

# 7. Avmonter og spinn ned disken (Strømsparing)
echo "Avmonterer disk..."
sudo umount "$MOUNT_POINT"

echo "Sender 'sleep' kommando til disken..."
# -Y setter disken i dypeste sovemodus (spindown)
sudo hdparm -Y $DISK_DEV

echo "Disk er avmontert og spunnet ned. Trygt å fortsette."
