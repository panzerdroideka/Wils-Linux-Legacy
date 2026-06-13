#!/bin/bash
# Skript for å synkronisere alle dine definerte GitHub-arkiver på Warlord

# Liste over dine arkiver (full sti til hver enkelt)
REPOS=(
    "$HOME/Wils-Linux-Legacy"
    "$HOME/Warlord-Logs-Public"
    "$HOME/Warlord-Logs-Private"
    "$HOME/panzerdroideka"
)

echo "=== STARTER SYNKRONISERING AV GITHUB-ARKIVER ==="

for REPO in "${REPOS[@]}"; do
    if [ -d "$REPO" ]; then
        echo ""
        echo "--------------------------------------------------"
        echo "Sjekker: $REPO"
        echo "--------------------------------------------------"
        cd "$REPO" || continue

        # Henter ned oppdateringer med rebase
        git pull origin main --rebase
    else
        echo "Kunne ikke finne mappen: $REPO (Hopper over)"
    fi
done

echo ""
echo "=== ALLE ARKIVER ER OPPDATERT OG KLARE FOR ØKTEN ==="
