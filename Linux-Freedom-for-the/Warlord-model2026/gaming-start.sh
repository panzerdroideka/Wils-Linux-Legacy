#!/bin/bash
pkill -f chrome && echo "Chrome lukket" || echo "Chrome kjørte ikke"
powerprofilesctl set performance
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
echo "CPU: performance"
echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null
echo "Cache tømt"
free -h | grep Mem | awk '{print "RAM ledig: " $7}'
echo "Starter LotRO..."
env WINEPREFIX=/home/wils/.wine_lotro MANGOHUD=1 WINE_FULLSCREEN_FSR=1 WINE_FULLSCREEN_FSR_STRENGTH=2 WINEDEBUG=-all STAGING_SHARED_MEMORY=1 wine /home/wils/Games/WARLORDLOTRO/Spillfiler/LotroLauncher.exe &
~/scripts/vram-watcher.sh &
echo $! > /tmp/vram-watcher.pid
echo "✓ VRAM-watcher startet"

