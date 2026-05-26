#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils_prep_upgrade.sh
# Funksjon: DEL 1 - Åpner alle porter og demaskerer alt før oppgradering
# ==========================================================================

echo "=== Wils-Linux-Legacy: DEL 1 - Klargjøring før oppgradering ==="
echo "--------------------------------------------------------------------"

echo "1. Tvinger rot-filsystemet (/) til Read-Write (rw)..."
sudo mount -o remount,rw /

echo "2. Fjerner immutable (-i) og append-only (-a) flagg rekursivt..."
sudo chattr -R -i /boot /etc /usr /var 2>/dev/null
sudo chattr -R -a /boot /etc /usr /var 2>/dev/null

echo "3. Renser opp i gamle korrupte krasjfiler (.tmp, .distUpgrade, .bak)..."
sudo rm -f /etc/apt/sources.list.d/*.tmp
sudo rm -f /etc/apt/sources.list.d/*.distUpgrade
sudo rm -f /etc/apt/sources.list.d/*.bak

echo "4. Avmaskerer alle herdede systemd-tjenester og sockets..."
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
echo "STATUS: Banen er feid ren! Systemet er 100% åpent for oppgradering."
echo "===================================================================="
