import glob
import re
from collections import Counter

log_dir = "/home/wils/Games/gaminglogger"
log_files = glob.glob(f"{log_dir}/Combat_*.txt")

def get_top_n(data_list, n=6):
    return sorted(data_list, key=lambda x: int(re.search(r'([\d,]+)', x).group(1).replace(',','')), reverse=True)[:n]

def parse_logs():
    lightning, fire, healing = [], [], []
    target_damage = Counter()

    for file in log_files:
        with open(file, 'r', encoding='utf-8', errors='ignore') as f:
            for line in f:
                # Skade-parsing
                if "scored" in line and "damage" in line:
                    dmg_match = re.search(r"with (.*?) on (.*?) for ([\d,]+) (.*?) damage", line)
                    if dmg_match:
                        skill, target, dmg_val, element = dmg_match.group(1), dmg_match.group(2), dmg_match.group(3), dmg_match.group(4).lower()
                        target_damage[target] += int(dmg_val.replace(',', ''))

                        crit = "(Critical hit på " if "critical" in line.lower() else "(Hit på "
                        entry = f"• {dmg_val} skade - {skill} {crit}{target})"

                        if "lightning" in element: lightning.append(entry)
                        elif "fire" in element: fire.append(entry)

                # Healing-parsing
                if "restoring" in line and "morale" in line:
                    heal_match = re.search(r"restoring ([\d,]+) points to Morale", line)
                    if heal_match:
                        val = heal_match.group(1)
                        crit = "(Critical heal)" if "critical" in line.lower() else "(Heal)"
                        healing.append(f"• {val} morale - Sustenance {crit}")

    # Identifiser bossen
    boss_name = target_damage.most_common(1)[0][0] if target_damage else "Ukjent Mål"

    # Gullvegg-utskrift
    print("⚔ WARLORD STRIDS-TELEMETRI ⚔")
    print("👤 Operatør: Nlkosi (Level 136)")
    print(f"🎯 Mål: {boss_name}")
    print("\n⚡ TOPP KRAFT-ANGREP (LIGHTNING):")
    for item in get_top_n(lightning): print(item)
    print("\n🔥 TOPP KRAFT-ANGREP (FIRE):")
    for item in get_top_n(fire): print(item)
    print("\n💚 OVERLEVELSE & HELBREDELSE (TOPPNOTERINGER):")
    for item in get_top_n(healing): print(item)

    print("\n" + "="*60 + "\n🏷 SØKEORD & EMNEKNAGGER (TAGS)\n" + "="*60)
    print("#Shorts #TechShorts #LinuxMyth #TechFreedom #LinuxForBeginners\n#HardwareOptimization #TerminalTips #AICoPilot #BareheadedTech\n#Wils-Linux-Legacy #AntiEWaste #Kubuntu\n#OpenSource #GitHub #DataAnalysis #CombatLogs #LinuxFreedom\n#LotRO #GuerillaGaming #MMORPG #SkillQueue #NoMouseCombat\n#LinuxGaming #TheEdisonWay #BareMetalLinux #AntiWindows\n#MicrosoftFreedom #GreenPc #SaveThePlanet #EcoFriendlyGaming\n#KdePlasma #LinuxKubuntu #FreeOS #FreeGamingOS #KeyboardGaming\n#MouseFreeGaming #PrecisionGamingWithKeyboard #PureKeyboardGaming\n#GuerillaGamingOnKeyboard #OnlyKeyboardGaming\n#MmorpgOnKeyboard #KeyboardOnlyMmorpg #GamingWithoutMouse\n#RepurposePC #EcoModeGaming #NoEwasteGaming #SaveThePlanetGaming\n#NatureFriendlyGaming #GreenGaming #EcoFriendlyProfile\n#LowBudgetGaming #RepurposedGaming #Shinedown #Three Days Grace\n#all done listening to #The Killers #Helloween #Ozzy Osbourne\n#Iron Maiden #KISS #Nazareth #Judas Priest\n#Metallica #DIO #Deep Purple #Dire Straits\n#Sinner #W.A.S.P. #WASP #Whitesnake\n\nThis is the way\n\nWils")

if __name__ == "__main__":
    parse_logs()
