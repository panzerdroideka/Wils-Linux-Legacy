#!/bin/bash
# =========================================================
# Wils Edison-Scanner: Automagisk Action-Finner (Med Meny)
# =========================================================
# Filosofi: Maskinen skal gjøre jobben, operatøren skal hvile fingrene.

# Åpner KDE fil-velger spesifikt for å finne den fete MangoHud-loggen
LOGFILE=$(kdialog --getopenfilename "$HOME" "*.csv | CSV Telemetri-filer")

# Stopper skriptet pent hvis du trykker "Avbryt"
if [ -z "$LOGFILE" ]; then
    echo "Ingen loggfil valgt. Avbryter The Edison Way-søk."
    exit 0
fi

echo "========================================================="
echo "⚡ Skanner den fete loggfilen for massive FPS-utslag:"
echo "Fil: $LOGFILE"
echo "========================================================="
echo "Tidspunkt i video (Sekunder) | Registrert FPS"
echo "---------------------------------------------------------"

# Utfører den lynraske skanningen av valgt fil
awk -F',' 'NR>1 {print "Opptak på " NR-1 " sekunder | FPS drop til: " $1}' "$LOGFILE" | sort -t':' -k2 -n | head -n 10

echo "========================================================="
echo "Bruk disse sekund-tallene i LosslessCut for å hente ut action!"
