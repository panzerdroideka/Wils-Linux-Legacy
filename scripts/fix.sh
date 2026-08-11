#!/bin/bash
echo "--- Reparerer pakkesystemet ---"
sudo dpkg --configure -a
sudo apt install -f -y
sudo apt update
sudo apt autoclean
sudo fix
sudo clean
sudo clear-cache
