#!/bin/bash
# Wils-Linux-Legacy 2.0.0 - Kamp Telemetri (Dynamisk)

# Oppdatert sti til din nye v2.0 struktur
TELEMETRI_LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"
LOTRO_LOG="/home/wils/Games/WARLORDLOTRO/Spillfiler/Combat.log"

# ... resten av skriptet ditt er helt fint!
read -p "Angi operatør (f.eks. PanionTheWise, Linnoh, NofishTheWise): " KARAKTER
read -p "Angi gjeldende level for $KARAKTER: " LEVEL

if [ -z "$KARAKTER" ] || [ -z "$LEVEL" ]; then
    echo "Feil: Både navn og level må angis. Avbryter telemetri."
    exit 1
fi

echo "=== Warlord Strids-Telemetri Aktivert ===" | tee -a "$TELEMETRI_LOGG"
echo "Operatør: $KARAKTER (Level $LEVEL) | Fokus: Positional Damage" | tee -a "$TELEMETRI_LOGG"
echo "Venter på stridsdata fra Middle-Earth for $KARAKTER..."

touch "$LOTRO_LOG"

tail -F "$LOTRO_LOG" | grep --line-buffered -i -E "$KARAKTER|Positional|Critical" | while read -r linje; do
    TIDSSTEMPEL=$(date +"%Y-%m-%d %H:%M:%S.%3N")

    if echo "$linje" | grep -q -i "Positional"; then
        echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] [GERILJA-TREFF] $linje" >> "$TELEMETRI_LOGG"
        echo -e "\e[32m[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] [GERILJA-TREFF]\e[0m $linje"
    else
        echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje" >> "$TELEMETRI_LOGG"
        echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje"
    fi
done
