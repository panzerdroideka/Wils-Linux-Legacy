#!/bin/bash
# Wils-Linux-Legacy v2.0.1 - YT Stats Generator (GULLVEGG-VERSJON)

LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"

echo "=== WARLORD STRIDS-TELEMETRI ==="
# Henter siste operatørinfo fra loggen
grep "Operatør" "$LOGG" | tail -n 1

echo ""
echo "⚡ TOPP KRAFT-ANGREP (LIGHTNING & FIRE):"
# Enkel filtrering for å vise interessante linjer (du kan utvide denne senere)
grep -i -E "Lightning|Fire" "$LOGG" | tail -n 10

echo ""
echo "💚 OVERLEVELSE & HELBREDELSE:"
grep -i "heal" "$LOGG" | tail -n 3

# Legg til signaturen og tags
echo ""
cat ~/scripts/tags.txt
