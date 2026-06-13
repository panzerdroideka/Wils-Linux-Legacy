#!/bin/bash
# Skript for å dytte Obsidian-notater til GitHub

VAULT_DIR="$HOME/Dokumenter/Wils-Vault"
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "--- Starter synkronisering til GitHub ($TIMESTAMP) ---"

cd "$VAULT_DIR" || exit

# Sjekk for endringer
if [[ -z $(git status -s) ]]; then
    echo "Ingen endringer å dytte."
else
    git add .
    git commit -m "Auto-oppdatering fra Warlord: $TIMESTAMP"
    git push origin main
    echo "Vellykket dytt til GitHub!"
fi

echo "--- Synkronisering ferdig ---"
