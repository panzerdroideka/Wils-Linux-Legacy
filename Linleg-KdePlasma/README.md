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


Linleg-KdePlasma
Linux Legacy Investigation Framework

Mission
This repository exists to investigate Linux, KDE Plasma and hardware-related issues using evidence instead of assumptions.

The goal is simple:

Observe

↓

Collect Evidence

↓

Verify

↓

Document

↓

Explain

↓

Fix

A bug report is not the beginning of an investigation.

A bug report is the result of an investigation.

Repository Structure
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
├── docs/
└── templates/
Investigation Workflow
PROBLEM DISCOVERED
        │
        ▼
OBSERVATION
        │
        ▼
TIMELINE
        │
        ▼
EVIDENCE
        │
        ├── Photos
        ├── Screenshots
        ├── Logs
        ├── Journal
        ├── Input Analysis
        ▼
ANALYSIS
        │
        ▼
DOCUMENTATION
        │
        ▼
GIT HISTORY
        │
        ▼
BUGZILLA REPORT
        │
        ▼
ROOT CAUSE
        │
        ▼
FIX
Current Investigation
KDE Plasma PrintScreen Investigation
Current status:

Timeline established
Evidence collection framework established
Git history established
Bugzilla template created
Next phase:

xev
wev
libinput
evtest
journalctl
dmesg
Tribute to Linus Torvalds
English
In 1991, Linus Torvalds released the first versions of the Linux kernel as a personal project.

More than three decades later, Linux has become one of the foundations of modern computing.

Linux powers:

Android devices around the world
Cloud infrastructure
Internet servers
Supercomputers
Research environments
Embedded systems
Development workstations
Millions of people rely on systems that ultimately depend on the Linux kernel every day.

The most important lesson from the Linux world is not Linux itself.

The lesson is the engineering process.

When something appears wrong:

Do not guess.

Do not assume.

Do not stop because a tool reports that everything looks correct.

Collect evidence.

Read the logs.

Verify the observations.

Reproduce the problem.

Follow the facts.

Then draw conclusions.

This repository attempts to follow the same philosophy.

Thank you, Linus Torvalds.

Not only for Linux itself.

But for helping establish an engineering culture that values evidence, reproducibility and persistence.

Norsk
I 1991 publiserte Linus Torvalds de første versjonene av Linux-kjernen som et personlig prosjekt.

Mer enn tre tiår senere har Linux blitt en av grunnpilarene i moderne databehandling.

Linux driver i dag:

Android-enheter over hele verden
Skyinfrastruktur
Internettservere
Superdatamaskiner
Forskningsmiljøer
Innebygde systemer
Utviklingsmaskiner

Millioner av mennesker bruker hver eneste dag systemer som til syvende og sist bygger på Linux-kjernen.

Den viktigste lærdommen er ikke Linux.

Den viktigste lærdommen er arbeidsmetoden.

Når noe ser feil ut:

Ikke gjett.

Ikke anta.

Ikke stopp fordi et verktøy hevder at alt ser riktig ut.

Samle bevis.

Les loggene.

Verifiser observasjonene.

Gjenskap feilen.

Følg faktaene.


Trekk konklusjoner først når arbeidet er gjort.

Dette prosjektet forsøker å følge den samme filosofien.


Tusen takk, Linus Torvalds.

Ikke bare for Linux.

Men for å ha bidratt til en ingeniørkultur som verdsetter bevis, reproduksjon, samarbeid og utholdenhet.



WARLORD Doctrine
🏰 WARLORD 🛡

Gjør jobben skikkelig.

Gjør den FERDIG-FERDIG.

This is the Way.

Mr. Term Whispers
The logs know.

The evidence remembers.

Git never forgets.



Evidence That Learning Happened
Learning Linux is not memorizing commands.

Learning Linux is:

Finding information.

Reading errors.

Testing assumptions.

Verifying results.

Repeating the process until understanding emerges.

The terminal is not judging.

The terminal is teaching.

🏰 WARLORD 🛡

Do the job properly.

Finish it completely.

This is the Way


Mr. Term whispers:

Every mistake becomes knowledge
the moment you stop arguing with it
and start investigating it.



🏰 WARLORD 🐧 🛡 🐧

The logs know.

The evidence remembers.

Git never forgets.

This is the Way.


Evidence That Learning Happened
Learning Linux is not memorizing commands.

Learning Linux is learning how to find answers.

Observe.

Test.

Verify.

Repeat.

The terminal is not judging.

The terminal is teaching.

A mistake is not a failure.

A mistake is evidence.

Evidence becomes knowledge.

Knowledge becomes experience.

Experience becomes understanding.

WARLORD Doctrine
🏰 WARLORD 🐧 🛡 🐧

Ikke gjett.

Ikke anta.

Les loggene.

Følg bevisene.

Gjør jobben skikkelig.

Gjør den FERDIG-FERDIG.

This is the Way.

Mr. Term Whispers
The logs know.

The evidence remembers.

Git never forgets.

Every mistake becomes knowledge the moment you stop arguing with it and start investigating it.

And somewhere deep inside the kernel...

🐧 Pingu is watching.

Proof
This repository started with a simple question:

"Why does PrintScreen not behave as expected?"

The investigation led to:

Git workflow
Timeline creation
Evidence collection
Bugzilla templates
Documentation practices
Linux navigation skills
Better understanding of KDE Plasma
Better understanding of Linux itself
The bug is the destination.

Learning is the journey.

This repository contains the evidence.

🏰 WARLORD 🐧 🛡 🐧

Read the logs.

Follow the evidence.

Finish the job.

This is the Way.


A Final Note
Nobody learns Linux without mistakes.

Nobody learns Git without mistakes.

Nobody learns debugging without mistakes.

The goal is not to avoid mistakes.

The goal is to observe them, understand them, and learn from them.

The person who never makes mistakes is often the person who never attempts anything difficult.

This repository contains both the successes and the mistakes.

Both were necessary.

🏰 WARLORD 🐧 🛡 🐧

Ikke gjett.

Ikke anta.

Les loggene.

Følg bevisene.

Gjør jobben skikkelig.

Gjør den FERDIG-FERDIG.

This is the Way.

Mr. Term whispers:

Perfect people do not exist.

Perfect logs rarely exist.

But honest evidence beats perfect excuses every single time.

The person who never makes mistakes is often the person who never attempts anything difficult.

Git remembered the journey.

🐧 Pingu is watching.

