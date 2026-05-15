#!/bin/bash

# 1. Sjekk at hvelvet på T7 er åpent
if ! mountpoint -q "$HOME/AI_Hvelv"; then
    notify-send "WARLORD AI" "FEIL: Hvelvet er ikke montert! Kjør 'Åpne Hvelv' først." --icon=dialog-error
    exit 1
fi

# 2. Fortell Ollama hvor den skal lagre de tunge modellene (inne i hvelvet!)
export OLLAMA_MODELS="$HOME/AI_Hvelv/modeller"

# 3. Tving Radeon 780M (RDNA3) til å fungere
export HSA_OVERRIDE_GFX_VERSION=11.0.2

# 4. Start motoren (vi kjører den i bakgrunnen)
ollama serve &
sleep 3 # Gi den litt tid til å puste

# 5. Åpne chatten i en ny terminal
konsole -e ollama run llama3.2
