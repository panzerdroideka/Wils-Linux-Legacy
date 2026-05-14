#!/bin/bash
# 🎮 LOTRO FRANKENSTEIN LAUNCHER 🎮
# "Clean Start, Clean Exit"

# --- 1. PRE-GAME CLEANUP (The Kill Switch) ---
# This kills any "zombie" wine processes from yesterday
echo "🧹 Cleaning up old Wine processes..."
wineserver -k
sleep 2

# --- 2. SETUP ENVIRONMENT ---
# Navigate to the "Holy Folder"
cd "$HOME/LOTRO_BERGET/Spillfiler"

# --- 3. START THE GAME ---
# DRI_PRIME=1 activates the AMD Radeon GPU for performance.
# We keep the /desktop command if you prefer the virtual window container,
# but now we ensure the memory is clean first.
echo "🚀 Launching LotRO..."
MANGOHUD=1 DRI_PRIME=1 wine explorer /desktop=LotRO,1920x1080 LotroLauncher.exe

# --- 4. POST-GAME CLEANUP ---
# As soon as you close the game window, this runs.
echo "🛑 Game closed. Nuking remaining Wine processes..."
wineserver -k

# Notify the user
notify-send "LotRO Status" "Game closed. Memory cleaned."
