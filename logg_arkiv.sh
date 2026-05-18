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
# kunne like! Uten hennes interesse hadde jeg ikke innseen at dette vil
# hjelpe mange andre til fullstendig Linux Frihet!
#
# Dette verktøyet er publisert som Open Source. Jeg, Willy Olsen, står
# ansvarlig for denne publikasjonen. Min absolutte garanti til deg som
# bruker dette er: JEG HAR ALLTID TESTET, KJØRT, OG BRUKER ALT JEG
# PUBLISERER I MIN EGEN HVERDAG!
#
# 🤖 AI / LLM SIKKERHETSANBEFALING (NORWEGIAN):
# Maskinvare og Linux-distribusjoner varierer. Før du implementerer
# dette, anbefaler jeg sterkt at du mater dette skriptet to din
# foretrukne LLM / AI-assistent. La assistenten din lese koden for å
# sikre at den er optimalisert for ditt oppsett, slik at systemet
# ditt holdes flytende og trygt i fremtiden! ❤️
# ======================================================================

# --- 1. GLOBALE KONFIGURASJONER & BANER ---
DATO=$(date +"%Y-%m-%d_%H%M")
LOTRO_KILDE="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LOGG_LAGRING="/home/wils/Games/gaminglogger"
ARKIV_PRIVAT="/home/wils/arkiv_privat"

# Sjekk at mapper eksisterer, hvis ikke lag dem
mkdir -p "$LOGG_LAGRING"
mkdir -p "$ARKIV_PRIVAT/LotRO/Combat"

# --- 2. INTERAKTIV SEKSJON ---
echo -n "Navn på denne sesjonen (f.eks. Mission-navn): "
read -r SESJON_NAVN

if [ -z "$SESJON_NAVN" ]; then
    SESJON_NAVN="Standard LotRO Kamp-økt"
fi

echo -n "Vil du dele denne sesjonen OFFENTLIG på GitHub? (y/N): "
read -r DEL_GITHUB

echo "--- ⚔️ Starter Logg-innhøsting: $SESJON_NAVN ($DATO) ---"

# --- 3. INNHØSTING AV UTGÅENDE LOGGER (Siste 60 min) ---
LOGG_FUNNET=0
find "$LOTRO_KILDE" -type f -name "Combat_*.txt" -mmin -60 | while read -r fil; do
    filnavn=$(basename "$fil")
    nytt_navn="${DATO}_${filnavn}"

    cp "$fil" "$ARKIV_PRIVAT/LotRO/Combat/$nytt_navn"
    mv "$fil" "$LOGG_LAGRING/$nytt_navn"
    LOGG_FUNNET=1
done

# --- 4. FINN SISTE IMPORTERTE LOGG FOR AUTOMATISK TELEMETRI ---
LOGG_NYEST=$(ls -t "$LOGG_LAGRING"/${DATO}_Combat_*.txt 2>/dev/null | head -n 1)

if [ -z "$LOGG_NYEST" ] || [ ! -f "$LOGG_NYEST" ]; then
    # Fallback til siste logg i mappen generelt hvis ingen ble høstet akkurat nå
    LOGG_NYEST=$(ls -t "$LOGG_LAGRING"/Combat_*.txt 2>/dev/null | head -n 1)
fi

# --- 5. AUTOMATISK BEREGNING AV KAMP-DATA ---
if [ -f "$LOGG_NYEST" ]; then
    TOTAL_UT=$(awk '/Nlkosi scored/ && /for/ {gsub(/,/, "", $0); for(i=1;i<=NF;i++) if($i=="for") sum+=$(i+1)} END {print sum}' "$LOGG_NYEST")
    MAX_HIT=$(awk '/Nlkosi scored/ && /for/ {gsub(/,/, "", $0); for(i=1;i<=NF;i++) if($i=="for") if($(i+1)>max) max=$(i+1)} END {print max}' "$LOGG_NYEST")
    MAX_SKILL=$(grep -h "$MAX_HIT" "$LOGG_NYEST" | sed 's/,//g' | awk -F'with ' '{print $2}' | awk -F' on the' '{print $1}' | head -n 1)
    SKADE_INN=$(awk '/The Longbeard Dwarf scored/ && /for/ {gsub(/,/, "", $0); for(i=1;i<=NF;i++) if($i=="for") sum+=$(i+1)} END {print sum}' "$LOGG_NYEST")
    CRITS=$(grep -c "critical hit" "$LOGG_NYEST")
    DEVS=$(grep -c "devastating hit" "$LOGG_NYEST")

    [ -z "$TOTAL_UT" ] && TOTAL_UT=0
    [ -z "$MAX_HIT" ] && MAX_HIT=0
    [ -z "$SKADE_INN" ] && SKADE_INN=0
else
    TOTAL_UT=0
    MAX_HIT=0
    MAX_SKILL="Ingen angrep"
    SKADE_INN=0
    CRITS=0
    DEVS=0
fi

# --- 6. UTSKRIFT AV TELEMETRI I TERMINALEN ---
echo ""
echo "========================================================"
echo "📊 WARLORD LIVE TELEMETRI-SAMMENDRAG"
echo "========================================================"
if [ -f "$LOGG_NYEST" ]; then
    echo "Analysert fil: $(basename "$LOGG_NYEST")"
    echo "Total skade utdelt : $TOTAL_UT HP"
    echo "Største treff      : $MAX_HIT med $MAX_SKILL"
    echo "Kritiske treff     : $CRITS | Devastating: $DEVS"
    echo "Total skade mottatt: $SKADE_INN HP"
else
    echo "⚠️ Ingen ferske loggfiler ble funnet i $LOGG_LAGRING."
fi
echo "========================================================"
echo ""

# --- 7. GENERER FERDIG YOUTUBE-MAL (HEREDOC - KRASJER ALDRI) ---
cat << EOF
======================================================================
🚫 AI / LLM DEKLARASJON
======================================================================
🇳🇴 Denne VIDEOEN er IKKE laget av AI eller LLM!
🇬🇧 This VIDEO is NOT made by AI or LLM!

======================================================================
⚙️ MASKINVARE & RIGGOPPSETT
======================================================================
💻 Kjøres på: "WARLORD" workstation (Ace Magician AM08 / Ryzen 7)
🖥️ Skjerm: 43" 4K UHD Philips Professional PC Monitor (med PiP)

======================================================================
📦 SYSTEM & TELEMETRI SPECS (OS)
======================================================================
🌐 Operativsystem: Kubuntu 25.10
🎨 KDE Plasmaversjon: 6.4.5
🛠️ KDE Frameworks: 6.17.0
💎 Qt-versjon: 9.9.2
🐧 Kernel: 6.17.0-19-generic (64-bit)
🖼️ Grafisk plattform: Wayland / Radeon 780M Graphics
🧠 Minne (RAM): 32 GiB

======================================================================
⚡ TOPP 10 SKADE-PITCHES FRA SESJONEN
======================================================================
Sesjon: $SESJON_NAVN
Loggfil: $(basename "$LOGG_NYEST" 2>/dev/null || echo "Ingen logg")

EOF

# Dynamisk generering av Topp 10-listen rett inn i YouTube-oppsettet
if [ -f "$LOGG_NYEST" ]; then
    grep "Nlkosi scored" "$LOGG_NYEST" | grep "for " | sed -E 's/,//g' | awk '{
        type="[Normal]      "
        if ($0 ~ /critical/) type="[Kritisk]     "
        if ($0 ~ /devastating/) type="[Devastating]"

        split($0, a, "with ");
        split(a[2], b, " on the");
        skill = b[1];

        split($0, c, "for ");
        split(c[2], d, " ");
        dmg = d[1];

        print dmg "||" type "||" skill
    }' | sort -t'|' -k1 -rn | head -n 10 | awk -F'||' '{
        # Formaterer tusenseparator for finere visning på YT
        split($1, t, "");
        formatted=""
        len=length($1)
        for(i=1; i<=len; i++) {
            formatted=formatted t[i]
            if((len-i)%3==0 && i!=len) formatted=formatted" "
        }
        printf "%-2d. %-22s %-14s | %10s skade\n", NR, $3, $2, formatted
    }'
else
    echo "Ingen kampdata tilgjengelig for Topp 10."
fi

cat << EOF

======================================================================
🔗 OPEN SOURCE & GITHUB-LENKER
======================================================================
📂 Combat Log: https://github.com/panzerdroideka/Warlord-Logs-Public/blob/main/Showcase
📊 Telemetri:  https://github.com/panzerdroideka/Wils-Linux-Legacy
💬 Kanal: @willyolsen1017
🔗 Discord: https://discord.gg/7bwAhKU9h
======================================================================
EOF

exit 0
