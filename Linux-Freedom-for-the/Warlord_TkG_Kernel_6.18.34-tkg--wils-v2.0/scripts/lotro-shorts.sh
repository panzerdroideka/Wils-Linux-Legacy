#!/bin/bash
gpu-screen-recorder -w screen -f 60 -vf "crop=1080:1920:(in_w-1080)/2:0" -o /home/wils/Games/gaminglogger/lotro_shorts_$(date +%Y%m%d_%H%M%S).mp4
