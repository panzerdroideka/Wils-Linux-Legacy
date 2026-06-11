#!/bin/bash
# Wils-Linux-Legacy 2.0.1 - Wil's Etterbrenner (Post-analyse)

TELEMETRI_LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"
SPILL_MAPPE="/home/wils/Games/WARLORDLOTRO/Spillfiler"

read -p "Angi operatør og level (format: Navn,Level): " input_data
IFS="," read -r KARAKTER LEVEL <<< "$input_data"
KARAKTER=$(echo "$KARAKTER" | tr -d "[:space:]")
LEVEL=$(echo "$LEVEL" | tr -d "[:space:]")

echo "=== Wil's Etterbrenner Aktivert: Analyserer eksisterende logger... ==="

# 1. Sikrer at rådata fra spillmappen blir filtrert og lagret kronologisk i historikken
if [ -d "$SPILL_MAPPE" ]; then
    cat "$SPILL_MAPPE"/Combat_*.txt "$SPILL_MAPPE"/Combat.log 2>/dev/null | grep -i -E "$KARAKTER|Positional|Critical" | while read -r linje; do
        # Vi henter ut spillets eget tidsstempel fra starten av linjen hvis det finnes, eller bruker nåtid som fallback
        if [[ "$linje" =~ ^\[([0-9][:space:]:-]+)\] ]]; then
            TIDSSTEMPEL="${BASH_REMATCH[1]}"
            REN_LINJE=$(echo "$linje" | sed -E 's/^\[.+\] //')
        else
            TIDSSTEMPEL=$(date +"%Y-%m-%d %H:%M:%S.%3N")
            REN_LINJE="$linje"
        fi

        # Sjekker om linjen allerede eksisterer i historikken for å unngå duplikater
        if ! grep -q "$REN_LINJE" "$TELEMETRI_LOGG" 2>/dev/null; then
            echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $REN_LINJE" >> "$TELEMETRI_LOGG"
        fi
    done
fi

# 2. GENERERER DEN HØYGLANSPOLERTE RAPPORTEN
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
echo "=============================================================="
echo "🏷 SØKEORD & EMNEKNAGGER (TAGS)"
echo "=============================================================="
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
