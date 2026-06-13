#!/bin/bash
echo "--- Reparerer pakkesystemet ---"
sudo dpkg --configure -a
sudo apt install -f -y
