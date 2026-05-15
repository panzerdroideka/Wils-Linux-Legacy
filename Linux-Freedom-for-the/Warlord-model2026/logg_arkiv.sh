#!/bin/bash
# ======================================================================
# 🛠️ SCRIPT: logg_arkiv.sh (Warlord Edition)
# 📝 BESKRIVELSE / DESCRIPTION:
#    NO: Arkiverer LOTRO combat-logger, telemetri og genererer YouTube-pitch.
#    EN: Archives LOTRO combat logs, telemetry, and generates YouTube pitch.
#
# 📜 OPEN SOURCE DEKLARASJON & GARANTI (NORWEGIAN):
# Jeg vil gi en stor takk til min gode venn Karina Lopez for å se meg og
# min dedikasjon til Linux og gi meg tro på at dette er noe flere vil
# kunne like! Uten hennes interesse hadde jeg ikke innsett at dette vil
# hjelpe mange andre til fullstendig Linux Frihet!
#
# Dette verktøyet er publisert som Open Source. Jeg, Willy Olsen, står
# ansvarlig for denne publikasjonen. Min absolutte garanti til deg som
# bruker dette er: JEG HAR ALLTID TESTET, KJØRT, OG BRUKER ALT JEG
# PUBLISERER I MIN EGEN HVERDAG!
#
# 🤖 AI / LLM SIKKERHETSANBEFALING (NORWEGIAN):
# Maskinvare og Linux-distribusjoner varierer. Før du implementerer
# dette, anbefaler jeg sterkt at du mater dette skriptet til din
# foretrukne LLM / AI-assistent. La assistenten din lese koden for å
# sikre at den er optimalisert for ditt oppsett, slik at systemet
# ditt holdes flytende og trygt i fremtiden! ❤️
#
# ----------------------------------------------------------------------
#
# 📜 OPEN SOURCE DECLARATION & GUARANTEE (ENGLISH):
# I want to give a big thank you to my good friend Karina Lopez for
# seeing me and my dedication to Linux and giving me faith that this is
# something more people will enjoy! Without her interest, I wouldn't have
# realized that this will help many others to complete Linux freedom,
# Thank you Karina!
#
# This tool is published as Open Source. I, Willy Olsen, take full
# responsibility for this publication. My absolute guarantee to you as
# a user is: I HAVE ALWAYS TESTED, RUN, AND PERSONALLY USE EVERYTHING
# I PUBLISH IN MY OWN EVERYDAY LIFE!
#
# 🤖 AI / LLM SAFETY RECOMMENDATION (ENGLISH):
# Hardware and Linux distributions vary. Before implementing this,
# I strongly recommend feeding this script to your preferred LLM / AI
# assistant. Let your assistant read the code to ensure it is optimized
# for your specific setup, keeping your system running smoothly and
# safely into the future! ❤️
#
# 📦 AVHENGIGHETER / DEPENDENCIES:
#    - git
#    - grep, sed, sort, head, awk
# ======================================================================

# --- KONFIGURASJON ---
ARKIV_PRIVAT="/home/wils/Warlord-Logs-Private"
ARKIV_PUBLIC="/home/wils/Warlord-Logs-Public"
LOTRO_KILDE="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LOGG_LAGRING="/home/wils/Games/gaminglogger"
BASE_URL="https://github.com/panzerdroideka/Warlord-Logs-Public/blob/main/Showcase"
DATO=$(date +%Y-%m-%d_%H%M)

# Slett gammelt midlertidig spor hvis det finnes
rm -f /tmp/warlord_links

# 1. INTERAKTIV DIALOG
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_INFO
[ -z "$SESJON_INFO" ] && SESJON_INFO="Standard økt"

echo -n "Vil du dele denne sesjonen OFFENTLIG på GitHub? (y/N): "
read -r DEL_OFFENTLIG

# SIKRING: Mapper
mkdir -p "$ARKIV_PRIVAT/LotRO/Combat" "$ARKIV_PRIVAT/MangoHud/Telemetry"
mkdir -p "$ARKIV_PUBLIC/Showcase"
mkdir -p "$LOGG_LAGRING"

echo "--- ⚔ Starter Logg-innhøsting: $SESJON_INFO ($DATO) ---"

# 2. INNHØSTING AV LOTRO-LOGGER (Med flytting til gaminglogger)
find "$LOTRO_KILDE" -type f -name "Combat_*.txt" -mmin -60 | while read -r fil; do
    filnavn=$(basename "$fil")
    nytt_navn="${DATO}_${filnavn}"

    cp "$fil" "$ARKIV_PRIVAT/LotRO/Combat/$nytt_navn"
    mv "$fil" "$LOGG_LAGRING/"

    if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then
        cp "$LOGG_LAGRING/$filnavn" "$ARKIV_PUBLIC/Showcase/$nytt_navn"
        echo "Combat Log:   $BASE_URL/$nytt_navn" >> /tmp/warlord_links
    fi
    echo "  -> Prosessert Combat Logg: $nytt_navn"
done

# 3. INNHØSTING AV MANGOHUD TELEMETRI (Sletting fra /tmp etter kopiering)
find /tmp -type f -name "mangohud_*.csv" -mmin -60 | while read -r fil; do
    filnavn=$(basename "$fil")
    nytt_navn="${DATO}_${filnavn}"

    cp "$fil" "$ARKIV_PRIVAT/MangoHud/Telemetry/$nytt_navn"
    cp "$fil" "$LOGG_LAGRING/$nytt_navn"
    rm -f "$fil"

    if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then
        cp "$LOGG_LAGRING/$nytt_navn" "$ARKIV_PUBLIC/Showcase/$nytt_navn"
        echo "Telemetri:    $BASE_URL/$nytt_navn" >> /tmp/warlord_links
    fi
    echo "  -> Prosessert Telemetri: $nytt_navn"
done

# 4. GITHUB PUBLISERING
if [[ "$DEL_OFFENTLIG" =~ ^[Yy]$ ]]; then
    echo "--- 🚀 Laster opp Showcase til GitHub ---"
    cd "$ARKIV_PUBLIC" || exit
    git add Showcase/
    git commit -m "Showcase oppdatering: $SESJON_INFO ($DATO)"
    git push origin main
fi

# 5. GENERERER PITCH FOR YOUTUBE
LATEST_LOG=$(ls -t "$ARKIV_PRIVAT"/LotRO/Combat/*.txt 2>/dev/null | head -n 1)

clear
echo "==============================================================="
echo "Denne VIDEO er IKKE laget av AI eller LLM"
echo "This VIDEO is NOT made by AI or LLM"
echo ""
echo "My Open Source Linux Setup: https://github.com/panzerdroideka"
echo "My YouTube Channel: https://youtube.com/@willyolsen1017"
echo ""
if [ -z "$LATEST_LOG" ]; then
    echo "Ingen kampdata funnet for denne økten."
else
    # --- GERILJA-ANALYSE AV KAMP-LOGGEN ---

    # 1. Finn ut hvem som er i ilden (Auto-Tags)
    if grep -q "PanionTheWise" "$LATEST_LOG"; then
        CHAR_TAGS="#LotROGuardian #PanionTheWise #LotRO"
    elif grep -q "NofishTheWise" "$LATEST_LOG"; then
        CHAR_TAGS="#LotROHunter #NofishTheWise #LotRO"
    elif grep -q "Nlkosi" "$LATEST_LOG"; then
        CHAR_TAGS="#LotRORuneKeeper #Nlkosi #LotRO"
    else
        CHAR_TAGS="#LotRO #LordOfTheRingsOnline"
    fi

    # 2. Kalkuler total skade (Brutal tallknusing med awk)
    # Henter alle tall etter "for" og før "damage", fjerner komma/punktum, og summerer alt.
    TOTAL_DMG=$(grep "scored a .* hit" "$LATEST_LOG" | sed -E 's/.*for ([0-9\.,]+) .*/\1/' | sed 's/[\.,]//g' | awk '{sum+=$1} END {printf "%\047d\n", sum}')

    # --- UTSKRIFT TIL YOUTUBE BESKRIVELSE ---
    echo "This telemetry is logged from Operating System: Kubuntu 25.10"
    echo "KDE Plasma Version: 6.4.5"
    echo "Kernel Version: 6.17.0-23-generic (64-bit)"
    echo "Processors: 16 × AMD Ryzen 7 255 w/ Radeon 780M Graphics"
    echo "Memory: 32 GiB of RAM (30.6 GiB usable)"
    echo ""
    echo "🔥 TOTAL DAMAGE DEALT THIS MISSION: $TOTAL_DMG 🔥"
    echo "$CHAR_TAGS"
    echo ""
    echo "Want my exact Linux setup? Check out my Open Source project:"
    echo "👉 https://github.com/panzerdroideka/Wils-Linux-Legacy"
    echo "(My philosophy: Building a home that always works, on any hardware!)"
    echo ""
    echo "🚀 TOPP 10 PITCHES FRA: $(basename "$LATEST_LOG")"
    echo "------------------------------------------------------------"
    grep "scored a .* hit" "$LATEST_LOG" | \
    sed -E 's/.*scored a (.*) hit with (.*) on .* for ([0-9\.,]+) .*/\3|\2|(\1)/' | \
    sed 's/[\.,]//g' | sort -t'|' -k1,1rn | head -n 10 | \
    awk -F'|' '{printf "%2d. %-18s %-15s | %s skade\n", NR, $2, $3, $1}'
fi

echo "============================================================"
echo "🔗 GITHUB-LINKER (TELEMETRI & KAMP-LOGG):"
echo "============================================================"
if [ -f /tmp/warlord_links ]; then
    cat /tmp/warlord_links
    rm -f /tmp/warlord_links
else
    echo "Ingen filer ble gjort offentlige i denne økten."
fi
echo "============================================================"
echo ""
echo "✅ Logg-innhøsting, analyse og arkivering er fullført!"
