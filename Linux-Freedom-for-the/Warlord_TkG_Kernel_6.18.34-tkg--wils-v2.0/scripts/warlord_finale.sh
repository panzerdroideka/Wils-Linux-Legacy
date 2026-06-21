#!/bin/bash
# Warlord Finale - Automatisk arkivering (Kan kjøres fra hvor som helst)
DATE=$(date +%Y-%m-%d)

# Definer absolutte stier (Ingen relativ "cd" nødvendig)
TARGET_REPO="/home/wils/GitHub/Warlord-Logs-Public"
ARCHIVE_DIR="$TARGET_REPO/$DATE"
SOURCE_LOGS="/home/wils/Games/gaminglogger"

# 1. Opprett dagens mappe
mkdir -p "$ARCHIVE_DIR/gaming"

echo "=== Warlord Finale: Starter arkivering for $DATE ==="

# 2. Generer system-telemetri (Kjøres med sudo, uansett hvor du står)
echo "Genererer system-logger..."
sudo dmesg > "$ARCHIVE_DIR/dmesg_$DATE.txt"
sudo journalctl --since "00:00:00" > "$ARCHIVE_DIR/journal_$DATE.txt"

# 3. Finn og samle nyeste gaming-telemetri
echo "Finner nyeste gaming-telemetri..."
find "$SOURCE_LOGS" -name "Combat_*$DATE*.txt" -exec cp {} "$ARCHIVE_DIR/gaming/" \;
find "$SOURCE_LOGS" -name "wine_$DATE*.csv" -exec cp {} "$ARCHIVE_DIR/gaming/" \;

# 4. Git-operasjon (Spesifiserer arbeidskatalog uten å forlate scriptet)
echo "Synkroniserer med skyen..."
git -C "$TARGET_REPO" add .
git -C "$TARGET_REPO" commit -m "Warlord Telemetri-arkiv: $DATE - System & Gaming"
git -C "$TARGET_REPO" push origin main

echo "=== Alt er arkivert! Du kan nå logge av med god samvittighet. ==="
