#!/bin/bash

# Sjekk at hvelvet faktisk er montert før motoren starter
if ! mountpoint -q "$HOME/AI_Hvelv"; then
    notify-send "Ollama Feil" "AI_Hvelv er ikke montert! Åpne hvelvet først." --icon=dialog-error
    exit 1
fi

# Eksporter variabler for maskinvareakselerasjon og lagring
export OLLAMA_MODELS="$HOME/AI_Hvelv/modeller"
export HSA_OVERRIDE_GFX_VERSION=11.0.2 # Tvinger ROCm-støtte for Radeon 780M

# Start Ollama-serveren i bakgrunnen
ollama serve &
OLLAMA_PID=$!

notify-send "Ollama" "Lokal LLM-motor kjører på Radeon 780M. Modeller lagres i hvelvet." --icon=cpu

# Hold terminalen åpen (hvis kjørt via ikon) eller la kjøre i bakgrunnen
wait $OLLAMA_PID
