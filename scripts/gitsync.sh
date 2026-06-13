#!/bin/bash
HOSTNAME=$(hostname)
TIDSSTEMPEL=$(date "+%Y-%m-%d %H:%M:%S")
echo "=== Starter gitsync på $HOSTNAME [$TIDSSTEMPEL] ==="
REPOS=("/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy" "/home/wils/GitHub/panzerdroideka/Warlord-Logs-Public" "/home/wils/GitHub/panzerdroideka/Warlord-Logs-Private")
for REPO_DIR in "${REPOS[@]}"; do
    echo "--------------------------------------------------"
    if [ ! -d "$REPO_DIR" ]; then echo "HOPPER OVER: $REPO_DIR"; continue; fi
    cd "$REPO_DIR" || exit 1
    echo "Behandler repositorium: $(basename "$REPO_DIR")"
    if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then echo "FEIL: Ikke et git-repo!"; continue; fi
    BRANCH=$(git branch --show-current)
    if [ -z "$BRANCH" ]; then BRANCH="main"; fi
    echo "Henter siste endringer (git pull --rebase)..."
    git pull --rebase origin "$BRANCH"
    git add -A
    if git diff-index --quiet HEAD --; then echo "Ingen endringer."; continue; fi
    COMMIT_MSG="Auto-sync [$HOSTNAME] - $TIDSSTEMPEL"
    echo "Oppretter commit: '$COMMIT_MSG'"
    git commit -m "$COMMIT_MSG"
    echo "Pusher til GitHub..."
    git push origin "$BRANCH"
done
echo "--------------------------------------------------"
echo "=== Fullført for $HOSTNAME! ==="
