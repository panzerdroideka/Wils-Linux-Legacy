#!/bin/bash
# Script to detect network rerouting and scrubbing latency

# Targets: Local ISP Gateway, Global DNS, and a common target
TARGETS=("8.8.8.8" "1.1.1.1" "google.com")

echo "=================================================="
echo "   NETWORK ROUTING & SCRUBBING STATUS REPORT      "
echo "   Date: $(date)"
echo "=================================================="

for target in "${TARGETS[@]}"; do
    echo "Target: $target"
    
    # Check Latency
    avg_latency=$(ping -c 3 "$target" | tail -1 | awk '{print $4}' | cut -d '/' -f 2)
    
    if [ -z "$avg_latency" ]; then
        echo "Status: 🔴 OFFLINE or Request Timed Out"
    else
        # Color coding: Green for <40ms, Yellow for 40-100ms, Red for >100ms
        if (( $(echo "$avg_latency < 40" | bc -l) )); then
            echo -e "Status: 🟢 NORMAL (Latency: ${avg_latency}ms)"
        elif (( $(echo "$avg_latency < 100" | bc -l) )); then
            echo -e "Status: 🟡 REROUTED/DELAYED (Latency: ${avg_latency}ms)"
        else
            echo -e "Status: 🟠 HEAVY WASHING/ATTACK (Latency: ${avg_latency}ms)"
        fi
    fi

    # Trace the route to see where traffic is being "washed"
    echo "Route Path (Identifying nodes):"
    mtr -rw -c 1 "$target" | tail -n +2 | awk '{print "  Hop " $1 ": " $2 " (Loss: " $3 "%, Last: " $4 "ms)"}'
    echo "--------------------------------------------------"
done
