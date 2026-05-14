#!/bin/bash
echo "--- OPPSTARTSRAPPORT ---"
systemd-analyze
echo "------------------------"
systemd-analyze blame | head -n 15
echo ""
read -p "Trykk Enter for å lukke..."
