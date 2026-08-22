# Tenant-Speicher-Hygiene — Report 22.08.2026

Tenant: raphaeljans.onmicrosoft.com
Lauf: Scheduled Task `tenant-hygiene-weekly`, Phase 1, Messzeitpunkt 20:10 CEST
Connector: M365 App-only/Zertifikat (headless), erreichbar
Takt: taeglich (seit 13.08.2026)

## Kernbefund: vollstaendiger Stillstand an einem Samstag, Versionsverlauf exakt unveraendert

Der Tenant waechst heute um **55 MB**, also **0.05 GB**. Das ist der ruhigste Tag seit dem
16.08. und liegt eine Groessenordnung unter jedem Werktagswert der Woche. Entscheidender
als die Summe ist die Herkunft: der **Versionsverlauf steht objektgenau still**.

- JANS.PROJEKTE Versionsverlauf: 92.857 → **92.857 GB**, Versionsanzahl **3'777 → 3'777**
- Versionsverlauf tenantweit: 103.42 → **103.42 GB**, unveraendert
- JANS.PROJEKTE Belegung: 601'118 → **601'152 MB** (+34 MB)
- kispi Belegung: +22 MB; alle uebrigen Sites objektgenau unveraendert

Es ist heute also **keine einzige neue Version** entstanden. Das Wachstum der Woche kam
zu praktisch 100 % aus dem Versionsverlauf einer einzigen Site, und an einem Tag ohne
Arbeit an dieser Site waechst der Tenant nicht. Damit ist der seit fuenf Werktagen
gemessene Zusammenhang **von der Gegenseite bestaetigt**: keine Arbeit an JANS.PROJEKTE,
kein Wachstum.

**Das ist kein Erfolg einer Massnahme.** Die Konfiguration ist unveraendert: tenantweit und
auf allen elf belegten Sites weiterhin `InheritVersionPolicyFromTenant: true`,
`MajorVersionLimit: 0`, `EnableAutoExpirationVersionTrim: false`. Es begrenzt nach wie vor
nichts. Der Wert von heute misst einen arbeitsfreien Samstag, nicht eine greifende
Begrenzung — am Montag ist mit dem Werktagsniveau zu rechnen.

Zum Vergleich der beiden bisherigen Wochenenden: 15.08. (Sa) -0.02 GB, 16.08. (So)
-0.09 GB, heute 22.08. (Sa) +0.05 GB. Das Muster ist stabil.

## Tenant-Summe

- Belegt: **862.55 GB** (883'249 MB) ueber 20 Sites
- Limit: ~1'054 GB (1.03 TB)
- Auslastung: **81.84 %**, freier Puffer **191.45 GB**
- Delta zum Vorreport (21.08.2026, 20:10, 883'194 MB): **+55 MB in 24.0 Stunden**,
  also **+0.05 GB/Tag**
- Reihe der letzten acht Tage: -0.02 (15.08. Sa), -0.09 (16.08. So), +3.27 (17.08. Mo),
  +5.02 (18.08. Di), +13.29 (19.08. Mi), +13.93 (20.08. Do), +4.01 (21.08. Fr),
  **+0.05 GB/Tag (22.08. Sa)**

Die Summe stammt aus zwei unabhaengigen Abfragen (Einzelwerte der elf belegten Sites
aufaddiert: 883'241 MB plus 8 MB Kleinstsites = 883'249 MB, sowie
`sum([].StorageUsage)`: 883'249 MB), beide decken sich exakt. Die Summe der Site-Deltas
ergibt +56 MB und deckt sich im Rahmen der Rundung.

Einschraenkung, wie in jedem Lauf: `StorageUsage` ist zeitverzoegert (Stunden bis 24 h).
Bei einem so kleinen Tageswert faellt diese Unsicherheit relativ staerker ins Gewicht als
bei einem grossen. Belastbar ist hier nicht die Summe, sondern die **objektgenau
unveraendert gebliebene Versionsanzahl** — die ist kein Schaetzwert.

## Restlaufzeit-Hochrechnung

Auf den heutigen Puffer von 191.45 GB gerechnet:

- **Beim heute gemessenen Tempo** (0.05 GB/Tag): rechnerisch ueber zehn Jahre. Der Wert
  ist fuer eine Hochrechnung **unbrauchbar** und wird hier nur der Vollstaendigkeit halber
  genannt. Ein arbeitsfreier Tag darf nicht fortgeschrieben werden.
- Beim Wochenschnitt der letzten sieben Tage (5.64 GB/Tag): rund **34 Tage**, also etwa
  **25. September 2026**. **Das ist der massgebliche Wert.**
- Beim Werktagsschnitt der Woche (7.90 GB/Tag): rund **24 Tage**, also etwa
  **15. September 2026**.

Die Restlaufzeit liegt den fuenften Tag in Folge unter der 60-Tage-Schwelle. Sie hat sich
gegenueber gestern nicht verbessert: der Wochenschnitt steht unveraendert bei 34 Tagen,
weil der heutige Nullwert den ausgefallenen Zuwachs nur ersetzt, nicht kompensiert.

Naeher liegen die Warnmarken:

- **88-%-Marke (927.5 GB): 64.95 GB entfernt** — beim Wochenschnitt rund 12 Tage
  (etwa 3. September), beim Werktagsschnitt rund 8 Tage (etwa 30. August).
- 90-%-Marke (948.6 GB): 86.05 GB entfernt, 15 bzw. 11 Tage.

Der Trim vom 13.08. hat 106 GB freigeraeumt. In neun Tagen, davon fuenf Werktage, sind
davon **39.37 GB zurueckgekehrt** — 37 %.

## Sites mit Belegung (nach Groesse)

| Site | Belegung | Versionen | Ver.-Anzahl | Papierkorb 1. Stufe | Papierkorb 2. Stufe | Letzte Aenderung |
|---|---|---|---|---|---|---|
| /sites/JANS.PROJEKTE | 587.06 GB | 92.86 GB | 3'777 | 333 Obj / 1.23 GB | leer | 22.08.2026 |
| /sites/SE | 108.14 GB | 1.24 GB | 290 | leer | leer | 22.08.2026 |
| /sites/AD | 51.92 GB | 3.37 GB | 4'694 | 29 Obj / 0.01 GB | leer | 22.08.2026 |
| /sites/PL | 40.19 GB | 3.50 GB | 245 | leer | leer | 17.08.2026 |
| /sites/kispi | 31.35 GB | 0.19 GB | 151 | 107 Obj / 0.21 GB | leer | 22.08.2026 |
| /sites/BI | 18.25 GB | ~0 GB | 42 | leer | leer | 22.08.2026 |
| /sites/WE | 9.09 GB | 0.42 GB | 402 | leer | leer | 22.08.2026 |
| /sites/MO | 6.95 GB | 0 GB | 13 | leer | leer | 07.08.2026 |
| /sites/WO | 5.33 GB | 0.31 GB | 264 | leer | leer | 07.08.2026 |
| /sites/IMMO | 4.02 GB | 1.53 GB | 188 | 2 Obj / 0.00 GB | leer | 22.08.2026 |
| /sites/JANSDATENAUSTAUSCH | 0.25 GB | ~0 GB | 18 | 10 Obj / 0.05 GB | leer | 09.08.2026 |

Neun Sites liegen unter der 100-MB-Schwelle und werden ohne Papierkorb-Erhebung gefuehrt:
PA (2 MB), Test (1 MB), zwei AllCompany-Restsites (je 1 MB), /search, beide Root-Sites,
WBHafenarealSZ (0 MB), HLEBWEB (0 MB).

Summe Versionsverlauf tenantweit: **103.42 GB** (12.0 % der Belegung), exakt wie gestern,
gegenueber 100.45 GB am 20.08., 86.83 GB am 19.08., 73.56 GB am 18.08., 68.70 GB am
17.08. und 64.10 GB an den drei Tagen davor. **Erster Lauf ohne Versionszuwachs seit dem
Trim vom 13.08.**

Bewegung heute: **zwei Sites veraendern ihre Belegung ueberhaupt**, JANS.PROJEKTE
(+34 MB) und kispi (+22 MB). Alle uebrigen neun belegten Sites stehen objektgenau still,
einschliesslich SE (110'735 MB) und PL (41'152 MB), die damit den sechsten bzw. fuenften
Tag unveraendert sind. Die letzten Aenderungsdaten von SE, AD, BI und WE tragen zwar den
22.08., ohne dass sich die Belegung bewegt — dort wurde also gelesen oder eine
Kleinstaenderung geschrieben, aber nichts von Umfang.

## Klassifizierung

### Versions-Bloat

- **JANS.PROJEKTE: 92.86 GB** Versionen auf 587.06 GB Site (**15.8 %**). Reisst die
  absolute 20-GB-Schwelle um mehr als das Vierfache. Traegt **89.8 %** des gesamten
  Versionsverlaufs im Tenant. Der Anteil steigt heute erstmals nicht weiter: 9.7 % nach
  dem Trim, 10.6 % (17.08.), 11.3 % (18.08.), 13.4 % (19.08.), 15.4 % (20.08.),
  15.8 % (21.08.), **15.8 % heute** — Stillstand, keine Umkehr.
- **Der Befund der Woche bleibt gueltig und ist heute negativ bestaetigt:** die zuletzt
  hinzugekommenen Versionen lagen bei rund 58 MB je Stueck gegenueber einem Site-Schnitt
  von 24.6 MB und einem AD-Schnitt von 0.7 MB. Es sind wenige, sehr grosse, wiederholt
  ueberschriebene Dateien. Heute, ohne Arbeit an diesen Dateien, entstand keine einzige
  neue Version. Das ist der praeziseste Hinweis auf die Herkunft, den die Woche geliefert
  hat: der Verursacher ist **an eine konkrete Arbeitstaetigkeit gekoppelt**, nicht an
  einen Hintergrundprozess.
- IMMO: 1.53 GB auf 4.02 GB, **38.2 %**. Reisst die relative Schwelle weiterhin, absolut
  ohne Bedeutung. Kein Handlungsbedarf, seit dem Trim unveraendert.
- Uebrige unauffaellig: PL 8.7 %, AD 6.5 %, WO 5.7 %, WE 4.6 %, SE 1.1 %, kispi 0.6 %.

### Papierkoerbe

- Alle **zweiten Stufen tenantweit leer**, 11 Sites ueber 100 MB geprueft, 0 Objekte.
- **Vierzehnter Lauf in Folge** mit diesem Befund: 13.07., 27.07., 03.08., 13.08.
  (Testlauf), 13.08. (Nachlauf), 14.08. bis 22.08.
- Messweg wie am 21.08.: die gesamte Papierkorb-Erhebung lief **im Hauptkontext**, elf
  Einzelabfragen der zweiten Stufe und elf der ersten in vier parallelen Bloecken, dazu
  fuenf Groessenabfragen fuer die nicht leeren ersten Stufen. Kein Subagent beteiligt,
  jede Zahl ist ein eigener Aufruf. Grund bleibt der Subagenten-Befund vom 20.08.
  (gemeldete Pruefung von elf Sites bei nur acht Werkzeugaufrufen).
- Erste Stufen (Undo-Netz, bleibt unangetastet): **481 Objekte / 1.50 GB** tenantweit,
  objektgenau wie gestern. JANS.PROJEKTE 333 / 1.23 GB, kispi 107 / 0.21 GB, AD 29 /
  0.01 GB, JANSDATENAUSTAUSCH 10 / 0.05 GB, IMMO 2 / 0.00 GB. Kein einziges Objekt
  hinzugekommen oder entfernt.

### Tote/leere Sites (Hinweis, Phase 2)

Unveraendert: WBHafenarealSZ (0 MB, letzte Aenderung 06.10.2025, rund 10.5 Monate), Test
(1 MB, 14.05.2026), zwei AllCompany-Restsites (je 1 MB, 04.07.2026). Keine Site
ueberschreitet die 18-Monats-Schwelle.

## Durchgefuehrte Auto-Bereinigung (Phase 1)

**Keine, 0 GB.** Alle zweiten Papierkorb-Stufen waren bereits leer, es wurde kein einziger
`clear`-Befehl abgesetzt. Die ersten Stufen bleiben als Undo-Netz unangetastet.

## Offene Phase-2-Empfehlungen (brauchen Raphaels interaktiven Login)

### 1. Tenant-Versionslimit auf «Automatisch» stellen — zuerst, vor dem Trim

Unveraendert und weiterhin der einzige Punkt, der die Ursache behebt. Die Konfiguration
zeigt auf allen elf belegten Sites `MajorVersionLimit: 0`,
`EnableAutoExpirationVersionTrim: false`, `InheritVersionPolicyFromTenant: true` — es gibt
keine Begrenzung, die greifen koennte.

Der heutige Nullwert aendert daran nichts, er verdeckt es nur. Beim Wochenschnitt von
5.64 GB/Tag kauft ein Trim von rund 78 GB knapp **14 Tage** zusaetzliche Restlaufzeit,
beim Werktagsschnitt rund zehn. Danach ist der Zustand derselbe wie heute. Ein Trim ohne
vorherige Limit-Umstellung bleibt eine Verzoegerung, keine Loesung.

Weg: Admin Center → Einstellungen → Versionsverlauf-Limits → «Automatisch».

Seit dem 13.07.2026 offen, also heute seit **40 Tagen**.

### 2. Versions-Trim JANS.PROJEKTE, Potenzial rund 78 GB, dringend — nach Schritt 1

92.86 GB Versionsverlauf auf einer Site; ein Trim auf fuenf Major-Versionen gab am 13.08.
tenantweit 106 GB frei. Auf dem heutigen Stand ist mit rund 78 GB zu rechnen, was den
Puffer auf gut 269 GB und die Auslastung auf rund 74.5 % senkt.

```
Connect-PnPOnline -Url https://raphaeljans.sharepoint.com/sites/JANS.PROJEKTE `
  -ClientId 80c24101-4597-48db-8388-c6e8bdc75f5f `
  -Tenant raphaeljans.onmicrosoft.com -Interactive
New-PnPSiteFileVersionBatchDeleteJob -MajorVersionLimit 5 -MajorWithMinorVersionsLimit 5 -Force
```

Nicht `-DeviceLogin` verwenden (auf PnP 3.1.0 defekt).

**Das Wochenende ist das guenstigste Zeitfenster dafuer.** Der Trim laeuft als Job ueber
die Site; heute wird an ihr nachweislich nicht gearbeitet, es entstehen also keine neuen
Versionen, die parallel zum Job dazukommen.

### 3. Grosse, wiederholt ueberschriebene Dateien auf JANS.PROJEKTE identifizieren

Der heutige Stillstand grenzt den Ansatzpunkt weiter ein: der Verursacher ist an aktive
Arbeit gekoppelt und laeuft nicht im Hintergrund weiter. Damit scheidet ein
Dauer-Sync-Zyklus als alleinige Erklaerung aus; wahrscheinlicher ist wiederholtes
Speichern grosser Dateien waehrend der Arbeitszeit (CAD, Renderings, Punktwolken,
Archive). Lohnend ist die Pruefung, welche Bibliothek diese Versionen erzeugt. Ergibt
sich eine einzelne, kann diese zusaetzlich vom Versionieren ausgenommen werden.

Das ist eine Diagnose, keine Bereinigung, und ersetzt die Limit-Umstellung nicht.

### 4. Tote Sites (nachrangig, rund 0 GB)

WBHafenarealSZ und die drei Kleinstsites belegen zusammen praktisch nichts. Loeschen lohnt
sich nur der Ordnung halber, nicht fuer den Speicher.

## Sende-Schwelle

Gemeldet wird, ausgeloest durch **Grund c) Restlaufzeit unter 60 Tagen**: der
Wochenschnitt ergibt 34 Tage. Ausdruecklich nicht ausgeloest hat ihn der heutige
Tageswert — auf ihn gerechnet laege die Restlaufzeit bei ueber zehn Jahren, was ein
Artefakt eines arbeitsfreien Samstags ist und nicht fortgeschrieben werden darf.

Nicht gegriffen haben: a) Auslastung 81.84 % (Schwelle 88 %), b) Delta 0.05 GB/Tag
(Schwelle 3), d) keine Auto-Bereinigung, e) kein Blocker, f) heute ist Samstag, nicht
Montag.
