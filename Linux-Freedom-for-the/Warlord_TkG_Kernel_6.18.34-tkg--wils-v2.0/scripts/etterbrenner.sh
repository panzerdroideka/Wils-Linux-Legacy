import glob
import re

# Definer dine parametere
log_dir = "/home/wils/Games/WARLORDLOTRO/Spillfiler"
karakter = "Nlkosi"

# Finn alle combat-filer
log_files = glob.glob(f"{log_dir}/Combat_*.txt")

print(f"--- Etterbrenner startet: Analyserer {len(log_files)} loggfiler ---")

total_crits = 0
total_pos = 0

for file in log_files:
    with open(file, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
        # Finn forekomster av kritisk eller posisjonelt
        crits = len(re.findall(r"Critical", content, re.IGNORECASE))
        pos = len(re.findall(r"Positional", content, re.IGNORECASE))

        total_crits += crits
        total_pos += pos

print(f"Resultater for {karakter}:")
print(f"Totale Kritiske treff: {total_crits}")
print(f"Totale Posisjonelle treff: {total_pos}")
print("--- Etterbrenner ferdig ---")
