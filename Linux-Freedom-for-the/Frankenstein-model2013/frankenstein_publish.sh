#!/bin/bash
# FRANKENSTEIN PUBLISH - Warlord Parity Edition

# Stier
COMBAT_DIR="/home/wils/LOTRO_BERGET/Spillfiler"
TELE_DIR="/home/wils/Gaminglogger"
ARKIV_PUBLIC="/home/wils/Warlord-Logs-Public"
BASE_URL="https://github.com/panzerdroideka/Warlord-Logs-Public/blob/main/Showcase"
DATO=$(date +%Y-%m-%d_%H%M)

# SIKRING: Mapper
mkdir -p "$ARKIV_PUBLIC/Showcase"

# 1. Finn nyeste filer
NYESTE_COMBAT=$(ls -t "$COMBAT_DIR"/Combat_*.txt 2>/dev/null | head -n 1)
NYESTE_TELE=$(ls -t "$TELE_DIR"/Telemetri_*.csv 2>/dev/null | head -n 1)

if [ -z "$NYESTE_COMBAT" ]; then
    echo "❌ Fant ingen kamplogg i $COMBAT_DIR."
    exit 1
fi

# 2. INTERAKTIV DIALOG (Warlord Standard)
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_INFO
[ -z "$SESJON_INFO" ] && SESJON_INFO="Frankenstein Standard økt"

COMBAT_FILNAVN=$(basename "$NYESTE_COMBAT")
PUBLIC_COMBAT="${DATO}_${COMBAT_FILNAVN}"

if [ -n "$NYESTE_TELE" ]; then
    TELE_FILNAVN=$(basename "$NYESTE_TELE")
    PUBLIC_TELE="${DATO}_${TELE_FILNAVN}"
fi

# --- GENERERER PITCH FOR YOUTUBE ---
clear
echo "============================================================"
echo "Denne VIDEO er IKKE laget av AI eller LLM"
echo "This VIDEO is NOT made by AI or LLM"
echo ""
echo "This Mission is run on the 'FRANKENSTEIN' 2013 model"
echo "Samsung Win8 laptop on a 43inch 4K UHD Philips Monitor"
echo ""
echo "This telemetry is logged from Operating System: Kubuntu 24.04"
echo "KDE Plasma Version: 5.27.12"
echo "KDE Frameworks Version: 5.115.0"
echo "Qt Version: 5.15.13"
echo "Kernel Version: 6.17.0-14-generic 64-bit"
echo "Graphics Platform: X11"
echo "Processors: 4 × Intel® Core™ i5-3210M CPU @ 2.50GHz"
echo "Memory: 15,5 GiB of RAM"
echo "Graphics Processor: Mesa Intel® HD Graphics 4000"
echo "Manufacturer: SAMSUNG ELECTRONICS CO., LTD."
echo "Product Name: 370R5E"
echo ""
echo "Made by Wils"
echo ""
echo "YouTube Channel @willyolsen1017"
echo "https://discord.gg/7bwAhKU9h"
echo ""
echo "🚀 TOPP 10 PITCHES FRA: $COMBAT_FILNAVN"
echo "============================================================"

# Warlord Topp 10 logikk
grep "scored a .* hit" "$NYESTE_COMBAT" | \
sed -E 's/.*scored a (.*) hit with (.*) on .* for ([0-9\.,]+) .*/\3|\2|(\1)/' | \
sed 's/[\.,]//g' | sort -t'|' -k1,1rn | head -n 10 | \
awk -F'|' '{printf "%2d. %-25s %-15s | %s skade\n", NR, $2, $3, $1}'

echo "============================================================"
echo "🔗 GITHUB-LINKER FOR YT-BESKRIVELSE:"
echo "============================================================"
echo "Combat Log:   $BASE_URL/$PUBLIC_COMBAT"
[ -n "$NYESTE_TELE" ] && echo "Telemetri:    $BASE_URL/$PUBLIC_TELE"
echo "============================================================"
echo ""

# 3. OPPLASTING TIL GITHUB
echo -n "Vil du publisere denne sesjonen OFFENTLIG på GitHub? (Y/N): "
read -r DEL_OFFENTLIG

if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then
    # Kopierer til Showcase
    cp "$NYESTE_COMBAT" "$ARKIV_PUBLIC/Showcase/$PUBLIC_COMBAT"
    [ -n "$NYESTE_TELE" ] && cp "$NYESTE_TELE" "$ARKIV_PUBLIC/Showcase/$PUBLIC_TELE"
    
    cd "$ARKIV_PUBLIC" || exit
    git add .
    git commit -m "Showcase: $SESJON_INFO ($DATO)"
    
    if git push origin main; then
        echo "✅ Suksess! GitHub er oppdatert."
        
        # Vasker LotRO-mappa, flytter filen til Gaminglogger
        mv "$NYESTE_COMBAT" "$TELE_DIR/"
        echo "-- ✅ Oppdrag utført! Spillmappa er tømt og alt er arkivert. --"
    else
        echo "❌ Feil under opplasting. Originalfilene ligger fortsatt på plass."
    fi
else
    echo "⏸️ Avbrutt. Ingenting er lastet opp til GitHub."
fi
