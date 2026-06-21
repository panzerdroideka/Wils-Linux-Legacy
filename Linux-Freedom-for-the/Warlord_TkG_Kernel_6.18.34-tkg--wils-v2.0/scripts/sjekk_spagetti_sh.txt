#!/bin/bash
# Wils-Linux-Legacy - Spagetti-Vokter (Verifisering av skriptstatus)

LOKAL_MAPPE="/home/wils/scripts"
GIT_MAPPE="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts"

echo "=== Sjekker synkroniseringsstatus for Warlord-skript ==="
echo "Lokal kilde: $LOKAL_MAPPE"
echo "Git-mål:     $GIT_MAPPE"
echo "--------------------------------------------------"

if [ ! -d "$LOKAL_MAPPE" ] || [ ! -d "$GIT_MAPPE" ]; then
    echo "❌ Feil: En eller begge mappene eksisterer ikke!"
    exit 1
fi

MANGEL_FUNNET=0

for lokal_fil in "$LOKAL_MAPPE"/*; do
    [ -f "$lokal_fil" ] || continue
    navn=$(basename "$lokal_fil")
    git_fil="$GIT_MAPPE/$navn"

    if [ ! -f "$git_fil" ]; then
        echo "⚠️  Mangler i Git: $navn finnes ikke i hvelvet!"
        MANGEL_FUNNET=1
    else
        if ! cmp -s "$lokal_fil" "$git_fil"; then
            echo "🔄 Ulikheter funnet: $navn har lokale endringer som ikke er kopiert."
            MANGEL_FUNNET=1
        fi
    fi
done

echo "--------------------------------------------------"
if [ "$MANGEL_FUNNET" -eq 0 ]; then
    echo "✅ Alt i skjønneste orden! Lokale skript matcher hvelvet 100 %."
else
    echo "💡 Tips: Kjør cp-kommandoene og dundre i vei 'gitsync' for å sikre alt."
fi
