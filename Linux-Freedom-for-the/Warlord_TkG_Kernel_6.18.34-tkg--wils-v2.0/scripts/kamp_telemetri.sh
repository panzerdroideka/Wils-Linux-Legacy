#!/bin/bash
# Wils-Linux-Legacy 2.0.0 - Kamp Telemetri (Mappe-overvåker)

TELEMETRI_LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"
SPILL_MAPPE="/home/wils/Games/WARLORDLOTRO/Spillfiler"

read -p "Angi operatør og level (format: Navn,Level): " input_data
IFS="," read -r KARAKTER LEVEL <<< "$input_data"
KARAKTER=$(echo "$KARAKTER" | tr -d "[:space:]")
LEVEL=$(echo "$LEVEL" | tr -d "[:space:]")

echo "=== Warlord Strids-Telemetri Aktivert (Mappe-overvåker) ==="
echo "Venter på nye Combat_*.txt filer i $SPILL_MAPPE for $KARAKTER..."

# Overvåker alle Combat-filer i mappen
tail -F "$SPILL_MAPPE"/Combat_*.txt "$SPILL_MAPPE"/Combat.log 2>/dev/null | grep --line-buffered -i -E "$KARAKTER|Positional|Critical" | while read -r linje; do
TIDSSTEMPEL=$(date +"%Y-%m-%d %H:%M:%S.%3N")
echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje" >> "$TELEMETRI_LOGG"
echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje"
done
