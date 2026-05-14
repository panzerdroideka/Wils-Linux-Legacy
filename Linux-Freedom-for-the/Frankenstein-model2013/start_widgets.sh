#!/bin/bash
# Vent 5 sekunder så skrivebordet er klart
killall conky      # <--- LEGGE TIL DENNE LINJEN (Dreper gamle spøkelser)
sleep 5
# Start Frankenstein (Toppen)
conky -c ~/.config/conky/conky.conf &
# Start TimeShift (Bunnen)
conky -c ~/.conkyrc &
