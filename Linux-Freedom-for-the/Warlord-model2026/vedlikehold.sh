#!/bin/bash
# Oppdatert vedlikehold for WARLORD - Alt-i-ett fiks

echo "--- Starter Vedlikehold: Låser opp systemet ---"
sudo mount -o remount,rw /
echo "---ROOT er nå rw---"
sudo chattr -i /etc/apt/sources.list.d/* /etc/fstab /etc/default/grub /boot/grub/grub.cfg 2>/dev/null

echo "--- Kjører oppdaterings-sekvens ---"
sudo apt update && sudo apt full-upgrade -y

echo "---Kjører rengjøring av systemet (Direkte stier)---"
# Vi bruker direkte stier her siden aliaser ikke virker inne i skriptet
echo "---Kjører rengjøring av systemet (Direkte stier)---"
# Vi legger til sudo foran hver linje her[cite: 3, 4]
sudo ~/scripts/fix.sh
sudo ~/scripts/clean.sh
sudo ~/scripts/rens.sh
sudo ~/scripts/clear-cache.sh

echo "--- Oppdaterer GRUB (viktig for kernel-endringer) ---"
sudo update-grub

echo "--- Rydd opp i pakker og cache ---"
sudo apt autoremove -y && sudo apt autoclean

echo "--- Låser systemet igjen (Immutizing) ---"
sudo chattr +i /etc/apt/sources.list.d/* /etc/fstab /etc/default/grub /boot/grub/grub.cfg

echo "---ROOT låses igjen---"
# Det er helt normalt at denne melder 'busy' hvis du har programmer åpne
sudo mount -o remount,ro /

echo "--- Kjører Magic Number 3 for å tømme RAM ---"
sync && echo 3 | sudo tee /proc/sys/vm/drop_caches

echo "--- SIKKERHETSOPPDATERING FULLFØRT ---"
sensors | grep "Package id 0"
