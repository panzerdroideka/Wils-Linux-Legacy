#!/usr/bin/env python3
import re

logg_fil = "/home/wils/GitHub/panzerdroideka/Wils-Linux-Legacy/Linux-Freedom-for-the/Warlord_TkG_Kernel_6.18.34-tkg--wils-v2.0/logs/kamp_historikk.log"

lightning = []
fire = []
heals = []
char_name = "Ukjent"
char_lvl = "Ukjent"

with open(logg_fil, 'r') as f:
    for line in f:
        # Fjerner alt rusk fra starten av linjen (som tall eller [ETTERBRENNER]-tags)
        line_clean = re.sub(r'^.*?\]\s*', '', line)
        line_clean = re.sub(r'^\d+:\s*', '', line_clean).strip()

        # Finner operatør og level
        if "Operatør:" in line:
            m = re.search(r"Operatør:\s+(\w+)\s+\(Level\s+(\d+)\)", line)
            if m:
                char_name = m.group(1)
                char_lvl = m.group(2)

        # Fanger opp skade
        dmg_match = re.search(r"scored a (.*?) with (.*?) on (.*?) for ([\d,]+) (Lightning|Fire) damage", line_clean)
        if dmg_match:
            hit_type = dmg_match.group(1).strip()
            skill = dmg_match.group(2).strip()
            target = dmg_match.group(3).strip()
            amount_str = dmg_match.group(4)
            amount = int(amount_str.replace(",", ""))
            dmg_type = dmg_match.group(5)

            entry = (amount, amount_str, skill, hit_type.capitalize(), target)
            if dmg_type == "Lightning":
                lightning.append(entry)
            elif dmg_type == "Fire":
                fire.append(entry)

        # Fanger opp helbredelse
        heal_match = re.search(r"(.*?) applied a (.*?) to .*? restoring ([\d,]+) points to Morale", line_clean)
        if heal_match:
            skill = heal_match.group(1).strip()
            hit_type = heal_match.group(2).strip().capitalize()
            amount_str = heal_match.group(3)
            amount = int(amount_str.replace(",", ""))
            heals.append((amount, amount_str, skill, hit_type))

# Fjerner duplikater og sorterer på høyeste tall
lightning = sorted(list(set(lightning)), key=lambda x: x[0], reverse=True)[:6]
fire = sorted(list(set(fire)), key=lambda x: x[0], reverse=True)[:5]
heals = sorted(list(set(heals)), key=lambda x: x[0], reverse=True)[:3]

print("⚔️ WARLORD STRIDS-TELEMETRI ⚔️")
print(f"👤 Operatør: {char_name} (Level {char_lvl})")

# Samler opptil tre unike mål for overskriften
targets = set(t for _, _, _, _, t in lightning + fire)
if targets:
    target_str = ", ".join(list(targets)[:3])
    if len(targets) > 3:
        target_str += " m.fl."
    print(f"🎯 Mål: {target_str}")

print("\n⚡ TOPP KRAFT-ANGREP (LIGHTNING):")
for val, val_str, skill, htype, target in lightning:
    print(f"• {val_str} skade - {skill} ({htype} på {target})")

if fire:
    print("\n🔥 TOPP KRAFT-ANGREP (FIRE):")
    for val, val_str, skill, htype, target in fire:
        print(f"• {val_str} skade - {skill} ({htype} på {target})")

if heals:
    print("\n💚 OVERLEVELSE & HELBREDELSE (TOPPNOTERINGER):")
    for val, val_str, skill, htype in heals:
        print(f"• {val_str} morale - {skill} ({htype})")
