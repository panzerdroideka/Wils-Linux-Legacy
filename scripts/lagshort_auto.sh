#!/bin/bash
# lagshort.sh - Warlord-rigg automatisk klipper

if [ "$#" -ne 2 ]; then
    echo "Bruk: ./lagshort.sh <loggfil.txt> <video.mp4>"
    exit 1
fi

LOGFILE="$1"
VIDEOFILE="$2"

# Finn siste 'defeated'-linje og hent tid
TIME_STR=$(grep "defeated" "$LOGFILE" | tail -n 1 | grep -oE "[0-9]{2}:[0-9]{2}:[0-9]{2}")

# Hent H, M, S ved å dele opp strengen
IFS=: read -r H M S <<< "$TIME_STR"
# Bruk 10# for å tvinge bash til å se på det som desimaltall (fjerner 08/09 feil)
DEFEAT_SECONDS=$(( (10#$H * 3600) + (10#$M * 60) + 10#$S ))

# Beregn starttid (45 sek før nederlag)
START_TIME=$((DEFEAT_SECONDS - 45))
[ "$START_TIME" -lt 0 ] && START_TIME=0

# Utfør klipping med FFmpeg
OUTPUT="Short_$(date +%s).mp4"
echo "Klipper fra $START_TIME sekunder..."

ffmpeg -ss "$START_TIME" -i "$VIDEOFILE" -t 55 \
    -vf "crop=ih*9/16:ih" -c:v libx264 -crf 23 -c:a copy "$OUTPUT"

echo "Ferdig! Lagret som $OUTPUT"
