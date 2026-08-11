#!/bin/bash
# Wils-Linux-Legacy 2.0.1 - Kamp Telemetri (Komplett)

TELEMETRI_LOGG="/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"
SPILL_MAPPE="/home/wils/Games/WARLORDLOTRO/Spillfiler"

# --- RAPPORT-GENERATOR (Funksjon) ---
generer_rapport() {
    clear
    echo "================================="
    echo "====== Generating Battle-report ======"
    echo "⚔ WARLORD STRIDS-TELEMETRI ⚔"
    echo ""
    echo "👤 OPERATØR-PROFIL:"
    echo "• Karakter: $KARAKTER"
    echo "• Nivå: $LEVEL"
    echo "• Middle-Earth"
    echo ""
    echo "Sharing my love and passion for this, , is caring, not the income!"
    echo ""

    echo "⚡ TOPP KRAFT-ANGREP (LIGHTNING):"
    grep "$KARAKTER" "$TELEMETRI_LOGG" | grep -i "Epic Conclusion\|Shocking Words" | head -n 6 | sed 's/^.*\] //' | while read -r l; do
        RENS_LINJE=$(echo "$l" | sed -E "s/^$KARAKTER scored (an? )?//; s/ for //; s/ to Morale\.$//")
        echo "• $RENS_LINJE"
    done

    echo ""
    echo "🔥 TOPP KRAFT-ANGREP (FIRE):"
    grep "$KARAKTER" "$TELEMETRI_LOGG" | grep -i "Essence of Flame" | head -n 6 | sed 's/^.*\] //' | while read -r l; do
        RENS_LINJE=$(echo "$l" | sed -E "s/^$KARAKTER scored (an? )?//; s/ for //; s/ to Morale\.$//")
        echo "• $RENS_LINJE"
    done

    echo ""
    echo "💚 OVERLEVELSE & HELBREDELSE (OPPSUMMERT & TOPPNOTERINGER):"
    echo "• Ingen helbredelsesdata registrert i denne økten."

    echo ""
    echo "========================================"
    echo "🏷 SØKEORD & EMNEKNAGGER (TAGS)"
    echo "========================================"
    echo ""
    echo "#Arkona #Heilung #KatiRan #BlazeOfPerdition #Kamelot #Savatage #Korpiklaani #BlindGuardian"
    echo "#Havukruun #Ihsahn #Tyr #Ensiferum #Thaurorod #TwilightForce #ThreeDaysGrace #TheKillers"
    echo "#Helloween #OzzyOsbourne #IronMaiden #KISS #Nazareth #Metallica #DIO #DeepPurple #DireStraits"
    echo "#Sinner #WASP #Whitesnake #MelodicDeathMetal #PowerMetal #HeavyMetal #HardRock #KeltiskMetal"
    echo "#UrMusikk #JoikMetal #PaganMetal #MetalGaming #GamingSoundtrack #AtmosphericMetal"
    echo "#MythologicalMetal #GaulishMetal #CelticFolk #SymphonicRock"
    echo ""
    echo "#LordOfTheRingsOnlineLinux #GundabadMissions #ClegurMissions #HerneMissions #ZajanaMissions"
    echo "#AnnakKhurfu #LotROGameplay #MiddleEarthGaming #LinuxMMORPG #LotRO2026 #LotROUpdate #Umbar"
    echo "#SouthIthilien #LotROCombat #LotROMissions #LotROGuide #StandingStoneGames"
    echo ""
    echo "#KeyboardGaming #MouseFreeGaming #PrecisionGamingWithKeyboard #PureKeyboardGaming"
    echo "#GuerillaGamingOnKeyboard #OnlyKeyboardGaming #MmorpgOnKeyboard #KeyboardOnlyMmorpg"
    echo "#GamingWithoutMouse #GuerillaGaming #SkillQueue #NoMouseCombat"
    echo ""
    echo "#AntiEWaste #GreenPc #SaveThePlanet #EcoFriendlyGaming #RepurposePC #EcoModeGaming"
    echo "#NoEwasteGaming #SaveThePlanetGaming #NatureFriendlyGaming #GreenGaming #EcoFriendlyProfile"
    echo "#LowBudgetGaming #RepurposedGaming #AntiWindows #MicrosoftFreedom #TechFreedom"
    echo ""
    echo "#LinuxFreedom #WineWayland #Vulkan #MangoHud #SimpleScreenRecorder #PerformanceStripping"
    echo "#DisableBaloo #KernelTuning #LinuxKernel7 #BtrfsSubvolumes #LinuxOptimization"
    echo "#StreamlineLinux #LinuxAdministrator #SystemStripping #NoMoreSnap #DebianGaming"
    echo "#UbuntuGaming #LinuxCustomization #OpenSourceGaming #PCGamingOnLinux #FreeOS #FreeGamingOS"
    echo "#BareMetalLinux #TerminalTips #AICoPilot #BareheadedTech #LinuxForBeginners"
    echo "#LinuxMyth #TechShorts #Shorts"
    echo ""
    echo "#AceMagicianAM08 #Ryzen7 #MiniPCGaming #FrankensteinLaptop #Samsung12GBRAM"
    echo "#HardwareOptimization #PCMonitor #ZachryAmplifier #SonySubwoofer"
    echo "#AudioEngineering #GalvanicIsolator #GroundLoopFix #HomeTheaterAudio"
    echo "#PAEquipment #Panzerdroideka #WarlordLogsPublic #TelemetryData"
    echo "#CombatLogAnalysis #EdisonWayMethodology #DataDrivenGaming"
    echo "#IfItIsntDocumentedItDidntHappen #OpenSource #GitHub #DataAnalysis #CombatLogs"
    echo ""
    echo "This is the way"
    echo ""
    echo "Wils"
    echo ""
    exit 0
}

# --- HOVED-MOTOREN (Starter her) ---
read -p "Angi operatør og level (format: Navn,Level): " input_data
IFS="," read -r KARAKTER LEVEL <<< "$input_data"
KARAKTER=$(echo "$KARAKTER" | tr -d "[:space:]")
LEVEL=$(echo "$LEVEL" | tr -d "[:space:]")

# Fanger Ctrl+C for å trigge rapport
trap generer_rapport SIGINT

echo "=== Warlord Strids-Telemetri Aktivert ==="
echo "Venter på data fra $SPILL_MAPPE... (Ctrl+C for BattleReport)"

tail -F -n 0 "$SPILL_MAPPE"/Combat_*.txt "$SPILL_MAPPE"/Combat.log 2>/dev/null | grep --line-buffered -i -E "$KARAKTER|Positional|Critical" | while read -r linje; do
    TIDSSTEMPEL=$(date +"%Y-%m-%d %H:%M:%S.%3N")
    echo "[$TIDSSTEMPEL] [$KARAKTER Lvl:$LEVEL] $linje" | tee -a "$TELEMETRI_LOGG"
done
