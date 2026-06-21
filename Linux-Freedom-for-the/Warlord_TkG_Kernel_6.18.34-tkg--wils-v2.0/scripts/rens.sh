#!/bin/bash
# 1. Jekken senkes: Tvinger I/O-køen trygt til disk for å sikre LotRO-data
sync

# 2. Dekkskifte: Spyler minnet (pagecache, dentries, inodes) rent
echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null

echo "RAM-pitstop fullført. Klar for neste alt."
