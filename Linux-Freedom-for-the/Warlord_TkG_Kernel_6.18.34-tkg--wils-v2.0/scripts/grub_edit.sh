#!/bin/bash
# Grub-Edit-Helper: Sikker skriving til GRUB-miljøet

MOUNTPOINT="/boot/efi" # Juster til din /boot/grub lokasjon
TARGET_FILE="/boot/grub/grubenv"

echo "Remounter $MOUNTPOINT som RW..."
sudo mount -o remount,rw "$MOUNTPOINT"

# Utfør kommandoen brukeren ønsket (i dette tilfellet grub-editenv)
"$@"

echo "Remounter $MOUNTPOINT som RO (Sikrer integritet)..."
sudo mount -o remount,ro "$MOUNTPOINT"
