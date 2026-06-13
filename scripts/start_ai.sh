#!/bin/bash

# Sjekk om hvelvet er montert
if ! mountpoint -q "$HOME/AI_Hvelv"; then
    notify-send "WARLORD AI" "Hvelvet er LÅST. Åpne det før du starter AI-en." --icon=security-low
    exit 1
fi

# Sett miljøvariabler for hvelv-lagring og Radeon 780M-støtte
export OLLAMA_MODELS="$HOME/AI_Hvelv/modeller"
export HSA_OVERRIDE_GFX_VERSION=11.0.2

# Start motoren i bakgrunnen
echo "Fyrer opp motoren på Radeon 780M..."
ollama serve > /dev/null 2>&1 &
OLLAMA_PID=$!

# Vent til motoren har våknet (ca 3 sekunder)
sleep 3

# Start din første samtale i en ny terminal
notify-send "WARLORD AI" "Motoren kjører. Starter Llama 3.2 i nytt vindu." --icon=cpu
konsole -e ollama run llama3.2

# Rydd opp når terminalen lukkes
kill $OLLAMA_PID
