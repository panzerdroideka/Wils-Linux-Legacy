#!/bin/bash
# ====================================================================
# Prosjekt: Wils-Linux-Legacy (Warlord - Ryzen 7 / 780M)
# Skript:   warlord-telemetri.sh
# Funksjon: Live telemetri-dashbord (Kjører KUN i RAM, null I/O)
# ====================================================================

# Sjekker at sensors er installert
if ! command -v sensors &> /dev/null; then
    echo "FEIL: lm-sensors mangler. Kjør: sudo apt install lm-sensors"
    exit 1
fi

# Definerer HVOR loggfila ligger slik at data samles i samme loggfil
LOGGFILE="/home/wils/boot_historikk.log"

# Legg til dette tidlig i maale_reboot.sh
echo "Sjekker kjerne-versjon: $(uname -r)" >> "$LOGGFILE"

# Bruker watch for å tegne skjermen på nytt i RAM annethvert sekund
watch -n 2 -t '
echo "=========================================================="
echo " 🏎️  WARLORD F1 TELEMETRI - LIVE (Oppdateres 2s)        🏎️ "
echo "=========================================================="
echo ""
echo "[ MOTOR & GRAFIKK (Ryzen 7 + 780M) ]"
echo "----------------------------------------------------------"
sensors | grep -A 4 -E "^amdgpu-pci|^k10temp-pci"
echo ""
echo "[ NVMe SSD (Lagringshvelvet) ]"
echo "----------------------------------------------------------"
sensors | grep -A 2 -E "^nvme-pci"
echo ""
echo "[ RAM / MINNE-STATUS (32 GB) ]"
echo "----------------------------------------------------------"
free -h | grep -E "^Mem:" | awk "{print \"Totalt: \" \$2 \" | Brukt: \" \$3 \" | Ledig for LotRO: \" \$7}"
echo ""
echo "=========================================================="
echo " Trykk [CTRL+C] for å rygge ut av telemetrien."
'
