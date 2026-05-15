#!/bin/bash

# Definer filnavn med tidsstempel (viktig for tidslinjen i arkivet)
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
DATE_FILE=$(date +"%Y%m%d_%H%M")
OUT_FILE="$HOME/AI_Hvelv/rag_data/WARLORD_Snapshot_$DATE_FILE.md"

echo "### WARLORD SYSTEM SNAPSHOT ###" > "$OUT_FILE"
echo "**Tidspunkt:** $TIMESTAMP" >> "$OUT_FILE"
echo "---" >> "$OUT_FILE"

echo "#### 1. MASKINVARE & OS ####" >> "$OUT_FILE"
echo '```text' >> "$OUT_FILE"
hostnamectl >> "$OUT_FILE"
lscpu | grep "Model name" >> "$OUT_FILE"
free -h >> "$OUT_FILE"
echo '```' >> "$OUT_FILE"

echo "#### 2. DISKSTRUKTUR & HVELV-STATUS ####" >> "$OUT_FILE"
echo '```text' >> "$OUT_FILE"
lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL >> "$OUT_FILE"
df -h "$HOME/AI_Hvelv" >> "$OUT_FILE"
echo '```' >> "$OUT_FILE"

echo "#### 3. NETTVERK & TILKOBLING ####" >> "$OUT_FILE"
echo '```text' >> "$OUT_FILE"
ip -brief addr >> "$OUT_FILE"
nmcli device status >> "$OUT_FILE"
echo '```' >> "$OUT_FILE"

echo "#### 4. AKTIVE TJENESTER & AI-STATUS ####" >> "$OUT_FILE"
echo '```text' >> "$OUT_FILE"
systemctl list-units --type=service --state=running | grep -E 'ollama|ssh|docker|container' >> "$OUT_FILE"
ollama list >> "$OUT_FILE"
echo '```' >> "$OUT_FILE"

echo "---" >> "$OUT_FILE"
echo "Snapshot fullført og lagret til $OUT_FILE"
