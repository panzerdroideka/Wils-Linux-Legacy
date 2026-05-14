#!/bin/bash

# 1. SETUP SKJERMER
# 43" Monitor (HDMI-1) blir sjef, Laptop (LVDS-1) legges i dvale.
xrandr --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output LVDS-1 --off

# 2. PUSTEPAUSE
# Vi gir TV-en 5 sekunder til å blinke ferdig.
sleep 5

# 3. NAVIGER TIL BERGET
# Ingen gjettelek. Vi går rett til kilden.
cd "$HOME/LOTRO_BERGET/Spillfiler"

# 4. START SPILLET
# DRI_PRIME=1 for Radeon-kraft.
# /desktop for å temme musa og oppløsningen.
DRI_PRIME=1 wine explorer /desktop=LotRO,1920x1080 LotroLauncher.exe
