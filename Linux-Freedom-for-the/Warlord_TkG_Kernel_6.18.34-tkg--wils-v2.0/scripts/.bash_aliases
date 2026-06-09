# ====================================================================
# Willy sine system-snarveier og aliaser
# ====================================================================

# ====================================================================
# Det tretrinns herdede vedlikeholdsmaskineriet
# ====================================================================
alias prepupgrade='~/scripts/wils-prep-upgrade.sh'
alias rep='~/scripts/vedlikehold.sh'
alias verifyupgrade='~/scripts/wils-verify-upgrade.sh'

# Standard ls-aliaser
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Vedlikehold og system
alias temp='watch -n 2 sensors'
alias opp='sudo apt update && sudo apt upgrade'
alias rens="~/scripts/rens.sh"
alias full='sudo apt full-upgrade'
alias fix='sudo apt --fix-broken install'
alias clean='sudo apt autoremove && sudo apt autoclean && sync'
alias clear-cache="sudo /home/wils/scripts/clear-cache.sh"
alias reboote='sudo rtcwake -m off -s 10'
alias maale-reboot="sudo /home/wils/scripts/maale_reboot.sh"

# Systemtilstand (Immutiserte snarveier)
alias montert='mount | grep " / "'
alias rootrw='sudo mount -o remount,rw /'
alias rootro='sudo mount -o remount,ro /'
alias greproot='sudo btrfs property get / ro && mount | grep " / "'
alias langjournal='journalctl -xe'
alias clearcache='sudo resolvectl flush-caches'

# Verktøy og opptak
alias obs='flatpak run md.obsidian.Obsidian --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias gsr='flatpak run com.dec05eba.gpu_screen_recorder'
alias stoprec='pkill -SIGINT -f gpu-screen-recorder'

# Prosjekt- og publiseringsgateway
alias dytt='~/scripts/obsidian_sync.sh'
alias arkiv='~/scripts/logg_arkiv.sh'
alias ytgateway='/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/venv/bin/python /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/scripts/yt_queue_worker.py'
alias gitsync='~/scripts/gitsync.sh'
alias halloffame='echo -e "\n=== HALL OF FAME (TOPP 5 RASKESTE) ==="; sort -n ~/boot_historikk.log | head -n 5'

# Alias for synkronisering av Warlord-Logs til offentlig bevis-arkiv
alias push-status='echo "=== Starter synkronisering av Warlord-bevis ===" && \
cp /home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/*.log /home/wils/GitHub/panzerdroideka/Warlord-Logs-Public/ && \
cd /home/wils/GitHub/panzerdroideka/Warlord-Logs-Public/ && \
git add . && \
git commit -m "Status-bevis: Stabil drift bekreftet for Warlord-v2.0 - $(date +%Y-%m-%d_%H:%M)" && \
git push origin main && \
echo "=== Warlord-bevis er nå live på GitHub! ==="'

# Wil's Kamp Telemetri
alias kamptelemetri='sudo /home/wils/scripts/kamp_telemetri.sh'

# ====================================================================
# PRIVATE LOTRO- LOGG OG TELEMETRIARKIVERING
# ====================================================================
alias arkiver-private='
echo "🗄️ Starter gerilja-arkivering av private logger...";
TIDSSTEMPEL=$(date "+%Y-%m-%d_%H-%M-%S");
PRIVATE_REPO="$HOME/GitHub/panzerdroideka/Warlord-Logs-Private";
COMBAT_DIR="$PRIVATE_REPO/LotRO/Combat";
TELEMETRY_DIR="$PRIVATE_REPO/MangoHud/Telemetry";

if [ -d "$HOME/Games/WARLORDLOTRO/Spillfiler" ]; then
    mv "$HOME/Games/WARLORDLOTRO/Spillfiler"/Combat_*.txt "$COMBAT_DIR/" 2>/dev/null;
    echo "  -> Kamp-logger flyttet til $COMBAT_DIR";
fi;

mv "$HOME"/wine_*.csv "$TELEMETRY_DIR/" 2>/dev/null;

if [ -d "$PRIVATE_REPO" ]; then
    cd "$PRIVATE_REPO" || exit;
    echo "📥 Henter siste endringer fra GitHub...";
    git pull origin main --rebase || { echo "❌ Pull feilet!"; exit 1; };
    if [[ -n $(git status --porcelain) ]]; then
        echo "📤 Nye logger funnet! Pusher til Warlord-Logs-Private...";
        git add .;
        git commit -m "Privat logg-innhenting: $TIDSSTEMPEL";
        git push origin main && echo "✅ Alt trygt gjemt i hvelvet!";
    else
        echo "☕ Ingen nye filer å arkivere.";
    fi;
else
    echo "❌ Feil: Fant ikke mappen $PRIVATE_REPO";
fi'
