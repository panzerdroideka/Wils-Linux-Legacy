#!/bin/bash
export DRI_PRIME=1
export WINE_FULLSCREEN_FSR=1
export WINE_FULLSCREEN_FSR_STRENGTH=1
export DXVK_HUD=fps,devinfo,drawcalls
export DXVK_LOG_LEVEL=info

# Din nøyaktige sti fra i morges
export WINEPREFIX="/home/wils/Games/the-lord-of-the-rings-onlinetm"
cd "/home/wils/Games/the-lord-of-the-rings-onlinetm/drive_c/Program Files (x86)/StandingStoneGames/The Lord of the Rings Online/"

# Start spillet direkte med 64-bit klienten for å unngå launcher-omveier
wine-stable x64/lotroclient64.exe
