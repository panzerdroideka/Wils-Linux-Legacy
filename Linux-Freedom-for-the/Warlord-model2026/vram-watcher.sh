     1	#!/bin/bash
     2	while true; do
     3	    sleep 1800
     4	    VRAM=$(cat /sys/class/drm/card0/device/mem_info_vram_used)
     5	    if [ $VRAM -gt 450000000 ]; then
     6	        echo 3 | sudo tee /proc/sys/vm/drop_caches > /dev/null
     7	        echo "$(date): VRAM høy - cache tømt" >> ~/Warlord-Logs-Private/vram-watcher.log
     8	    fi
     9	done
