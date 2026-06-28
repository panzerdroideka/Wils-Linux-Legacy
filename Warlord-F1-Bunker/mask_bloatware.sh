#!/bin/bash
# ==============================================================================
# Wils-Linux-Legacy: Warlord F1-Bunker - Tjeneste-utrenskning
# Formål: Maskere unødvendig bloatware for å sikre absolutt I/O-kontroll og ytelse.
# ==============================================================================

echo "Starter Warlord-herding: Maskerer unødvendige tjenester..."

sudo systemctl mask packagekit.service
sudo systemctl mask avahi-daemon.service
sudo systemctl mask avahi-daemon.socket
sudo systemctl mask ModemManager.service
sudo systemctl mask udisks2.service

echo ""
echo "SUKSESS: Bloatware er sendt til /dev/null."
