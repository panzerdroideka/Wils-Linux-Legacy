#!/bin/bash
# ============================================================
# SCRIPT: vedlikehold.sh (Warlord F1-Edition v2)
# ============================================================
# Dette er et maskineri bygget med Ferrari F1 teamet's
# presisjon og perfeksjon som inspirasjon!
echo "Wils@This is the Way"

echo "--- 🔓 Starter Vedlikehold: Åpner hvelvet ---"
sudo mount -o remount,rw /
# Låser opp GRUB eksplisitt for å unngå feil senere
sudo chattr -i /etc/fstab /etc/default/grub /boot/grub/grub.cfg 2>/dev/null
sudo chattr -i /etc/apt/sources.list.d/* 2>/dev/null
echo "✓ Hvelv åpent (Read-Write)"

echo "--- 🧹 Fjerner APT-søppel og støy ---"
sudo rm -f /etc/apt/sources.list.d/*.tmp /etc/apt/sources.list.d/*_txt 2>/dev/null

echo "--- 📦 Kjører oppdaterings-sekvens (APT & Flatpak) ---"
sudo apt update && sudo apt full-upgrade -y
sudo flatpak update -y

echo "--- 🛠️ Kjører sikker systemrengjøring ---"
sudo ~/scripts/fix.sh
# clean.sh er fjernet da apt autoremove gjør jobben!

echo "--- ⚙ Oppdaterer GRUB og rydder pakkecache ---"
sudo apt autoremove -y && sudo apt autoclean
sudo update-grub

echo "--- 🔒 Klargjør for trygg hvelv-låsing ---"
sudo chattr +i /etc/fstab /etc/default/grub /boot/grub/grub.cfg
sudo chattr +i /etc/apt/sources.list.d/*.list /etc/apt/sources.list.d/*.sources 2>/dev/null

# F1-Sikkerhetsnett: Stopper demonene fullstendig så de slipper disk-håndtakene
echo "Tvinger avslutning av aktive bakgrunnsprosesser..."
sudo killall packagekitd 2>/dev/null
sudo systemctl stop udisks2.service 2>/dev/null
sudo systemctl stop systemd-journald.service 2>/dev/null

# Tømmer I/O-køen og lar BTRFS rydde opp etter grub-btrfs
sync
sleep 8

echo "Låser hvelvdøra..."
# Tillater systemd å puste, men verifiserer at F1-HVELVET (chattr) er låst
echo "Verifiserer immutabilitets-skjoldet..."

if sudo lsattr /boot/grub/grub.cfg 2>/dev/null | grep -q '\-i\-'; then
    echo "================================================="
    echo "✓ SUKSESS: F1-Hvelvet (chattr) er smekket i betong!"
    echo "================================================="
else
    echo "================================================="
    echo "❌ KRITISK FEIL: Systemfilene mangler immutable-flagg!"
    echo "================================================="
fi

# Starter essensielle tjenester igjen
sudo systemctl start systemd-journald.service 2>/dev/null
sudo systemctl start udisks2.service 2>/dev/null

echo "--- 🏁 VEDLIKEHOLD FULLFØRT ---"
sensors | grep "Package id 0"
