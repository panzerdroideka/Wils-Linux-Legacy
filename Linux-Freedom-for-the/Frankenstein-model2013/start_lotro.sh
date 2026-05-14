#!/bin/bash

# 1. Finn skjermnavnet automatisk
SKJERM=$(xrandr | grep " connected" | cut -d ' ' -f1 | head -n 1)

# 2. Sett oppløsningen til "Spill-modus" (864x486)
xrandr --output $SKJERM --mode 864x486

# 3. Start LotRO (Her er magien fra bildet ditt!)
cd "/home/wils/LOTRO_BERGET/Spillfiler/"
DRI_PRIME=1 wine "LotroLauncher.exe"

# 4. Når spillet lukkes, sett oppløsningen tilbake til "Bank-modus" (1366x768)
xrandr --output $SKJERM --mode 1366x768
