# Linleg-KdePlasma

Linux Legacy Investigation Framework

Dette prosjektet handler ikke om å gjette.

Det handler om å:

Observe
→ Collect Evidence
→ Verify
→ Document
→ Explain

Først når bevisene er samlet og dokumentert skrives den endelige Bugzilla-rapporten.

---

# Arbeidsflyt

```text
PROBLEM OPPDAGET
        │
        ▼
OBSERVASJON
        │
        ▼
TIMELINE
        │
        ▼
BEVIS
        │
        ├── Bilder
        ├── Logger
        ├── Journal
        ├── Input-tester
        ▼
ANALYSE
        │
        ▼
GIT COMMIT
        │
        ▼
GITHUB HISTORIKK
        │
        ▼
BUGZILLA RAPPORT
```

---

# Struktur

```text
Linleg-KdePlasma/

├── analysis-base/
│   ├── notes/
│   ├── observations/
│   ├── pixel-photos/
│   └── screenshots/
│
├── evidence/
│   ├── dmesg/
│   ├── journal/
│   ├── evtest/
│   ├── libinput/
│   ├── wev/
│   ├── xev/
│   ├── firmware/
│   └── security/
│
├── timeline/
├── reports/
├── diagnostics/
├── scripts/
└── docs/
```

---

# Filosofi

Ikke:

"Jeg tror dette er feilen."

Men:

"Her er observasjonen."

"Her er testen."

"Her er resultatet."

"Her er beviset."

This is the Way.
