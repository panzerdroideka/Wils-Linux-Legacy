
# --- SYSTEMD ANALYSE & LOGGFØRING (Lagt til 18.01.2026) ---
# Vent 1 sek for å la systemd lande helt
sleep 1 

LOGG_FIL="$HOME/boot_historikk.txt"
RAW_DATA=$(systemd-analyze)

# Hent ut selve tallet for total tid (siste tallet i linja)
TOTAL_SEK=$(echo "$RAW_DATA" | grep -oP '=\s*\K[0-9.]+')

# Bruk awk for å trekke fra 5 sekunder (ventetid)
REELL_TID=$(awk "BEGIN {print $TOTAL_SEK - 5}")

# Skriv til historikk-fila
echo "----------------------------------------------------------------" >> "$LOGG_FIL"
echo "$(date '+%Y-%m-%d %H:%M') - $RAW_DATA" >> "$LOGG_FIL"
echo "   -> INFO: Inkluderer 5s bevisst ventetid for HDMI/Mus-fix." >> "$LOGG_FIL"
echo "   -> REELL 'FRANKENSTEIN-FART': $REELL_TID sekunder." >> "$LOGG_FIL"
conky --daemonize --pause=5
