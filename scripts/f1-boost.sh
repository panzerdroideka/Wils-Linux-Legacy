#!/bin/bash
# Tvinger ytelse på CPU
echo performance | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
# Tømmer RAM-cache
sync
echo 3 | tee /proc/sys/vm/drop_caches > /dev/null
