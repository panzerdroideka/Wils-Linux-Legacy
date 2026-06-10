#!/bin/bash
# ============================================================
# SCRIPT: gaming-stop.sh (Warlord F1-Edition)
# ============================================================

# 1. Kjøler ned motoren til hvilepuls
powerprofilesctl set balanced
echo balanced | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
echo "CPU-Governor: BALANCED (Hvilemodus aktivert)"

# 2. Våkner skrivebordsmiljøet for fullt (Sikkerhetsnett for KWin)
qdbus6 org.kde.KWin /Compositor resume 2>/dev/null
echo "Compositor: Sjekket og aktiv"

# 3. Siste VRAM-telemetri
cat /sys/class/drm/card0/device/mem_info_vram_used | awk '{print "VRAM brukt ved avslutning: " $1/1024/1024 " MB"}'

echo "========================================="
echo "✓ WARLORD er tilbake i sivil modus."
echo "========================================="

