#!/bin/bash
powerprofilesctl set balanced
echo balanced | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
echo "CPU: balanced"
qdbus6 org.kde.KWin /Compositor resume
echo "Compositor gjenopprettet"
cat /sys/class/drm/card0/device/mem_info_vram_used | awk '{print "VRAM: " $1/1024/1024 " MB"}'
kill $(cat /tmp/vram-watcher.pid) 2>/dev/null
echo "✓ VRAM-watcher stoppet"

