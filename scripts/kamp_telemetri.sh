#!/bin/bash
# Wils-Linux-Legacy 2.0.0 - Kamp Telemetri (Mappe-overvåker)

TELEMETRI_LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"
SPILL_MAPPE="/home/wils/Games/WARLORDLOTRO/Spillfiler"

read -p "Angi operatør og level (format: Navn,Level): " input_data
IFS="," read -r KARAKTER LEVEL <<< "$input_data"
KARAKTER=$(echo "$KARAKTER" | tr -d "[:space:]")
LEVEL=$(echo "$LEVEL" | tr -d "[:space:]")

# --- HØYGLANSPOLERT RAPPORT-GENERATOR VED AVSLUTNING (Ctrl+C) ---
generer_rapport() {
    echo -e "\n============================================================"
    echo "=== Generating Battle-report... ==="
    echo "⚔ WARLORD STRIDS-TELEMETRI ⚔"
    echo ""
    echo "👤 OPERATØR-PROFIL:"
    echo "• Karakter: $KARAKTER"
    echo "• Nivå: $LEVEL"
    echo "• Lokasjon: Umbar"
    echo "• Mål: the White Hand Black-arrow"
    echo ""

    # Her henter vi ut data fra loggen som ble skrevet under denne økten
    echo "⚡ TOPP KRAFT-ANGREP (LIGHTNING):"
    grep "[$KARAKTER Lvl:$LEVEL]" "$TELEMETRI_LOGG" | grep -i "Epic Conclusion\|Shocking Words" | head -n 6 | sed 's/^.*\] //' | while read -r l; do
        echo "• $l"
    done

    echo ""
    echo "🔥 TOPP KRAFT-ANGREP (FIRE):"
    grep "[$KARAKTER Lvl:$LEVEL]" "$TELEMETRI_LOGG" | grep -i "Essence of Flame" | head -n 6 | sed 's/^.*\] //' | while read -r l; do
        echo "• $l"
    done

    echo ""
    echo "💚 OVERLEVELSE & HELBREDELSE (TOPPNOTERINGER):"
    grep "[$KARAKTER Lvl:$LEVEL]" "$TELEMETRI_LOGG" | grep -i "applied a heal" | sed 's/^.*\] //' | while read -r l; do
        # Formaterer rålogg til din standard: "Morale/Power gjenopprettet - Ferdighet (Heal på Karakter)"
        POENG=$(echo "$l" | grep -oE '[0-9,]+ points' | awk '{print $1}')
        TYPE=$(echo "$l" | grep -oE 'Morale|Power')
        FERDIGHET=$(echo "$l" | sed -E "s/^.*Lvl:lvl[0-9]+ //; s/ applied a heal.*//")
        if [[ -n "$POENG" ]]; then
            echo "• $POENG $TYPE gjenopprettet - $FERDIGHET (Heal på $KARAKTER)"
        fi
    done

    echo ""
    echo "============================================================"
    echo "🏷 SØKEORD & EMNEKNAGGER (TAGS)"
    echo "============================================================"
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
    exit 0
}

# Fanger Ctrl+C (SIGINT) og kjører rapport-generatoren
trap generer_rapport SIGINT
# -----------------------------------------------------------------

echo "=== Warlord Strids-Telemetri Aktivert (Mappe-overvåker) ==="
echo "Venter på nye Combat_*.txt filer i $SPILL_MAPPE for $KARAKTER..."
echo "Trykk Ctrl+C for å avslutte kampen og generere BattleReport."

# Overvåker alle Combat-filer i mappen
tail -F "$SPILL_MAPPE"/Combat_*.txt "$SPILL_MAPPE"/Combat.log 2>/dev/null | grep --line-buffered -i -E "$KARAKTER|Positional|Critical" | while read -r linje; do
TIDSSTEMPEL=$(date +"%Y-%m-%d %H:%M:%S.%3N")
echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje" >> "$TELEMETRI_LOGG"
echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje"
done
