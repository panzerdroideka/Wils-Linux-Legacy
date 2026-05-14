#!/bin/bash

echo "--- Forbereder Frankenstein for kamp ---"

# 1. Tøm minnet (Din spesialitet)
echo "1. Tømmer minnebuffere..."
sync; echo 3 | sudo tee /proc/sys/vm/drop_caches

# 2. Sjekk at vi ikke har glemt noe tull
echo "2. Dreper eventuelle zombier..."
pkill chrome
pkill discord

# 3. Vis status før start
echo "3. Status før start:"
free -h | grep Mem

# 4. Start spillet (Via Steam eller din snarvei)
echo "4. Starter LotRO... Lykke til!"
# Her legger du inn kommandoen du bruker for å starte spillet, f.eks:
# steam steam://rungameid/212500 & 

# 5. Avslutt scriptet, men hold terminalen åpen litt
echo "--- Middle-earth venter ---"
sleep 3
