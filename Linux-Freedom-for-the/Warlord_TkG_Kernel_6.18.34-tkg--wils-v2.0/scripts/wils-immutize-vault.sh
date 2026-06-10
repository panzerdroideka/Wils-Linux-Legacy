#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils-immutize-vault.sh
# Funksjon: DEL 3 - Hard herding, maskering og feilsikker Vault-låsing (2026)
# ==========================================================================

echo "=== Wils-Linux-Legacy: DEL 3 - Utfører Vault-låsing ==="
echo "--------------------------------------------------------------------"

echo "1. Sørger for at rotfilsystemet er i skrivemodus under herding..."
sudo mount -o remount,rw /

echo "2. Re-maskerer samtlige herdede systemd-tjenester og sockets..."
UNITS="alsa-utils.service avahi-daemon.service cryptdisks-early.service \
cryptdisks.service cups.service dbus-org.freedesktop.ModemManager1.service \
hwclock.service libvirtd.service ModemManager.service packagekit.service \
qemu-kvm.service saned.service screen-cleanup.service \
sudo.service udisks2.service virtlockd.service \
virtlogd.service x11-common.service avahi-daemon.socket cups.socket \
libvirtd-admin.socket libvirtd-ro.socket libvirtd.socket \
virtlockd-admin.socket virtlockd.socket virtlogd-admin.socket virtlogd.socket"

# --force tvinger systemd til å overskrive gamle D-Bus-koblinger fra oppgraderingen
sudo systemctl mask --force $UNITS

echo "--> Venter på at systemprosesser skal slippe taket..."
sudo systemctl stop fwupd 2>/dev/null
sudo sync
sleep 3

echo "3. Forsegler kjernekonfigurasjoner med Immutable-flagg (+i)..."
sudo chattr +i /etc/fstab
sudo chattr +i /etc/apt/sources.list.d/ubuntu.sources
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg
sudo chattr +i /boot/grub

echo "4. Klargjør systemet og tømmer I/O-køen..."
sync
sleep 2
echo "--> Vrir om hovednøkkelen (Remount til Read-Only)..."
sudo mount -o remount,ro /

echo "5. Verifiserer F1-Hvelvets sanne immutabilitet..."
echo "--------------------------------------------------------------------"

# Sjekker at chattr-betongen faktisk har herdet over kjernefilene
if sudo lsattr /boot/grub/grub.cfg 2>/dev/null | grep -q '\-i\-'; then
    echo "================================================="
    echo "✓ SUKSESS: F1-Hvelvet (chattr) er smekket i betong!"
    echo "================================================="
else
    echo "================================================="
    echo "❌ KRITISK FEIL: Systemfilene mangler immutable-flagg!"
    echo "Kjør prepupgrade og prøv igjen."
    echo "================================================="
fi

echo "=== WILS-LINUX-LEGACY: VEDLIKEHOLD FULLFØRT ==="
