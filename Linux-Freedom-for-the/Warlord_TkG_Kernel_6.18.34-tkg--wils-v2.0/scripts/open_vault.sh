#!/bin/bash
# ============================================================
# SCRIPT: open_vault.sh (Warlord F1-Edition)
# ============================================================

UUID="2f17dcce-b802-4960-a60d-cecf2676ece1"
MOUNT_POINT="$HOME/AI_Hvelv"

echo "--- 🔓 Åpner det STORE Warlord-hvelvet (sda3) ---"

# 1. Sjekk og frigjør monteringspunktet kontrollert hvis det er aktivt
if mountpoint -q "$MOUNT_POINT"; then
    echo "Monteringspunktet er opptatt. Demonterer eksisterende økt..."
    sudo umount "$MOUNT_POINT" 2>/dev/null
    sleep 0.5
fi

# 2. Tenner monteringen med F1-ytelse (noatime eliminerer unødvendig leseskriving)
echo "Kobler til 928 GB datadisken..."
sudo mount -U "$UUID" "$MOUNT_POINT" -o noatime

# 3. Sikkerhetsporten: Sjekk om disken faktisk kom online
if mountpoint -q "$MOUNT_POINT"; then

    # Opprett datamappen KUN hvis den ikke eksisterer fra før
    if [ ! -d "$MOUNT_POINT/WARLORD_AI_DATA" ]; then
        echo "Førstegangsoppsett: Oppretter WARLORD_AI_DATA..."
        mkdir -p "$MOUNT_POINT/WARLORD_AI_DATA"
        # Kjører kun chown ÉN gang under fødselen for å unngå fremtidig I/O-kvern
        sudo chown $USER:$USER "$MOUNT_POINT/WARLORD_AI_DATA"
    fi

    echo "========================================="
    echo "✓ SUKSESS: Hvelvet er online!"
    echo "Sti: $MOUNT_POINT/WARLORD_AI_DATA"
    echo "========================================="
else
    echo "========================================="
    echo "❌ KRITISK FEIL: Klarte ikke å montere sda3!"
    echo "Operasjonen ble avbrutt for å beskytte rotfilsystemet."
    echo "========================================="
    exit 1
fi
