# 🛡️ Erfaringslogg: Illusjonen om "The Bleeding Edge" og Veien Tilbake til Stabilitet

Som systemarkitekt over egen maskinvare ligger fristelsen alltid der: Å pushe grensene, oppgradere 
til det aller nyeste, og teste hva maskinen egentlig tåler. 
Da Linux Kernel 7.x ble tilgjengelig, var det en selvfølge å la WARLORD bryne seg på den nye arkitekturen. 

Men her ligger en av de viktigste leksjonene for "The Edison Way by Wils", en solid erfaring å ta 
med seg videre på stien: 

**Et høyere versjonsnummer er verdiløst hvis det går på bekostning av absolutt stabilitet.** 

Den nye kjernen introduserte usikkerhetsmomenter. 
For et immutisert system som er bygget for feilfri oppetid, 
lynraske oppstarter og kompromissløs geriljakrigføring i LotRO, 
finnes det ingen toleranse for eksperimentell ustabilitet. 

Kjernen tjente ikke lenger mitt formål. 


I stedet for panikk, timesvis med feilsøking i blinde, eller en svak reinstallasjon, 
tok vi den mest direkte og brutale veien tilbake til trygghet: 

Ren terminal-kirurgi for å tvinge systemet ned igjen til den bunnsolide Kernel 6.17.0-29-generic.


### ⚙️ Gerilja-Metoden: Rollback av en Immutisert Kjerne

Når systemet prøver å låse deg fast i en ustabil oppdatering, 
er dette de eksakte grepene for å ta tilbake kontrollen:

**1. Bryt opp filsystemet:** 
Først overstyrer vi den generelle beskyttelsen og tvinger 
rotkatalogen (`/`) over i Read-Write modus (`rw`), 
slik at vi kan operere på selve hjertet av oppstartsprosessen.

**2. Lås opp GRUB-hvelvet:** 
Selv i Read-Write modus er konfigurasjonsfilene beskyttet av filattributter. 
Vi stripper immutiseringen fra GRUB midlertidig:
`sudo chattr -i /boot/grub/grub.cfg`

**3. Kartlegg terrenget:** 
Vi går inn i `grub.cfg` og analyserer koden for å finne den 
nøyaktige `submenu` og `menuentry`-indeksen som peker på vår 
kjente, stabile kjerne (6.17.0-29-generic). 

Systemet vil alltid liste opp alle tilgjengelige kjerner, 
vi må bare finne koordinatene til den vi vil ha.

**4. Sett inn nådestøtet:** 
Med indeks-koordinatene i hånden, redigerer vi de standard 
oppstartsparameterne (Default Boot Target). 
Vi beordrer GRUB til å ignorere den nyeste kjernen, 
og i stedet alltid boote direkte inn i den stabile 6.17-versjonen.

**5. Lås hvelvet igjen:** 
Sekundet etter at koden er endret og lagret, 
forsegler vi konfigurasjonen for å hindre at systemet eller andre prosesser overskriver valget vårt:
`sudo chattr +i /boot/grub/grub.cfg`

**6. Sikre perimeteret:** 
Til slutt smekkes hele rotkatalogen tilbake til Read-Only (`ro`). 


### 🎯 Refleksjon for Fremtiden

Denne operasjonen beviste to ting. 

For det første: Med dyp nok forståelse for kommandolinjen, 
er ingenting umulig å reversere. 

For det andre: Det er en massiv styrke å tørre å gå ett skritt 
tilbake for å opprettholde maskinvarens integritet.

Wils-Linux-Legacy handler om å eie maskinvaren. 

Vi tester gjerne grensene, men vi beholder alltid nøklene 
til å tvinge systemet tilbake til den perfekte, stabile tilstanden. 

Dette er geriljataktikk i praksis.

@Wils


### 📚 Erfaringslogger @Wils  & "The Edison Way"

Maskinvaren er din. 
Her dokumenterer jeg viktige veivalg, 
geriljataktikker og operasjoner fra virkeligheten:

* [Erfaringslogg: Illusjonen om "The Bleeding Edge" og<br>
Veien Tilbake til Stabilitet (Kernel Rollback)]<br>
(docs/erfaringslogg_kernel_rollback.md)














