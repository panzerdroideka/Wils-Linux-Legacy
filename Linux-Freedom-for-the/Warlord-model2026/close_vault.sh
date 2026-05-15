#!/bin/bash

MOUNT_POINT="$HOME/AI_Hvelv"

echo "--- Sikrer og lukker WARLORD AI-Hvelv ---"

# 1. Stopp AI-motorene før demontering
echo "Stopper Ollama og AnythingLLM..."
killall -9 anythingllm-desktop 2>/dev/null
killall -9 ollama 2>/dev/null

# 2. Vent et sekund på at filsystemet slipper taket
sleep 1

# 3. Demonter disken
sudo umount $MOUNT_POINT

echo "Hvelvet er nå trygt lukket."
