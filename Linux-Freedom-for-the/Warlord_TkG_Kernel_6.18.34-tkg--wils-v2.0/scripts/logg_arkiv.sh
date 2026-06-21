#!/bin/bash
# ==================================================================
# WARLORD KAMP-TELEMETRI (F1-EDITION & YOUTUBE EXPORT)
# ==================================================================

# --- 1. KONFIGURASJON & STIFINNER ---
LOG_DIR="/home/wils/Games/WARLORDLOTRO/Spillfiler"
LOGG_NYEST=$(ls -t "$LOG_DIR"/Combat_*.txt 2>/dev/null | head -n 1)
DIV="============================================================"

# --- 2. SIKKERHETSPORT ---
if [ -z "$LOGG_NYEST" ]; then
    echo "❌ Feil: Fant ingen kamp-logg i $LOG_DIR"
    exit 1
fi

# --- 5. AUTOMATISK UNIVERSAL BEREGNING AV KAMP-DATA (F1-MOTOR) ---
if [ -f "$LOGG_NYEST" ]; then
    # Én lynrask passering i RAM som dynamisk gjenkjenner hvem du spiller som!
    AWK_RESULT=$(awk '
    BEGIN {
        line_count = 0;
    }
    /scored/ && /for/ {
        line_count++;
        line = $0;
        gsub(/,/, "", line);

        # 1. Finn skadetall (tallet rett etter ordet "for")
        dmg = 0;
        n = split(line, words, " ");
        for(i=1; i<=n; i++) {
            if(words[i] == "for") { dmg = words[i+1] + 0; break; }
        }

        # 2. Finn angriper (ordet rett før "scored")
        attacker_word = "";
        for(i=1; i<=n; i++) {
            if(words[i] == "scored") { attacker_word = words[i-1]; break; }
        }

        # 3. Finn målet (teksten mellom "on " og " for")
        target = "";
        if (match(line, / on .* for /)) {
            target = substr(line, RSTART+4, RLENGTH-9);
        }

        # Lagre hendelsen i minnet (RAM) for neste fase
        events[line_count, "dmg"] = dmg;
        events[line_count, "target"] = target;
        events[line_count, "line"] = line;

        # Tell hvem som angriper for å dynamisk avsløre din aktive alt
        attacker_counts[attacker_word]++;
    }
    END {
        # Hvem har slått mest? Det er garantert spilleren (alten din).
        player_name = "you";
        max_attacks = 0;
        for (name in attacker_counts) {
            if (attacker_counts[name] > max_attacks) {
                max_attacks = attacker_counts[name];
                player_name = name;
            }
        }

        # Nå som motoren vet hvem du spiller, regnes alt ut på mikrosekunder
        tot_ut = 0; max_hit = 0; skade_inn = 0; crits = 0; devs = 0; max_sk = "Ingen angrep";
        hit_target = "";

        for (i=1; i<=line_count; i++) {
            dmg = events[i, "dmg"];
            target = events[i, "target"];
            line = events[i, "line"];

            # Hvis den dynamiske alten din (eller "you") er målet = Skade INN
            if (target ~ player_name || target == "you") {
                skade_inn += dmg;
            } else {
                # Ellers = Skade UT
                tot_ut += dmg;
                if (line ~ /critical hit/) crits++;
                if (line ~ /devastating hit/) devs++;

                if (dmg > max_hit) {
                    max_hit = dmg;
                    hit_target = target;
                    # Trekk ut ferdighetsnavnet
                    if (match(line, /with .*( for | on )/)) {
                        sk = substr(line, RSTART+5, RLENGTH-5);
                        sub(/ for .*/, "", sk);
                        sub(/ on .*/, "", sk);
                        max_sk = sk;
                    }
                }
            }
        }

        # Rens opp og eksporter som én lukket datastrøm
        gsub(/^ +| +$/, "", max_sk);
        print tot_ut ";" max_hit ";" max_sk ";" skade_inn ";" crits ";" devs ";" player_name ";" hit_target
    }' "$LOGG_NYEST")

    # Pakker ut resultatene tilbake til Bash-variabler
    IFS=';' read -r TOTAL_UT MAX_HIT MAX_SKILL SKADE_INN CRITS DEVS AKTIV_ALT HIT_TARGET <<< "$AWK_RESULT"

    # Sikkerhetsnett hvis noen verdier er tomme
    [ -z "$TOTAL_UT" ] && TOTAL_UT=0
    [ -z "$MAX_HIT" ] && MAX_HIT=0
    [ -z "$SKADE_INN" ] && SKADE_INN=0
    [ -z "$CRITS" ] && CRITS=0
    [ -z "$DEVS" ] && DEVS=0
    [ -z "$AKTIV_ALT" ] && AKTIV_ALT="Ukjent"
    [ -z "$HIT_TARGET" ] && HIT_TARGET="Target"

fi # <-- HER LUKKES PANSERET

# --- 6. YOUTUBE-READY PRESENTASJON ---
clear
echo "$DIV"
echo "📊 WARLORD LIVE TELEMETRY-SUMMARY"
echo "$DIV"
echo "Analysert fil: $(basename "$LOGG_NYEST")"
echo "Total skade utdelt : $TOTAL_UT HP"
echo "Største treff      : $MAX_HIT med $AKTIV_ALT scored a hit with $MAX_SKILL on $HIT_TARGET"
echo "Kritiske treff     : $CRITS | Devastating: $DEVS"
echo "Total skade mottatt: $SKADE_INN HP"
echo ""
echo "$DIV"
echo "🚫 AI / LLM DEKLARASJON"
echo "$DIV"
echo "🇳🇴. --- Denne VIDEOEN er IKKE laget av AI eller LLM! ---"
echo "🇬🇧. --- This VIDEO is NOT made by AI or LLM! ---"
echo ""
echo "$DIV"
echo "💻. Rigg: \"WARLORD\" Workstation (Ace Magician W1)"
echo "🖥. Skjerm: 43\" 4K UHD Philips PC Monitor (med PiP)"
echo ""
echo "$DIV"
echo "📦. SYSTEM & TELEMETRI SPECS (OS)"
echo ""
echo "$DIV"
echo "🌐. OS: Kubuntu 26.04 | Plattform: Wayland"
echo "🎨. Plasma: 6.4.5 | Frameworks: 6.17.0 | Qt: 6.9.2"
echo "🐧. Kernel: 6.17.0-29-generic (64-bit)"
echo "🖼. Grafikk: Radeon 780M | RAM: 32 GiB"
echo ""
echo "$DIV"
echo "⚡ TOPP 10 SKADE-PITCHES FRA SESJONEN"
echo ""
echo "Loggfil: $(basename "$LOGG_NYEST")"
echo ""
grep "scored a .* hit" "$LOGG_NYEST" | \
sed -E 's/.*scored a (.*) hit with (.*) on .* for ([0-9\.,]+) .*/\3|\2|(\1)/' | \
sed 's/[\.,]//g' | \
sort -t'|' -k1,1rn | \
head -n 10 | \
awk -F'|' '{
    # Formaterer nøyaktig slik du ønsket: 1.  Skill  [Type]  |  Skade
    # Legger inn tusenskille på farten for tallene
    skade = $1;
    if (length(skade) > 3) {
        skade = substr(skade, 1, length(skade)-3) " " substr(skade, length(skade)-2, 3);
    }
    printf "%-2d. %-22s [%-6s] | %10s skade\n", NR, $2, $3, skade
}'

echo ""
echo "$DIV"
echo "🔗 OPEN SOURCE & GITHUB-LENKER"
echo "$DIV"
echo "📂 Combat Log:"
echo "https://github.com/panzerdroideka/Warlord-Logs-Public/blob/main/Showcase"
echo ""
echo "📊 Telemetri:"
echo "https://github.com/panzerdroideka/Wils-Linux-Legacy"
echo ""
echo "💬 YouTube-kanal:https://youtube.com/@willyolsen1017"
echo ""
echo "🔗 Discord Community:"
echo ""
echo "https://discord.gg/7bwAhKU9h"
echo "$DIV"
echo ""
echo "$DIV"
echo "🏷️ SØKEORD & EMNEKNAGGER (TAGS)"
echo "$DIV"
echo "#Shorts #TechShorts #LinuxMyth #TechFreedom #LinuxForBeginners"
echo "#HardwareOptimization #TerminalTips #AICoPilot #BareheadedTech"
echo "#Wils-Linux-Legacy #AntiEWaste #Kubuntu"
echo "#OpenSource #GitHub #DataAnalysis #CombatLogs #LinuxFreedom"
echo "#LotRO #GuerillaGaming #MMORPG #SkillQueue #NoMouseCombat"
echo "#LinuxGaming #TheEdisonWay #BareMetalLinux #AntiWindows"
echo "#MicrosoftFreedom #GreenPc #SaveThePlanet #EcoFriendlyGaming"
echo "#KdePlasma #LinuxKubuntu #FreeOS #FreeGamingOS #KeyboardGaming"
echo "#MouseFreeGaming #PrecisionGamingWithKeyboard #PureKeyboardGaming"
echo "#GuerillaGamingOnKeyboard #OnlyKeyboardGaming"
echo "#MmorpgOnKeyboard #KeyboardOnlyMmorpg #GamingWithoutMouse"
echo "#RepurposePC #EcoModeGaming #NoEwasteGaming #SaveThePlanetGaming"
echo "#NatureFriendlyGaming #GreenGaming #EcoFriendlyProfile"
echo "#LowBudgetGaming #RepurposedGaming #Shinedown #Three Days Grace"
echo "#all done listening to #The Killers #Helloween #Ozzy Osbourne"
echo "#Iron Maiden #KISS #Nazareth #Judas Priest"
echo "#Metallica #DIO #Deep Purple #Dire Straits"
echo "#Sinner #W.A.S.P. #WASP #Whitesnake"
echo "This is the way"
echo "Wils"





