#!/bin/bash
echo "--- Utfører systemvask: Logger og thumbnails ---"
sudo journalctl --vacuum-time=2d
rm -rf ~/.cache/thumbnails/*
sudo nmcli radio wifi on
