#!/bin/bash
# --- Warlord Combat Analyzer: The Pitch Finder ---
# Dette scriptet finner dine 10 kraftigste angrep fra siste økt.

# 1. KONFIGURASJON
LOG_DIR="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LATEST_LOG=$(ls -t "$LOG_DIR"/Combat_*.txt 2>/dev/null | head -n 1)

if [ -z "$LATEST_LOG" ]; then
    echo "❌ Fant ingen kamp-logg i $LOG_DIR"
    exit 1
fi

echo "--- ⚔ TOPP 10 PITCHES FRA: $(basename "$LATEST_LOG") ---"
echo "------------------------------------------------------------"

# 2. ANALYSE-MOTOREN
# Forklaring:
# - Grepper linjer med "scored a ... hit"
# - Bruker sed for å hente: [Skade] [Skill] [Type: Crit/Devastating]
# - Sorterer numerisk (høyest først)
# - Viser topp 10 i et rent format

grep "scored a .* hit" "$LATEST_LOG" | \
sed -E 's/.*scored a (.*) hit with (.*) on .* for ([0-9\.,]+) .*/\3|\2|(\1)/' | \
sed 's/[\.,]//g' | \
sort -t'|' -k1,1rn | \
head -n 10 | \
awk -F'|' '{
    printf "%2d. %-18s %-15s | %s skade\n", NR, $2, $3, $1
}'

echo "------------------------------------------------------------"
echo "✅ Klar til å kopieres rett inn i YouTube-kommentaren!"
