#!/bin/bash
# 🎮 LOTRO SAMSUNG D3D11 RESTORE 🎮
# Vi bruker Virtual Desktop fordi Radeon-kortet ditt krever det for stabil D3D11.

# --- 1. CLEANUP ---
echo "🧹 Cleaning up..."
wineserver -k
sleep 2

# --- 2. START GAME (MED DESKTOP CONTAINER) ---
cd "$HOME/LOTRO_BERGET/Spillfiler"

echo "🚀 Launching LotRO D3D11 (Virtual Desktop Mode)..."

# VIKTIG: Vi bruker 'explorer /desktop' igjen.
# Dette var nøkkelen i 'start-lotro-43inch.sh' som fikk det til å virke i en uke.
# DRI_PRIME=1 sørger for at Radeon-kortet gjør jobben.

DRI_PRIME=1 wine explorer /desktop=LotRO,1920x1080 LotroLauncher.exe

# --- 3. POST-GAME CLEANUP ---
echo "🛑 Game closed."
wineserver -k
notify-send "LotRO Status" "Game closed."
