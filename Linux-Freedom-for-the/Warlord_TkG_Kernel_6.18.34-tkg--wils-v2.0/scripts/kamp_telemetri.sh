#!/bin/bash
# Wils-Linux-Legacy 2.0.1 - Kamp Telemetri (Mappe-overvåker)

TELEMETRI_LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"
SPILL_MAPPE="/home/wils/Games/WARLORDLOTRO/Spillfiler"

read -p "Angi operatør og level (format: Navn,Level): " input_data
IFS="," read -r KARAKTER LEVEL <<< "$input_data"
KARAKTER=$(echo "$KARAKTER" | tr -d "[:space:]")
LEVEL=$(echo "$LEVEL" | tr -d "[:space:]")

# --- HØYGLANSPOLERT RAPPORT-GENERATOR VED AVSLUTNING (Ctrl+C) ---
generer_rapport() {
clear
echo -e "\n==================================="
    echo "=== Generating Battle-report... ==="
    echo "⚔ WARLORD STRIDS-TELEMETRI ⚔"
    echo ""
    echo "👤 OPERATØR-PROFIL:"
    echo "• Karakter: $KARAKTER"
    echo "• Nivå: $LEVEL"
    echo "• Lokasjon: Umbar"
    echo "• Mål: the White Hand Black-arrow"
    echo ""

    # ⚡ LIGHTNING-ANGREP (Trimmet og polert)
    echo "⚡ TOPP KRAFT-ANGREP (LIGHTNING):"
    grep "[$KARAKTER Lvl:$LEVEL]" "$TELEMETRI_LOGG" | grep -i "Epic Conclusion\|Shocking Words" | head -n 6 | sed 's/^.*\] //' | while read -r l; do
        # Fjerner "Karakternavn scored a/an" og rydder opp i setningsoppbygningen
        RENS_LINJE=$(echo "$l" | sed -E "s/^$KARAKTER scored (an? )?//; s/ for //; s/ to Morale\.$//")
        echo "• $RENS_LINJE"
    done

    # 🔥 FIRE-ANGREP (Trimmet og polert)
    echo ""
    echo "🔥 TOPP KRAFT-ANGREP (FIRE):"
    grep "[$KARAKTER Lvl:$LEVEL]" "$TELEMETRI_LOGG" | grep -i "Essence of Flame" | head -n 6 | sed 's/^.*\] //' | while read -r l; do
        RENS_LINJE=$(echo "$l" | sed -E "s/^$KARAKTER scored (an? )?//; s/ for //; s/ to Morale\.$//")
        echo "• $RENS_LINJE"
    done

    # 💚 OVERLEVELSE & HELBREDELSE (Stabilisert og oppsummert)
    echo ""
    echo "💚 OVERLEVELSE & HELBREDELSE (OPPSUMMERT & TOPPNOTERINGER):"

    TMP_HEALS=$(mktemp)
    grep "[$KARAKTER Lvl:$LEVEL]" "$TELEMETRI_LOGG" | grep -i "applied a heal" | sed 's/^.*\] //' > "$TMP_HEALS"

    if [ -s "$TMP_HEALS" ]; then
        sed -E "s/^.*Lvl:lvl[0-9]+ //; s/ applied a heal.*//" "$TMP_HEALS" | grep -v -E "^$KARAKTER$" | sort -u | while read -r ferdighet; do
            [ -z "$ferdighet" ] && continue

            FERDIGHET_DATA=$(grep "$ferdighet" "$TMP_HEALS")
            TYPE=$(echo "$FERDIGHET_DATA" | grep -oE 'Morale|Power' | head -n 1)

            TOTAL=0
            MAX=0
            while read -r poeng; do
                RENS_POENG=$(echo "$poeng" | tr -d ',')
                TOTAL=$((TOTAL + RENS_POENG))
                if [ "$RENS_POENG" -gt "$MAX" ]; then
                    MAX=$RENS_POENG
                fi
            done < <(echo "$FERDIGHET_DATA" | grep -oE '[0-9,]+ points' | awk '{print $1}')

            TOTAL_FORMATED=$(echo "$TOTAL" | sed ':a;s/\([0-9]\)\([0-9]\{3\}\)\($\|,\)/\1,\2\3/;ta')
            MAX_FORMATED=$(echo "$MAX" | sed ':a;s/\([0-9]\)\([0-9]\{3\}\)\($\|,\)/\1,\2\3/;ta')

            echo "• $ferdighet: Totalt $TOTAL_FORMATED $TYPE gjenopprettet (Max enkelt-treff: $MAX_FORMATED)"
        done
    else
        echo "• Ingen helbredelsesdata registrert i denne økten."
    fi
    rm -f "$TMP_HEALS"

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
    echo ""
    echo "==========================================================="
    echo "🏷 SØKEORD & EMNEKNAGGER (TAGS)"
    echo "==============================================================="
    echo "#Shorts #TechShorts #LinuxMyth #TechFreedom #LinuxForBeginners"
    echo "#HardwareOptimization #TerminalTips #AICoPilot #BareheadedTech"
    echo "#Wils-Linux-Legacy #AntiEWaste #Kubuntu #OpenSource #GitHub"
    echo "#DataAnalysis #CombatLogs #LinuxFreedom #LotRO #GuerillaGaming"
    echo "#MMORPG #SkillQueue #NoMouseCombat #LinuxGaming #TheEdisonWay"
    echo "#BareMetalLinux #AntiWindows #MicrosoftFreedom #GreenPc"
    echo "#SaveThePlanet #EcoFriendlyGaming #KdePlasma #LinuxKubuntu"
    echo "#FreeOS #FreeGamingOS #KeyboardGaming #MouseFreeGaming"
    echo "#PrecisionGamingWithKeyboard #PureKeyboardGaming"
    echo "#GuerillaGamingOnKeyboard #OnlyKeyboardGaming"
    echo "#MmorpgOnKeyboard #KeyboardOnlyMmorpg #GamingWithoutMouse"
    echo "#RepurposePC #EcoModeGaming #NoEwasteGaming #SaveThePlanetGaming"
    echo "#NatureFriendlyGaming #GreenGaming #EcoFriendlyProfile"
    echo "#LowBudgetGaming #RepurposedGaming #Shinedown #ThreeDaysGrace"
    echo "#allDoneListeningTo #TheKillers #Helloween #OzzyOsbourne"
    echo "#IronMaiden #KISS #Nazareth #JudasPriest #Metallica #DIO"
    echo "#DeepPurple #DireStraits #Sinner #W.A.S.P. #WASP #Whitesnake"
    echo ""
    echo "This is the way"
    echo ""
    echo "Wils"
    echo ""
    exit 0
}

# Fanger Ctrl+C (SIGINT) og kjører rapport-generatoren
trap generer_rapport SIGINT
# -----------------------------------------------------------------

echo "=== Warlord Strids-Telemetri Aktivert (Mappe-overvåker) ==="
echo "Venter på nye Combat_*.txt filer i $SPILL_MAPPE for $KARAKTER..."
echo "Trykk Ctrl+C for å avslutte kampen og generere BattleReport."

# Overvåker alle Combat-filer i mappen
tail -F -n 0 "$SPILL_MAPPE"/Combat_*.txt "$SPILL_MAPPE"/Combat.log 2>/dev/null | grep --line-buffered -i -E "$KARAKTER|Positional|Critical" | while read -r linje; do
TIDSSTEMPEL=$(date +"%Y-%m-%d %H:%M:%S.%3N")
echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje" >> "$TELEMETRI_LOGG"
echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje"
done
