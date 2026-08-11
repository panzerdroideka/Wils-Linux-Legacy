#!/bin/bash
# =========================================================
# Wils Shorts-Crafter: 16:9 til 9:16 med KDE Dialog
# =========================================================

# Åpner en visuell boks slik at du kan finne MP4-filen
IN_FILE=$(kdialog --getopenfilename "$HOME" "*.mp4 | MP4-filer")

if [ -z "$IN_FILE" ]; then
    echo "Ingen videofil valgt. Avbryter."
    exit 0
fi

# Døper den nye filen til _vertikal.mp4 for å holde det ryddig
OUT_FILE="${IN_FILE%.*}_vertikal.mp4"

echo "========================================================="
echo "Starter The Edison Way konvertering..."
echo "Klipper ut 9:16 sentrum av: $IN_FILE"

# FFmpeg-fiks: Fjernet parenteser og la til 'trunc' for å sikre hele piksler
ffmpeg -y -i "$IN_FILE" -vf "crop=trunc(ih*9/16):ih" -c:a copy "$OUT_FILE"

# Sjekker om FFmpeg faktisk klarte jobben før den jubler
if [ $? -eq 0 ]; then
    echo "========================================================="
    echo "Suksess! Din nye Shorts-video er klar:"
    echo "$OUT_FILE"
    echo "========================================================="
else
    echo "========================================================="
    echo "FEIL: FFmpeg traff en vegg! Sjekk feilmeldingen over."
    echo "========================================================="
fi
