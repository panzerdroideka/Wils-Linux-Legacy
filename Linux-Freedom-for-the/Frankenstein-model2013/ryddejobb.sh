#!/bin/bash

# 1. Oppretter målmappen
# mkdir -p /home/wils/Scripts

# 2. Liste over alle filene som skal flyttes
filer=(
    "/home/wils/Scripts/run_cold_backup.sh"
    "/home/wils/Scripts/sjekk_kamp.sh"
    "/home/wils/Scripts/timeshift-monitor.sh"
    "/home/wils/Scripts/sjekk-status.sh"
    "/home/wils/Scripts/lotro-samsung.sh"
    "/home/wils/Scripts/auto_setup.sh"
    "/home/wils/Scripts/check_traffic.sh"
    "/home/wils/Scripts/manage.sh"
    "/home/wils/Scripts/start-lotro-43inch.sh"
    "/home/wils/Scripts/start_widgets.sh"
    "/home/wils/Scripts/start-lotro-clean.sh"
    "/home/wils/Scripts/start-lotro-clean_spill_booter_ikke-.sh"
    "/home/wils/Scripts/auto-monitor.sh"
    "/home/wils/Scripts/fix-mouse.sh"
    "/home/wils/Scripts/start_lotro.sh"
    "/home/wils/Scripts/backup_and_log.sh"
    "/home/wils/Scripts/sjekk-oppstart.sh"
    "/home/wils/Scripts/spill.sh"
    "/home/wils/Scripts/sjekk-boot.sh"
)

echo "Starter flytting av skript til /home/wils/Scripts/ ..."

# 3. Flytter filene
for fil in "${filer[@]}"; do
    if [ -f "$fil" ]; then
        mv "$fil" /home/wils/Scripts/
        echo "Flyttet: $fil"
    else
        echo "Advarsel: Fant ikke $fil"
    fi
done

echo "Oppdaterer interne referanser og adresser i alle skript..."
cd /home/wils/Scripts/ || exit

# 4. Oppdaterer stiene internt i filene
for gammel_sti in "${filer[@]}"; do
    filnavn=$(basename "$gammel_sti")
    ny_sti="/home/wils/Scripts/$filnavn"

    # Bytt ut den nøyaktige fulle stien
    sed -i "s|$gammel_sti|$ny_sti|g" *.sh

    # Bytt ut varianter der skript kaller hverandre direkte i hjemmemappen
    sed -i "s|/home/wils/$filnavn|$ny_sti|g" *.sh
    sed -i "s|~/$filnavn|~/Scripts/$filnavn|g" *.sh
    sed -i "s|\./$filnavn|$ny_sti|g" *.sh
done

# Sikrer at alle filene fortsatt er kjørbare
chmod +x /home/wils/Scripts/*.sh

echo "Operasjon fullført. Skriptene er flyttet og adressene er oppdatert."
