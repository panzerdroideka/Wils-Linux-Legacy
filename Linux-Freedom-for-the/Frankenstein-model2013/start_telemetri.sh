#!/bin/bash
# Frankenstein Raw Sensor Logger

KATALOG="/home/wils/Gaminglogger"
LOGG_FIL="$KATALOG/Telemetri_$(date +%Y%m%d_%H%M%S).csv"

mkdir -p "$KATALOG"
echo "Tidspunkt,RAM_Brukt_MB,CPU_Temp_C,CPU_Last_%" > "$LOGG_FIL"

clear
echo "======================================================"
echo " 🛠️ FRANKENSTEIN TELEMETRI AKTIVERT"
echo "======================================================"
echo "Logger CPU, Temperatur og Minne hvert 2. sekund."
echo "Data lagres i: $LOGG_FIL"
echo ""
echo "🛑 TRYKK [CTRL+C] FOR Å STOPPE NÅR OPPDRAGET ER FERDIG"
echo "======================================================"

while true; do
    TID=$(date '+%H:%M:%S')
    RAM=$(free -m | awk '/^Mem:/ {print $3}')
    TEMP=$(sensors | awk '/Core 0/ {print $3}' | tr -d '+°C')
    CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    
    echo "$TID,$RAM,$TEMP,$CPU" >> "$LOGG_FIL"
    sleep 2
done
