#!/bin/bash
echo "--- BTRFS STATUS FOR WARLORD ---"
echo "MODUS: $(btrfs property get / ro)"
echo "DISKBRUK:"
sudo btrfs filesystem df /
echo "--- NYESTE SNAPSHOTS ---"
sudo btrfs subvolume list -t / | tail -n 5
echo "--- ENHETSSTATUS ---"
sudo btrfs device stats /
