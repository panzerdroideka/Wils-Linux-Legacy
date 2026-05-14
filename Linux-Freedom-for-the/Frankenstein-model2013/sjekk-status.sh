#!/bin/bash
# 🚀 FRANKENSTEIN SYSTEM STATUS 🚀
# Updated: 2026-01-16

# --- CONFIGURATION ---
CACHE_FILE="$HOME/.timeshift_size_cache"
STATUS_FILE="$HOME/Frankenstein_Status_Log.txt"
BACKUP_DRIVE="/media/wils/backup"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Clear screen
clear

echo -e "${BLUE}==============================================${NC}"
echo -e "${BLUE}      🚀 FRANKENSTEIN SYSTEM STATUS 🚀      ${NC}"
echo -e "${BLUE}==============================================${NC}"

# 1. GPU CHECK
DRIVER=$(lspci -nnk | grep -A3 "Radeon" | grep "Kernel driver" | awk '{print $5}')
if [ "$DRIVER" == "amdgpu" ]; then
    GPU_MSG="GPU: OK (Vulkan Ready)"
    echo -e "✅ GPU DRIVER:   ${GREEN}AMDGPU${NC} (Vulkan Ready!)"
else
    GPU_MSG="GPU: $DRIVER (Check Driver)"
    echo -e "⚠️  GPU DRIVER:   ${YELLOW}$DRIVER${NC}"
fi

# 2. TEMP CHECK
TEMP=$(sensors | grep "Package id 0:" | awk '{print $4}')
echo -e "🌡️  CPU TEMP:     ${GREEN}$TEMP${NC}"

echo -e "${BLUE}----------------------------------------------${NC}"

# 3. BACKUP CHECK (Fast Method)
# We check if the drive is mounted first
if mountpoint -q "$BACKUP_DRIVE"; then
    # Use 'df' (Disk Free) instead of 'du' (Disk Usage). It is instant and needs no password.
    # This gets the "Used" column for the backup drive
    SIZE=$(df -h "$BACKUP_DRIVE" | awk 'NR==2 {print $3}')

    # Save to cache
    echo "$SIZE" > "$CACHE_FILE"

    echo -e "Status: ${GREEN}ONLINE${NC}"
    echo -e "💾 BACKUP DRIVE: ${GREEN}$SIZE Brukt${NC} (Instant Read)"

    # Write to a clean text file for Desktop widgets
    echo "SYSTEM STATUS: ONLINE" > "$STATUS_FILE"
    echo "GPU: $DRIVER | CPU: $TEMP" >> "$STATUS_FILE"
    echo "BACKUP: $SIZE Used" >> "$STATUS_FILE"

else
    # OFFLINE / COLD STORAGE
    if [ -f "$CACHE_FILE" ]; then
        LAST_SIZE=$(cat "$CACHE_FILE")
        echo -e "❄️  STATUS:       COLD STORAGE (Disconnected)"
        echo -e "💾 LAST KNOWN:   ${YELLOW}$LAST_SIZE${NC}"

        echo "SYSTEM STATUS: COLD STORAGE" > "$STATUS_FILE"
        echo "Last Backup Size: $LAST_SIZE" >> "$STATUS_FILE"
    else
        echo -e "❄️  STATUS:       COLD STORAGE"
        echo -e "❓ SIZE:         Unknown"
    fi
fi

echo -e "${BLUE}==============================================${NC}"
echo ""
echo "Press Enter to close..."
read
