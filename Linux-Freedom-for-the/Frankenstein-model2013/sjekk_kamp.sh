#!/bin/bash
# Script for å hente ut siste kampdata fra LotRO
LOG_PATH="/home/wils/Documents/The Lord of the Rings Online/LotroChat.log"

if [ -f "$LOG_PATH" ]; then
    echo "--- SISTE KAMP DATA ---"
    # Henter de siste 20 linjene som inneholder ordet 'scored' (skade ut) eller 'points' (skade inn)
    tail -n 100 "$LOG_PATH" | grep -E "scored|points|defeated" | tail -n 20
    echo "------------------------"
    echo "Kopier teksten over og lim den inn i chatten her."
else
    echo "Fant ikke loggfilen i $LOG_PATH."
    echo "Husk å skrive /chatlog on inne i spillet først!"
fi
