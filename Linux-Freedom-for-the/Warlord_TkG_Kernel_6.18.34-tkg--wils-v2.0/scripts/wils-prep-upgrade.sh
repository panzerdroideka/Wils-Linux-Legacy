#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils-prep-upgrade.sh
# Funksjon: DEL 1 - Åpner hvelvet og demaskerer alt med F1-presisjon
# ==========================================================================
echo "Wils@Warlord:~$ This is the Way"
echo ""
echo "=== Wils-Linux-Legacy: DEL 1 - Klargjøring før oppgradering ==="
echo "--------------------------------------------------------------------"

# Denne delen er unødvendig da btrfs i utgangspunktet er
# slik at / er mountet i rw ALLTID by DESIGN
# echo "1. Tvinger rot-filsystemet (/) til Read-Write (rw)..."
# sync
# sleep 3
#sudo mount -o remount,rw /

echo "1. Fjerner immutable-flagg (-i) med presisjon på systemfilene..."
# Vi låser kun opp det vi faktisk låste i DEL 3, ingen tung rekursiv tråling
sudo chattr -i /etc/fstab 2>/dev/null
sudo chattr -i /etc/apt/sources.list.d/ubuntu.sources 2>/dev/null
echo "--> Borer opp betongen rundt GRUB..."
sudo chattr -i /etc/default/grub 2>/dev/null
sudo chattr -i /boot/grub/grub.cfg 2>/dev/null
sudo chattr -i /boot/grub

echo "2. Renser opp i gamle korrupte krasjfiler (.tmp, .distUpgrade, .bak)..."
sudo rm -f /etc/apt/sources.list.d/*.tmp 2>/dev/null
sudo rm -f /etc/apt/sources.list.d/*.distUpgrade 2>/dev/null
sudo rm -f /etc/apt/sources.list.d/*.bak 2>/dev/null

echo "3. Avmaskerer alle herdede systemd-tjenester og sockets..."
UNITS="alsa-utils.service avahi-daemon.service cryptdisks-early.service \
cryptdisks.service cups.service dbus-org.freedesktop.Avahi.service \
dbus-org.freedesktop.ModemManager1.service google-chrome-update.service \
hwclock.service libvirtd.service ModemManager.service packagekit.service \
qemu-kvm.service saned.service screen-cleanup.service stop.service \
sudo.service systemctl.service udisks2.service virtlockd.service \
virtlogd.service x11-common.service avahi-daemon.socket \
libvirtd-admin.socket libvirtd-ro.socket libvirtd.socket \
virtlockd-admin.socket virtlockd.socket virtlogd-admin.socket virtlogd.socket"

sudo systemctl unmask $UNITS

echo "--------------------------------------------------------------------"
echo "✓ STATUS: Hvelvet er åpent! Systemet er 100% klart for oppgradering."
echo "===================================================================="
