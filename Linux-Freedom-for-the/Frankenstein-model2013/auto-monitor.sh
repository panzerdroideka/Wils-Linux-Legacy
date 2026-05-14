#!/bin/bash
# TITANIUM ARMOR SCRIPT 🛡️
# 1. Styrer Skjerm (HDMI vs Laptop)
# 2. Fikser Kensington SlimBlade-knapper

# Vent litt så systemet våkner
sleep 3

# --- SKJERM ---
if xrandr | grep "HDMI-1 connected"; then
    # KABELEN ER I: Kun Monitor, 1080p
    xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output LVDS-1 --off
else
    # INGEN KABEL: Laptop-skjerm på
    xrandr --output LVDS-1 --primary --auto --output HDMI-1 --off
fi

# --- MUS (Kensington SlimBlade Pro Fix) ---
# Vent 2 sekunder til for å la USB-portene roe seg
sleep 2
# Tving knappene på plass (1=venstre, 3=høyre/tilbake-fix)
xinput set-button-map "Kensington SlimBlade Pro(2.4GHz Receiver) Kensington SlimBlade Pro Trackball(2.4GHz Receiver)" 1 3 3 4 5 6 7 8 9 2>/dev/null
# Sikkerhetskopi med kortere navn
xinput set-button-map "pointer:Kensington SlimBlade Pro Trackball" 1 3 3 4 5 6 7 8 9 2>/dev/null
