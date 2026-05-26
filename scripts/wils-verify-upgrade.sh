#!/bin/bash
# ==========================================================================
# Prosjekt: Wils-Linux-Legacy (Frankenstein / Warlord)
# Skript:   wils-verify-upgrade.sh
# Funksjon: DEL 2 - Tvinger frem stikkprøver med interaktiv Y/N-sjekk
# ==========================================================================

clear
echo "=== Wils-Linux-Legacy: DEL 2 - Strategisk Verifisering ==="
echo "===================================================================="
echo ""

# Stikkprøve 1: Kjerneversjon
echo "[STIKKPRØVE 1] Aktiv Kernel (uname -r):"
echo "--------------------------------------------------------"
uname -r
echo ""

# Stikkprøve 2: OS-distribusjon
echo "[STIKKPRØVE 2] Aktiv OS-versjon (lsb_release):"
echo "--------------------------------------------------------"
lsb_release -a 2>/dev/null || cat /etc/os-release | grep -E '^PRETTY_NAME=|^VERSION='
echo ""

# Stikkprøve 3: Monteringsstatus
echo "[STIKKPRØVE 3] Gjeldende mount-tilstand for /:"
echo "--------------------------------------------------------"
mount | grep ' / '
echo ""
echo "===================================================================="

# Den avgjørende beslutningsporten
read -p "Stemmer stikkprøvene med vår immutiserings-strategi? (Y/N): " svar

if [[ "$svar" =~ ^[Yy]$ ]]; then
    echo ""
    echo "--> [Y] Verifisert! Kobler inn automatisk overgang til DEL 3..."
    echo "--------------------------------------------------------"
    if [ -f "./wils-immutize-vault.sh" ]; then
        ./wils-immutize-vault.sh
    else
        echo "FEIL: Finner ikke 'wils-immutize-vault.sh' i denne mappen."
        echo "Vennligst kjør DEL 3-skriptet manuelt for å låse hvelvet!"
    fi
else
    echo ""
    echo "===================================================================="
    echo "--> [N] AVBRUTT: Immutisering ble holdt tilbake etter ditt ønske."
    echo "Systemet forblir i skrivemodus (rw) så vi kan analysere feil."
    echo ""
    echo "Feilsøkings-verktøy for deg og din AI-kollega:"
    echo "Kjør dette for kjernefeil:   sudo dmesg | tail -n 50"
    echo "Kjør dette for systemfeil:  sudo journalctl -p 3 -xb"
    echo "===================================================================="
fi
