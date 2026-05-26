#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils-immutize-vault.sh
# Funksjon: DEL 3 - Hard herding, maskering og fullstendig Vault-låsing (26.04)
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

echo "3. Forsegler kjernekonfigurasjoner med Immutable-flagg (+i)..."
sudo chattr +i /etc/fstab
sudo chattr +i /etc/apt/sources.list.d/ubuntu.sources
sudo chattr +i /etc/default/grub
sudo chattr +i /boot/grub/grub.cfg

echo "4. Tvinger rot-filsystemet (/) over i endelig Read-Only (ro) modus..."
sudo mount -o remount,ro /

echo "--------------------------------------------------------------------"
echo "Endelig verifisering av hvelvets tilstand:"
CURRENT_MOUNT=$(mount | grep ' / ' | grep -o '(ro')

if [ "$CURRENT_MOUNT" == "(ro" ]; then
    mount | grep ' / '
    echo "--------------------------------------------------------------------"
    echo "SUKSESS: Hvelvet er stengt! Wils-Linux-Legacy kjører i SIKKER modus."
else
    mount | grep ' / '
    echo "--------------------------------------------------------------------"
    echo "⚠️ ADVARSEL: Filsystemet nektet å gå i Read-Only (fremdeles rw)!"
    echo "En aktiv prosess sperrer disken. Kjør './wils-verify-upgrade.sh' og velg N for feilsøking."
fi
echo "===================================================================="
