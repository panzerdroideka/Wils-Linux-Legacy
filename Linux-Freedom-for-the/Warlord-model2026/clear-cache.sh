#!/bin/bash
# Willy holder fila ryddig og perfekt klar til kjøring!
# Tøm RAM-cache (Sørger for at 32GB RAM er klar til kamp)
# WARLORD: Den gylne middelvei (Rens uten låsing)

# 1. Tøm RAM-cache (Sørger for at 12GB RAM er klar til kamp)
sync && echo 3 > /proc/sys/vm/drop_caches

# 2. Rens midlertidige mapper (Nå med sudo-kraft)
rm -rf /tmp/*
rm -rf /var/tmp/*

# 3. Rens din brukers cache (Chrome/Plasma-rester)
rm -rf /home/wils/.cache/*

# 4. Hold loggene slanke (sletter alt eldre enn 2 dager)
journalctl --vacuum-time=2d

# 5. Rens thumbnails og Chrome-cache spesifikt
rm -rf /home/wils/.cache/thumbnails/*
rm -rf /home/wils/.cache/google-chrome/Default/Cache/*

echo "WARLORD: Systemet er nyvasket og klart!"
