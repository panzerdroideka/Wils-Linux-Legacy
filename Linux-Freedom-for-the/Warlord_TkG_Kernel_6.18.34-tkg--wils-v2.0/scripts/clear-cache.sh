#!/bin/bash
# ============================================================
# SCRIPT: clear-cache.sh (Warlord F1-Edition)
# ============================================================

echo "--- 🧹 Starter F1-optimalisert systemrens ---"

# 1. Sikker logg-trimming (Beholder kun de siste 2 dagene)
echo "Trimmer systemlogger..."
sudo journalctl --vacuum-time=2d

# 2. Kirurgisk fjerning av nettleser- og bilde-søppel
# Vi sletter IKKE hele ~/.cache, da Plasma trenger shader-cachen sin for bildeflyt!
echo "Tømmer Chrome-cache og thumbnails..."
rm -rf /home/wils/.cache/thumbnails/* 2>/dev/null
rm -rf /home/wils/.cache/google-chrome/Default/Cache/* 2>/dev/null

echo "========================================="
echo "✓ WARLORD: Systemet er trimmet og klart!"
echo "========================================="
