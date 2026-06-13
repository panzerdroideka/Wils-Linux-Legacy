#!/bin/bash
sleep 2
google-chrome "https://gemini.google.com" "https://www.google.no" "https://listen.tidal.com" &
konsole -e htop &
konsole -e btop &
