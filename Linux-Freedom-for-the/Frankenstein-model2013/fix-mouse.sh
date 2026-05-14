#!/bin/bash
# Vent 5 sekunder så musa er klar
sleep 5

# Finn ID-en til SlimBlade Pro
MOUSE_ID=$(xinput list | grep "SlimBlade Pro" | grep "pointer" | grep -v "Keyboard" | head -n 1 | sed 's/.*id=\([0-9]*\).*/\1/')

if [ -n "$MOUSE_ID" ]; then
    # 1. Nullstill rotasjon (Ingen speilvending)
    xinput set-prop $MOUSE_ID "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1

    # 2. KNAPPE-OPPSETT (Din lagrede konfigurasjon)
    # 1=Venstre, 3=Høyre. 
    # Ved å sette knapp nr 2 (fysisk oppe venstre) til '3', blir den også Høyreklikk.
    xinput set-button-map $MOUSE_ID 1 3 3 4 5 6 7 8 9
    
    # (Valgfritt) Aktiver "Natural Scrolling" hvis du vil at hjulet skal rulle motsatt vei:
    # xinput set-prop $MOUSE_ID "libinput Natural Scrolling Enabled" 1
fi
