# 🛡️ Warlord F1-Bunker: Total Immutability & Hardware Control

**[NORSK]**
Dette dokumenterer den ultimate "Edison Way"-metoden for å herde en moderne Ryzen 7-maskin (Warlord). Målet er ikke bare sikkerhet, men deterministisk ytelse: Et operativsystem som er støpt i betong, renset for logisk støy, og optimalisert for null-avbrudd under gaming og videoproduksjon.

Vi bygger F1-Hvelvet gjennom 4 strategiske nivåer:

### 1. Kjerne-isolasjon (Knus SMT-myten)
Markedsføringstall betyr ingenting. For å forhindre "side-channel"-angrep og sikre at prosesser ikke slåss om cachen på samme fysiske kjerne, tvinger vi Linux-kjernen til å ignorere Hyper-Threading (SMT).
Legg dette til i din `GRUB_CMDLINE_LINUX_DEFAULT`:
`mitigations=auto,nosmt maxcpus=8`

### 2. Tjeneste-utrenskning (Maskering av Bloatware)
Et autonomt system skal ikke ha bakgrunnsprosesser som "hjelper" deg uten tillatelse. Vi fjerner angrepsflater og I/O-sløsing ved å maskere dem til `/dev/null`:
`sudo systemctl mask packagekit.service avahi-daemon.service ModemManager.service udisks2.service`

### 3. Grafikk-Skjoldet (Mesa Lock)
Når grafikkstakken fungerer feilfritt med Wayland, fryser vi den. Dette forhindrer at systemoppdateringer ødelegger avhengigheter.
`sudo apt-mark hold libegl-mesa0 libgbm1 libgl1-mesa-dri libglx-mesa0 mesa-libgallium mesa-opencl-icd`

### 4. Auditd Overvåkningskameraer
Når filsystemet er immutabilisert med `chattr +i`, setter vi opp overvåking direkte i Linux-kjernen via `auditd` for å fange opp ethvert forsøk på sabotasje.
I `/etc/audit/rules.d/audit.rules` legger vi til:
`-w /etc/default/grub -p wa -k grub_monitor`
`-w /home/wils/Scripts -p wa -k scripts_monitor`

---

**[ENGLISH]**
This documents the ultimate "Edison Way" method for hardening a modern Ryzen 7 machine (Warlord). The goal is not just security, but deterministic performance: An operating system cast in concrete, stripped of logical noise, and optimized for zero interruptions during gaming and video production.

### 1. Core Isolation (Shattering the SMT Myth)
Add this to your `GRUB_CMDLINE_LINUX_DEFAULT`:
`mitigations=auto,nosmt maxcpus=8`

### 2. Service Purge (Masking Bloatware)
`sudo systemctl mask packagekit.service avahi-daemon.service ModemManager.service udisks2.service`

### 3. The Graphics Shield (Mesa Lock)
`sudo apt-mark hold libegl-mesa0 libgbm1 libgl1-mesa-dri libglx-mesa0 mesa-libgallium mesa-opencl-icd`

### 4. Auditd Surveillance Cameras
In `/etc/audit/rules.d/audit.rules` we add:
`-w /etc/default/grub -p wa -k grub_monitor`
`-w /home/wils/Scripts -p wa -k scripts_monitor`
