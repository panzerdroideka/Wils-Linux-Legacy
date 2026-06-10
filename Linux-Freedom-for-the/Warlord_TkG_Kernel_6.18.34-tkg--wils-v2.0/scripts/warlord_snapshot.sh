#!/bin/bash
# ============================================================
# SCRIPT: warlord_snapshot.sh (Warlord F1-Edition for RAG)
# ============================================================

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
DATE_FILE=$(date +"%Y%m%d_%H%M")
OUT_FILE="$HOME/AI_Hvelv/rag_data/WARLORD_Snapshot_$DATE_FILE.md"

# Sikrer at mappen faktisk eksisterer, ellers feiler lagringen
mkdir -p "$HOME/AI_Hvelv/rag_data"

# F1-metode: Åpner filen kun én gang og dytter alt inn i en kontinuerlig strøm
{
    echo "### WARLORD SYSTEM SNAPSHOT ###"
    echo "**Tidspunkt:** $TIMESTAMP"
    echo "---"

    echo "#### 1. MASKINVARE & OS ####"
    echo '```text'
    hostnamectl
    lscpu | grep "Model name"
    free -h
    echo '```'

    echo "#### 2. DISKSTRUKTUR & HVELV-STATUS ####"
    echo '```text'
    lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL
    df -h "$HOME/AI_Hvelv"
    echo '```'

    echo "#### 3. NETTVERK & TILKOBLING ####"
    echo '```text'
    ip -brief addr
    nmcli device status 2>/dev/null
    echo '```'

    echo "#### 4. AKTIVE TJENESTER & AI-STATUS ####"
    echo '```text'
    systemctl list-units --type=service --state=running | grep -E 'ollama|ssh|docker|container'
    # Sender feilmeldinger ut i intet hvis Ollama ikke er startet
    ollama list 2>/dev/null
    echo '```'
    echo "---"
} > "$OUT_FILE"

echo "✓ Snapshot fullført og lagret lynraskt til $OUT_FILE"
