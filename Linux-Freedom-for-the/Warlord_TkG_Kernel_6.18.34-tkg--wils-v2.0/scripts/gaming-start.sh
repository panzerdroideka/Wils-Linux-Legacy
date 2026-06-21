
#!/bin/bash
# ============================================================
# SCRIPT: gaming-start.sh (Warlord F1-Edition)
# ============================================================

# 1. Frigjør ressurser kontrollert
pkill -f chrome && echo "Chrome lukket" || echo "Chrome kjørte ikke"

# 2. Tvinger maskinvaren i F1-modus
powerprofilesctl set performance
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
echo "CPU-Governor: PERFORMANCE aktivert"

# Sørger for at RAM er helt renset og tømt for gamle fil-cacher før start
sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null

# 3. Minnestatus (leser uten å sabotere cachen)
free -h | grep Mem | awk '{print "RAM ledig for kamp: " $7}'

# 4. Tenner motoren
echo "Starter LotRO (MangoHud & FSR aktivert)..."
env WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe &

echo "========================================="
echo "✓ WARLORD er klar for Umbar."
echo "========================================="
