#!/bin/bash

# Konfigurasjon
MOUNTPOINT="/media/wils/backup"
SNAPSHOT_DIR="$MOUNTPOINT/timeshift/snapshots"
CACHE_FILE="$HOME/.timeshift_last_seen"

# Sjekk om disken er montert
if mountpoint -q "$MOUNTPOINT"; then
    # --- DISKEN ER TILKOBLET (ONLINE) ---
    
    # 1. Finn brukt plass (Raskere enn å telle filer)
    # Vi leser 'Used' kolonnen fra df kommandoen
    SIZE=$(df -h "$MOUNTPOINT" | awk 'NR==2 {print $3}')
    TOTAL=$(df -h "$MOUNTPOINT" | awk 'NR==2 {print $2}')
    
    # 2. Finn siste snapshot (Dato fra mappenavn)
    # Vi lister mappene, sorterer, og tar den siste. 
    # 2>/dev/null skjuler feil hvis vi ikke har lov (men wils bør ha lov).
    LAST_SNAP=$(ls -1 "$SNAPSHOT_DIR" 2>/dev/null | sort | tail -n 1)
    
    # Hvis vi ikke fant noen mappe (tom disk?), sett tekst
    if [ -z "$LAST_SNAP" ]; then
        LAST_SNAP="Ingen funnet"
    fi

    # 3. Lagre info til "Lappen" (Cache)
    echo "ONLINE" > "$CACHE_FILE"
    echo "$SIZE / $TOTAL" >> "$CACHE_FILE"
    echo "$LAST_SNAP" >> "$CACHE_FILE"
    date "+%d.%m.%Y %H:%M" >> "$CACHE_FILE" # Tidspunkt for sjekk

    # 4. Vis info til Conky NÅ
    echo "\${color green}MONTERT / ONLINE\${color}"
    echo "\${color grey}Lagring:\${color} $SIZE / $TOTAL"
    echo "\${color grey}Siste snapshot:\${color}"
    echo "$LAST_SNAP"

else
    # --- DISKEN SOVER (OFFLINE) ---
    
    # Sjekk om vi har en lapp fra sist
    if [ -f "$CACHE_FILE" ]; then
        # Les linje 2 (Størrelse) og 3 (Dato) fra fila
        CACHED_SIZE=$(sed -n '2p' "$CACHE_FILE")
        CACHED_SNAP=$(sed -n '3p' "$CACHE_FILE")
        CHECK_TIME=$(sed -n '4p' "$CACHE_FILE")

        echo "\${color red}DISK SOVER (Frakoblet)\${color}"
        echo "\${color grey}Sist sett ($CHECK_TIME):\${color}"
        echo "Lagring: $CACHED_SIZE"
        echo "Siste snap: $CACHED_SNAP"
    else
        echo "\${color red}DISK SOVER\${color}"
        echo "Ingen historikk funnet."
    fi
fi
