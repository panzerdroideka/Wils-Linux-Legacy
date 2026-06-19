#!/bin/bash
# Wils-Linux-Legacy 2.0.2 - Wil's Manuelle BattleReport-Generator

SPILL_MAPPE="/home/wils/Games/WARLORDLOTRO/Spillfiler"

# Sjekker om zenity er installert for grafisk filvalg
if ! command -v zenity &> /dev/null; then
    echo "Zenity er ikke installert. Installeres via terminalen med: sudo apt install zenity"
    exit 1
fi

# 1. Åpner en grafisk filvelger i spillmappen din
VALGT_FIL=$(zenity --file-selection --filename="$SPILL_MAPPE/" --title="Velg LotRO Combat Logfil for analyse" --file-filter="Combat filer (Combat_*.txt Combat.log) | Combat_*.txt Combat.log" 2>/dev/null)

# Hvis brukeren trykker avbryt i vinduet
if [ -z "$VALGT_FIL" ]; then
    echo "Ingen fil ble valgt. Avbryter."
    exit 1
fi

# 2. Henter brukerdata kjapt
read -p "Angi operatør og level (format: Navn,Level): " input_data
IFS="," read -r KARAKTER LEVEL <<< "$input_data"
KARAKTER=$(echo "$KARAKTER" | tr -d "[:space:]")
LEVEL=$(echo "$LEVEL" | tr -d "[:space:]")

# Fallback hvis felt står tomme
[ -z "$KARAKTER" ] && KARAKTER="Nlkosi"
[ -z "$LEVEL" ] && LEVEL="lvl138"

DIV="======================================="
# 3. GENERERER DEN HØYGLANSPOLERTE RAPPORTEN DIREKTE FRA RÅLOGGEN
clear
echo -e "\n$DIV"
echo "====== Generating Battle-report..======"
echo "⚔ WARLORD STRIDS-TELEMETRI ⚔"
echo ""
echo "👤 OPERATØR-PROFIL:"
echo "• Karakter: $KARAKTER"
echo "• Nivå: $LEVEL"
echo "• Middle-Earth"
echo ""
# ⚡ LIGHTNING-ANGREP (Søker nå smart på kun karakternavn)
echo "⚡ TOPP KRAFT-ANGREP (LIGHTNING):"

grep "$KARAKTER" "$VALGT_FIL" | grep -i "Epic Conclusion\|Shocking Words" | head -n 6 | while read -r l; do
    # Fjerner tidsstempler [00:00:00] hvis de finnes i råteksten, og rensker setningen
    REN_LINJE=$(echo "$l" | sed -E 's/^\[.+\] //')
    RENS_LINJE=$(echo "$REN_LINJE" | sed -E "s/^$KARAKTER scored (an? )?//; s/ for //; s/ to Morale\.$//")
    echo "• $RENS_LINJE"
done

# 🔥 FIRE-ANGREP (Søker nå smart på kun karakternavn)
echo ""
echo "🔥 TOPP KRAFT-ANGREP (FIRE):"
grep "$KARAKTER" "$VALGT_FIL" | grep -i "Essence of Flame" | head -n 6 | while read -r l; do
    REN_LINJE=$(echo "$l" | sed -E 's/^\[.+\] //')
    RENS_LINJE=$(echo "$REN_LINJE" | sed -E "s/^$KARAKTER scored (an? )?//; s/ for //; s/ to Morale\.$//")
    echo "• $RENS_LINJE"
done

# 💚 OVERLEVELSE & HELBREDELSE
echo ""
echo "💚 OVERLEVELSE & HELBREDELSE (OPPSUMMERT & TOPPNOTERINGER):"

TMP_HEALS=$(mktemp)
grep "$KARAKTER" "$VALGT_FIL" | grep -i "applied a heal" | sed -E 's/^\[.+\] //' > "$TMP_HEALS"

if [ -s "$TMP_HEALS" ]; then
    # Henter ut unike ferdighetsnavn som har levert healing i filen
    sed -E "s/ applied a heal.*//" "$TMP_HEALS" | grep -v -E "^$KARAKTER$" | sort -u | while read -r ferdighet; do
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
echo ""
echo "========================================"
echo "🏷 SØKEORD & EMNEKNAGGER (TAGS)"
echo "========================================"
echo "#Kamelot #Savatage #Avantasia #Korpiklaani"
echo "#Eluveitie #Amin-Amarth #Blind-Guardian"
echo "#Shorts #TechShorts #LinuxMyth #TechFreedom"
echo "#LinuxForBeginners #HardwareOptimization"
echo "#TerminalTips #AICoPilot #BareheadedTech"
echo "#Wils-Linux-Legacy #AntiEWaste #Kubuntu"
echo "#OpenSource #GitHub #DataAnalysis #CombatLogs"
echo "#LinuxFreedom #LotRO #GuerillaGaming #MMORPG"
echo "#SkillQueue #NoMouseCombat #LinuxGaming"
echo "#TheEdisonWay #BareMetalLinux #AntiWindows"
echo "#MicrosoftFreedom #GreenPc #SaveThePlanet"
echo "#EcoFriendlyGaming #KdePlasma #LinuxKubuntu"
echo "#FreeOS #FreeGamingOS #KeyboardGaming"
echo "#MouseFreeGaming #PrecisionGamingWithKeyboard"
echo "#PureKeyboardGaming #GuerillaGamingOnKeyboard"
echo "#OnlyKeyboardGaming #MmorpgOnKeyboard"
echo "#KeyboardOnlyMmorpg #GamingWithoutMouse"
echo "#RepurposePC #EcoModeGaming #NoEwasteGaming"
echo "#SaveThePlanetGaming #NatureFriendlyGaming"
echo "#GreenGaming #EcoFriendlyProfile"
echo "#LowBudgetGaming #RepurposedGaming"
echo "#Shinedown #ThreeDaysGrace"
echo "#allDoneListeningTo #TheKillers"
echo "#Helloween #OzzyOsbourne#IronMaiden #KISS"
echo "#Nazareth #JudasPriest #Metallica #DIO"
echo "#DeepPurple #DireStraits #Sinner #W.A.S.P."
echo "#WASP #Whitesnake #Nightwish"
echo ""
echo "This is the way"
echo ""
echo "Wils"
echo ""
