#!/bin/bash
# ============================================================
# SCRIPT: close_vault.sh (Warlord F1-Edition)
# ============================================================

MOUNT_POINT="$HOME/AI_Hvelv"

echo "--- 🔒 Sikrer og lukker WARLORD AI-Hvelv ---"

# 1. Stopp AI-motorene kontrollert (Uten -9 for å beskytte databasene!)
echo "Ber AI-motorene om å lagre data og avslutte..."
# Bruker systemctl for Ollama hvis den kjører som tjeneste, ellers graceful kill
sudo systemctl stop ollama 2>/dev/null || killall ollama 2>/dev/null
killall anythingllm-desktop 2>/dev/null

# 2. Tvinger all ventende data fra arbeidsminnet (RAM) og ned på disken
echo "Flusher I/O-køen for å forhindre korrupsjon (sync)..."
sync
sleep 2

# 3. Demonter disken (kun hvis den faktisk er montert)
if mountpoint -q "$MOUNT_POINT"; then
    sudo umount "$MOUNT_POINT"

    # 4. Sikkerhetsport: Verifiser at disken faktisk slapp taket
    if mountpoint -q "$MOUNT_POINT"; then
        echo "========================================="
        echo "❌ ADVARSEL: Klarte ikke å demontere! Noe holder disken i live."
        echo "Kjør 'lsof +D $MOUNT_POINT' i terminalen for å se hvem som blokkerer."
        echo "========================================="
        exit 1
    else
        echo "========================================="
        echo "✓ SUKSESS: 928 GB Hvelvet er nå trygt lukket og parkert."
        echo "========================================="
    fi
else
    echo "Hvelvet var allerede lukket."
fi
