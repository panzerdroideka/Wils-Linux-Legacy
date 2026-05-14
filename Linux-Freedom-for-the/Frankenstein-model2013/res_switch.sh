#!/bin/bash

# --- KONFIGURASJON ---
# Vi prøver å finne skjermnavnet automatisk. 
# Hvis scriptet ikke virker, kan du bytte ut $(...) under med navnet, f.eks. "eDP-1" eller "HDMI-1".
SKJERM=$(xrandr | grep " connected" | cut -d ' ' -f1 | head -n 1)

# Definer oppløsningene dine her
HIGH_RES="1366x768"
LOW_RES="864x486"

# Finn nåværende oppløsning
CURRENT=$(xrandr | grep "*" | awk '{print $1}')

# --- LOGIKK ---
if [ "$CURRENT" == "$HIGH_RES" ]; then
    # Bytt til spill-modus
    xrandr --output $SKJERM --mode $LOW_RES
    notify-send "Frankenstein Modus" "Gaming-oppløsning ($LOW_RES) aktivert!" --icon=video-display
else
    # Bytt tilbake til arbeids-modus
    xrandr --output $SKJERM --mode $HIGH_RES
    notify-send "Frankenstein Modus" "Skrivebords-oppløsning ($HIGH_RES) aktivert!" --icon=video-display
fi
