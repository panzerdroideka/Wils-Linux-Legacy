#!/bin/bash
# Warlord-Mission-End: Arkivering og Rapportering
LOG_DIR="/home/wils/Games/WARLORDLOTRO/Spillfiler"
ARCHIVE_DIR="/home/wils/Games/gaminglogger"

#echo "=== Warlord Mission End: Arkiverer logger... ==="
mv "$LOG_DIR"/Combat_*.txt "$ARCHIVE_DIR"/ 2>/dev/null
clear
echo "=== Generating Battle-report... ==="
python3 ~/scripts/etterbrenner.py
echo ""
