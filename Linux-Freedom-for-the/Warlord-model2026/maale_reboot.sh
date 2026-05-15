#!/bin/bash
# Henter dato og klokkeslett
DATO=$(date "+%Y-%m-%d %H:%M:%S")
# Henter total boot-tid fra systemd-analyze
BOOT_TIME=$(systemd-analyze | head -n 1)
# Legger resultatet inn i historikk-fila
echo "[$DATO] $BOOT_TIME" >> /home/wils/boothistorikk.txt
