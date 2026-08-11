#!/bin/bash

if [ "$#" -ne 2 ]; then echo "Bruk: ./lagshort.sh <loggfil.txt> <video.mp4>"; exit 1; fi

LOGFILE="$1"
VIDEOFILE="$2"

# 1. Hent siste 'defeated' tidspunkt
TIME_LINE=$(grep "defeated" "$LOGFILE" | tail -n 1)
TIME_STR=$(echo "$TIME_LINE" | grep -oE "[0-9]{2}:[0-9]{2}:[0-9]{2}")
AMPM=$(echo "$TIME_LINE" | grep -oE "AM|PM")

# 2. Håndter 12-timers format (hvis PM og ikke 12, legg til 12 timer)
H=$(echo $TIME_STR | cut -d: -f1 | sed 's/^0*//')
M=$(echo $TIME_STR | cut -d: -f2 | sed 's/^0*//')
S=$(echo $TIME_STR | cut -d: -f3 | sed 's/^0*//')

if [ "$AMPM" == "PM" ] && [ "$H" -ne 12 ]; then H=$((H + 12)); fi
if [ "$AMPM" == "AM" ] && [ "$H" -eq 12 ]; then H=0; fi

# 3. Beregn sekunder fra midnatt, trekk fra logg-starttidspunktet for å få videotid
# Vi antar loggstart er ca 02:56 PM (14:56)
LOG_START_H=14
LOG_START_M=56
TOTAL_SEC_LOG=$(( (H * 3600 + M * 60 + S) - (LOG_START_H * 3600 + LOG_START_M * 60) ))

# 4. Klippepunkt (Start 45 sek før nederlag)
START_SEC=$(( TOTAL_SEC_LOG - 45 ))
[ "$START_SEC" -lt 0 ] && START_SEC=0

echo "Triangulering: Klipp starter ved $START_SEC sekunder."

ffmpeg -ss "$START_SEC" -i "$VIDEOFILE" -t 55 \
    -vf "crop=ih*9/16:ih" -c:v libx264 -crf 23 -c:a copy "Resultat_Short.mp4"
