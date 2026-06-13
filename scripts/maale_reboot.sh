#!/bin/bash
# Henter dato og klokkeslett
DATO=$(date "+%Y-%m-%d %H:%M:%S")
# Legg til dette tidlig i maale_reboot.sh
# Definerer HVOR loggfila ligger slik at data samles i samme loggfil
LOGGFILE="/home/wils/boot_historikk.log"

echo "Sjekker kjerne-versjon: $(uname -r)" >> "$LOGGFILE"
# Henter total boot-tid fra systemd-analyze
BOOT_TIME=$(systemd-analyze | head -n 1)
# Legger resultatet inn i historikk-fila
echo "[$DATO] $BOOT_TIME" >> /home/wils/boothistorikk.txt
