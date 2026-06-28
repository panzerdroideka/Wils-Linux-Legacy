#!/bin/bash
# ==============================================================================
# Wils-Linux-Legacy: Warlord F1-Bunker - Grafikk-Skjoldet
# Formål: Låse Mesa-stakken for å opprettholde "Ferrari-standarden" i Wayland.
# ==============================================================================

echo "Aktiverer Grafikk-Skjoldet for Warlord-arkitekturen..."

sudo apt-mark hold libegl-mesa0 libgbm1 libgl1-mesa-dri libglx-mesa0 mesa-libgallium mesa-opencl-icd

echo ""
echo "SUKSESS: Mesa-stakken er nå støpt i betong!"
echo "For å fjerne skjoldet senere, kjør:"
echo "sudo apt-mark unhold libegl-mesa0 libgbm1 libgl1-mesa-dri libglx-mesa0 mesa-libgallium mesa-opencl-icd"
